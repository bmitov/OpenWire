unit OWExtCollectionEditor;

interface

uses
  SysUtils, Classes, DesignEditors, DesignIntf, TypInfo, OWClassProperty, OWExtCollection;

type
  TOWExtCollectionProperty = class;
//------------------------------------------------------------------------------
  TOWExtCollectionItemProperty = class( TOWClassPropertyEditor )
  protected
    FExtraInfo      : Boolean;
    FNameOverload   : String;
    FCollectionItem : TOWExtCollectionItem;
    FOwnerEditor    : TOWExtCollectionProperty;

  protected
    function GetMyObject() : TOWExtCollectionItem; virtual;

  public
    function  GetAttributes() : TPropertyAttributes; override;
    procedure GetProperties(Proc: TGetPropProc); override;
    function  GetValue() : String; override;
    function  GetName() : String; override;

  public
    constructor CreateEx(const ADesigner: IDesigner; ACollectionItem : TOWExtCollectionItem; AName : String; OwnerEditor : TOWExtCollectionProperty );
    destructor  Destroy(); override;

  end;
//------------------------------------------------------------------------------
  TOWExtCollectionProperty = class(TPropertyEditor)
  public
    function  GetAttributes: TPropertyAttributes; override;
    function  GetValue: String; override;
    procedure Edit; override;
    procedure SetValue(const Value: String); override;
    procedure GetProperties(Proc: TGetPropProc); override;

  public
    procedure CheckRefresh();
    
  end;
//------------------------------------------------------------------------------
implementation

uses
  OWDesignSelectionsList, OWDesignTypes, ColnEdit;

//------------------------------------------------------------------------------
type
  TOWExtCollectionItemHelper = class helper for TOWExtCollectionItem
  public
    procedure SetCurrentEditorPtr( AValue : Pointer ); inline;

  end;
//------------------------------------------------------------------------------
  TOWExtCollectionHelper = class helper for TOWExtCollection
  private
    function  GetLastIndicatedCount() : Integer; inline;
    procedure SetLastIndicatedCount( AValue : Integer ); inline;

  public
    property LastIndicatedCount : Integer read GetLastIndicatedCount write SetLastIndicatedCount;

  end;
//------------------------------------------------------------------------------
procedure TOWExtCollectionItemHelper.SetCurrentEditorPtr( AValue : Pointer );
begin
  FCurrentEditorPtr := AValue;
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
function TOWExtCollectionHelper.GetLastIndicatedCount() : Integer;
begin
  Result := FLastIndicatedCount;
end;
//------------------------------------------------------------------------------
procedure TOWExtCollectionHelper.SetLastIndicatedCount( AValue : Integer );
begin
  FLastIndicatedCount := AValue;
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
constructor TOWExtCollectionItemProperty.CreateEx(const ADesigner: IDesigner; ACollectionItem : TOWExtCollectionItem; AName : String; OwnerEditor : TOWExtCollectionProperty );
begin
  inherited Create( ADesigner, 1 );
  FExtraInfo := True;
  FDesigner := ADesigner;
  FCollectionItem  := ACollectionItem;
  FNameOverload := AName;
  FOwnerEditor := OwnerEditor;
  FCollectionItem.SetCurrentEditorPtr( @FCollectionItem );
end;
//------------------------------------------------------------------------------
destructor  TOWExtCollectionItemProperty.Destroy;
begin
  if( FCollectionItem <> NIL )then
    FCollectionItem.SetCurrentEditorPtr( NIL );

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
procedure TOWExtCollectionItemProperty.GetProperties(Proc: TGetPropProc);
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

procedure TOWExtCollectionProperty.GetProperties(Proc: TGetPropProc);
var
  Collection     : TOWExtCollection;
  I              : Integer;
  CollectionItem : TOWExtCollectionItem;

begin
//  inherited;
  Collection := TOWExtCollection( GetOrdValue() );

  Collection.LastIndicatedCount := Collection.Count;
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
  if( Collection.LastIndicatedCount <> Collection.Count ) then
    begin
    Collection.LastIndicatedCount := Collection.Count;
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
  if( Collection.LastIndicatedCount <> Collection.Count ) then
    begin
    Collection.LastIndicatedCount := Collection.Count;
    OWResetObjectInspector( Designer );
    end;

  if( Collection.Count = 0 ) then
    Exit( '(Empty)' );

  if( Collection.Count = 1 ) then
    Exit( '1 Item' );

  Result := IntToStr( Collection.Count ) + ' Items';
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
end.
