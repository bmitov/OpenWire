unit OWDesignTypes;

{$IFDEF FPC}
  {$MODE DELPHI}{$H+}
{$ENDIF}

interface

uses
{$IFDEF FPC}
  LCLIntf, LMessages, LResources, PropEdits, ComponentEditors,
{$ELSE}
  Windows, Vcl.Graphics,

  {$IFDEF __VSDESIGN__}
    Mitov.Design,
  {$ELSE}
    {$IFNDEF __DELPHI_DESIGN__}
      Mitov.Design,
    {$ELSE}
      DesignEditors,
      DesignIntf,
      TypInfo,
    {$ENDIF}
  {$ENDIF}

{$ENDIF}
    Vcl.Forms, Messages, Classes, Contnrs, OWPins, OWStdTypes;

  type TOWPropNameString = String;
  type TOWPropertyDesigner = IDesigner;

type
  TOWEPinEntry = class
    public
      Pin               : TOWBasicPin;
      PinName           : String;
      OwnerName         : String;

      SavedChecked      : Boolean;
      Checked           : Boolean;

      Dispatcher        : TOWBasicStateDispatcher;

  end;
//---------------------------------------------------------------------------
  TOWEPinsList = class( TObjectList )
  protected
    function GetItem( Index : Integer ) : TOWEPinEntry;

  public
    property Items[ Index : Integer ] : TOWEPinEntry read GetItem; default;

  end;
//---------------------------------------------------------------------------
  TOWModulesColection = class(TStringList)
  public
    procedure GetModules( const FileName, UnitName, FormName, DesignClass: String; CoClasses: TStrings );

  end;
//---------------------------------------------------------------------------
{$IFNDEF __VSDESIGN__}
{$IFDEF __DELPHI_DESIGN__}
function  OWCanAccessRootFromName( Designer : TOWPropertyDesigner; RootName : String ) : Boolean;
procedure OWLinkAwaitsLinkingAllForms();
procedure OWRequestDesignerRefresh();
procedure OWGetPinValueList( OwnerComponent : TComponent; Pin : TOWPin; List : TStrings; FilterPins : Boolean );
function  OWGetMainDesignOwner( Component : TComponent ) : TComponent;
procedure OWRequestRefreshEx( Designer : TOWPropertyDesigner );
{$ENDIF}
{$ENDIF}
//---------------------------------------------------------------------------
procedure OWRegisterStreamColorThickness( AStreamTypeID : TGUID; AColor : TColor; AThickness : Single );
function  OWGetStreamThicknessColorFromID( AStreamTypeID : TGUID; var Color : TColor; var Thickness : Single ) : Boolean;
//---------------------------------------------------------------------------
procedure Register;
//---------------------------------------------------------------------------
implementation

uses
  System.SysUtils, Mitov.Threading,
  {$IFNDEF __VSDESIGN__}
    {$IFDEF __DELPHI_DESIGN__}
      ToolsAPI,
    {$ENDIF} // __DELPHI_DESIGN__
  {$ENDIF} // __VSDESIGN__
  System.Math, System.UITypes;
//---------------------------------------------------------------------------
{$IFDEF BCB}
const
  SEPARATOR = '->';
{$ELSE}
const
  SEPARATOR = '.';
{$ENDIF}
//---------------------------------------------------------------------------
{$IFNDEF __VSDESIGN__}
{$IFDEF __DELPHI_DESIGN__}
var
  InOppening  : Boolean;
{$ENDIF}
{$ENDIF}
//---------------------------------------------------------------------------
function TOWEPinsList.GetItem( Index : Integer ) : TOWEPinEntry;
begin
  Result := TOWEPinEntry( inherited Items[ Index ] );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWModulesColection.GetModules( const FileName, UnitName, FormName, DesignClass: String; CoClasses: TStrings );
begin
  if( FormName <> '' ) then
    Add( FormName );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
{$IFNDEF __VSDESIGN__}
{$IFDEF __DELPHI_DESIGN__}
function OWCanAccessRootFromName( Designer : TOWPropertyDesigner; RootName : String ) : Boolean;
var
  Component : TComponent;

begin
  Component := Designer.GetComponent( RootName + SEPARATOR + RootName );

  Result := False;
  if( Component = NIL ) then
    begin
    Component := Designer.GetComponent( RootName );
    if( Component = NIL ) then
      Exit;

    end;

  Result := Designer.IsComponentLinkable( Component );
end;
//---------------------------------------------------------------------------
procedure OWLinkAwaitsLinkingAllForms();
var
  I                     : Integer;
  ModuleIndex           : Integer;
  Module                : IOTAModule;

  ModuleServices        : IOTAModuleServices;
  FormEditor            : INTAFormEditor;

  Project               : IOTAProject;
  ModuleFileExt         : String;

begin
  if( not PinsNeedRefresh ) then
    Exit;

  if( OWGetAllLinked() ) then
    Exit;

  InOppening := True;
  PinsNeedRefresh := False;

  BorlandIDEServices.QueryInterface( IOTAModuleServices, ModuleServices );

  if( Assigned( ModuleServices )) then
    begin
    if( ModuleServices.CurrentModule.OwnerCount > 0 ) then
      begin
      Project := ModuleServices.CurrentModule.Owners[ 0 ];
      for ModuleIndex := 0 to Project.GetModuleCount - 1 do
        begin
        if( Project.GetModule( ModuleIndex ).GetFileName <> '' ) then
          begin
          try
            ModuleFileExt := UpperCase( ExtractFileExt( Project.GetModule( ModuleIndex ).GetFileName ));
            if( ( ModuleFileExt <> '.CPP' ) and ( ModuleFileExt <> '.PAS' ) and ( ModuleFileExt <> '.DFM' )) then
               Continue;
{
            if( UpperCase( ExtractFileExt( Project.GetModule( ModuleIndex ).GetFileName )) = '.RES' ) then
               Continue;

            if( UpperCase( ExtractFileExt( Project.GetModule( ModuleIndex ).GetFileName )) = '.DCP' ) then
               Continue;
}

            Project.GetModule( ModuleIndex ).OpenModule.QueryInterface( IOTAModule, Module );
            if( Project.GetModule( ModuleIndex ).FormName = '' ) then
               Continue;

            for I := 0 to Module.GetModuleFileCount - 1 do
              begin
                begin
                Module.GetModuleFileEditor( I ).QueryInterface( INTAFormEditor, FormEditor );
                if( Assigned( FormEditor )) then
                  begin
                  FormEditor := NIL;
                  end;
                end;
              end;
          finally
          end
          end
        end;
      end;
    end;

  InOppening := False;
end;
//---------------------------------------------------------------------------
procedure OWRequestDesignerRefresh();
begin
  if( InOppening ) then
    Exit;

  if( OWGetAllLinked() ) then
    Exit;

  if( PinsNeedRefresh ) then
    Exit;

  PinsNeedRefresh := True;

  MainThreadExecute( True, OWLinkAwaitsLinkingAllForms );
end;
//---------------------------------------------------------------------------
procedure OWGetPinValueList( OwnerComponent : TComponent; Pin : TOWPin; List : TStrings; FilterPins : Boolean );
var
  Filters : TOWPinValueFilters;

begin
  if( Pin <> NIL ) then
    begin
    if( FilterPins ) then
      Filters := []

    else
      Filters := [ pvoFullList, pvoExcludeDirectDependency ];

    if( OWGetMainOwnerComponent( Pin.Owner ) <> OwnerComponent ) then
      OWGetPinsValueListSingleRoot( List, OwnerComponent, Pin, '.', OwnerComponent.Name, Filters )

    else
      OWGetPinsValueListSingleRoot( List, OwnerComponent, Pin, '.', '', Filters );

    end;
end;
//---------------------------------------------------------------------------
function OWGetMainDesignOwner( Component : TComponent ) : TComponent;
begin
  if( Component.Owner = NIL ) then
    Result := Component

  else
    Result := OWGetMainOwnerComponent( Component.Owner );

end;
//---------------------------------------------------------------------------
procedure OWRequestRefreshEx( Designer : TOWPropertyDesigner );
var
  FormNames : TOWModulesColection;
  I         : Integer;

begin
  FormNames := TOWModulesColection.Create;

  Designer.GetProjectModules( FormNames.GetModules );
  for I := 0 to FormNames.Count - 1 do
    OWCanAccessRootFromName( Designer, FormNames.Strings[ I ] );

  FormNames.Free;

  OWRequestDesignerRefresh();
end;
//---------------------------------------------------------------------------
{$ENDIF}
{$ELSE}
procedure OWResetObjectInspector( Designer : TOWPropertyDesigner );
begin
end;
{$ENDIF}
//---------------------------------------------------------------------------
type
  TOWStreamInfoOWEditorExtention = class;
//---------------------------------------------------------------------------
  IOWStreamInfoOWEditorExtention = interface
    ['{21C15026-CF32-4579-AE17-4EA6A065A7C5}']
    function GetInstance() : TOWStreamInfoOWEditorExtention;

  end;
//---------------------------------------------------------------------------
  TOWStreamInfoOWEditorExtention = class( TOWStreamInfoExtention, IOWStreamInfoOWEditorExtention )
  protected
    FColor      : TColor;
    FThickness  : Single;

  protected
    function GetInstance() : TOWStreamInfoOWEditorExtention;

  public
    constructor Create( AExtentionId : TGUID; AColor : TColor; AThickness : Single );

  public
    property Color      : TColor  read FColor;
    property Thickness  : Single  read FThickness;

  end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStreamInfoOWEditorExtention.Create( AExtentionId : TGUID; AColor : TColor; AThickness : Single );
begin
  inherited Create( AExtentionId );
  FColor := AColor;
  FThickness := AThickness;
end;
//---------------------------------------------------------------------------
function TOWStreamInfoOWEditorExtention.GetInstance() : TOWStreamInfoOWEditorExtention;
begin
  Result := Self;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure OWRegisterStreamColorThickness( AStreamTypeID : TGUID; AColor : TColor; AThickness : Single );
begin
  OWRegisterStreamExtention( AStreamTypeID, TOWStreamInfoOWEditorExtention.Create( IOWStreamInfoOWEditorExtention, AColor, AThickness ) );
end;
//---------------------------------------------------------------------------
function OWGetStreamThicknessColorFromID( AStreamTypeID : TGUID; var Color : TColor; var Thickness : Single ) : Boolean;
var
  AExtentionIntf  : IOWStreamInfoExtention;
  AExtention      : IOWStreamInfoOWEditorExtention;

begin
  if( not OWGetStreamExtentionFromID( AStreamTypeID, IOWStreamInfoOWEditorExtention, AExtentionIntf )) then
    Exit( False );

  AExtention := ( AExtentionIntf as IOWStreamInfoOWEditorExtention );
  Color := AExtention.GetInstance().Color;
  Thickness  := AExtention.GetInstance().Thickness;

  Result := True;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure Register;
begin
  OWRegisterStreamColorThickness( IOWIntegerStream,         TColors.Fuchsia, 1 );
  OWRegisterStreamColorThickness( IOWCardinalStream,        TColors.Purple,  1 );
  OWRegisterStreamColorThickness( IOWInt64Stream,           TColors.Fuchsia, 1.2 );
  OWRegisterStreamColorThickness( IOWUInt64Stream,          TColors.Purple,  1.2 );
  OWRegisterStreamColorThickness( IOWFloatStream,           TColors.Red, 1 );
  OWRegisterStreamColorThickness( IOWRealStream,            TColors.Red, 1 );
  OWRegisterStreamColorThickness( IOWRealComplexStream,     TColors.Aqua, 1 );
  OWRegisterStreamColorThickness( IOWBoolStream,            TColors.Blue, 1 );
  OWRegisterStreamColorThickness( IOWByteStream,            TColors.Blue, 1.5 );
  OWRegisterStreamColorThickness( IOWCharStream,            TColors.Teal, 1 );
  OWRegisterStreamColorThickness( IOWStringStream,          TColors.Teal, 1.5 );
  OWRegisterStreamColorThickness( IOWStringListStream,      TColors.Teal, 2 );
  OWRegisterStreamColorThickness( IOWColorStream,           TColors.Navy, 1 );
  OWRegisterStreamColorThickness( IOWAlphaColorStream,      TColors.Lightblue, 1 );
  OWRegisterStreamColorThickness( IOWIntRangedStream,       TColors.Fuchsia, 1 );
  OWRegisterStreamColorThickness( IOWInt64RangedStream,     TColors.Fuchsia, 1 );
  OWRegisterStreamColorThickness( IOWRealRangedStream,      TColors.Red, 1 );
  OWRegisterStreamColorThickness( IOWDateTimeStream,        TColors.Yellow, 1 );
  OWRegisterStreamColorThickness( IOWDateTimeRangedStream,  TColors.Yellow, 1 );
  OWRegisterStreamColorThickness( IOWStreamPersistStream,   TColors.Lime, 2 );
  OWRegisterStreamColorThickness( IOWIntegerListStream,     TColors.Fuchsia, 2.5 );
  OWRegisterStreamColorThickness( IOWInt64ListStream,       TColors.Fuchsia, 2.5 );
  OWRegisterStreamColorThickness( IOWFloatListStream,       TColors.Red, 2.5 );
  OWRegisterStreamColorThickness( IOWRealListStream,        TColors.Red, 2.5 );
  OWRegisterStreamColorThickness( IOWClockStream,           TColors.Orange, 1 );
end;

initialization
{$IFNDEF __VSDESIGN__}
{$IFDEF __DELPHI_DESIGN__}
  InOppening := False;
{$ENDIF}
{$ENDIF}

end.
