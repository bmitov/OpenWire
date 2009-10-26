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

{$IFDEF VER210} // Delphi 13.0
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

Classes, TypInfo;

{$IFDEF FPC}
  type IProperty = TPropertyEditor;
{$ENDIF}

{$IFDEF VER130}
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
    function GetEditValue(out Value: string): Boolean; virtual;
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
    function  GetName(): string; virtual;

  public
    function  GetAttributes(): TPropertyAttributes; virtual;
    procedure GetValues(Proc: TGetStrProc); virtual;
    procedure SetValue(const Value: string); virtual;
    function  GetValue(): string; virtual;
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

type TOWComponentEditor = class( TComponentEditor )
protected
    LastIProp      : IProperty;
    TargetProperty : String;

protected
{$IFDEF FPC}
    procedure AGetPropProc( Prop: TPropertyEditor);
{$ELSE}
  {$IFDEF VER130}
    procedure AGetPropProc( Prop: IProperty);
  {$ELSE}
    procedure AGetPropProc(const Prop: IProperty);
  {$ENDIF}
{$ENDIF}
    function  GetIProperty( Comp : TComponent; AFilter: TTypeKinds; PropertyName : String ) : IProperty;
    procedure EditProperty( PropertyName : String );

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
function  TOWClassPropertyEditor.GetName(): string;
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
procedure TOWClassPropertyEditor.SetValue(const Value: string);
begin
end;
//---------------------------------------------------------------------------
function  TOWClassPropertyEditor.GetValue() : string;
begin
  Result := '';
end;

function TOWClassPropertyEditor.GetEditValue(out Value: string): Boolean;
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
procedure TOWComponentEditor.EditProperty( PropertyName : String );
var
  PropIProp : IProperty;

begin
  PropIProp := GetIProperty( Component, tkProperties, PropertyName );
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
end.

