unit OWDesignTypes;

{$IFDEF FPC}
{$MODE DELPHI}{$H+}
{$ENDIF}

{$IFDEF VER140} // Delphi 6.0
{$DEFINE D6}
{$ENDIF}

{$IFDEF VER150} // Delphi 7.0
{$DEFINE D6}
{$DEFINE D7}
{$ENDIF}

{$IFDEF VER170} // Delphi 9.0
{$DEFINE D6}
{$DEFINE D9}
{$ENDIF}

{$IFDEF VER180} // Delphi 10.0
{$DEFINE D6}
{$DEFINE D9}
{$ENDIF}

{$IFDEF VER190} // Delphi 11.0
{$DEFINE D6}
{$DEFINE D9}
{$ENDIF}

{$IFDEF VER200} // Delphi 12.0
{$DEFINE D6}
{$DEFINE D9}
{$ENDIF}

{$IFDEF VER210} // Delphi 14.0
{$DEFINE D6}
{$DEFINE D9}
{$ENDIF}

{$IFDEF VER220} // Delphi 15.0
{$DEFINE D6}
{$DEFINE D9}
{$ENDIF}

interface

uses
{$IFDEF FPC}
  LCLIntf, LMessages, LResources, PropEdits, ComponentEditors,
{$ELSE}
  Windows,

  {$IFDEF __VSDESIGN__}
    VSDesign,
  {$ELSE}
    {$IFDEF D6}
      DesignEditors,
      DesignIntf,
      TypInfo,
    {$ELSE}
      dsgnintf,
    {$ENDIF}
  {$ENDIF}

{$ENDIF}
    Forms, Messages, Classes, Contnrs, OWPins;

{$IFDEF VER130}
  type IProperty = TPropertyEditor;
  type IOWDesigner = IFormDesigner;
{$ELSE}
  {$IFDEF FPC}
    type IOWDesigner = TComponentEditorDesigner;
  {$ELSE}
    type IOWDesigner = IDesigner;
  {$ENDIF}
{$ENDIF}

{$IFDEF FPC}
  type TOWPropNameString = ShortString;
  type TOWPropertyDesigner = TPropertyEditorHook;
{$ELSE}
  type TOWPropNameString = String;
  type TOWPropertyDesigner = IOWDesigner;
{$ENDIF}

type
  TOWEPinEntry = class
    public
      Pin               : TOWBasicPin;
      PinName           : String;
      OwnerName         : String;

      SavedChecked      : Boolean;
      Checked           : Boolean;

      Dispatcher        : TOWStateDispatcher;

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
function  OWCanAccessRootFromName( Designer : TOWPropertyDesigner; RootName : String ) : Boolean;
procedure OWLinkAwaitsLinkingAllForms();
procedure OWRequestDesignerRefresh();
procedure OWGetPinValueList( OwnerComponent : TComponent; Pin : TOWPin; List : TStrings; FilterPins : Boolean );
function  OWGetMainDesignOwner( Component : TComponent ) : TComponent;
procedure OWResetObjectInspector( Designer : TOWPropertyDesigner );
procedure OWRequestRefreshEx( Designer : TOWPropertyDesigner );
{$ENDIF}
//---------------------------------------------------------------------------
const
{$IFDEF fpc}
  WM_APP = $8000;
{$ENDIF}
  OWM_UPDATE              = WM_APP + 10;
  OWMSG_UPDATE_INSPECTOR  = WM_APP + 11;
//---------------------------------------------------------------------------
var GOWInRefresh   : Boolean;
var GOWRefreshForm : TForm;
//---------------------------------------------------------------------------
implementation
{$IFDEF FPC}
  uses SysUtils, Math, OWAboutFormUnit, OWAfterPinSelectFormUnit;
  type TADesignerSelectionList = TPersistentSelectionList;

{$ELSE}
  {$IFDEF D6}
    uses SysUtils, OWDesignSelectionsList, ToolsAPI, ToolIntf, ExptIntf, OWAboutFormUnit, Math,
    OWAfterPinSelectFormUnit;
    type TADesignerSelectionList = TOWDesignerSelectionList;
  {$ELSE}
    uses SysUtils, ToolsAPI, ToolIntf, ExptIntf, ActiveX, OWAboutFormUnit, Math,
    OWAfterPinSelectFormUnit;
    type TADesignerSelectionList = TDesignerSelectionList;
  {$ENDIF}
{$ENDIF}
//---------------------------------------------------------------------------
{$IFDEF BCB}
const
  SEPARATOR = '->';
{$ELSE}
const
  SEPARATOR = '.';
{$ENDIF}
//---------------------------------------------------------------------------
var
  InOppening        : Boolean;
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
function OWCanAccessRootFromName( Designer : TOWPropertyDesigner; RootName : String ) : Boolean;
var
  Component : TComponent;

begin
{$IFNDEF FPC}
  Component := Designer.GetComponent( RootName + SEPARATOR + RootName );

  Result := False;
  if( Component = NIL ) then
    begin
    Component := Designer.GetComponent( RootName );
    if( Component = NIL ) then
      Exit;

    end;

  Result := Designer.IsComponentLinkable( Component );
{$ELSE}
  Result := True;
{$ENDIF}
end;
//---------------------------------------------------------------------------
procedure OWLinkAwaitsLinkingAllForms();
var
  I                     : Integer;
  ModuleIndex           : Integer;
{$IFNDEF FPC}
  Module                : IOTAModule;

  ModuleServices        : IOTAModuleServices;
  FormEditor            : INTAFormEditor;

  Project               : IOTAProject;
{$ENDIF}
  ModuleFileExt         : String;

begin
  if( not PinsNeedRefresh ) then
    Exit;

  if( OWGetAllLinked() ) then
    Exit;

  InOppening := True;
  PinsNeedRefresh := False;

{$IFNDEF FPC}
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
{$ENDIF}
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

  PostMessage( GOWRefreshForm.Handle, OWM_UPDATE, 0, 0 );
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
{$IFNDEF FPC}
  FormNames := TOWModulesColection.Create;

  Designer.GetProjectModules( FormNames.GetModules );
  for I := 0 to FormNames.Count - 1 do
    OWCanAccessRootFromName( Designer, FormNames.Strings[ I ] );

  FormNames.Free;
{$ENDIF}
  OWRequestDesignerRefresh();
end;
//---------------------------------------------------------------------------
procedure OWResetObjectInspector( Designer : TOWPropertyDesigner );
begin
{$IFNDEF FPC}
  if( GOWInRefresh ) then
    Exit;

  if( Assigned( Designer)) then
    begin
    GOWInRefresh := True;
    PostMessage( GOWRefreshForm.Handle, OWMSG_UPDATE_INSPECTOR,
                Integer( Designer ), 0 );

    end;

{$ENDIF}
end;
{$ENDIF}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
initialization
  InOppening := False;
  GOWInRefresh := False;

end.
