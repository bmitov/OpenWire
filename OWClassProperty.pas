unit OWClassProperty;

REMOVED !

interface
uses
{$IFDEF __VSDESIGN__}
  VSDesign,
{$ELSE}
  DesignEditors, DesignIntf,
{$ENDIF}

Classes, TypInfo, Contnrs;

  type TOWClassPropertyEditor = class(TBasePropertyEditor, IProperty, IPropertyKind, IProperty70)
  protected
    function GetEditValue(out Value: String): Boolean; virtual;
    function HasInstance(Instance: TPersistent): Boolean; virtual;

  public
    procedure Activate(); virtual;
    procedure Initialize(); override;
    function  AllEqual(): Boolean; virtual;
    function  AutoFill(): Boolean; virtual;
    function  GetPropInfo(): PPropInfo; virtual;
  {$IFDEF __VSDESIGN__}
    function  GetPropType(): PTypeInfo; override;
    function  GetOrdValue() : Longint; override;
  {$ELSE}
    function  GetPropType(): PTypeInfo; virtual;
  {$ENDIF}
    function  GetKind(): TTypeKind; virtual;
    function  GetIsDefault(): Boolean; virtual;
    procedure Revert(); virtual;
    procedure Modified(); virtual;

    procedure SetPropEntry(Index: Integer; AInstance: TPersistent; APropInfo: PPropInfo); override;

  public
  {$IFDEF __VSDESIGN__}
    function  GetEditLimit(): Integer; override;
    procedure GetProperties(Proc: TGetPropProc); override;
    function  ValueAvailable(): Boolean; override;
    function  GetName(): String; override;
    function  GetAttributes(): TPropertyAttributes; override;
    procedure GetValues(Proc: TGetStrProc); override;
    procedure SetValue(const Value: String); override;
    function  GetValue(): String; override;
    procedure Edit(); override;
  {$ELSE}
    function  GetEditLimit(): Integer; virtual;
    procedure GetProperties(Proc: TGetPropProc); virtual;
    function  ValueAvailable(): Boolean; virtual;
    function  GetName(): String; virtual;

    function  GetAttributes(): TPropertyAttributes; virtual;
    procedure GetValues(Proc: TGetStrProc); virtual;
    procedure SetValue(const Value: String); virtual;
    function  GetValue(): String; virtual;
    procedure Edit(); virtual;
  {$ENDIF}

  protected
    FDesigner : IDesigner;

  public
    constructor CreateEx( const ADesigner: IDesigner );

  public
    property Designer : IDesigner read FDesigner;

end;

type TOWComponentEditorEvent = procedure of object;
type TOWComponentEditorEvabledEvent = function() : Boolean of object;
//---------------------------------------------------------------------------
type TOWComponentEditorItem = class
private
  FMenuText           : String;
  FPropertyName       : String;
  FFilter             : TTypeKinds;
  FCallback           : TOWComponentEditorEvent;
  FOnEnabledCallback  : TOWComponentEditorEvabledEvent;

public
  constructor Create( AMenuText : String; ACallback : TOWComponentEditorEvent; AOnEnabledCallback : TOWComponentEditorEvabledEvent; AFilter : TTypeKinds; APropertyName : String );

public
  function GetEnabled() : Boolean;

end;
//---------------------------------------------------------------------------
type
  TOWComponentEditorItems = class
  private
    FList : TObjectList;

  private
    function  GetCount() : Integer;
    function  GetItem( AIndex : Integer ) : TOWComponentEditorItem;
    procedure SetItem( AIndex : Integer; AValue : TOWComponentEditorItem );

  public
    procedure Add( AMenuText : String; ACallback : TOWComponentEditorEvent; AFilter: TTypeKinds; APropertyName : String );
    procedure AddEnable( AMenuText : String; ACallback : TOWComponentEditorEvent; AOnEnabledCallback : TOWComponentEditorEvabledEvent; AFilter: TTypeKinds; APropertyName : String );

  public
    constructor Create();
    destructor  Destroy(); override;

  public
    property Count : Integer read GetCount;
    property Items[ Index : Integer ] : TOWComponentEditorItem read GetItem write SetItem; default;

  end;
//---------------------------------------------------------------------------
type
  TOWComponentEditor = class( TComponentEditor )
  protected
    LastIProp       : IProperty;
    FTargetProperty : String;
    FMenuItems      : TOWComponentEditorItems;

  protected
    procedure GetPropProc(const Prop: IProperty);
    function  GetIProperty( Comp : TComponent; AFilter: TTypeKinds; PropertyName : String ) : IProperty;
    procedure EditProperty( PropertyName : String ); overload;
    procedure EditProperty( AFilter: TTypeKinds; PropertyName : String ); overload;
    procedure AddMenuItem( AMenuText : String; ACallback : TOWComponentEditorEvent; AOnEnabledCallback : TOWComponentEditorEvabledEvent ); overload;
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
    constructor Create(AComponent: TComponent; ADesigner: IDesigner); override;
    destructor  Destroy(); override;
    
  end;

implementation

{$IFNDEF FPC}
uses OWDesignSelectionsList;

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
//---------------------------------------------------------------------------
function TOWClassPropertyEditor.GetEditValue(out Value: String): Boolean;
begin
  Value := GetValue();
  Result := True;
end;
//---------------------------------------------------------------------------
function TOWClassPropertyEditor.HasInstance(Instance: TPersistent): Boolean;
begin
  Result := True;
end;
//---------------------------------------------------------------------------
procedure TOWClassPropertyEditor.Activate();
begin
end;
//---------------------------------------------------------------------------
procedure TOWClassPropertyEditor.Initialize();
begin
end;
//---------------------------------------------------------------------------
function TOWClassPropertyEditor.AllEqual() : Boolean;
begin
  Result := True;
end;
//---------------------------------------------------------------------------
function TOWClassPropertyEditor.AutoFill() : Boolean;
begin
  Result := False;
end;
//---------------------------------------------------------------------------
function TOWClassPropertyEditor.GetEditLimit() : Integer;
begin
  Result := 255;
end;
//---------------------------------------------------------------------------
procedure TOWClassPropertyEditor.GetProperties(Proc: TGetPropProc);
begin
end;
//---------------------------------------------------------------------------
function TOWClassPropertyEditor.GetPropInfo() : PPropInfo;
begin
  Result := NIL;
end;
//---------------------------------------------------------------------------
function TOWClassPropertyEditor.GetPropType() : PTypeInfo;
begin
  Result := TypeInfo( TPersistent );
end;
//---------------------------------------------------------------------------
{$IFDEF __VSDESIGN__}
function TOWClassPropertyEditor.GetOrdValue() : Longint;
begin
  Result := 0;
end;
{$ENDIF}
//---------------------------------------------------------------------------
function TOWClassPropertyEditor.GetKind() : TTypeKind;
begin
  Result := GetPropType().Kind;
end;
//---------------------------------------------------------------------------
function  TOWClassPropertyEditor.GetIsDefault() : Boolean;
begin
  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWClassPropertyEditor.SetPropEntry( Index: Integer; AInstance: TPersistent; APropInfo: PPropInfo);
begin
end;
//---------------------------------------------------------------------------
procedure TOWClassPropertyEditor.Revert();
begin
end;
//---------------------------------------------------------------------------
function TOWClassPropertyEditor.ValueAvailable() : Boolean;
begin
  Result := True;
end;
//---------------------------------------------------------------------------
procedure TOWClassPropertyEditor.Edit();
begin
end;
//---------------------------------------------------------------------------
procedure TOWClassPropertyEditor.Modified();
begin
  if( FDesigner <> NIL ) then
    FDesigner.Modified();

end;
{$ENDIF}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWComponentEditor.GetIProperty( Comp : TComponent; AFilter: TTypeKinds; PropertyName : String ) : IProperty;
var
  SelectionListI : IDesignerSelections;
  SelectionList : TOWDesignerSelectionList;

begin
  LastIProp := NIL;

  if( Comp = NIL ) then
    Exit( NIL );

  if( PropertyName = '' ) then
    Exit( NIL );

  SelectionList := TOWDesignerSelectionList.Create();
  SelectionListI := SelectionList as IDesignerSelections;
  SelectionList.Add( Comp );
  FTargetProperty := PropertyName;

  GetComponentProperties( SelectionListI, AFilter, Designer, GetPropProc );

  Result := LastIProp;
end;
//---------------------------------------------------------------------------
constructor TOWComponentEditor.Create(AComponent: TComponent; ADesigner: IDesigner);
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
procedure TOWComponentEditor.GetPropProc(const Prop: IProperty);
begin
  if( Prop.GetName() = FTargetProperty ) then
    LastIProp := Prop;

end;
//---------------------------------------------------------------------------
procedure TOWComponentEditor.AddMenuItem( AMenuText : String; ACallback : TOWComponentEditorEvent; AOnEnabledCallback : TOWComponentEditorEvabledEvent );
begin
  FMenuItems.AddEnable( AMenuText, ACallback, AOnEnabledCallback, [], '' );
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
var
  I : Integer;

begin
  for I := 0 to FMenuItems.Count - 1 do
    if( not FMenuItems[ I ].GetEnabled() ) then
      Inc( Index );

  Result := FMenuItems[ Index ].FMenuText;
end;
//---------------------------------------------------------------------------
function TOWComponentEditor.GetVerbCount() : Integer;
var
  I : Integer;

begin
  Result := 0;
  for I := 0 to FMenuItems.Count - 1 do
    if( FMenuItems[ I ].GetEnabled() ) then
      Inc( Result );

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
  FList.Add( TOWComponentEditorItem.Create( AMenuText, ACallback, NIL, AFilter, APropertyName ));
end;
//---------------------------------------------------------------------------
procedure TOWComponentEditorItems.AddEnable( AMenuText : String; ACallback : TOWComponentEditorEvent; AOnEnabledCallback : TOWComponentEditorEvabledEvent; AFilter: TTypeKinds; APropertyName : String );
begin
  FList.Add( TOWComponentEditorItem.Create( AMenuText, ACallback, AOnEnabledCallback, AFilter, APropertyName ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWComponentEditorItem.Create( AMenuText : String; ACallback : TOWComponentEditorEvent; AOnEnabledCallback : TOWComponentEditorEvabledEvent; AFilter : TTypeKinds; APropertyName : String );
begin
  inherited Create;
  FMenuText := AMenuText;
  FCallback := ACallback;
  FOnEnabledCallback := AOnEnabledCallback;
  FFilter := AFilter;
  FPropertyName := APropertyName;
end;
//---------------------------------------------------------------------------
function TOWComponentEditorItem.GetEnabled() : Boolean;
begin
  if( Assigned( FOnEnabledCallback )) then
    Result := FOnEnabledCallback()

  else
    Result := True;

end;
//---------------------------------------------------------------------------
end.

