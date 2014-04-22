unit OWExtCollection;

interface

uses Classes;

type
  TOWExtCollectionItem = class(TCollectionItem)
  protected
    FCurrentEditorPtr : ^TCollectionItem;

  public
    destructor  Destroy(); override;

  end;
//------------------------------------------------------------------------------
  TOWExtCollection = class(TCollection)
  protected
    FLastIndicatedCount : Integer;
    
  protected
    [Weak]
    FOwner : TPersistent;

  protected
    FNotifyList : TInterfaceList;
    
  public
    function  GetOwner() : TPersistent; override;

  public
    constructor Create( AOwner : TPersistent; ItemClass: TCollectionItemClass);
    destructor  Destroy(); override;
    
  protected
    procedure AfterNewItemCreated( Item: TCollectionItem ); virtual;
    procedure AfterNewItemDestroyed( Item: TCollectionItem ); virtual;

  protected
    procedure NewItemCreated( Item: TCollectionItem ); virtual;
    procedure Notify(Item: TCollectionItem; Action: TCollectionNotification); override;

  end;
//------------------------------------------------------------------------------
type IOWCollectionNotifier = interface
  ['{55437AD4-9F90-42AC-9146-5F93F8A325EF}']
  procedure ItemCreated( Collection : TCollection; Item : TCollectionItem );
  procedure ItemDestroyed( Collection : TCollection; Item : TCollectionItem );
  
end;
//------------------------------------------------------------------------------
procedure OWAddCollectionNotifier( ACollection : TOWExtCollection; ANotifyItem : IOWCollectionNotifier );
procedure OWRemoveCollectionNotifier( ACollection : TOWExtCollection; ANotifyItem : IOWCollectionNotifier );
//------------------------------------------------------------------------------
implementation
//------------------------------------------------------------------------------
procedure OWAddCollectionNotifier( ACollection : TOWExtCollection; ANotifyItem : IOWCollectionNotifier );
begin
  if( ACollection = NIL ) then
    Exit;

  if( ACollection.FNotifyList = NIL ) then
    ACollection.FNotifyList := TInterfaceList.Create();

  ACollection.FNotifyList.Add( ANotifyItem );
end;
//---------------------------------------------------------------------------
procedure OWRemoveCollectionNotifier( ACollection : TOWExtCollection; ANotifyItem : IOWCollectionNotifier );
begin
  if( ACollection = NIL ) then
    Exit;

  if( ACollection.FNotifyList = NIL ) then
    ACollection.FNotifyList := TInterfaceList.Create();

  ACollection.FNotifyList.Remove( ANotifyItem );
end;
//---------------------------------------------------------------------------
destructor TOWExtCollectionItem.Destroy();
begin
  inherited;
  if( FCurrentEditorPtr <> NIL )then
    FCurrentEditorPtr^ := NIL;

end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
constructor TOWExtCollection.Create( AOwner : TPersistent; ItemClass: TCollectionItemClass);
begin
  inherited Create( ItemClass );
  FOwner := AOwner;
end;
//------------------------------------------------------------------------------
destructor TOWExtCollection.Destroy();
begin
  if( FNotifyList <> NIL ) then
    FNotifyList.Free();

  FNotifyList := NIL;
    
  inherited;
end;
//------------------------------------------------------------------------------
function TOWExtCollection.GetOwner() : TPersistent;
begin
  Result := FOwner;
end;
//------------------------------------------------------------------------------
procedure TOWExtCollection.AfterNewItemCreated( Item: TCollectionItem );
var
  I : Integer;

begin
  if( FNotifyList = NIL ) then
    Exit;

  for I := 0 to FNotifyList.Count - 1 do
    try
      IOWCollectionNotifier( FNotifyList.Items[ I ] ).ItemCreated( Self, Item );

    except;
    end;

end;
//------------------------------------------------------------------------------
procedure TOWExtCollection.AfterNewItemDestroyed( Item: TCollectionItem );
var
  I : Integer;

begin
  if( FNotifyList = NIL ) then
    Exit;

  for I := 0 to FNotifyList.Count - 1 do
    try
      IOWCollectionNotifier( FNotifyList.Items[ I ] ).ItemDestroyed( Self, Item );

    except;
      end;

end;
//------------------------------------------------------------------------------
procedure TOWExtCollection.NewItemCreated( Item: TCollectionItem );
begin
end;
//------------------------------------------------------------------------------
procedure TOWExtCollection.Notify(Item: TCollectionItem; Action: TCollectionNotification);
begin
  inherited;
  if( Action = cnAdded ) then
    begin
    NewItemCreated( Item );
    AfterNewItemCreated( Item );
    end

  else if( ( Action = cnDeleting ) or ( Action = cnExtracting ) ) then
    AfterNewItemDestroyed( Item );

  FLastIndicatedCount := -1;
end;
//------------------------------------------------------------------------------
end.
