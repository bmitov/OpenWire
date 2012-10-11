unit OWExtCollectionEditor;

interface
{$IFDEF VER140} // Delphi 6.0
{$DEFINE D6}
{$ENDIF}

{$IFDEF VER150} // Delphi 7.0
{$DEFINE D6}
{$ENDIF}

{$IFDEF VER170} // Delphi 9.0
{$DEFINE D6}
{$ENDIF}

{$IFDEF VER180} // Delphi 10.0
{$DEFINE D6}
{$ENDIF}

{$IFDEF VER190} // Delphi 11.0
{$DEFINE D6}
{$ENDIF}

{$IFDEF VER200} // Delphi 12.0
{$DEFINE D6}
{$ENDIF}

{$IFDEF VER210} // Delphi 14.0
{$DEFINE D6}
{$ENDIF}

{$IFDEF VER220} // Delphi 15.0
{$DEFINE D6}
{$ENDIF}

{$IFDEF VER230} // Delphi 16.0
{$DEFINE D6}
{$ENDIF}

{$IFDEF VER240} // Delphi 17.0
{$DEFINE D6}
{$ENDIF}

  uses
    SysUtils, Classes,
{$IFDEF D6}
  DesignEditors,
  DesignIntf,
  TypInfo,
  OWClassProperty,
{$ELSE}
  dsgnintf,
{$ENDIF}
   OWExtCollection; //, ColnEdit;

{$IFDEF D6}
type IADesigner = IDesigner;
type TAGetPropProc = TGetPropProc;
{$ELSE}
type IADesigner = IFormDesigner;
type TAGetPropProc = TGetPropEditProc;
{$ENDIF}

type
  TOWExtCollectionProperty = class;
//------------------------------------------------------------------------------
{$IFDEF D6}
  TOWExtCollectionItemProperty = class( TOWClassPropertyEditor )
{$ELSE}
  TOWExtCollectionItemProperty = class( TPropertyEditor )
{$ENDIF}
  protected
    FExtraInfo      : Boolean;
    FNameOverload   : String;
    FCollectionItem : TOWExtCollectionItem;
    FOwnerEditor    : TOWExtCollectionProperty;

  protected
    function GetMyObject() : TOWExtCollectionItem; virtual;

  public
    function  GetAttributes() : TPropertyAttributes; override;
    procedure GetProperties(Proc: TAGetPropProc); override;
    function  GetValue() : String; override;
    function  GetName() : String; override;

  public
    constructor CreateEx(const ADesigner: IADesigner; ACollectionItem : TOWExtCollectionItem; AName : String; OwnerEditor : TOWExtCollectionProperty );
    destructor  Destroy(); override;

  end;
//------------------------------------------------------------------------------
  TOWExtCollectionProperty = class(TPropertyEditor)
  public
    function  GetAttributes: TPropertyAttributes; override;
    function  GetValue: String; override;
    procedure Edit; override;
    procedure SetValue(const Value: String); override;
    procedure GetProperties(Proc: TAGetPropProc); override;

  public
    procedure CheckRefresh();
    
  end;
//------------------------------------------------------------------------------
procedure Register;
//------------------------------------------------------------------------------
implementation

uses
  OWDesignSelectionsList, OWDesignTypes
{$IFDEF VER230} // Delphi 16.0
  , ColnEdit
{$ENDIF}
{$IFDEF VER240} // Delphi 17.0
  , ColnEdit
{$ENDIF}
  ;

{$IFDEF VER130} // Delphi 5.0
  {$IFDEF OWCBUILDER}
    procedure ShowCollectionEditor(ADesigner: IDesigner; AComponent: TComponent;
      ACollection: TCollection; const PropertyName: String); external 'bcbide50.bpl' name  '@Colnedit@ShowCollectionEditor$qqr43System@%DelphiInterface$t15Forms@IDesigner%p18Classes@TComponentp19Classes@TCollectionx17System@AnsiString'
  {$ELSE}
    procedure ShowCollectionEditor(ADesigner: IDesigner; AComponent: TComponent;
      ACollection: TCollection; const PropertyName: String); external 'designide50.bpl' name  '@Colnedit@ShowCollectionEditor$qqr43System@%DelphiInterface$t15Forms@IDesigner%p18Classes@TComponentp19Classes@TCollectionx17System@AnsiString'
  {$ENDIF}

{$ENDIF}

{$IFDEF VER140} // Delphi 6.0
  {$IFDEF OWCBUILDER}
    procedure ShowCollectionEditor(ADesigner: IDesigner; AComponent: TComponent;
      ACollection: TCollection; const PropertyName: String); external 'bcbide60.bpl' name  '@Colnedit@ShowCollectionEditor$qqr48System@%DelphiInterface$t20Designintf@IDesigner%p18Classes@TComponentp19Classes@TCollectionx17System@AnsiString'
  {$ELSE}
    procedure ShowCollectionEditor(ADesigner: IDesigner; AComponent: TComponent;
      ACollection: TCollection; const PropertyName: String); external 'designide60.bpl' name  '@Colnedit@ShowCollectionEditor$qqr48System@%DelphiInterface$t20Designintf@IDesigner%p18Classes@TComponentp19Classes@TCollectionx17System@AnsiString'
  {$ENDIF}
{$ENDIF}

{$IFDEF VER150} // Delphi 7.0
procedure ShowCollectionEditor(ADesigner: IDesigner; AComponent: TComponent;
  ACollection: TCollection; const PropertyName: String); external 'designide70.bpl' name  '@Colnedit@ShowCollectionEditor$qqr48System@%DelphiInterface$t20Designintf@IDesigner%p18Classes@TComponentp19Classes@TCollectionx17System@AnsiString'
{$ENDIF}

{$IFDEF VER170} // Delphi 9.0
procedure ShowCollectionEditor(ADesigner: IDesigner; AComponent: TComponent;
  ACollection: TCollection; const PropertyName: String); external 'designide90.bpl' name  '@Colnedit@ShowCollectionEditor$qqr48System@%DelphiInterface$t20Designintf@IDesigner%p18Classes@TComponentp19Classes@TCollectionx17System@AnsiString'
{$ENDIF}

{$IFDEF VER180} // Delphi 10.0
procedure ShowCollectionEditor(ADesigner: IDesigner; AComponent: TComponent;
  ACollection: TCollection; const PropertyName: String); external 'designide100.bpl' name  '@Colnedit@ShowCollectionEditor$qqr48System@%DelphiInterface$t20Designintf@IDesigner%p18Classes@TComponentp19Classes@TCollectionx17System@AnsiString'
{$ENDIF}

{$IFDEF VER190} // Delphi 11.0
procedure ShowCollectionEditor(ADesigner: IDesigner; AComponent: TComponent;
  ACollection: TCollection; const PropertyName: String); external 'designide110.bpl' name  '@Colnedit@ShowCollectionEditor$qqr48System@%DelphiInterface$t20Designintf@IDesigner%p18Classes@TComponentp19Classes@TCollectionx17System@AnsiString'
{$ENDIF}

{$IFDEF VER200} // Delphi 12.0
procedure ShowCollectionEditor(ADesigner: IDesigner; AComponent: TComponent;
  ACollection: TCollection; const PropertyName: String); external 'designide120.bpl' name  '@Colnedit@ShowCollectionEditor$qqr48System@%DelphiInterface$t20Designintf@IDesigner%p18Classes@TComponentp19Classes@TCollectionx20System@UnicodeString'
{$ENDIF}

{$IFDEF VER210} // Delphi 14.0
procedure ShowCollectionEditor(ADesigner: IDesigner; AComponent: TComponent;
  ACollection: TCollection; const PropertyName: String); external 'designide140.bpl' name  '@Colnedit@ShowCollectionEditor$qqr48System@%DelphiInterface$t20Designintf@IDesigner%p18Classes@TComponentp19Classes@TCollectionx20System@UnicodeString'
{$ENDIF}

{$IFDEF VER220} // Delphi 15.0
procedure ShowCollectionEditor(ADesigner: IDesigner; AComponent: TComponent;
  ACollection: TCollection; const PropertyName: String); external 'designide150.bpl' name  '@Colnedit@ShowCollectionEditor$qqr48System@%DelphiInterface$t20Designintf@IDesigner%p18Classes@TComponentp19Classes@TCollectionx20System@UnicodeString'
{$ENDIF}


//------------------------------------------------------------------------------
type TOWExposedExtCollectionItem = class( TOWExtCollectionItem )
end;
//------------------------------------------------------------------------------
type TOWExposedExtCollection = class( TOWExtCollection )
end;
//------------------------------------------------------------------------------
constructor TOWExtCollectionItemProperty.CreateEx(const ADesigner: IADesigner; ACollectionItem : TOWExtCollectionItem; AName : String; OwnerEditor : TOWExtCollectionProperty );
begin
  inherited Create( ADesigner, 1 );
  FExtraInfo := True;
  FDesigner := ADesigner;
  FCollectionItem  := ACollectionItem;
  FNameOverload := AName;
  FOwnerEditor := OwnerEditor;
  TOWExposedExtCollectionItem( FCollectionItem ).CurrentEditorPtr := @FCollectionItem;
end;
//------------------------------------------------------------------------------
destructor  TOWExtCollectionItemProperty.Destroy;
begin
  if( FCollectionItem <> NIL )then
    TOWExposedExtCollectionItem( FCollectionItem ).CurrentEditorPtr := NIL;

  inherited;
end;
//------------------------------------------------------------------------------
function TOWExtCollectionItemProperty.GetAttributes() : TPropertyAttributes;
begin
  Result := [ paSubProperties, paReadOnly ];
//  Result := [ paValueList, paSortList, paDialog ];
//  RequestRefresh();
end;
//------------------------------------------------------------------------------
procedure TOWExtCollectionItemProperty.GetProperties(Proc: TAGetPropProc);
var
  Components : TOWDesignerSelectionList;
  Types : TTypeKinds;
   
begin
  if( GetMyObject() = NIL ) then
    Exit;

  Components := TOWDesignerSelectionList.Create();
  try
    Components.Add(GetMyObject());
    Types := [ tkUnknown, tkInteger, tkChar, tkEnumeration, tkFloat,
            tkString, tkSet, tkClass, tkMethod,
            tkWChar, tkLString, tkWString, tkVariant, tkArray,
            tkRecord, tkInterface, tkInt64, tkDynArray ];

    GetComponentProperties( Components, Types, FDesigner, Proc, NIL );

  finally
    Components.Free();

  end;
end;
//------------------------------------------------------------------------------
function  TOWExtCollectionItemProperty.GetValue(): String;
//var
//  CollectionItem : TOWExtCollectionItem;

begin
  if( GetMyObject() <> NIL ) then
    Result := '(' + GetMyObject().ClassName() + ')'

  else
    Result := 'Unknown...';
{
  OWRequestRefreshEx(FDesigner);
  SourcePin := GetPin();
  Result := GetSourcePinValue( SourcePin, FDesigner );
}
////  FOwnerEditor.CheckRefresh();
end;
//------------------------------------------------------------------------------
function TOWExtCollectionItemProperty.GetName() : String;
begin
  if( FExtraInfo ) then
    Result := FNameOverload

  else
    Result := inherited GetName();

end;
//------------------------------------------------------------------------------
function TOWExtCollectionItemProperty.GetMyObject() : TOWExtCollectionItem;
begin
  if( FExtraInfo ) then
    Result := FCollectionItem

  else
    Result := NIL;
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

procedure TOWExtCollectionProperty.GetProperties(Proc: TAGetPropProc);
var
  Collection     : TOWExtCollection;
  I              : Integer;
  CollectionItem : TOWExtCollectionItem;

begin
//  inherited;
  Collection := TOWExtCollection( GetOrdValue() );

  TOWExposedExtCollection( Collection ).LastIndicatedCount := Collection.Count;
  for I := 0 to Collection.Count - 1 do
    begin
    try
      CollectionItem := TOWExtCollectionItem( Collection.Items[ I ] );
      Proc( TOWExtCollectionItemProperty.CreateEx( Designer, CollectionItem, CollectionItem.DisplayName, Self ))
    finally
    end;

    end;


end;
//------------------------------------------------------------------------------
procedure TOWExtCollectionProperty.CheckRefresh();
var
  Collection     : TOWExtCollection;

begin
  Collection := TOWExtCollection( GetOrdValue() );
  if( TOWExposedExtCollection( Collection ).LastIndicatedCount <> Collection.Count ) then
    begin
    TOWExposedExtCollection( Collection ).LastIndicatedCount := Collection.Count;
    OWResetObjectInspector( Designer );
    end;

end;
//---------------------------------------------------------------------------
function TOWExtCollectionProperty.GetAttributes() : TPropertyAttributes;
begin
  Result := [ paSubProperties, paDialog ];
end;
//------------------------------------------------------------------------------
procedure TOWExtCollectionProperty.SetValue(const Value: String); 
var
  Collection   : TOWExtCollection;
  DesiredCount : Integer;
  OldCount     : Integer;

begin
  try
    Collection := TOWExtCollection( GetOrdValue() );
    DesiredCount := StrToInt( Value );
    while( Collection.Count < DesiredCount ) do
      begin
      OldCount := Collection.Count;
      Collection.Add();
      if( OldCount = Collection.Count ) then
        Break;
        
      end;

    while( Collection.Count > DesiredCount ) do
      Collection.Delete( Collection.Count - 1 );

//    Collection.Count := StrToInt( Value );

    Modified();
    OWResetObjectInspector( Designer );

  except;
  end;
end;
//------------------------------------------------------------------------------
procedure TOWExtCollectionProperty.Edit(); 
begin
  ShowCollectionEditor( Designer, TComponent( GetComponent( 0 )), TOWExtCollection( GetOrdValue() ), GetName() );
end;
//------------------------------------------------------------------------------
function  TOWExtCollectionProperty.GetValue(): String;
var
  Collection : TOWExtCollection;

begin
//  inherited GetValue();
  OWRequestRefreshEx(Designer);

  Collection := TOWExtCollection( GetOrdValue() );
  if( TOWExposedExtCollection( Collection ).LastIndicatedCount <> Collection.Count ) then
    begin
    TOWExposedExtCollection( Collection ).LastIndicatedCount := Collection.Count;
    OWResetObjectInspector( Designer );
    end;

  if( Collection.Count = 0 ) then
    begin
    Result := '(Empty)';
    Exit;
    end;

  if( Collection.Count = 1 ) then
    begin
    Result := '1 Item';
    Exit;
    end;

  Result := IntToStr( Collection.Count ) + ' Items';
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
procedure Register;
begin
{$IFDEF VER170} // Delphi 9.0
  ForceDemandLoadState(dlDisable);
{$ENDIF}
//  RegisterPropertyEditor( typeinfo(TOWExtCollection),  NIL, '', TOWExtCollectionProperty);
end;
//------------------------------------------------------------------------------
end.
