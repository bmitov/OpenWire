unit OWClassProperty;

{$IFDEF FPC}
{$MODE DELPHI}{$H+}
{$ENDIF}

{$IFDEF VER150} // Delphi 7.0
{$DEFINE D7}
{$ENDIF}

{$IFDEF VER170} // Delphi 9.0
{$DEFINE D9}
{$ENDIF}

{$IFDEF VER180} // Delphi 10.0
{$DEFINE D9}
{$ENDIF}

{$IFDEF VER190} // Delphi 11.0
{$DEFINE D9}
{$ENDIF}

{$IFDEF VER200} // Delphi 12.0
{$DEFINE D9}
{$ENDIF}

{$IFDEF VER210} // Delphi 14.0
{$DEFINE D9}
{$ENDIF}

{$IFDEF VER220} // Delphi 15.0
{$DEFINE D9}
{$ENDIF}

interface
uses
{$IFDEF FPC}
  ComponentEditors, PropEdits,
{$ELSE}
  {$IFDEF __VSDESIGN__}
    VSDesign,
  {$ELSE}
    {$IFDEF VER130}
    dsgnintf,
    {$ELSE}
    DesignEditors, DesignIntf,
    {$ENDIF}
  {$ENDIF}
{$ENDIF}

Classes, TypInfo, Contnrs, OWDesignTypes;

{$IFDEF FPC}
  type IProperty = TPropertyEditor;
{$ENDIF}

{$IFNDEF FPC}
{$IFNDEF VER130}
  {$IFDEF D9}
    type TOWClassPropertyEditor = class(TBasePropertyEditor, IProperty, IPropertyKind, IProperty70)
  {$ELSE}
    {$IFDEF D7}
    type TOWClassPropertyEditor = class(TBasePropertyEditor, IProperty, IProperty70)

    {$ELSE}
    type TOWClassPropertyEditor = class(TBasePropertyEditor, IProperty)
    {$ENDIF}
  {$ENDIF}
  protected
    function GetEditValue(out Value: String): Boolean; virtual;
    function HasInstance(Instance: TPersistent): Boolean; virtual;

  public
    procedure Activate(); virtual;
    procedure Initialize(); override;
    function  AllEqual(): Boolean; virtual;
    function  AutoFill(): Boolean; virtual;
    function  GetEditLimit(): Integer; virtual;
    procedure GetProperties(Proc: TGetPropProc); virtual;
    function  GetPropInfo(): PPropInfo; virtual;
    function  GetPropType(): PTypeInfo; virtual;
    function  GetKind(): TTypeKind;
    function  GetIsDefault(): Boolean; virtual;
    procedure Revert(); virtual;
    function  ValueAvailable(): Boolean; virtual;
    procedure Modified(); virtual;

    procedure SetPropEntry(Index: Integer; AInstance: TPersistent;
      APropInfo: PPropInfo); override;
    function  GetName(): String; virtual;

  public
    function  GetAttributes(): TPropertyAttributes; virtual;
    procedure GetValues(Proc: TGetStrProc); virtual;
    procedure SetValue(const Value: String); virtual;
    function  GetValue(): String; virtual;
    procedure Edit(); virtual;

  protected
    FDesigner       : IDesigner;

  public
    constructor CreateEx( const ADesigner: IDesigner );

  public
    property Designer : IDesigner read FDesigner;
    
end;
{$ENDIF}
{$ENDIF}

type TOWComponentEditorEvent = procedure of object;

type TOWComponentEditorItem = class
private
  FMenuText     : String;
  FPropertyName : String;
  FFilter       : TTypeKinds;
  FCallback     : TOWComponentEditorEvent;
  
public
  constructor Create( AMenuText : String; ACallback : TOWComponentEditorEvent; AFilter : TTypeKinds; APropertyName : String );
  
end;

type
  TOWComponentEditorItems = class
  private
    FList : TObjectList;

  private
    function GetCount() : Integer;
    function GetItem( AIndex : Integer ) : TOWComponentEditorItem;
    procedure SetItem( AIndex : Integer; AValue : TOWComponentEditorItem );

  public
    procedure Add( AMenuText : String; ACallback : TOWComponentEditorEvent; AFilter: TTypeKinds; APropertyName : String );

  public
    constructor Create();
    destructor  Destroy(); override;

  public
    property Count : Integer read GetCount;
    property Items[ Index : Integer ] : TOWComponentEditorItem read GetItem write SetItem; default;

  end;

type
  TOWComponentEditor = class( TComponentEditor )
  protected
    LastIProp      : IProperty;
    TargetProperty : String;
    FMenuItems     : TOWComponentEditorItems;

  protected
{$IFDEF FPC}
    procedure AGetPropProc( Prop: TPropertyEditor );
{$ELSE}
  {$IFDEF VER130}
    procedure AGetPropProc( Prop: IProperty);
  {$ELSE}
    procedure AGetPropProc(const Prop: IProperty);
  {$ENDIF}
{$ENDIF}
    function  GetIProperty( Comp : TComponent; AFilter: TTypeKinds; PropertyName : String ) : IProperty;
    procedure EditProperty( PropertyName : String ); overload;
    procedure EditProperty( AFilter: TTypeKinds; PropertyName : String ); overload;
    procedure AddMenuItem( AMenuText : String; ACallback : TOWComponentEditorEvent ); overload;
    procedure AddMenuItem( AMenuText : String; APropertyName : String ); overload;
    procedure AddMenuItem( AMenuText : String; AFilter: TTypeKinds; APropertyName : String ); overload;
    procedure InitMenu(); virtual;

  public
    procedure ExecuteVerb(Index: Integer); override;
    function  GetVerb(Index: Integer) : String; override;
    function  GetVerbCount() : Integer; override;

  public
    procedure AfterConstruction(); override;

  public
  {$IFDEF __VSDESIGN__}
    constructor Create(AComponent: TComponent; ADesigner: IDesigner); override;
  {$ELSE}
    constructor Create(AComponent: TComponent; ADesigner: IOWDesigner); override;
  {$ENDIF}
    destructor Destroy(); override;
    
  end;

implementation

{$IFNDEF FPC}
uses OWDesignSelectionsList;

{$IFDEF VER130}
  type TADesignerSelectionList = TDesignerSelectionList;
{$ELSE}
  type TADesignerSelectionList = TOWDesignerSelectionList;
{$ENDIF}

{$IFNDEF VER130}
constructor TOWClassPropertyEditor.CreateEx( const ADesigner: IDesigner );
begin
  inherited Create( ADesigner, 1 );
  FDesigner := ADesigner;
end;
//------------------------------------------------------------------------------
function  TOWClassPropertyEditor.GetName(): String;
begin
  Result := 'Unknown';
end;
//---------------------------------------------------------------------------
function  TOWClassPropertyEditor.GetAttributes() : TPropertyAttributes;
begin
  Result := [];
end;
//---------------------------------------------------------------------------
procedure TOWClassPropertyEditor.GetValues(Proc: TGetStrProc);
begin
end;
//---------------------------------------------------------------------------
procedure TOWClassPropertyEditor.SetValue(const Value: String);
begin
end;
//---------------------------------------------------------------------------
function  TOWClassPropertyEditor.GetValue() : String;
begin
  Result := '';
end;

function TOWClassPropertyEditor.GetEditValue(out Value: String): Boolean;
begin
  Value := GetValue();
  Result := True;
end;

function TOWClassPropertyEditor.HasInstance(Instance: TPersistent): Boolean;
begin
  Result := True;
end;

procedure TOWClassPropertyEditor.Activate();
begin
end;

procedure TOWClassPropertyEditor.Initialize();
begin
end;

function TOWClassPropertyEditor.AllEqual() : Boolean;
begin
  Result := True;
end;

function TOWClassPropertyEditor.AutoFill() : Boolean;
begin
  Result := False;
end;

function TOWClassPropertyEditor.GetEditLimit() : Integer;
begin
  Result := 255;
end;

procedure TOWClassPropertyEditor.GetProperties(Proc: TGetPropProc);
begin
end;

function TOWClassPropertyEditor.GetPropInfo() : PPropInfo;
begin
  Result := NIL;
end;

function TOWClassPropertyEditor.GetPropType() : PTypeInfo;
begin
  Result := typeinfo( TPersistent );
end;

function TOWClassPropertyEditor.GetKind() : TTypeKind;
begin
  Result := GetPropType.Kind;
end;

function  TOWClassPropertyEditor.GetIsDefault() : Boolean;
begin
  Result := False;
end;

procedure TOWClassPropertyEditor.SetPropEntry(Index: Integer; AInstance: TPersistent;
      APropInfo: PPropInfo);
begin
end;

procedure TOWClassPropertyEditor.Revert();
begin
end;

function TOWClassPropertyEditor.ValueAvailable() : Boolean;
begin
  Result := True;
end;

procedure TOWClassPropertyEditor.Edit();
begin
end;

procedure TOWClassPropertyEditor.Modified();
begin
  if( FDesigner <> NIL ) then
    FDesigner.Modified();
    
end;
{$ENDIF}
{$ENDIF}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function  TOWComponentEditor.GetIProperty( Comp : TComponent; AFilter: TTypeKinds; PropertyName : String ) : IProperty;
var
{$IFDEF FPC}
  SelectionList : TPersistentSelectionList;
  APropertyHook : TPropertyEditorHook;
{$ELSE}
  SelectionListI : IDesignerSelections;
  SelectionList : TADesignerSelectionList;
{$ENDIF}

begin
  LastIProp := NIL;
  Result := NIL;

  if( Comp = NIL ) then
    Exit;

  if( PropertyName = '' ) then
    Exit;

{$IFDEF FPC}
  APropertyHook := TPropertyEditorHook.Create();
  APropertyHook.LookupRoot := Comp;
  SelectionList := TPersistentSelectionList.Create();
{$ELSE}
  SelectionList := TADesignerSelectionList.Create();
  SelectionListI := SelectionList as IDesignerSelections;
{$ENDIF}
  SelectionList.Add( Comp );
  TargetProperty := PropertyName;

{$IFDEF FPC}
  GetPersistentProperties( SelectionList, AFilter, APropertyHook, AGetPropProc, NIL );
  SelectionList.Free();
  APropertyHook.Free();
{$ELSE}
  {$IFDEF VER130}
  GetComponentProperties( SelectionList, AFilter, Designer, AGetPropProc );
  {$ELSE}
  GetComponentProperties( SelectionListI, AFilter, Designer, AGetPropProc );
  {$ENDIF}
{$ENDIF}
  Result := LastIProp;
end;
//---------------------------------------------------------------------------
{$IFDEF __VSDESIGN__}
constructor TOWComponentEditor.Create(AComponent: TComponent; ADesigner: IDesigner);
{$ELSE}
constructor TOWComponentEditor.Create(AComponent: TComponent; ADesigner: IOWDesigner);
{$ENDIF}
begin
  inherited;
  FMenuItems := TOWComponentEditorItems.Create();
end;
//---------------------------------------------------------------------------
destructor TOWComponentEditor.Destroy();
begin
  FMenuItems.Free();
  inherited;
end;
//---------------------------------------------------------------------------
procedure TOWComponentEditor.AfterConstruction();
begin
  inherited;
  InitMenu();
end;
//---------------------------------------------------------------------------
procedure TOWComponentEditor.InitMenu();
begin
end;
//---------------------------------------------------------------------------
procedure TOWComponentEditor.EditProperty( PropertyName : String );
begin
  EditProperty( tkProperties, PropertyName );
end;
//---------------------------------------------------------------------------
procedure TOWComponentEditor.EditProperty( AFilter: TTypeKinds; PropertyName : String );
var
  PropIProp : IProperty;

begin
  PropIProp := GetIProperty( Component, AFilter, PropertyName );
  if( PropIProp <> NIL ) then
    PropIProp.Edit();

end;
//---------------------------------------------------------------------------
{$IFDEF FPC}
procedure TOWComponentEditor.AGetPropProc(Prop: TPropertyEditor);
{$ELSE}
  {$IFDEF VER130}
procedure TOWComponentEditor.AGetPropProc(Prop: IProperty);
  {$ELSE}
procedure TOWComponentEditor.AGetPropProc(const Prop: IProperty);
  {$ENDIF}
{$ENDIF}
begin
  if( Prop.GetName() = TargetProperty ) then
    LastIProp := Prop;
end;
//---------------------------------------------------------------------------
procedure TOWComponentEditor.AddMenuItem( AMenuText : String; ACallback : TOWComponentEditorEvent );
begin
  FMenuItems.Add( AMenuText, ACallback, [], '' ); 
end;
//---------------------------------------------------------------------------
procedure TOWComponentEditor.AddMenuItem( AMenuText : String; APropertyName : String );
begin
  AddMenuItem( AMenuText, tkProperties, APropertyName ); 
end;
//---------------------------------------------------------------------------
procedure TOWComponentEditor.AddMenuItem( AMenuText : String; AFilter: TTypeKinds; APropertyName : String );
begin
  FMenuItems.Add( AMenuText, NIL, AFilter, APropertyName );
end;
//---------------------------------------------------------------------------
procedure TOWComponentEditor.ExecuteVerb(Index: Integer);
begin
  if( Assigned( FMenuItems[ Index ].FCallback )) then
    FMenuItems[ Index ].FCallback()

  else
    EditProperty( FMenuItems[ Index ].FFilter, FMenuItems[ Index ].FPropertyName ); 
    
end;
//---------------------------------------------------------------------------
function TOWComponentEditor.GetVerb(Index: Integer): String;
begin
  Result := FMenuItems[ Index ].FMenuText;
end;
//---------------------------------------------------------------------------
function TOWComponentEditor.GetVerbCount() : Integer;
begin
  Result := FMenuItems.Count;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWComponentEditorItems.Create();
begin
  inherited;
  FList := TObjectList.Create( True );
end;
//---------------------------------------------------------------------------
destructor TOWComponentEditorItems.Destroy();
begin
  FList.Free();
  inherited;
end;
//---------------------------------------------------------------------------
function TOWComponentEditorItems.GetCount() : Integer;
begin
  Result := FList.Count; 
end;
//---------------------------------------------------------------------------
function TOWComponentEditorItems.GetItem( AIndex : Integer ) : TOWComponentEditorItem;
begin
  Result := TOWComponentEditorItem( FList[ AIndex ] );
end;
//---------------------------------------------------------------------------
procedure TOWComponentEditorItems.SetItem( AIndex : Integer; AValue : TOWComponentEditorItem );
begin
  FList[ AIndex ] := AValue;
end;
//---------------------------------------------------------------------------
procedure TOWComponentEditorItems.Add( AMenuText : String; ACallback : TOWComponentEditorEvent; AFilter: TTypeKinds; APropertyName : String );
begin
  FList.Add( TOWComponentEditorItem.Create( AMenuText, ACallback, AFilter, APropertyName ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWComponentEditorItem.Create( AMenuText : String; ACallback : TOWComponentEditorEvent; AFilter : TTypeKinds; APropertyName : String );
begin
  inherited Create;
  FMenuText := AMenuText;
  FCallback := ACallback;
  FFilter := AFilter;
  FPropertyName := APropertyName;
end;
//---------------------------------------------------------------------------
end.

