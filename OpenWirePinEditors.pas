unit OpenWirePinEditors;

{$IFDEF FPC}
{$MODE DELPHI}{$H+}
{$ENDIF}

interface

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
{$DEFINE BDS2005_OR_2006}
{$ENDIF}

{$IFDEF VER180} // Delphi 10.0
{$DEFINE D6}
{$DEFINE D9}
{$DEFINE BDS2005_OR_2006}
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

{$IFNDEF FPC}
{$IFDEF D6}
{$DEFINE I_PROP_EDITOR}
{$ENDIF}
{$ENDIF}

{$IFNDEF FPC}
{$IFNDEF D6}

{$DEFINE D5}

{$ENDIF}
{$ENDIF}

uses
{$IFDEF FPC}
  LCLIntf, LMessages, LResources, PropEdits,
{$ELSE}
  Windows, 
  
  {$IFDEF D6}
    DesignEditors,
    DesignIntf,
    TypInfo,
    OWClassProperty,
  {$ELSE}
    dsgnintf,
  {$ENDIF}
  
{$ENDIF}
  Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, ComCtrls, StdCtrls, Buttons, Contnrs, OWPins, ExtCtrls;

  const OWM_UPDATE              = CM_BASE + 500;
  const OWMSG_UPDATE_INSPECTOR  = CM_BASE + 501;

{$IFDEF D6}
type IADesigner = IDesigner;
type TAGetPropProc = TGetPropProc;
{$ELSE}
  {$IFDEF FPC}
    type IADesigner = TIDesigner;
  {$ELSE}
    type IADesigner = IFormDesigner;
  {$ENDIF}
type TAGetPropProc = TGetPropEditProc;
{$ENDIF}

{$IFDEF FPC}
  type TOWPropNameString = ShortString;
  type TOWPropertyDesigner = TPropertyEditorHook;
{$ELSE}
  type TOWPropNameString = String;
  type TOWPropertyDesigner = IADesigner;
{$ENDIF}

//type TOWEPinType = ( ptSource, ptSink );

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
  TOWEItemEntry = class
    protected
      FPin                   : TOWBasicPin;
      FConnectedToPin        : TOWBasicPin;
      FConnectedAfterPin     : TOWBasicPin;
      FItem                  : TListItem;

    protected
      procedure SetConnectedToPin( Value : TOWBasicPin );
      procedure SetConnectedAfterPin( Value : TOWBasicPin );
      
    public
      procedure Populate();

    public
//      PinEntry          : TOWEPinEntry;
      IsDispatcher      : Boolean;
      StateIndex        : Integer;

      PinConnectIdent       : String;
      PinConnectName        : String;

    public
      constructor Create( AItem : TListItem; APin : TOWBasicPin );
      
    public
      property ConnectedToPin        : TOWBasicPin read FConnectedToPin write SetConnectedToPin;
      property ConnectedAfterPin     : TOWBasicPin read FConnectedAfterPin write SetConnectedAfterPin;
      
  end;


type
  TOWPinEditorForm = class(TForm)
    ImageList1: TImageList;
    SourcesImageList: TImageList;
    Panel1: TPanel;
    TestButton: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    ListView: TListView;
    Panel4: TPanel;
    FormsComboBox: TComboBox;
    Label1: TLabel;
    Panel5: TPanel;
    LinksCountLabel: TLabel;
    StaticLabel: TLabel;
    SinksImageList: TImageList;
    AboutPanel: TPanel;
    Image1: TImage;
    AllPinsCheckBox: TCheckBox;
    LinkAllButton: TBitBtn;
    UnlinkAllButton: TBitBtn;
    RestoreButton: TBitBtn;
    OkButton: TBitBtn;
    CancelButton: TBitBtn;
    AfterPinButton: TBitBtn;
    procedure LinkAllButtonClick(Sender: TObject);
    procedure UnlinkAllButtonClick(Sender: TObject);
    procedure RestoreButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListViewChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure ListViewColumnClick(Sender: TObject; Column: TListColumn);
    procedure FormCreate(Sender: TObject);
    procedure ListViewCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure FormsComboBoxChange(Sender: TObject);
    procedure TestButtonClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ListViewMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ListViewKeyPress(Sender: TObject; var Key: Char);
    procedure ListViewDeletion(Sender: TObject; Item: TListItem);
    procedure AfterPinButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateLinksCount();
    procedure PopulateAll();
    procedure PopulateAllEntries();
    procedure PopulateForm( ARootComponent : TComponent );

    procedure PopulateSingleForm( CurrentRoot : TComponent; ARootComponent : TComponent; OnlyConnected : Boolean; FullPath : Boolean; FilterPins : Boolean );
    procedure PopulateSingleFormEntries( CurrentRoot : TComponent; ARootComponent : TComponent; FullPath : Boolean; FilterPins : Boolean );

    procedure PopulateSingleSinkForm( CurrentRoot : TComponent; ARootComponent : TComponent; OnlyConnected : Boolean; FullPath : Boolean; FilterPins : Boolean );
    procedure PopulateSingleSourceForm( CurrentRoot : TComponent; ARootComponent : TComponent; OnlyConnected : Boolean; FullPath : Boolean; FilterPins : Boolean );

    procedure PopulateSingleSinkFormEntries( CurrentRoot : TComponent; ARootComponent : TComponent; FullPath : Boolean; FilterPins : Boolean );
    procedure PopulateSingleSourceFormEntries( CurrentRoot : TComponent; ARootComponent : TComponent; FullPath : Boolean; FilterPins : Boolean );

    function  LinkToDisplayString( ARootComponent : TComponent; LinkStr : String; FullPath : Boolean; OwnRoot : Boolean; var PinStr : String ) : String;
    procedure FillFormsInfo();
    function  RootFromName( RootName : String ) : TComponent;
    
    function  EntryFromPin( Pin : TOWBasicPin ) : TOWEPinEntry;
    function  EntryFromDispatcher( Dispatcher : TOWStateDispatcher ) : TOWEPinEntry;
    procedure ChangeState( Item : TListItem );

  private
    Designer      : TOWPropertyDesigner;
    SourcePin     : TOWSourcePin;
    SinkPin       : TOWSinkPin;
    Root          : TComponent;
    PinsList      : TOWEPinsList;
    ListUpdating  : Boolean;

  private
    procedure OWMUpdate(var Message: TMessage); message OWM_UPDATE;
    procedure OWMUpdateInspector(var Message: TMessage); message OWMSG_UPDATE_INSPECTOR;
    
  public
    function ExecuteForSource( ADesigner : TOWPropertyDesigner; ASourcePin : TOWSourcePin ): Integer; virtual;
    function ExecuteForSink( ADesigner : TOWPropertyDesigner; ASinkPin : TOWSinkPin ): Integer; virtual;

  private
    ColumnToSort : Integer;
    Direction    : Boolean;
    AllSelected  : Boolean;

  public
    function  GetListItems() : TListItems;
    procedure ClearData();

  public
    property Items : TListItems read GetListItems;
    
  end;

type
  TOWPinListPropertyEditor = class(TPropertyEditor)
  public
    function  GetAttributes(): TPropertyAttributes; override;
    function  GetValue(): string; override;
    procedure GetProperties(Proc: TAGetPropProc); override;

  protected
    function GetIntDesigner() : TOWPropertyDesigner;

  public
    procedure CheckRefresh();
    
  end;

  TOWPinListOwnerPropertyEditor = class(TOWPinListPropertyEditor)
  public
    function  GetAttributes(): TPropertyAttributes; override;
    function  GetValue(): string; override;
    procedure SetValue(const Value: string); override;
    
  end;

  TOWSourcePinPropertyEditor = class(TPropertyEditor)
  
  public
    function  GetPin() : TOWSourcePin;

  public
    function  GetAttributes() : TPropertyAttributes; override;
    procedure Edit(); override;
    function  GetValue() : string; override;
    procedure SetValue(const Value: string); override;

  protected
    function GetIntDesigner() : TOWPropertyDesigner;

  end;

{$IFDEF I_PROP_EDITOR}
  TOWSourcePinListPropertyEditor = class(TOWClassPropertyEditor)
  protected
    function  GetEditValue(out Value: string): Boolean; override;
    
  public
    function  GetPropType() : PTypeInfo; override;

{$ELSE}
  TOWSourcePinListPropertyEditor = class(TPropertyEditor)
  protected
  {$IFNDEF FPC}
    FDesigner       : IDesigner;
  {$ENDIF}

{$ENDIF}
  public
    function  GetName() : TOWPropNameString; override;

  public
    function  GetAttributes() : TPropertyAttributes; override;
    procedure GetValues(Proc: TGetStrProc); override;
    procedure SetValue(const Value: string); override;
    function  GetValue() : string; override;
    procedure Edit(); override;

  protected
    function GetIntDesigner() : TOWPropertyDesigner;

  protected
    FName           : String;
    FPin            : TOWSourcePin;
    FPinListEditor  : TOWPinListPropertyEditor;

  public
{$IFDEF FPC}
    constructor CreateEx(Hook:TPropertyEditorHook; APin : TOWSourcePin; AName : String; PinListEditor : TOWPinListPropertyEditor);
{$ELSE}
    constructor CreateEx(const ADesigner: IADesigner; APin : TOWSourcePin; AName : String; PinListEditor : TOWPinListPropertyEditor);
{$ENDIF}
    destructor  Destroy(); override;

  public
    function    GetPin() : TOWSourcePin;

  end;
  
  TOWSinkPinPropertyEditor = class(TPropertyEditor)
  public
    function  GetPin() : TOWSinkPin;

  public
    function  GetAttributes() : TPropertyAttributes; override;
    procedure GetValues(Proc: TGetStrProc); override;
    procedure SetValue(const Value: string); override;
    function  GetValue() : string; override;
    procedure Edit(); override;

  protected
    function GetIntDesigner() : TOWPropertyDesigner;

  end;

{$IFDEF I_PROP_EDITOR}
  TOWSinkPinListPropertyEditor = class(TOWClassPropertyEditor)
  protected
    function  GetEditValue(out Value: string): Boolean; override;
    
  public
    function  GetPropType: PTypeInfo; override;

{$ELSE}
  TOWSinkPinListPropertyEditor = class(TPropertyEditor)
  protected
  {$IFNDEF FPC}
    FDesigner       : IDesigner;
  {$ENDIF}

{$ENDIF}
  public
    function  GetName() : TOWPropNameString; override;

  public
    function  GetAttributes: TPropertyAttributes; override;
    procedure GetValues(Proc: TGetStrProc); override;
    procedure SetValue(const Value: string); override;
    function  GetValue() : string; override;
    procedure Edit(); override;

  protected
    function GetIntDesigner() : TOWPropertyDesigner;

  public
    function  GetPin() : TOWSinkPin;

  protected
    FName    : String;
    FPin     : TOWSinkPin;
    FPinListEditor  : TOWPinListPropertyEditor;

  public
{$IFDEF FPC}
    constructor CreateEx(Hook:TPropertyEditorHook; APin : TOWSinkPin; AName : String; PinListEditor : TOWPinListPropertyEditor );
{$ELSE}
    constructor CreateEx(const ADesigner: IADesigner; APin : TOWSinkPin; AName : String; PinListEditor : TOWPinListPropertyEditor );
{$ENDIF}
    destructor  Destroy; override;

  end;

type TOWModulesColection = class(TStringList)
public
  procedure GetModules( const FileName, UnitName, FormName, DesignClass: string; CoClasses: TStrings );

end;

procedure OWResetObjectInspector( Designer : TOWPropertyDesigner );
procedure OWRequestRefreshEx( Designer : TOWPropertyDesigner );
procedure OWLinkAwaitsLinkingAllForms();
function  OWCanAccessRootFromName( Designer : TOWPropertyDesigner; RootName : String ) : Boolean;
procedure OWGetPinValueList( OwnerComponent : TComponent; Pin : TOWPin; List : TStrings; FilterPins : Boolean );
function  OWGetMainDesignOwner( Component : TComponent ) : TComponent;
procedure OWRequestDesignerRefresh();

procedure Register;

implementation

{$IFNDEF FPC}
{$R *.DFM}
{$ENDIF}

{$IFDEF FPC}
  uses Math, OWAboutFormUnit, OWAfterPinSelectFormUnit;
  type TADesignerSelectionList = TPersistentSelectionList;

{$ELSE}
  {$IFDEF D6}
    uses OWDesignSelectionsList, ToolsAPI, ToolIntf, ExptIntf, OWAboutFormUnit, Math,
    OWAfterPinSelectFormUnit;
    type TADesignerSelectionList = TOWDesignerSelectionList;
  {$ELSE}
    uses ToolsAPI, ToolIntf, ExptIntf, ActiveX, OWAboutFormUnit, Math,
    OWAfterPinSelectFormUnit;
    type TADesignerSelectionList = TDesignerSelectionList;
  {$ENDIF}
{$ENDIF}

{$IFDEF BCB}
const
  SEPARATOR = '->';
{$ELSE}
const
  SEPARATOR = '.';
{$ENDIF}

{$IFDEF VER170} // Delphi 9.0
  {$R OpenWireResources2005.res}
{$ELSE}
  {$IFDEF VER180} // Delphi 10.0
    {$IFNDEF VER185} // Delphi 10.0
      {$R OpenWireResources2006.res}
    {$ELSE} // Delphi 11
      {$R OpenWireResources2007.res}
    {$ENDIF}

  {$ELSE} // Delphi 11 up
    {$IFDEF VER220} // Delphi 15
      {$R OpenWireResources2006.res}

    {$ELSE} // Delphi 15
      {$IFDEF VER210} // Delphi 14
        {$R OpenWireResources2006.res}

      {$ELSE} // Delphi 14
        {$R OpenWireResources2007.res}

      {$ENDIF}
    {$ENDIF}
  {$ENDIF}
{$ENDIF}

const
  DISCONNECTED = '(Disconnected)';

var Form        : TOWPinEditorForm;
var InRefresh   : Boolean;
var InOppening  : Boolean;

type TOWExposedPin = class(TOWBasicPin);
type TOWExposedSinkPin = class(TOWSinkPin);
type TOWExposedSourcePin = class(TOWSourcePin);
type TOWExposedStateDispatcher = class(TOWStateDispatcher);
type TOWExposedPinObject = class(TOWPinObject);
type TOWExposedPinList = class( TOWPinList );
//------------------------------------------------------------------------------
procedure TOWModulesColection.GetModules( const FileName, UnitName, FormName, DesignClass: string; CoClasses: TStrings );
begin
  if( FormName <> '' ) then
    Add( FormName );

end;
//------------------------------------------------------------------------------
procedure OWRequestDesignerRefresh();
begin
  if( InOppening ) then
    Exit;

  if( OWGetAllLinked() ) then
    Exit;

  if( PinsNeedRefresh ) then
    Exit;

  PinsNeedRefresh := True;

  PostMessage( Form.Handle, OWM_UPDATE, 0, 0 );
end;

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
//------------------------------------------------------------------------------
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
//------------------------------------------------------------------------------
procedure OWResetObjectInspector( Designer : TOWPropertyDesigner );
begin
{$IFNDEF FPC}
  if( InRefresh ) then
    Exit;

  if( Assigned( Designer)) then
    begin
    InRefresh := True;
    PostMessage( Form.Handle, OWMSG_UPDATE_INSPECTOR,
                Integer( Designer ), 0 );

    end;

{$ENDIF}
end;
//------------------------------------------------------------------------------
procedure GetSinkPinValueList( SinkPin : TOWSinkPin; List : TStrings );
begin
  if( SinkPin = NIL ) then
    Exit;

  OWGetPinsValueList( List, SinkPin, '.', [] );
end;
//------------------------------------------------------------------------------
procedure GetSinkPinValues( SinkPin : TOWSinkPin; Proc: TGetStrProc );
var
  Values : TStringList;
  I      : Integer;

begin
  Values := TStringList.Create;
  try
    GetSinkPinValueList( SinkPin, Values);
    Proc(DISCONNECTED);
    for I := 0 to Values.Count - 1 do
      Proc(Values.Strings [i]);

    for I := 0 to OWGetDispatcherCount() - 1 do
      begin
      if( SinkPin.CanConnectToState( OWGetDispatcher( I ) ) ) then
        Proc( OWGetDispatcher( I ).Name );
        
      end;

  except
  end;
  Values.Free;

end;
//------------------------------------------------------------------------------
function GetSinkPinValue( SinkPin : TOWSinkPin; Designer : TOWPropertyDesigner ) : string;
begin
  if( SinkPin = NIL ) then
    begin
    Result := 'Refreshing ...';
    OWResetObjectInspector( Designer );
    end

  else
    begin
    if( TOWExposedSinkPin( SinkPin ).FDispatcher <> NIL ) then
      Result := TOWExposedSinkPin( SinkPin ).FDispatcher.Name

    else if( SinkPin.IsConnected() ) then
      Result := SinkPin.GetLinkStr()

    else
      Result := DISCONNECTED;
      
    end;

end;
//------------------------------------------------------------------------------
function SetSinkPinValue( Root : TComponent; SinkPin : TOWSinkPin; const Value: string ) : Boolean;
var
  ADispatcher : TOWStateDispatcher;

begin
  Result := SinkPin.IsConnected();
  if( ( Value = '' ) or ( Value = DISCONNECTED ) ) then
    begin
    SinkPin.Disconnect();
    Exit;
    end;
    
  if( SinkPin = NIL ) then
    Exit;

  if( SinkPin.TryLinkTo( Root, Value, Value, False )) then // TODO : Fix the name ???????????????????????????
    begin
    Result := True;
    Exit;
    end;

  ADispatcher := TOWStateDispatcher.GetByName( Value, True );
  if( SinkPin.ConnectToState( ADispatcher )) then
    Result := True;

end;
//------------------------------------------------------------------------------
function SetSourcePinValue( Root : TComponent; SourcePin : TOWSourcePin; const Value: string) : Boolean;
begin
  Result := False;
  if( SourcePin = NIL ) then
    Exit;

  if( TOWExposedSourcePin( SourcePin ).TryLinkTo( Root, Value, Value, '', False )) then // TODO : Fix the name ??????????????????????????? 
    begin
    Result := True;
    Exit;
    end
    
end;
//------------------------------------------------------------------------------
function GetSourcePinValue( SourcePin : TOWSourcePin; Designer : TOWPropertyDesigner ) : string;
var
  LinksCount : Integer;
  
begin
  try
    if( SourcePin = NIL ) then
      begin
      Result := 'Refreshing ...';
      OWResetObjectInspector( Designer );
      Exit;
      end;

    LinksCount := SourcePin.SinkCount;
    if( LinksCount = 0 ) then
      begin
      if( TOWExposedSourcePin( SourcePin ).FDispatcher = NIL ) then
        begin
        Result := DISCONNECTED;
        Exit;
        end;

      if( TOWExposedSourcePin( SourcePin ).FDispatcher.PinCount = 2 ) then
        begin
        if( TOWExposedSourcePin( SourcePin ).FDispatcher.Pins[ 0 ].GetFullIdentName( True ) = SourcePin.GetSaveName() ) then
          Result := TOWExposedSourcePin( SourcePin ).FDispatcher.Pins[ 1 ].GetFullName( True )

        else
          Result := TOWExposedSourcePin( SourcePin ).FDispatcher.Pins[ 0 ].GetFullName( True );

        end

      else
        Result := TOWExposedSourcePin( SourcePin ).FDispatcher.Name;
        
      Exit;
      end

    else
      begin
      if( LinksCount = 1 ) then
        begin
        if( TOWExposedSourcePin( SourcePin ).FDispatcher = NIL ) then
          begin
          if( SourcePin.SinkCount = 1 ) then
            Result := SourcePin.GetLinkStr( 0 )

          else
            begin
            Result := '( ' + IntToStr( LinksCount + TOWExposedSourcePin( SourcePin ).FDispatcher.PinCount - 1 ) + ' Links )';
            end;

          end

        else
          begin
          Result := '( ' + IntToStr( LinksCount + TOWExposedSourcePin( SourcePin ).FDispatcher.PinCount - 1 ) + ' Links )';
          end;

//        Exit;
        end

      else
        if( TOWExposedSourcePin( SourcePin ).FDispatcher = NIL ) then
          Result := '( ' + IntToStr( LinksCount ) + ' Links )'

        else
          Result := '( ' + IntToStr( LinksCount + TOWExposedSourcePin( SourcePin ).FDispatcher.PinCount - 1 ) + ' Links )';

      end;

  except
    Result := '(Error)';

  end;

end;

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
//------------------------------------------------------------------------------
function OWGetMainDesignOwner( Component : TComponent ) : TComponent;
begin
  if( Component.Owner = NIL ) then
    Result := Component

  else
    Result := OWGetMainOwnerComponent( Component.Owner );
    
end;
//------------------------------------------------------------------------------
function SinkPinEdit( Designer : TOWPropertyDesigner; SinkPin : TOWSinkPin ) : Boolean;
var
  I             : Integer;
  OtherPin      : TOWBasicPin;
  AfterPin      : TOWBasicPin;
  Dispatcher    : TOWStateDispatcher;
  SourceRoot    : TComponent;
  SourceChanged : Boolean;
  PinIdent      : String;

begin
  Result := False;
  if( SinkPin = NIL ) then
    Exit;

  try
    if( Form = NIL ) then
      Form := TOWPinEditorForm.Create( Application );

    if( Form.ExecuteForSink( Designer, SinkPin ) = mrOk ) then
      begin
      for I := 0 to Form.Items.Count - 1 do
        begin
        OtherPin := NIL;
        Dispatcher := NIL;

        SourceChanged := False;
//        if( Form.Items [ I ].SubItems.Objects[ 0 ] is TOWPin ) then
          OtherPin := TOWEItemEntry( Form.Items[ I ].Data ).ConnectedToPin; // TOWPin( Form.Items[ I ].SubItems.Objects[ 0 ] );

//        else if( Form.Items [ I ].SubItems.Objects[ 0 ] is TOWStateDispatcher ) then
//          Dispatcher := TOWStateDispatcher( Form.Items [ I ].SubItems.Objects[ 0 ] );

//        PinIdent := Form.Items[ I ].SubItems.Strings[ 4 ];
        PinIdent := TOWEItemEntry( Form.Items[ I ].Data ).PinConnectIdent;
        if( Form.Items [ I ].StateIndex and 1 > 0 ) then
          begin
          if( Dispatcher <> NIL ) then
            begin
            if( not Dispatcher.IsConnectedTo( SinkPin )) then
              SourceChanged := True;

            end

          else if( OtherPin = NIL ) then
            begin
            if( not TOWExposedSinkPin( SinkPin ).IsConnectedToPinName( PinIdent )) then
              SourceChanged := True;

            end

          else
            begin
            if( SinkPin.SourcePin <> OtherPin ) then
              SourceChanged := True;

            end;
          end

        else
          begin
          if( Dispatcher <> NIL ) then
            begin
            if( Dispatcher.IsConnectedTo( SinkPin )) then
              SourceChanged := True;

            end

          else if( OtherPin = NIL ) then
            if( TOWExposedSinkPin( SinkPin ).IsConnectedToPinName( PinIdent )) then
              SourceChanged := True
              
          else
            begin
            if( SinkPin.SourcePin = OtherPin ) then
              SourceChanged := True;
              
            end;
          end;

        if( SourceChanged ) then
          begin
          { TODO : Modify the forms connected trough the Dispatcher }

{$IFDEF FPC}
          Designer.Modified( SinkPin );
{$ELSE}
          Designer.Modified();
{$ENDIF}
          if( OtherPin <> NIL ) then
            begin
            if( OtherPin is TOWPin ) then
              begin 
              SourceRoot := OWGetMainDesignOwner( TOWPin( OtherPin ).Owner );
              if( SourceRoot is TCustomForm ) then
                if( Assigned( TCustomForm( SourceRoot ).Designer )) then
                  TCustomForm( SourceRoot ).Designer.Modified();

              end;

            end;

          Break;
          end;

        end;

      SinkPin.Disconnect();
      for I := 0 to Form.Items.Count - 1 do
        begin
        OtherPin := NIL;
        Dispatcher := NIL;

        OtherPin := TOWEItemEntry( Form.Items[ I ].Data ).ConnectedToPin;
        AfterPin := TOWEItemEntry( Form.Items[ I ].Data ).ConnectedAfterPin;

        if( Form.Items [ I ].StateIndex and 1 > 0 ) then
          begin
          if( Dispatcher <> NIL ) then
            SinkPin.ConnectToStateAfter( Dispatcher, AfterPin )

          else
            begin
            if( OtherPin is TOWStatePin ) then
              begin
              if( TOWExposedPin( SinkPin ).FDispatcher <> NIL ) then
                OtherPin.ConnectToStateAfter( TOWExposedPin( SinkPin ).FDispatcher, AfterPin )

              else if( TOWEItemEntry( Form.Items[ I ].Data ).IsDispatcher ) then
                SinkPin.ConnectByStateAfter( OtherPin, AfterPin )
                
              else
                SinkPin.ConnectAfter( OtherPin, AfterPin );

              end

            else
              SinkPin.ConnectAfter( OtherPin, AfterPin );

            end;
            
          end;

        if( OtherPin <> NIL ) then
          TOWExposedPin( OtherPin ).SetInEditor( False );

        end;

      Result := True;
      end;

  finally
    Form.ClearData();
  end;

end;
//------------------------------------------------------------------------------
function SourcePinEdit( Designer : TOWPropertyDesigner; SourcePin : TOWSourcePin ) : Boolean;
var
  I             : Integer;
//  SinkPin       : TOWSinkPin;
  OtherPin      : TOWBasicPin;
  SinkRoot      : TComponent;
  SinkChanged   : Boolean;
  PinIdent      : String;

begin
  Result := False;

  if( SourcePin = NIL ) then
    Exit;

  try
    if( Form = NIL ) then
      Form := TOWPinEditorForm.Create( Application );

    if( Form.ExecuteForSource( Designer, SourcePin ) = mrOk ) then
      begin
      for I := 0 to Form.Items.Count - 1 do
        begin
        SinkChanged := False;
        if( not( TOWEItemEntry( Form.Items[ I ].Data ).ConnectedToPin is TOWPin )) then
          Continue;

        OtherPin := TOWEItemEntry( Form.Items[ I ].Data ).ConnectedToPin;
        if( Form.Items [ I ].StateIndex and 1 > 0 ) then
          begin
          if( OtherPin = NIL ) then
            begin
//            PinIdent := Form.Items[ I ].SubItems.Strings[ 4 ];
            PinIdent := TOWEItemEntry( Form.Items[ I ].Data ).PinConnectIdent;
            if( not TOWExposedSourcePin( SourcePin ).IsConnectedToPinName( PinIdent )) then
              SinkChanged := True;
              
            end
              
          else
            begin
            if( not SourcePin.IsConnectedTo( OtherPin )) then
              SinkChanged := True;
              
            end;
          end

        else
          begin
          if( SourcePin.IsConnectedTo( OtherPin )) then
            SinkChanged := True;
            
          end;

        if( SinkChanged ) then
          begin
          if( OtherPin <> NIL ) then
            begin
            if( OtherPin is TOWPin ) then
              begin 
              SinkRoot := OWGetMainDesignOwner( TOWPin( OtherPin ).Owner );
              if( SinkRoot is TCustomForm ) then
                if( Assigned( TCustomForm( SinkRoot ).Designer )) then
                  TCustomForm( SinkRoot ).Designer.Modified();

              end;
            end;
          end;
        end;

      SourcePin.Disconnect();
      for I := 0 to Form.Items.Count - 1 do
        begin
        OtherPin := TOWEItemEntry( Form.Items[ I ].Data ).ConnectedToPin;
        if( Form.Items [ I ].StateIndex and 1 > 0 ) then
          begin

          if( OtherPin <> NIL ) then
            SourcePin.Connect( OtherPin );

          end;

        if( OtherPin <> NIL ) then
          TOWExposedPin( OtherPin ).SetInEditor( False );
          
        end;

      Result := True;
      end;

  finally
    Form.ClearData();
  end;

end;
//------------------------------------------------------------------------------
function TOWSourcePinPropertyEditor.GetAttributes() : TPropertyAttributes;
begin
  Result := [ paDialog ];
  OWRequestDesignerRefresh();
end;
//------------------------------------------------------------------------------
procedure TOWSourcePinPropertyEditor.Edit();
var
  SourcePin : TOWSourcePin;

begin
  OWRequestRefreshEx( GetIntDesigner() );
  SourcePin := GetPin();
  if( SourcePinEdit( GetIntDesigner(), SourcePin )) then
    Modified();

end;
//------------------------------------------------------------------------------
procedure TOWSourcePinPropertyEditor.SetValue(const Value: string);
var
  SourcePin     : TOWSourcePin;

begin
  inherited SetValue( Value );

  SourcePin := GetPin();
  if( SetSourcePinValue( NIL, SourcePin, Value )) then
    Modified();

end;
//------------------------------------------------------------------------------
function TOWSourcePinPropertyEditor.GetValue(): string;
var
  SourcePin : TOWSourcePin;

begin
  SourcePin := GetPin();
  OWRequestRefreshEx( GetIntDesigner() );
  Result := GetSourcePinValue( SourcePin, GetIntDesigner() );
end;

//------------------------------------------------------------------------------
function  TOWSourcePinPropertyEditor.GetPin() : TOWSourcePin;
begin
  Result := TOWSourcePin( GetOrdValue());
end;
//---------------------------------------------------------------------------
function  TOWSourcePinPropertyEditor.GetIntDesigner() : TOWPropertyDesigner;
begin
{$IFDEF FPC}
  Result := PropertyHook;
{$ELSE}
  Result := Designer;
{$ENDIF}
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
{$IFDEF FPC}
constructor TOWSourcePinListPropertyEditor.CreateEx(Hook:TPropertyEditorHook; APin : TOWSourcePin; AName : String; PinListEditor : TOWPinListPropertyEditor );
begin
  inherited Create( Hook, 1 );
{$ELSE}
constructor TOWSourcePinListPropertyEditor.CreateEx(const ADesigner: IADesigner; APin : TOWSourcePin; AName : String; PinListEditor : TOWPinListPropertyEditor );
begin
  inherited Create( ADesigner, 1 );
  FDesigner := ADesigner;
{$ENDIF}
  FPin  := APin;
  FName := AName;
  FPinListEditor := PinListEditor;
  FPin.CurrentEditorPtr := @FPin;
end;
//------------------------------------------------------------------------------
destructor  TOWSourcePinListPropertyEditor.Destroy();
begin
  if( FPin <> NIL )then
    FPin.CurrentEditorPtr := NIL;
    
  inherited;
end;
//------------------------------------------------------------------------------
function  TOWSourcePinListPropertyEditor.GetPin() : TOWSourcePin;
begin
  Result := FPin;
end;
//---------------------------------------------------------------------------
function  TOWSourcePinListPropertyEditor.GetName() : TOWPropNameString;
begin
  Result := FName;
end;
//---------------------------------------------------------------------------
function  TOWSourcePinListPropertyEditor.GetAttributes: TPropertyAttributes;
begin
  Result := [ paDialog ];
  OWRequestDesignerRefresh();
end;
//---------------------------------------------------------------------------
procedure TOWSourcePinListPropertyEditor.GetValues(Proc: TGetStrProc);
begin
end;
//---------------------------------------------------------------------------
procedure TOWSourcePinListPropertyEditor.SetValue(const Value: string);
var
  SourcePin     : TOWSourcePin;
  
begin
  SourcePin := GetPin();
  if( SetSourcePinValue( NIL, SourcePin, Value )) then
    Modified();

end;
//---------------------------------------------------------------------------
function  TOWSourcePinListPropertyEditor.GetValue() : string;
var
  SourcePin : TOWSourcePin;

begin
  SourcePin := GetPin();
{$IFDEF D6}
  OWRequestRefreshEx(FDesigner);
  Result := GetSourcePinValue( SourcePin, FDesigner );
{$ELSE}
  OWRequestRefreshEx( GetIntDesigner() );
  Result := GetSourcePinValue( SourcePin, GetIntDesigner() );
{$ENDIF}
  FPinListEditor.CheckRefresh();
end;
//---------------------------------------------------------------------------
{$IFDEF D6}
function TOWSourcePinListPropertyEditor.GetEditValue(out Value: string): Boolean;
begin
  Value := GetValue();
  Result := True;
end;
//---------------------------------------------------------------------------
function TOWSourcePinListPropertyEditor.GetPropType() : PTypeInfo;
begin
  Result := typeinfo( TOWSourcePin );
end;

{$ENDIF}
//---------------------------------------------------------------------------
procedure TOWSourcePinListPropertyEditor.Edit();
var
  SourcePin     : TOWSourcePin;

begin
  SourcePin := GetPin();
{$IFDEF D6}
  if( SourcePinEdit( FDesigner, SourcePin )) then
{$ELSE}
  if( SourcePinEdit( GetIntDesigner(), SourcePin )) then
{$ENDIF}
      Modified();
end;
//---------------------------------------------------------------------------
function  TOWSourcePinListPropertyEditor.GetIntDesigner() : TOWPropertyDesigner;
begin
{$IFDEF FPC}
  Result := PropertyHook;
{$ELSE}
  Result := Designer;
{$ENDIF}
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//------------------------------------------------------------------------------
procedure TOWSinkPinPropertyEditor.Edit();
var
  SinkPin : TOWSinkPin;

begin
  OWRequestRefreshEx( GetIntDesigner() );
  SinkPin := GetPin();
  if( SinkPinEdit( GetIntDesigner(), SinkPin )) then
    Modified();

end;
//------------------------------------------------------------------------------
function  TOWSinkPinPropertyEditor.GetPin() : TOWSinkPin;
begin
  Result := TOWSinkPin( GetOrdValue());
end;
//------------------------------------------------------------------------------
function TOWSinkPinPropertyEditor.GetAttributes: TPropertyAttributes;
begin
  Result := [ paValueList, paSortList, paDialog ];
  OWRequestDesignerRefresh();
end;
//------------------------------------------------------------------------------
procedure TOWSinkPinPropertyEditor.GetValues(Proc: TGetStrProc);
var
  SinkPin       : TOWSinkPin;

begin
  SinkPin := GetPin();
  GetSinkPinValues( SinkPin, Proc );
end;
//------------------------------------------------------------------------------
procedure TOWSinkPinPropertyEditor.SetValue(const Value: string);
var
  SinkPin       : TOWSinkPin;

begin
  SinkPin := GetPin();
  if( SetSinkPinValue( NIL, SinkPin, Value )) then
    Modified();

end;
//------------------------------------------------------------------------------
function  TOWSinkPinPropertyEditor.GetValue() : string;
var
  SinkPin   : TOWSinkPin;

begin
  OWRequestRefreshEx( GetIntDesigner() );
  SinkPin := GetPin();
  Result := GetSinkPinValue( SinkPin, GetIntDesigner() );
end;

//---------------------------------------------------------------------------
function  TOWSinkPinPropertyEditor.GetIntDesigner() : TOWPropertyDesigner;
begin
{$IFDEF FPC}
  Result := PropertyHook;
{$ELSE}
  Result := Designer;
{$ENDIF}
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//------------------------------------------------------------------------------
{$IFDEF FPC}
constructor TOWSinkPinListPropertyEditor.CreateEx(Hook:TPropertyEditorHook; APin : TOWSinkPin; AName : String; PinListEditor : TOWPinListPropertyEditor );
begin
  inherited Create( Hook, 1 );
{$ELSE}
constructor TOWSinkPinListPropertyEditor.CreateEx(const ADesigner: IADesigner; APin : TOWSinkPin; AName : String; PinListEditor : TOWPinListPropertyEditor );
begin
  inherited Create( ADesigner, 1 );
  FDesigner := ADesigner;
{$ENDIF}
  FPin  := APin;
  FName := AName;
  FPinListEditor := PinListEditor;
  FPin.CurrentEditorPtr := @FPin;
end;
//---------------------------------------------------------------------------
destructor  TOWSinkPinListPropertyEditor.Destroy;
begin
  if( FPin <> NIL )then
    FPin.CurrentEditorPtr := NIL;

  inherited;
end;
//------------------------------------------------------------------------------
{$IFDEF D6}
function TOWSinkPinListPropertyEditor.GetEditValue(out Value: string): Boolean;
begin
  Value := GetValue();
  Result := True;
  FPinListEditor.CheckRefresh();
end;
//------------------------------------------------------------------------------
function TOWSinkPinListPropertyEditor.GetPropType: PTypeInfo;
begin
  Result := typeinfo( TOWSinkPin );
end;
//------------------------------------------------------------------------------
{$ENDIF}
//------------------------------------------------------------------------------
procedure TOWSinkPinListPropertyEditor.Edit();
var
  SinkPin : TOWSinkPin;

begin
{$IFDEF D6}
  OWRequestRefreshEx( FDesigner);
  SinkPin := GetPin();
  if( SinkPinEdit( FDesigner, SinkPin )) then
    Modified();

{$ELSE}
  OWRequestRefreshEx( GetIntDesigner() );
  SinkPin := GetPin();
  if( SinkPinEdit( GetIntDesigner(), SinkPin )) then
    Modified();

{$ENDIF}

end;
//------------------------------------------------------------------------------
function  TOWSinkPinListPropertyEditor.GetPin() : TOWSinkPin;
begin
  Result := FPin;
end;
//---------------------------------------------------------------------------
function  TOWSinkPinListPropertyEditor.GetName: TOWPropNameString;
begin
  Result := FName;
end;
//---------------------------------------------------------------------------
function TOWSinkPinListPropertyEditor.GetAttributes: TPropertyAttributes;
begin
  Result := [ paValueList, paSortList, paDialog ];
  OWRequestDesignerRefresh();
end;
//---------------------------------------------------------------------------
procedure TOWSinkPinListPropertyEditor.GetValues(Proc: TGetStrProc);
var
  SinkPin       : TOWSinkPin;

begin
  SinkPin := GetPin();
  GetSinkPinValues( SinkPin, Proc );
end;
//---------------------------------------------------------------------------
procedure TOWSinkPinListPropertyEditor.SetValue(const Value: string);
var
  SinkPin       : TOWSinkPin;

begin
  SinkPin := GetPin();
  if( SetSinkPinValue( NIL, SinkPin, Value )) then
    Modified();

end;
//---------------------------------------------------------------------------
function  TOWSinkPinListPropertyEditor.GetValue() : string;
var
  SinkPin   : TOWSinkPin;

begin
{$IFDEF D6}
  OWRequestRefreshEx( FDesigner);
  SinkPin := GetPin();
  Result := GetSinkPinValue( SinkPin, FDesigner );
{$ELSE}
  OWRequestRefreshEx( GetIntDesigner() );
  SinkPin := GetPin();
  Result := GetSinkPinValue( SinkPin, GetIntDesigner() );
{$ENDIF}
  FPinListEditor.CheckRefresh();
end;

//---------------------------------------------------------------------------
function  TOWSinkPinListPropertyEditor.GetIntDesigner() : TOWPropertyDesigner;
begin
{$IFDEF FPC}
  Result := PropertyHook;
{$ELSE}
  Result := Designer;
{$ENDIF}
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
{$IFNDEF FPC}
{$IFNDEF D6}
type TOWInputPinsCategory = class( TPropertyCategory )
  class function Name() : String; override;
  class function Description() : String; override;
end;
//---------------------------------------------------------------------------
class function TOWInputPinsCategory.Name: String;
begin
  Result := 'Input Pins';
end;
//---------------------------------------------------------------------------
class function TOWInputPinsCategory.Description: String;
begin
  Result := 'OpenWire Input Pins';
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
type TOWOutputPinsCategory = class( TPropertyCategory )
  class function Name() : String; override;
  class function Description() : String; override;
end;
//------------------------------------------------------------------------------
class function TOWOutputPinsCategory.Name: String;
begin
  Result := 'Output Pins';
end;
//------------------------------------------------------------------------------
class function TOWOutputPinsCategory.Description: String;
begin
  Result := 'OpenWire Output Pins';
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type TOWPinListCategory = class( TPropertyCategory )
  class function Name() : String; override;
  class function Description() : String; override;
end;
//------------------------------------------------------------------------------
class function TOWPinListCategory.Name() : String;
begin
  Result := 'Pin Lists';
end;
//------------------------------------------------------------------------------
class function TOWPinListCategory.Description() : String;
begin
  Result := 'OpenWire Lists of Pins';
end;
{$ENDIF}
//------------------------------------------------------------------------------
{$IFDEF D9} // Delphi 9.0
var
  LogoBitmap : TBitmap = NIL;
{$ENDIF}
{$ENDIF}

procedure TOWPinEditorForm.LinkAllButtonClick(Sender: TObject);
var
  I : Integer;
begin
  for I := 0 to ListView.Items.Count - 1 do
//    ListView.Items [ I ].Checked := True;
    ListView.Items[ I ].StateIndex := ( ( TOWEItemEntry( ListView.Items[ I ].Data ).StateIndex ) or 1 );

end;

procedure TOWPinEditorForm.UnlinkAllButtonClick(Sender: TObject);
var
  I : Integer;
begin
  for I := 0 to ListView.Items.Count - 1 do
    ListView.Items[ I ].StateIndex := ( ( TOWEItemEntry( ListView.Items[ I ].Data ).StateIndex ) and 2 );
//    ListView.Items [ I ].Checked := False;

end;

procedure TOWPinEditorForm.RestoreButtonClick(Sender: TObject);
var
  I : Integer;
begin
  for I := 0 to ListView.Items.Count - 1 do
    ListView.Items[ I ].StateIndex := TImageIndex( TOWEItemEntry( ListView.Items[ I ].Data ).StateIndex );
    
end;

procedure TOWPinEditorForm.FormShow(Sender: TObject);
begin
  FillFormsInfo();
  UpdateLinksCount();
end;

procedure TOWPinEditorForm.FillFormsInfo();
var
  FormNames     : TOWModulesColection;
  I             : Integer;

{$IFDEF BDS2005_OR_2006}
  CurProject    : IOTAProject;
  ModuleInfo    : IOTAModuleInfo;

{$ENDIF}

begin
  FormNames := TOWModulesColection.Create();

{$IFNDEF FPC}
{$IFNDEF BDS2005_OR_2006}
  Designer.GetProjectModules( FormNames.GetModules );

{$ELSE}
  // Workaround for BDS 2005 and 2006 bug.
  CurProject := GetActiveProject();

  if( CurProject <> NIL ) then
    for I := 0 to CurProject.GetModuleCount() - 1 do
      begin
      ModuleInfo := CurProject.GetModule( I );

      FormNames.GetModules( ModuleInfo.FileName, ModuleInfo.Name, ModuleInfo.FormName, ModuleInfo.DesignClass, NIL );
      end;    

{$ENDIF}
{$ENDIF}

  FormsComboBox.Items.Clear();
  if( FormNames.Count = 0 ) then
    FormNames.Add( Root.Name );

  for I := 0 to FormNames.Count - 1 do
    begin
    if( OWCanAccessRootFromName( Designer, FormNames.Strings[ I ] ) ) then
      begin
      if( FormNames.Strings[ I ] = Root.Name ) then
        begin
        FormsComboBox.Items.Add( FormNames.Strings[ I ] + '  (Current)' );
        FormsComboBox.ItemIndex := FormsComboBox.Items.Count - 1;
        end

      else
        FormsComboBox.Items.Add( FormNames.Strings[ I ] );
      end;
    end;

  if( FormNames.Count > 1 ) then
    FormsComboBox.Items.Add( 'All forms' );

  PopulateAllEntries();
  if( AllSelected ) then
    FormsComboBox.ItemIndex := FormsComboBox.Items.Count - 1;

  FormsComboBoxChange( Self );

  FormNames.Free();
end;

procedure TOWPinEditorForm.PopulateAllEntries();
var
  I             : Integer;             
  CurrentRoot   : TComponent;
  
begin
  PinsList.Clear();  
  for I := 0 to Max( FormsComboBox.Items.Count - 2, 0 ) do
    begin
    CurrentRoot := RootFromName( FormsComboBox.Items.Strings[ I ] );
    PopulateSingleFormEntries( NIL, CurrentRoot, True, not AllPinsCheckBox.Checked );
    end;

  RootFromName( Root.Name );
end;

procedure TOWPinEditorForm.PopulateAll();
var
  I             : Integer;             
  CurrentRoot   : TComponent;
  
begin
  ClearData();
  for I := 0 to FormsComboBox.Items.Count - 2 do
    begin
    CurrentRoot := RootFromName( FormsComboBox.Items.Strings[ I ] );
    PopulateSingleForm( NIL, CurrentRoot, False, True, not AllPinsCheckBox.Checked );
    end;

  RootFromName( Root.Name );
end;

procedure TOWPinEditorForm.PopulateForm( ARootComponent : TComponent );
var
  I             : Integer;
  CurrentRoot   : TComponent;

begin
  ClearData();
  PopulateSingleForm( ARootComponent, ARootComponent, False, False, not AllPinsCheckBox.Checked );

  for I := 0 to FormsComboBox.Items.Count - 2 do
    begin
    CurrentRoot := RootFromName( FormsComboBox.Items.Strings[ I ] );
    if( ARootComponent <> CurrentRoot ) then
      PopulateSingleForm( ARootComponent, CurrentRoot, True, True, not AllPinsCheckBox.Checked );

    end;

end;

function TOWPinEditorForm.LinkToDisplayString( ARootComponent : TComponent; LinkStr : String; FullPath : Boolean; OwnRoot : Boolean; var PinStr : String ) : String;
var
  StrFull : String;
  Str     : String;
  iPos    : Integer;
  
begin
  if( not OwnRoot ) then
    begin
    iPos := Pos( '.', LinkStr );
    StrFull := LinkStr;
    Delete( StrFull, 1, iPos );
    end

  else
    StrFull := LinkStr;
    
  iPos := Pos( '.', StrFull );
  Str := StrFull;
  Delete( Str, 1, iPos );
  PinStr := Str;
  Str := StrFull;
  iPos := Pos( '.', Str );
  Delete( Str, iPos, 10000 );
  if( FullPath ) then
    Str := ARootComponent.Name + '.' + Str;

  Result := Str;
end;

procedure TOWPinEditorForm.PopulateSingleFormEntries( CurrentRoot : TComponent; ARootComponent : TComponent; FullPath : Boolean; FilterPins : Boolean );
begin
  if( SourcePin <> NIL ) then
    PopulateSingleSourceFormEntries( CurrentRoot, ARootComponent, FullPath, FilterPins )

  else
    PopulateSingleSinkFormEntries( CurrentRoot, ARootComponent, FullPath, FilterPins );

end;

procedure TOWPinEditorForm.PopulateSingleForm( CurrentRoot : TComponent; ARootComponent : TComponent; OnlyConnected : Boolean; FullPath : Boolean; FilterPins : Boolean );
begin
  ListUpdating := True;
  if( SourcePin <> NIL ) then
    PopulateSingleSourceForm( CurrentRoot, ARootComponent, OnlyConnected, FullPath, FilterPins )

  else
    PopulateSingleSinkForm( CurrentRoot, ARootComponent, OnlyConnected, FullPath, FilterPins );

  ListUpdating := False;
end;

function GetLinkType( APin : TOWBasicPin ) : String;
var
  SinkPin : TOWSinkPin;

begin
  if( APin is TOWSinkPin ) then
    SinkPin := TOWSinkPin( APin )

  else
    begin
    Result := 'Unknown';
    Exit;
    end;

  if( IsEqualGUID( SinkPin.DownStreamID, SinkPin.UpStreamID )) then
    begin
    if( SinkPin.DownStreamLinkName <> '' ) then
      Result := 'Bi-directional ( ' + SinkPin.DownStreamLinkName + ' )';

    end

  else
    begin
    if( SinkPin.DownStreamLinkName <> '' ) then
      Result := 'Downstream ( ' + SinkPin.DownStreamLinkName + ' )    ';

    if( SinkPin.UpStreamLinkName <> '' ) then
      Result := Result + 'Upstream ( ' + SinkPin.UpStreamLinkName + ' )';

    end;
    
end;

procedure TOWPinEditorForm.PopulateSingleSinkFormEntries( CurrentRoot : TComponent; ARootComponent : TComponent; FullPath : Boolean; FilterPins : Boolean );
var
  Values        : TStringList;
  I             : Integer;
  OtherPin      : TOWPin;
  Entry         : TOWEPinEntry;
  iPos          : Integer;
  Str           : String;
//  LinkedTo      : String;
//  LinkType      : String;
  OwnRoot       : Boolean;
//  OwnRoot1      : Boolean;
  OwnDataModule : Boolean;
  LinkName      : String;
  PinStr        : String;
  Dispatcher    : TOWStateDispatcher;

//  FullSinkPath  : Boolean;

begin
  Values := TStringList.Create;
  try
    OwnRoot := ( ARootComponent = OWGetMainOwnerComponent( SinkPin.Owner ));
    OwnDataModule := False;

    if( not OwnRoot ) then
      OwnDataModule := ( ARootComponent.Name = OWGetMainOwnerComponent( SinkPin.Owner ).Name );

    for I := 0 to OWGetDispatcherCount() - 1 do
      begin
      Dispatcher := OWGetDispatcher( I );
      if( not SinkPin.CanConnectToState( Dispatcher )) then
        Continue;

      Entry := TOWEPinEntry.Create();
      PinsList.Add( Entry );
      Entry.Dispatcher := Dispatcher;
      Entry.PinName := Dispatcher.Name;
      Entry.Checked := SinkPin.IsConnectedToState( Dispatcher );

//      Entry.CanConnect := True;
{
      for J := 0 to Dispatcher.PinCount - 1 do
        begin
        Entry := TOWEPinEntry.Create();
        Entry.Dispatcher := Dispatcher;
        Entry.Pin := Dispatcher[ J ];
        Entry.PinName := Dispatcher[ J ].Name;
        PinsList.Add( Entry );
        end;
}
      end;

    OWGetPinValueList( ARootComponent, SinkPin, Values, FilterPins );
    for I := 0 to Values.Count - 1 do
      begin
      OtherPin := TOWPin( Values.Objects[ I ] );

      if( ( not ( OtherPin is TOWSourcePin )) and ( not ( OtherPin is TOWStatePin )) ) then
        Continue;

      if( OtherPin is TOWStatePin ) then
        if( OtherPin.IsConnected() ) then
          Continue; // Those pins are represented by the Dispatchers.

//      if( OtherPin is TOWSourcePin ) then
//        SourcePin := TOWSourcePin( OtherPin );
        

      Entry := TOWEPinEntry.Create();
      PinsList.Add( Entry );

      Str := LinkToDisplayString( ARootComponent, Values.Strings[ I ], FullPath, OwnRoot, PinStr );
      Entry.PinName := PinStr;

      Entry.OwnerName := Str; 
      Entry.Pin := OtherPin;
////      Entry.CanConnect := True;
      if( not SinkPin.CanConnectTo( OtherPin )) then
        begin
        Entry.SavedChecked := False;
        Entry.Checked := False;
////        Entry.CanConnect := False;
        end

      else
        begin
        LinkName := Values.Strings[ I ];
        if( OwnDataModule ) then
          begin
          iPos := Pos( '.', LinkName );
          Delete( LinkName, 1, iPos );
          end;

        Entry.SavedChecked := ( SinkPin.GetLinkStr() = LinkName );
        Entry.Checked := Entry.SavedChecked;

        end;

{
      LinkedTo := '';
      LinkType := '';
      if( OtherPin is TOWSourcePin ) then
        if( SourcePin.IsConnected() ) then
          begin
          LinkedTo := GetSourcePinValue( SourcePin, Designer );
          FullSinkPath := True;
          if( SourcePin.GetSinkCountAll() = 1 ) then
            begin
            OwnRoot1 := OwnRoot;
            if( SourcePin.SinkCount > 0 ) then
              begin
              OwnRoot1 := ( OWGetMainOwnerComponent( SourcePin.Sinks[ 0 ].Owner ) = OWGetMainOwnerComponent( SourcePin.Owner ));
              FullSinkPath := ( OWGetMainOwnerComponent( SourcePin.Sinks[ 0 ].Owner ) <> CurrentRoot );
              end;

            Str := LinkToDisplayString( OWGetMainOwnerComponent( SourcePin.Sinks[ 0 ].Owner ), LinkedTo, FullSinkPath, OwnRoot1, PinStr );
            LinkedTo := Str + '.' + PinStr;
            end;

          LinkType := GetLinkType( SourcePin.Sinks[ 0 ] );
          end;
}
  ////      Entry.LinkedTo := LinkedTo;
  ////      Entry.LinkType := LinkType;
      end;

  finally
    Values.Free;

  end;

end;

procedure TOWPinEditorForm.PopulateSingleSourceFormEntries( CurrentRoot : TComponent; ARootComponent : TComponent; FullPath : Boolean; FilterPins : Boolean );
var
  Values        : TStringList;
  I             : Integer;
//  SinkPin       : TOWSinkPin;
//  StatePin      : TOWStatePin;
  OtherPin      : TOWPin;
  Entry         : TOWEPinEntry;
  iPos          : Integer;
  Str           : String;
//  LinkedTo      : String;
//  LinkType      : String;
  OwnRoot       : Boolean;
//  OwnRoot1      : Boolean;
  OwnDataModule : Boolean;
  LinkName      : String;
  PinStr        : String;
  Dispatcher    : TOWStateDispatcher;

//  FullSinkPath  : Boolean;

begin
  Values := TStringList.Create;
  try
    OwnRoot := ( ARootComponent = OWGetMainOwnerComponent( SourcePin.Owner ));
    OwnDataModule := False;

    if( not OwnRoot ) then
      OwnDataModule := ( ARootComponent.Name = OWGetMainOwnerComponent( SourcePin.Owner ).Name );

    for I := 0 to OWGetDispatcherCount() - 1 do
      begin
      Dispatcher := OWGetDispatcher( I );
      if( not SourcePin.CanConnectToState( Dispatcher )) then
        Continue;

      Entry := TOWEPinEntry.Create();
      PinsList.Add( Entry );
      Entry.Dispatcher := Dispatcher;
      Entry.PinName := Dispatcher.Name;
      Entry.Checked := SourcePin.IsConnectedToState( Dispatcher );

//      Entry.CanConnect := True;
{
      for J := 0 to Dispatcher.PinCount - 1 do
        begin
        Entry := TOWEPinEntry.Create();
        Entry.Dispatcher := Dispatcher;
        Entry.Pin := Dispatcher[ J ];
        Entry.PinName := Dispatcher[ J ].Name;
        PinsList.Add( Entry );
        end;
}
      end;
      
    OWGetPinValueList( ARootComponent, SourcePin, Values, FilterPins );
    for I := 0 to Values.Count - 1 do
      begin
      OtherPin := TOWPin( Values.Objects[ I ] );
       
      if( ( OtherPin is TOWSinkPin ) or ( OtherPin is TOWStatePin ) ) then
        begin
        if( OtherPin is TOWStatePin ) then
          if( OtherPin.IsConnected() ) then
            Continue; // Those pins are represented by the Dispatchers.

        Entry := TOWEPinEntry.Create();
        PinsList.Add( Entry );

        Entry.Pin := OtherPin;
        Str := LinkToDisplayString( ARootComponent, Values.Strings [ I ], FullPath, OwnRoot, PinStr );
        Entry.PinName := PinStr;

        Entry.OwnerName := Str;
////        Entry.CanConnect := True;

//        if( OtherPin is TOWSinkPin ) then
          begin
          if( not SourcePin.CanConnectTo( OtherPin )) then
            begin
            Entry.Checked := False;
            Entry.SavedChecked := False;
////          Entry.CanConnect := False;
            end

          else
            begin
            LinkName := Values.Strings[ I ];
            if( OwnDataModule ) then
              begin
              iPos := Pos( '.', LinkName );
              Delete( LinkName, 1, iPos );
              end;

            Entry.Checked := SourcePin.IsLinkedTo( LinkName );
            Entry.SavedChecked := Entry.Checked;

            end;
            
          end;

//        LinkedTo := '';
//        LinkType := '';
{
        if( OtherPin is TOWSinkPin ) then
          if( SinkPin.SourcePin <> NIL ) then
            begin
            LinkedTo := SinkPin.GetLinkStr( False );
            OwnRoot1 := ( OWGetMainOwnerComponent( SinkPin.SourcePin.Owner ) = OWGetMainOwnerComponent( SinkPin.Owner ));
            FullSinkPath := ( OWGetMainOwnerComponent( SinkPin.SourcePin.Owner ) <> CurrentRoot );
            Str := LinkToDisplayString( OWGetMainOwnerComponent( SinkPin.SourcePin.Owner ), LinkedTo, FullSinkPath, OwnRoot1, PinStr );
            LinkedTo := Str + '.' + PinStr;

            LinkType := GetLinkType( SinkPin );
            end;
}
////        Entry.LinkedTo := LinkedTo;
////        Entry.LinkType := LinkType;
        end;

      end;

  finally
    Values.Free;

  end;

end;

function TOWPinEditorForm.EntryFromPin( Pin : TOWBasicPin ) : TOWEPinEntry;
var
  I : Integer;
  
begin
  Result := NIL;
  for I := 0 to PinsList.Count - 1 do
    if( PinsList.Items[ I ].Pin = Pin ) then
      begin
      Result := PinsList.Items[ I ];
      Break;
      end;
    

end;

function TOWPinEditorForm.EntryFromDispatcher( Dispatcher : TOWStateDispatcher ) : TOWEPinEntry;
var
  I : Integer;

begin
  Result := NIL;
  for I := 0 to PinsList.Count - 1 do
    if( PinsList.Items[ I ].Dispatcher = Dispatcher ) then
      begin
      Result := PinsList.Items[ I ];
      Break;
      end;


end;

procedure TOWPinEditorForm.PopulateSingleSinkForm( CurrentRoot : TComponent; ARootComponent : TComponent; OnlyConnected : Boolean; FullPath : Boolean; FilterPins : Boolean );
var
  Values        : TStringList;
  I             : Integer;
  SourcePin     : TOWSourcePin;
  OtherPin      : TOWBasicPin;
  Item          : TListItem;
  iPos          : Integer;
  Str           : String;
  LinkedTo      : String;
  LinkType      : String;
  NotifyAfter   : String;
  OwnRoot       : Boolean;
  OwnRoot1      : Boolean;
  OwnDataModule : Boolean;
  LinkName      : String;
  PinStr        : String;
  Dispatcher    : TOWStateDispatcher;

  FullSinkPath  : Boolean;

  Entry         : TOWEPinEntry;
  Linked        : Boolean;

  ItemDataEntry : TOWEItemEntry;

begin
  Items.BeginUpdate();
  Values := TStringList.Create;
  try
    if( ARootComponent = NIL ) then
      ARootComponent := OWGetMainOwnerComponent( SinkPin.Owner );

    OwnRoot := ( ARootComponent = OWGetMainOwnerComponent( SinkPin.Owner ));
    OwnDataModule := False;

    if( not OwnRoot ) then
      OwnDataModule := ( ARootComponent.Name = OWGetMainOwnerComponent( SinkPin.Owner ).Name );

    for I := 0 to OWGetDispatcherCount() - 1 do
      begin
      Dispatcher := OWGetDispatcher( I );
      if( not SinkPin.CanConnectToState( Dispatcher )) then
        Continue;

      Entry := EntryFromDispatcher( Dispatcher );
      Item := Items.Add();
      

      Item.ImageIndex := -1;
      Item.Caption := Dispatcher.Name;

      ItemDataEntry := TOWEItemEntry.Create( Item, SinkPin );
      ItemDataEntry.IsDispatcher := True;
      Item.Data := ItemDataEntry;

      Item.SubItems.Add( Str );
      
      if( Dispatcher.Pins[ 0 ] = SinkPin ) then
        ItemDataEntry.ConnectedToPin := Dispatcher.Pins[ 1 ]
        
      else
        ItemDataEntry.ConnectedToPin := Dispatcher.Pins[ 0 ];

{
      if( Dispatcher[ 0 ] = SinkPin ) then
        Item.SubItems.AddObject( Str, Dispatcher[ 1 ] )

      else
        Item.SubItems.AddObject( Str, Dispatcher[ 0 ] );
}        
//      Item.StateIndex := Ord( Entry.Checked ) or 2;
      Item.StateIndex := Ord( Entry.Checked );

      if( Dispatcher.PinCount = 2 ) then
        begin
        if( Dispatcher.Pins[ 0 ] = SinkPin ) then
          Item.SubItems.Add( Dispatcher.Pins[ 1 ].GetFullName( True ) )
//          Item.SubItems.AddObject( Dispatcher.PinProxies[ 1 ].DisplayName, Entry )

        else
          Item.SubItems.Add( Dispatcher.Pins[ 0 ].GetFullName( True ) );
//          Item.SubItems.AddObject( Dispatcher.PinProxies[ 0 ].DisplayName, Entry );

        end

      else
        Item.SubItems.Add( IntToStr( Dispatcher.PinCount - 1 ) + ' Pins' );
//        Item.SubItems.AddObject( IntToStr( Dispatcher.PinProxyCount - 1 ) + ' Pins', Entry );

      LinkType := GetLinkType( SinkPin );

      Item.SubItems.Add( Dispatcher.GetAfterPinDisplayName( SinkPin ));
      Item.SubItems.Add( LinkType );
      Item.SubItems.Add( Dispatcher.Name );
      end;

    OWGetPinValueList( ARootComponent, SinkPin, Values, FilterPins );
    for I := 0 to Values.Count - 1 do
      begin
      OtherPin := TOWPin( Values.Objects[ I ] );
      if( ( not ( OtherPin is TOWSourcePin )) and ( not ( OtherPin is TOWStatePin )) ) then
        Continue;

      if( OtherPin is TOWStatePin ) then
        if( OtherPin.IsConnected() ) then
          Continue; // Those pins are represented by the Dispatchers.

      if( OtherPin is TOWSourcePin ) then
        SourcePin := TOWSourcePin( OtherPin )

      else
        SourcePin := NIL;

      Entry := EntryFromPin( OtherPin );
      if( OnlyConnected ) then
        begin
        if( Entry <> NIL ) then
          begin
          if( not Entry.Checked ) then
            Continue;
        
          end

        else
          if( SinkPin.GetLinkStr() <> Values.Strings[ I ] ) then
            Continue;

        end;

      Item := Items.Add();
      ItemDataEntry := TOWEItemEntry.Create( Item, SinkPin );
      Item.Data := ItemDataEntry;

      if( OtherPin.GetRoot() <> SinkPin.GetRoot() ) then
        Item.ImageIndex := 3

      else
        Item.ImageIndex := -1;

      Str := LinkToDisplayString( ARootComponent, Values.Strings [ I ], FullPath, OwnRoot, PinStr );
      Item.Caption := PinStr;

//      Item.SubItems.AddObject( Str, Values.Objects [ I ] );
      Item.SubItems.Add( Str );
      ItemDataEntry.ConnectedToPin := TOWBasicPin( Values.Objects [ I ] );
      if( not SinkPin.CanConnectTo( OtherPin )) then
        begin
        Item.StateIndex := -1;
        ItemDataEntry.StateIndex := -1;
//        Item.Data := Pointer( -1 );
        end

      else
        begin
//        Item.Checked := SourcePin.IsLinkedTo( SinkPin );
        LinkName := Values.Strings[ I ];
        if( OwnDataModule ) then
          begin
          iPos := Pos( '.', LinkName );
          Delete( LinkName, 1, iPos );
          end;

        Linked := ( SinkPin.GetLinkStr() = LinkName );

        if( Entry <> NIL ) then
          Item.StateIndex := Ord( Entry.Checked )

        else
          Item.StateIndex := Ord( Linked );

        if( OtherPin is TOWStatePin ) then
          Item.StateIndex := Item.StateIndex or 2; 

        ItemDataEntry.StateIndex := Item.StateIndex; 
//        Item.Data := Pointer( Item.StateIndex );
//        Item.StateIndex := Ord( Item.Checked );
        end;

      LinkedTo := '';
      LinkType := '';
      NotifyAfter := '';
      if( OtherPin is TOWSourcePin ) then
        if( SourcePin.IsConnected() ) then
          begin
          LinkedTo := GetSourcePinValue( SourcePin, Designer );
          FullSinkPath := True;
          if( SourcePin.SinkCount = 1 ) then
            begin
            OwnRoot1 := ( OWGetMainOwnerComponent( SourcePin.Sinks[ 0 ].Owner ) = OWGetMainOwnerComponent( SourcePin.Owner ));
            FullSinkPath := ( OWGetMainOwnerComponent( SourcePin.Sinks[ 0 ].Owner ) <> CurrentRoot );

            Str := LinkToDisplayString( OWGetMainOwnerComponent( SourcePin.Sinks[ 0 ].Owner ), LinkedTo, FullSinkPath, OwnRoot1, PinStr );
            LinkedTo := Str + '.' + PinStr;
            end;

          if( SourcePin.SinkCount > 0 ) then
            LinkType := GetLinkType( SourcePin.Sinks[ 0 ] );

          NotifyAfter := SourcePin.GetAfterPinDisplayName( SinkPin );  

//          else
//            LinkType := GetLinkType( 
            
          end;

//      Item.SubItems.AddObject( LinkedTo, Entry );
      Item.SubItems.Add( LinkedTo );
      Item.SubItems.Add( NotifyAfter );
      Item.SubItems.Add( LinkType );
      Item.SubItems.Add( Values.Strings[ I ] );
      end;

    if( SinkPin.IsConnected() ) then
      begin
      if( SinkPin.SourcePin.GetRoot() = NIL ) then
        begin
        Item := Items.Add();

        ItemDataEntry := TOWEItemEntry.Create( Item, SinkPin );
        Item.Data := ItemDataEntry;

        ItemDataEntry.ConnectedToPin := SinkPin.SourcePin;

        Item.ImageIndex := 2;
        Item.StateIndex := 1;
        ItemDataEntry.StateIndex := Item.StateIndex;
//        ItemDataEntry.ConnectedAfterPin := SinkPin.SourcePin.

        Item.Caption := SinkPin.SourcePin.GetName();
        Item.SubItems.Add( SinkPin.SourcePin.GetOwnerName() );
        Item.SubItems.Add( SinkPin.GetFullName( False ) );
        end;
        
      end;
    
  finally
    Values.Free;
    for I := 0 to Items.Count - 1 do
      begin
      if( Form.Items [ I ].StateIndex and 1 > 0 ) then
        begin
        OtherPin := TOWEItemEntry( Items[ I ].Data ).ConnectedToPin;
        TOWExposedPin( OtherPin ).SetInEditor( True );
        end;
      end;
      
    Items.EndUpdate();

  end;

end;

procedure TOWPinEditorForm.PopulateSingleSourceForm( CurrentRoot : TComponent; ARootComponent : TComponent; OnlyConnected : Boolean; FullPath : Boolean; FilterPins : Boolean );
var
  Values        : TStringList;
  I             : Integer;
  J             : Integer;
  SinkPin       : TOWSinkPin;
  OtherPin      : TOWBasicPin;
  Item          : TListItem;
  iPos          : Integer;
  Str           : String;
  LinkedTo      : String;
  LinkType      : String;
  NotifyAfter   : String;
  OwnRoot       : Boolean;
  OwnRoot1      : Boolean;
  OwnDataModule : Boolean;
  LinkName      : String;
  PinStr        : String;

  FullSinkPath  : Boolean;
  Entry         : TOWEPinEntry;
  Dispatcher    : TOWStateDispatcher;

  Linked        : Boolean;
  ItemDataEntry : TOWEItemEntry;

begin
  Items.BeginUpdate();
  Values := TStringList.Create;
  try
    if( ARootComponent = NIL ) then
      ARootComponent := OWGetMainOwnerComponent( SourcePin.Owner );

    OwnRoot := ( ARootComponent = OWGetMainOwnerComponent( SourcePin.Owner ));
    OwnDataModule := False;

    if( not OwnRoot ) then
      OwnDataModule := ( ARootComponent.Name = OWGetMainOwnerComponent( SourcePin.Owner ).Name );

    for I := 0 to OWGetDispatcherCount() - 1 do
      begin
      Dispatcher := OWGetDispatcher( I );
      if( not SourcePin.CanConnectToState( Dispatcher )) then
        Continue;

      Entry := EntryFromDispatcher( Dispatcher );
      Item := Items.Add();
      
      ItemDataEntry := TOWEItemEntry.Create( Item, SourcePin );
      ItemDataEntry.IsDispatcher := True;
      Item.Data := ItemDataEntry;

      Item.ImageIndex := -1;
      Item.Caption := Dispatcher.Name;
      if( Dispatcher[ 0 ] = SourcePin ) then
        ItemDataEntry.ConnectedToPin := Dispatcher.Pins[ 1 ] 
//        Item.SubItems.AddObject( Str, Dispatcher[ 1 ] )
        
      else
        ItemDataEntry.ConnectedToPin := Dispatcher.Pins[ 0 ]; 
//        Item.SubItems.AddObject( Str, Dispatcher[ 0 ] );

      Item.SubItems.Add( Str );
//      Item.StateIndex := Ord( Entry.Checked ) or 2;
      Item.StateIndex := Ord( Entry.Checked );

      if( Dispatcher.PinCount = 2 ) then
        begin
        if( Dispatcher.Pins[ 0 ] = SourcePin ) then
          Item.SubItems.Add( Dispatcher.Pins[ 1 ].GetFullName( True ) )
//          Item.SubItems.AddObject( Dispatcher.PinProxies[ 1 ].DisplayName, Entry )

        else
          Item.SubItems.Add( Dispatcher.Pins[ 0 ].GetFullName( True ) );
//          Item.SubItems.AddObject( Dispatcher.PinProxies[ 0 ].DisplayName, Entry );

        end

      else
        Item.SubItems.Add( IntToStr( Dispatcher.PinCount - 1 ) + ' Pins' );
//        Item.SubItems.AddObject( IntToStr( Dispatcher.PinProxyCount - 1 ) + ' Pins', Entry );

//      if( SourcePin.SinkCount > 0 ) then
//      LinkType := GetLinkType( SourcePin );

      if( Dispatcher.PinCount = 0 ) then
        LinkType := 'Unknown'
        
      else
        begin
        LinkType := SourcePin.GetConnectionName( Dispatcher.Pins[ 0 ] );
        for J := 1 to Dispatcher.PinCount - 1 do
          begin
          if( SourcePin <> Dispatcher[ J ] ) then 
            if( LinkType <> SourcePin.GetConnectionName( Dispatcher[ J ] )) then
              begin
              LinkType := 'Multiple types';
              Break;
              end;
            
          end;
          
        end;

//      Item.SubItems.Add( '######' );
      Item.SubItems.Add( Dispatcher.GetAfterPinDisplayName( SourcePin ) );
      Item.SubItems.Add( LinkType );
      Item.SubItems.Add( Dispatcher.Name );
{
      Entry := TOWEPinEntry.Create();
      PinsList.Add( Entry );
      Entry.Dispatcher := Dispatcher;
      Entry.PinName := Dispatcher.Name;

//      Entry.CanConnect := True;
      for J := 0 to Dispatcher.PinCount - 1 do
        begin
        Entry := TOWEPinEntry.Create();
        Entry.Dispatcher := Dispatcher;
        Entry.Pin := Dispatcher[ J ];
        Entry.PinName := Dispatcher[ J ].Name;
        PinsList.Add( Entry );
        end;
}

      end;

    OWGetPinValueList( ARootComponent, SourcePin, Values, FilterPins );
    for I := 0 to Values.Count - 1 do
      begin
      OtherPin := TOWBasicPin( Values.Objects[ I ] );
      if( ( not ( OtherPin is TOWSinkPin )) and ( not ( OtherPin is TOWStatePin ))) then
        Continue;

      if( OtherPin is TOWStatePin ) then
        if( OtherPin.IsConnected() ) then
          Continue; // Those pins are represented by the Dispatchers.

      if( OtherPin is TOWSinkPin ) then
        SinkPin := TOWSinkPin( OtherPin )

      else
        SinkPin := NIL;

//      Entry := EntryFromPin( SinkPin );
      Entry := EntryFromPin( OtherPin );
      if( OnlyConnected ) then
        begin
        if( Entry <> NIL ) then
          begin
          if( not Entry.Checked ) then
            Continue;
            
          end
          
        else
          if( not SourcePin.IsLinkedTo( Values.Strings[ I ] ) ) then
            Continue;

        end;

      Item := Items.Add();

      ItemDataEntry := TOWEItemEntry.Create( Item, SourcePin );
      Item.Data := ItemDataEntry;
      
      if( OWGetMainOwnerComponent( SourcePin.Owner ) <> OWGetMainOwnerComponent( OtherPin.Owner ) ) then
        Item.ImageIndex := 3

      else
        Item.ImageIndex := -1;

      Str := LinkToDisplayString( ARootComponent, Values.Strings[ I ], FullPath, OwnRoot, PinStr );
      Item.Caption := PinStr;

      ItemDataEntry.ConnectedToPin := TOWBasicPin( Values.Objects[ I ] );
//      Item.SubItems.AddObject( Str, Values.Objects [ I ] );
      Item.SubItems.Add( Str );
      if( not SourcePin.CanConnectTo( OtherPin )) then
        begin
        Item.StateIndex := -1;
//        Item.Data := Pointer( -1 );
        ItemDataEntry.StateIndex := -1;
        end

      else
        begin
        LinkName := Values.Strings[ I ];
        if( OwnDataModule ) then
          begin
          iPos := Pos( '.', LinkName );
          Delete( LinkName, 1, iPos );
          end;

        Linked := SourcePin.IsLinkedTo( LinkName );

        if( Entry <> NIL ) then
          Item.StateIndex := Ord( Entry.Checked )

        else
          Item.StateIndex := Ord( Linked );

        if( OtherPin is TOWStatePin ) then
          Item.StateIndex := Item.StateIndex or 2; 

//        Item.Data := Pointer( Item.StateIndex );
        ItemDataEntry.StateIndex := Item.StateIndex;

{
        if( Entry <> NIL ) then
          Item.Checked := Entry.Checked

        else
          Item.Checked := Linked;

        Item.Data := Pointer( Linked );
        Item.StateIndex := Ord( Item.Checked );
}
        end;

      LinkedTo := '';
      LinkType := '';
      NotifyAfter := '';
      if( OtherPin is TOWSinkPin ) then
        if( SinkPin.SourcePin <> NIL ) then
          begin
          LinkedTo := SinkPin.GetLinkStr();
          OwnRoot1 := ( SinkPin.SourcePin.GetRoot() = SinkPin.GetRoot() );
          FullSinkPath := ( SinkPin.SourcePin.GetRoot() <> CurrentRoot );
          Str := LinkToDisplayString( SinkPin.SourcePin.GetRoot(), LinkedTo, FullSinkPath, OwnRoot1, PinStr );
          LinkedTo := Str + '.' + PinStr;

          LinkType := GetLinkType( SinkPin );
          NotifyAfter := TOWSourcePin( SinkPin.SourcePin ).GetAfterPinDisplayName( SinkPin ); 
          end;

//      Item.SubItems.AddObject( LinkedTo, Entry );
      Item.SubItems.Add( LinkedTo );
      Item.SubItems.Add( NotifyAfter );
      Item.SubItems.Add( LinkType );
      Item.SubItems.Add( Values.Strings[ I ] );
      end;

    for I := 0 to SourcePin.SinkCount - 1 do
      begin
      if( SourcePin.Sinks[ I ].GetRoot() = NIL ) then
        begin
        Item := Items.Add();

        ItemDataEntry := TOWEItemEntry.Create( Item, SourcePin );
        Item.Data := ItemDataEntry;

        ItemDataEntry.ConnectedToPin := SourcePin.Sinks[ I ];

        Item.ImageIndex := 2;
        Item.StateIndex := 1;
        ItemDataEntry.StateIndex := Item.StateIndex;

        Item.Caption := SourcePin.Sinks[ I ].GetName();
        Item.SubItems.Add( SourcePin.Sinks[ I ].GetOwnerName() );
        Item.SubItems.Add( SourcePin.GetFullName( False ) );
        end;
        
      end;
    
  finally
    Values.Free;
    for I := 0 to Items.Count - 1 do
      begin
      if( Form.Items [ I ].StateIndex and 1 > 0 ) then
        begin
        OtherPin := TOWEItemEntry( Items[ I ].Data ).ConnectedToPin;
        TOWExposedPin( OtherPin ).SetInEditor( True );
        end;
      end;
      
    Items.EndUpdate();
  end;

end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.OWMUpdateInspector(var Message: TMessage);
var
  List          : TADesignerSelectionList;
  Designer      : IADesigner;

begin
  InRefresh := False;
{$IFNDEF FPC}
  Designer := IADesigner( Message.WParam );
  List := TADesignerSelectionList.Create;
  Designer.GetSelections( List );
  Designer.NoSelection();
  Designer.SetSelections( List );
  List.Free();
{$ENDIF}
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.OWMUpdate(var Message: TMessage);
begin
  OWLinkAwaitsLinkingAllForms();
end;

function  TOWPinEditorForm.ExecuteForSource( ADesigner : TOWPropertyDesigner; ASourcePin : TOWSourcePin ): Integer;
begin
  Designer := ADesigner;
  SourcePin := ASourcePin;
  SinkPin := NIL;
  
{$IFDEF FPC}
  Root := OWGetMainDesignOwner( ASourcePin.Owner );
{$ELSE}
  Root := ADesigner.GetRoot();
{$ENDIF}

  LinkAllButton.Visible := True;
  UnlinkAllButton.Visible := True;

  ListView.Columns[0].Caption := 'Sink pin';
  ListView.Columns[2].Caption := 'Connected to';
  Caption := 'Connections - Source Pin : ' + OWValueToString( SourcePin, '.', False, False );

  ListView.StateImages := SourcesImageList; 
  OWLinkAwaitsLinkingAllForms();
  Result := ShowModal();
end;
//---------------------------------------------------------------------------
function  TOWPinEditorForm.ExecuteForSink( ADesigner : TOWPropertyDesigner; ASinkPin : TOWSinkPin ): Integer;
begin
  Designer := ADesigner;
  SinkPin := ASinkPin;
  SourcePin := NIL;

{$IFDEF FPC}
  Root := OWGetMainDesignOwner( ASinkPin.Owner );
{$ELSE}
  Root := ADesigner.GetRoot();
{$ENDIF}

  LinkAllButton.Visible := False;
  UnlinkAllButton.Visible := False;

  ListView.Columns[0].Caption := 'Source pin';
  ListView.Columns[2].Caption := 'Connections';
  Caption := 'Connections - Sink Pin : ' + OWValueToString( SinkPin, '.', False, False );

  ListView.StateImages := SinksImageList;
  OWLinkAwaitsLinkingAllForms();
  Result := ShowModal();
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.UpdateLinksCount();
var
  Counter  : Integer;
  I        : Integer;
  AEnabled : Boolean;
begin
  Counter := 0;
  for I := 0 to ListView.Items.Count - 1 do
    if( ( ListView.Items[ i ].ImageIndex and 1 ) > 0 ) then
      Inc( Counter );

  LinksCountLabel.Caption := IntToStr( Counter );
  AEnabled := (( SinkPin <> NIL ) and ( ListView.ItemFocused <> NIL ) and ( ListView.ItemFocused.Checked ) );
  if( AEnabled ) then
  if( not( TOWEItemEntry( ListView.ItemFocused.Data ).ConnectedToPin is TOWSourcePin )) then
    if( TOWEItemEntry( ListView.ItemFocused.Data ).ConnectedToPin.ConnectedDispatcherCount = 0 ) then
      AEnabled := False;

  AfterPinButton.Enabled := AEnabled;
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.ClearData();
begin
  ListView.Items.Clear();
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.ListViewChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);

//var
//  I     : Integer;
//  Entry : TOWEPinEntry;
  
begin
  if( ListUpdating ) then
    Exit;

{
  if( Item.Checked and ( TImageIndex(Item.Data) = -1 )) then
    begin
    Item.Checked := False;
    Item.StateIndex := -1;
    end;

  if( Item.StateIndex <> -1 ) then
    begin
    if( Item.StateIndex <> Ord(Item.Checked )) then
      Item.StateIndex := Ord(Item.Checked )

    end;

  if( ( SinkPin <> NIL ) AND ( Item.Checked )) then
    for I := 0 to ListView.Items.Count - 1 do
      if( ListView.Items[ I ] <> Item ) then
        if( ListView.Items[ I ].Checked ) then
          ListView.Items[ I ].Checked := False;

  Entry := TOWEPinEntry( Item.SubItems.Objects[ 1 ] );

  if( Entry <> NIL ) then
    Entry.Checked := Item.Checked;
}
    
  UpdateLinksCount();
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.ListViewColumnClick(Sender: TObject; Column: TListColumn);
begin
  ListView.Columns[ ColumnToSort ].ImageIndex := -1;
  
  if( ColumnToSort = Column.Index ) then
    Direction := not Direction

  else
    begin
    Direction := true;
    ColumnToSort := Column.Index;
    end;

{$IFNDEF FPC}
  TCustomListView(Sender).AlphaSort();
{$ENDIF}

  ListView.Columns[ ColumnToSort].ImageIndex := Integer( not Direction );
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.FormCreate(Sender: TObject);
begin
  PinsList     := TOWEPinsList.Create( True );
  ColumnToSort := 0;
  Direction    := True;
  AllSelected  := False;
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.FormDestroy(Sender: TObject);
begin
  PinsList.Free();
  Form := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.ListViewCompare(Sender: TObject; Item1, Item2: TListItem;
  Data: Integer; var Compare: Integer);
var
  DirMultiply : Integer;
  ix          : Integer;

begin

  if( Direction ) then
    DirMultiply :=  1
    
  else
    DirMultiply := -1;

  if(ColumnToSort = 0) then
    Compare := DirMultiply * CompareText( Item1.Caption, Item2.Caption )

  else
    begin
    ix := ColumnToSort - 1;
    Compare := DirMultiply * CompareText( Item1.SubItems.Strings[ix], Item2.SubItems.Strings[ix] );
    end

end;

function TOWPinEditorForm.GetListItems() : TListItems;
begin
  Result := ListView.Items;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function  TOWPinListPropertyEditor.GetAttributes(): TPropertyAttributes;
begin
  Result := [ paSubProperties, paReadOnly,
{$IFNDEF D5}
  paVolatileSubProperties,
{$ENDIF}
  paAutoUpdate ];
  
  OWRequestDesignerRefresh();
end;
//---------------------------------------------------------------------------
procedure TOWPinListPropertyEditor.CheckRefresh();
var
  Collection : TOWPinList;
  
begin
  Collection := TOWPinList( GetOrdValue() );
  if( TOWExposedPinList( Collection ).LastIndicatedCount <> Collection.Count ) then
    begin
    TOWExposedPinList( Collection ).LastIndicatedCount := Collection.Count;
    OWResetObjectInspector( GetIntDesigner() );
    end;
    
end;
//---------------------------------------------------------------------------
function  TOWPinListPropertyEditor.GetValue(): string;
var
  Collection : TOWPinList;
  
begin
  OWRequestRefreshEx( GetIntDesigner() );

  Collection := TOWPinList( GetOrdValue() );
  if( TOWExposedPinList( Collection ).LastIndicatedCount <> Collection.Count ) then
    begin
    TOWExposedPinList( Collection ).LastIndicatedCount := Collection.Count;
    OWResetObjectInspector( GetIntDesigner() );
    end;

  if( Collection.Count = 0 ) then
    begin
    Result := '(Empty)';
    Exit;
    end;

  if( Collection.Count = 1 ) then
    begin
    Result := '1 Pin';
    Exit;
    end;

  Result := IntToStr( Collection.Count ) + ' Pins';
end;
//---------------------------------------------------------------------------
procedure TOWPinListPropertyEditor.GetProperties(Proc: TAGetPropProc);
var
  Collection    : TOWPinList;
  I             : Integer;
  Pin           : TOWBasicPin;
begin
  Collection := TOWPinList( GetOrdValue() );

  TOWExposedPinList( Collection ).LastIndicatedCount := Collection.Count;
  for I := 0 to Collection.Count - 1 do
    begin
    try
      Pin := Collection.Pins[ I ];
      if( Pin is TOWSourcePin ) then
        Proc( TOWSourcePinListPropertyEditor.CreateEx( GetIntDesigner(), TOWSourcePin( Pin ), Collection.Names[ I ], Self ))

      else
        if( Pin is TOWSinkPin ) then
          Proc( TOWSinkPinListPropertyEditor.CreateEx( GetIntDesigner(), TOWSinkPin( Pin ), Collection.Names[ I ], Self ))

    finally
    end;

    end;


end;
//---------------------------------------------------------------------------
function  TOWPinListPropertyEditor.GetIntDesigner() : TOWPropertyDesigner;
begin
{$IFDEF FPC}
  Result := PropertyHook;
{$ELSE}
  Result := Designer;
{$ENDIF}
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function  TOWPinListOwnerPropertyEditor.GetAttributes(): TPropertyAttributes;
begin
  Result := [ paSubProperties,
{$IFNDEF D5}
  paVolatileSubProperties,
{$ENDIF}
  paAutoUpdate ];
  
  OWRequestDesignerRefresh();
end;
//---------------------------------------------------------------------------
function  TOWPinListOwnerPropertyEditor.GetValue(): string;
var
  Collection : TOWPinList;

begin
  OWRequestRefreshEx( GetIntDesigner() );
//  OWLinkAwaitsLinking( Designer.Form );
  Collection := TOWPinList( GetOrdValue() );
  Result := IntToStr( Collection.Count );
end;
//---------------------------------------------------------------------------
procedure TOWPinListOwnerPropertyEditor.SetValue(const Value: string);
var
  Collection    : TOWPinList;

begin
  try
    Collection := TOWPinList( GetOrdValue() );
    Collection.Count := StrToInt( Value );
    Modified();
    OWResetObjectInspector( GetIntDesigner() );
      
  except;
  end;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWPinEditorForm.RootFromName( RootName : String ) : TComponent;
var
  RealName : String;
  iPos     : Integer;

  CurrentComp : TComponent;

begin
  RealName := RootName;
  iPos := Pos( ' ', RealName );
  if( iPos > 0 ) then
    Delete( RealName, iPos, 10000 );

  Result := Designer.GetComponent( RealName + SEPARATOR + RealName );
  if( Result = NIL ) then
    Result := Designer.GetComponent( RealName );

  CurrentComp := Result;
  if( CurrentComp <> NIL ) then 
    while( CurrentComp.Owner <> NIL ) do
      begin
      if( Result is TDataModule ) then
        Break;

      if( Result is TFrame ) then
        Break;

      if( ( CurrentComp.Owner is TCustomForm ) or ( CurrentComp.Owner is TFrame ) or ( CurrentComp.Owner is TDataModule ) ) then
        Result := CurrentComp.Owner;

      CurrentComp := CurrentComp.Owner
      end;

  if( Result = NIL ) then
    Result := Root;

end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.FormsComboBoxChange(Sender: TObject);
var
  SelectedRoot : TComponent;
  FormName     : String;

begin
  SelectedRoot := NIL;
  AllSelected := False;
  if( FormsComboBox.Items.Count > 1 ) then
    if( FormsComboBox.ItemIndex = FormsComboBox.Items.Count - 1 ) then
      begin
      PopulateAll();
      AllSelected := True;
      Exit;
      end;

  if( FormsComboBox.ItemIndex <> -1 ) then
    begin
    FormName := FormsComboBox.Items.Strings[ FormsComboBox.ItemIndex ];
    SelectedRoot := RootFromName( FormName );
    end;

  PopulateForm( SelectedRoot );
end;


{$IFNDEF FPC}
type TIOWPinsEditorNotifier = class( TIAddInNotifier )
    procedure FileNotification(NotifyCode: TFileNotification;
      const FileName: string; var Cancel: Boolean); override; stdcall;
    procedure EventNotification(NotifyCode: TEventNotification;
      var Cancel: Boolean); override; stdcall;
end;

procedure TIOWPinsEditorNotifier.FileNotification(NotifyCode: TFileNotification;
      const FileName: string; var Cancel: Boolean);
begin
  if( NotifyCode <> fnFileOpened ) then
    Exit;

  OWRequestDesignerRefresh();
end;

procedure TIOWPinsEditorNotifier.EventNotification(NotifyCode: TEventNotification;
      var Cancel: Boolean);
begin
end;

var EditorNotifier : TIOWPinsEditorNotifier;
{$ENDIF}

procedure TOWPinEditorForm.TestButtonClick(Sender: TObject);
begin
  OWReportAwaitsLinking();
end;

procedure TOWPinEditorForm.Image1Click(Sender: TObject);
var
  AboutForm : TOWAboutForm;
begin
  AboutPanel.BevelInner := bvLowered;
  AboutForm := TOWAboutForm.Create( Self );
  AboutForm.ShowModal();
  AboutForm.Free();
  AboutPanel.BevelInner := bvRaised;
end;

procedure TOWPinEditorForm.Image1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  AboutPanel.BevelInner := bvLowered;
end;

procedure TOWPinEditorForm.Image1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  AboutPanel.BevelInner := bvRaised;
end;

procedure TOWPinEditorForm.ChangeState( Item : TListItem );
var
  I : Integer;

begin
  if( Item = NIL ) then
    Exit;
    
  if( Item.StateIndex and 1 <> 0 ) then
    Item.StateIndex := Item.StateIndex and 2

  else
    begin
    if( SourcePin = NIL ) then
      begin
      if( Item.StateIndex < 2 ) then
        begin
        for I := 0 to ListView.Items.Count - 1 do
          if( ( ListView.Items[ I ].StateIndex < 2 ) or ( TOWEItemEntry( Item.Data ).ConnectedToPin is TOWBasicPin )) then
            ListView.Items[ I ].StateIndex := ListView.Items[ I ].StateIndex and 2;

        end

      else
        begin
        for I := 0 to ListView.Items.Count - 1 do
          if( TOWEItemEntry( ListView.Items[ I ].Data ).ConnectedToPin is TOWBasicPin ) then
            if( ListView.Items[ I ].StateIndex < 2 ) then
              ListView.Items[ I ].StateIndex := 0;
            
        end;
  //Form.Items [ I ].SubItems.Objects[ 0 ] is TOWPin

      end;

    Item.StateIndex := Item.StateIndex or 1;
    end;

//  Item.StateIndex := Item.StateIndex xor 1;
end;

procedure TOWPinEditorForm.ListViewMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Item : TListItem;

begin
  if( htOnStateIcon in ListView.GetHitTestInfoAt( X, Y )) then
    begin
    Item := ListView.GetItemAt( X, Y );
    Item.Selected := True;
    Item.Focused := True;
    ChangeState( Item );
    end;

end;

procedure TOWPinEditorForm.ListViewKeyPress(Sender: TObject;
  var Key: Char);
begin
  if( Key = ' ' ) then
    begin
    ChangeState( ListView.ItemFocused );      
    Key := #0;
    end;
end;

procedure TOWPinEditorForm.ListViewDeletion(Sender: TObject;
  Item: TListItem);
begin
  TOWEItemEntry( Item.Data ).Free();
  Item.Data := NIL;
end;

{
constructor TOWEItemEntry.Create( APinEntry : TOWEPinEntry );
begin
  inherited;
  PinEntry := APinEntry;
end;
}

procedure TOWPinEditorForm.AfterPinButtonClick(Sender: TObject);
var
  AForm : TOWAfterPinSelectForm;

begin
  AForm := TOWAfterPinSelectForm.Create( Self );

  if( TOWEItemEntry( ListView.ItemFocused.Data ).ConnectedToPin is TOWSourcePin ) then
    AForm.FillFromSourcePin( SinkPin, TOWSourcePin( TOWEItemEntry( ListView.ItemFocused.Data ).ConnectedToPin ), TOWEItemEntry( ListView.ItemFocused.Data ).ConnectedAfterPin )

  else
    if( TOWEItemEntry( ListView.ItemFocused.Data ).ConnectedToPin.ConnectedDispatcherCount > 0 ) then
      AForm.FillFromDisparcher( SinkPin, TOWEItemEntry( ListView.ItemFocused.Data ).ConnectedToPin.ConnectedDispatcher[ 0 ], TOWEItemEntry( ListView.ItemFocused.Data ).ConnectedAfterPin );

  if( AForm.ShowModal() = mrOk ) then
    begin
//    TOWExposedPinObject( TOWEItemEntry( ListView.ItemFocused ).ConnectedToPin ).SetNotifyAfterByName( SinkPin, AForm.GetSelectedName() );
//    ListView.ItemFocused.SubItems[ 3 ] := TOWExposedPinObject( TOWEItemEntry( ListView.ItemFocused ).ConnectedToPin ).GetAfterPinDisplayName( SinkPin );
    TOWEItemEntry( ListView.ItemFocused.Data ).ConnectedAfterPin := AForm.GetSelectedPin();
//    ListView.ItemFocused.SubItems[ 2 ] := TOWEItemEntry( ListView.ItemFocused.Data ).ConnectedAfterPin.GetFullName( True ); 
    end;

  AForm.Free();
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWEItemEntry.Create( AItem : TListItem; APin : TOWBasicPin );
begin
  inherited Create();
  FPin := APin;
  FItem := AItem;
  if( FItem = NIL ) then
    Exit;

    
end;
//---------------------------------------------------------------------------
procedure TOWEItemEntry.SetConnectedToPin( Value : TOWBasicPin );
begin
  FConnectedToPin := Value;
  Populate();
end;
//---------------------------------------------------------------------------
procedure TOWEItemEntry.SetConnectedAfterPin( Value : TOWBasicPin );
begin
  FConnectedAfterPin := Value;
  Populate();
end;
//---------------------------------------------------------------------------
procedure TOWEItemEntry.Populate();
begin
  if( FItem = NIL ) then
    Exit;

  if( FItem.SubItems.Count < 3 ) then
    Exit;
     
  FItem.Caption := FPin.GetName();
  FItem.SubItems[ 0 ] := FPin.GetOwnerName();
{
  if( FConnectedToPin = NIL ) then
    FItem.SubItems[ 1 ] := ''

  else
    FItem.SubItems[ 1 ] := FConnectedToPin.GetFullName( FPin.GetRoot() <> FConnectedToPin.GetRoot() );
}
  if( FConnectedAfterPin = NIL ) then
    FItem.SubItems[ 2 ] := ''

  else
    FItem.SubItems[ 2 ] := FConnectedAfterPin.GetFullName( FPin.GetRoot() <> FConnectedAfterPin.GetRoot() );
    
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWEPinsList.GetItem( Index : Integer ) : TOWEPinEntry;
begin
  Result := TOWEPinEntry( inherited Items[ Index ] );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure Register;
begin
{$IFDEF D9} // Delphi 9.0
  LogoBitmap := TBitmap.Create();
  LogoBitmap.LoadFromResourceName( HInstance, 'OPENWIRELOGO' );
  if( SplashScreenServices <> nil ) then
    SplashScreenServices.AddProductBitmap( 'OpenWire', LogoBitmap.Handle );
    
  ForceDemandLoadState(dlDisable);
{$ENDIF}

{$IFNDEF FPC}
  {$IFDEF D6}
    RegisterPropertyInCategory( 'Input Pins',             typeinfo(TOWSinkPin) );
    RegisterPropertyInCategory( 'Output Pins',            typeinfo(TOWSourcePin) );
    RegisterPropertyInCategory( 'Pin Lists',              typeinfo(TOWPinList) );
  {$ELSE}
    RegisterPropertyInCategory( TOWInputPinsCategory,     typeinfo(TOWSinkPin) );
    RegisterPropertyInCategory( TOWOutputPinsCategory,    typeinfo(TOWSourcePin) );
    RegisterPropertyInCategory( TOWPinListCategory,       typeinfo(TOWPinList) );
  {$ENDIF}
{$ENDIF}

  RegisterPropertyEditor( typeinfo(TOWSourcePin),       NIL, '', TOWSourcePinPropertyEditor);
  RegisterPropertyEditor( typeinfo(TOWSinkPin),         NIL, '', TOWSinkPinPropertyEditor);
  RegisterPropertyEditor( typeinfo(TOWPinList),         NIL, '', TOWPinListPropertyEditor);
  RegisterPropertyEditor( typeinfo(TOWPinListOwner),    NIL, '', TOWPinListOwnerPropertyEditor);
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
initialization
{$IFDEF FPC}
  {$i OpenWirePinEditors.lrs}
{$ENDIF}
  InOppening := False;
  InRefresh := False;
  Form := TOWPinEditorForm.Create( Application );

{$IFNDEF FPC}
  EditorNotifier := TIOWPinsEditorNotifier.Create();
  if( Assigned( ToolServices )) then
    ToolServices.AddNotifier( EditorNotifier );
{$ENDIF}

finalization
{$IFNDEF FPC}
  if( Assigned( ToolServices )) then
    ToolServices.RemoveNotifier( EditorNotifier );
{$ENDIF}

{$IFDEF D9} // Delphi 9.0
  LogoBitmap.Free();
{$ENDIF}
{$IFNDEF FPC}
  EditorNotifier.Free();
{$ENDIF}
  if( Form <> NIL ) then
    Form.Free();

end.
