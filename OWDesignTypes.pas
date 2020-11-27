////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//     This software is supplied under the terms of a license agreement or    //
//     nondisclosure agreement with Mitov Software and may not be copied      //
//     or disclosed except in accordance with the terms of that agreement.    //
//         Copyright(c) 2002-2020 Mitov Software. All Rights Reserved.        //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

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
    Vcl.Forms, Messages, Classes, Contnrs, OWPins, OWStdTypes, Mitov.Containers.Dictionary, Mitov.Utils;

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
    procedure GetModules( const AFileName, AUnitName, AFormName, ADesignClass : String; ACoClasses : TStrings );

  end;
//---------------------------------------------------------------------------
{$IFNDEF __VSDESIGN__}
{$IFDEF __DELPHI_DESIGN__}
function  OWCanAccessRootFromName( ADesigner : TOWPropertyDesigner; const ARootName : String ) : Boolean;
procedure OWLinkAwaitsLinkingAllForms();
procedure OWRequestDesignerRefresh();
procedure OWGetPinValueList( ACollection : IPairCollection<String, TOWBasicPin>; AOwnerComponent : TComponent; APin : TOWPin; AFilterPins : Boolean );
function  OWGetMainDesignOwner( AComponent : TComponent ) : TComponent;
procedure OWRequestRefreshEx( ADesigner : TOWPropertyDesigner );
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
procedure TOWModulesColection.GetModules( const AFileName, AUnitName, AFormName, ADesignClass : String; ACoClasses : TStrings );
begin
  if( AFormName <> '' ) then
    Add( AFormName );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
{$IFNDEF __VSDESIGN__}
{$IFDEF __DELPHI_DESIGN__}
function OWCanAccessRootFromName( ADesigner : TOWPropertyDesigner; const ARootName : String ) : Boolean;
begin
  var AComponent := ADesigner.GetComponent( ARootName + SEPARATOR + ARootName );

  Result := False;
  if( AComponent = NIL ) then
    begin
    AComponent := ADesigner.GetComponent( ARootName );
    if( AComponent = NIL ) then
      Exit;

    end;

  Result := ADesigner.IsComponentLinkable( AComponent );
end;
//---------------------------------------------------------------------------
procedure OWLinkAwaitsLinkingAllForms();
var
  AModule         : IOTAModule;

  AModuleServices : IOTAModuleServices;
  AFormEditor     : INTAFormEditor;

begin
  if( not GPinsNeedRefresh ) then
    Exit;

  if( OWGetAllLinked() ) then
    Exit;

  InOppening := True;
  GPinsNeedRefresh := False;

  BorlandIDEServices.QueryInterface( IOTAModuleServices, AModuleServices );

  if( Assigned( AModuleServices )) then
    begin
    if( AModuleServices.CurrentModule.OwnerCount > 0 ) then
      begin
      var AProject : IOTAProject := AModuleServices.CurrentModule.Owners[ 0 ];
      for var ModuleIndex : Integer := 0 to AProject.GetModuleCount - 1 do
        begin
        if( AProject.GetModule( ModuleIndex ).GetFileName <> '' ) then
          begin
          try
            var AModuleFileExt := UpperCase( ExtractFileExt( AProject.GetModule( ModuleIndex ).GetFileName ));
            if( ( AModuleFileExt <> '.CPP' ) and ( AModuleFileExt <> '.PAS' ) and ( AModuleFileExt <> '.DFM' )) then
               Continue;
{
            if( UpperCase( ExtractFileExt( AProject.GetModule( ModuleIndex ).GetFileName )) = '.RES' ) then
               Continue;

            if( UpperCase( ExtractFileExt( AProject.GetModule( ModuleIndex ).GetFileName )) = '.DCP' ) then
               Continue;
}

            AProject.GetModule( ModuleIndex ).OpenModule.QueryInterface( IOTAModule, AModule );
            if( AProject.GetModule( ModuleIndex ).FormName = '' ) then
               Continue;

            for var I : Integer := 0 to AModule.GetModuleFileCount - 1 do
              begin
              AModule.GetModuleFileEditor( I ).QueryInterface( INTAFormEditor, AFormEditor );
              if( Assigned( AFormEditor )) then
                AFormEditor := NIL;

              end;

          finally
            end;
          end;
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

  if( GPinsNeedRefresh ) then
    Exit;

  GPinsNeedRefresh := True;

  MainThreadExecute( NIL, True, OWLinkAwaitsLinkingAllForms );
end;
//---------------------------------------------------------------------------
procedure OWGetPinValueList( ACollection : IPairCollection<String, TOWBasicPin>; AOwnerComponent : TComponent; APin : TOWPin; AFilterPins : Boolean );
var
  AFilters : TOWPinValueFilters;

begin
  if( APin <> NIL ) then
    begin
    if( AFilterPins ) then
      AFilters := []

    else
      AFilters := [ pvoFullList, pvoExcludeDirectDependency ];

    if( GetMainOwnerComponent( APin.Owner ) <> AOwnerComponent ) then
      begin
      OWGetPinsValueListSingleRoot( ACollection, AOwnerComponent, APin, '.', AOwnerComponent.Name, AFilters );
      Exit;
      end;

    OWGetPinsValueListSingleRoot( ACollection, AOwnerComponent, APin, '.', '', AFilters );
    end;

end;
//---------------------------------------------------------------------------
function OWGetMainDesignOwner( AComponent : TComponent ) : TComponent;
begin
  if( AComponent.Owner = NIL ) then
    Exit( AComponent );

  Result := GetMainOwnerComponent( AComponent.Owner );
end;
//---------------------------------------------------------------------------
procedure OWRequestRefreshEx( ADesigner : TOWPropertyDesigner );
begin
  var AFormNames := TOWModulesColection.Create();
  try
    ADesigner.GetProjectModules( AFormNames.GetModules );
    for var I : Integer := 0 to AFormNames.Count - 1 do
      OWCanAccessRootFromName( ADesigner, AFormNames.Strings[ I ] );

  finally
    AFormNames.DisposeOf();
    end;

  OWRequestDesignerRefresh();
end;
//---------------------------------------------------------------------------
{$ENDIF}
{$ELSE}
procedure OWResetObjectInspector( ADesigner : TOWPropertyDesigner );
begin
end;
{$ENDIF}
//---------------------------------------------------------------------------
type
  TOWStreamInfoOWEditorExtention = class;
//---------------------------------------------------------------------------
  IOWStreamInfoOWEditorExtention = interface( IOWStreamInfoExtention )
    ['{21C15026-CF32-4579-AE17-4EA6A065A7C5}']

    [Result : weak]
    function GetInstance() : TOWStreamInfoOWEditorExtention;

  end;
//---------------------------------------------------------------------------
  TOWStreamInfoOWEditorExtention = class( TOWStreamInfoExtention, IOWStreamInfoOWEditorExtention )
  protected
    FColor      : TColor;
    FThickness  : Single;

  protected
    [Result : weak]
    function GetInstance() : TOWStreamInfoOWEditorExtention;

  public
    class function Create( const AExtentionId : TGUID; AColor : TColor; AThickness : Single ) : IOWStreamInfoOWEditorExtention;

  public
    constructor CreateObject( const AExtentionId : TGUID; AColor : TColor; AThickness : Single );

  public
    property Color      : TColor  read FColor;
    property Thickness  : Single  read FThickness;

  end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStreamInfoOWEditorExtention.CreateObject( const AExtentionId : TGUID; AColor : TColor; AThickness : Single );
begin
  inherited CreateObject( AExtentionId );
  FColor := AColor;
  FThickness := AThickness;
end;
//---------------------------------------------------------------------------
class function TOWStreamInfoOWEditorExtention.Create( const AExtentionId : TGUID; AColor : TColor; AThickness : Single ) : IOWStreamInfoOWEditorExtention;
begin
  Result := CreateObject( AExtentionId, AColor, AThickness );
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

begin
  if( not OWGetStreamExtentionFromID( AStreamTypeID, IOWStreamInfoOWEditorExtention, AExtentionIntf )) then
    Exit( False );

  var AExtention : IOWStreamInfoOWEditorExtention := ( AExtentionIntf as IOWStreamInfoOWEditorExtention );
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
  OWRegisterStreamColorThickness( IOWFloatQuaternionStream, TColors.Fuchsia, 1.5 );
  OWRegisterStreamColorThickness( IOWFloatPoint3DStream,    TColors.Azure, 1.5 );
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
