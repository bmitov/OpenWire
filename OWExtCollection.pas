unit OWExtCollection;

{$IFDEF fpc}
{$MODE DELPHI}{$H+}
{$ENDIF}

interface

uses Classes;

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

type
  TOWExtCollectionItem = class(TCollectionItem)
  protected
    CurrentEditorPtr : ^TCollectionItem;

{$IFNDEF D6}
    FInitialized     : Boolean;
{$ENDIF}

  public
    destructor  Destroy(); override;

  end;
//------------------------------------------------------------------------------
  TOWExtCollection = class(TCollection)
  protected
    LastIndicatedCount : Integer;
    
  protected
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
{$IFDEF D6}
    procedure Notify(Item: TCollectionItem; Action: TCollectionNotification); override;
{$ELSE}
    procedure SetItemName(Item: TCollectionItem); override;
{$ENDIF}

  end;
//------------------------------------------------------------------------------
type IOWCollectionNotifier = interface
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
destructor  TOWExtCollectionItem.Destroy();
begin
  inherited;
  if( CurrentEditorPtr <> NIL )then
    CurrentEditorPtr^ := NIL;
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
function  TOWExtCollection.GetOwner() : TPersistent;
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
{$IFDEF D6}
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

  LastIndicatedCount := -1;
end;
{$ELSE}
procedure TOWExtCollection.SetItemName(Item: TCollectionItem);
begin
  inherited SetItemName( Item );
  if( not TOWExtCollectionItem( Item ).FInitialized ) then
    begin
    TOWExtCollectionItem( Item ).FInitialized := True;
    NewItemCreated( Item );
    AfterNewItemCreated( Item );
    end;
    
end;
{$ENDIF}
end.

