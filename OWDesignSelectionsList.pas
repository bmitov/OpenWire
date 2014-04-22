unit OWDesignSelectionsList;

interface
  uses
{$IFDEF __VSDESIGN__}
    Mitov.Design
{$ELSE}
    DesignIntf
{$ENDIF}
    , Classes;
{ TOWDesignerSelectionList }
{   Used to transport VCL component selections between property editors }
type
  TOWDesignerSelectionList = class(TInterfacedObject, IDesignerSelections)
  private
    FList: TList;
    { IDesignSelections }
    function IDesignerSelections.Add = Intf_Add;
    function Intf_Add(const Item: TPersistent): Integer;
    function IDesignerSelections.Equals = Intf_Equals;
    function Intf_Equals(const List: IDesignerSelections): Boolean;
    function IDesignerSelections.Get = Intf_Get;
    function Intf_Get(Index: Integer): TPersistent;
    function Get(Index: Integer): TPersistent;
    function GetCount: Integer;
  {$IFNDEF __VSDESIGN__}
    function GetDesignObject( Index : Integer ) : IDesignObject;
  {$ENDIF}
    { IComponentList }
//    function GetComponentList: TOWDesignerSelectionList;
  public
    constructor Create;
    destructor Destroy; override;
    function Add(Item: TPersistent): Integer;
    function ListEquals(List: TOWDesignerSelectionList): Boolean;
    property Count: Integer read GetCount;
    property Items[Index: Integer]: TPersistent read Get; default;
  end;

implementation

constructor TOWDesignerSelectionList.Create;
begin
  inherited Create;
  FList := TList.Create;
end;

destructor TOWDesignerSelectionList.Destroy;
begin
  FList.Free();
  inherited Destroy;
end;

function TOWDesignerSelectionList.Get(Index: Integer): TPersistent;
begin
  Result := FList[Index];
end;

{$IFNDEF __VSDESIGN__}
function TOWDesignerSelectionList.GetDesignObject( Index : Integer ) : IDesignObject;
begin
  Result := IDesignObject( FList[Index] );
end;
{$ENDIF}

function TOWDesignerSelectionList.GetCount: Integer;
begin
  Result := FList.Count;
end;

function TOWDesignerSelectionList.Add(Item: TPersistent): Integer;
begin
  Result := FList.Add(Item);
end;

function TOWDesignerSelectionList.ListEquals(List: TOWDesignerSelectionList): Boolean;
begin
  Result := False;
end;

function TOWDesignerSelectionList.Intf_Add(const Item: TPersistent): Integer;
begin
  Result := Add( Item );
end;

function TOWDesignerSelectionList.Intf_Equals(const List: IDesignerSelections): Boolean;
begin
  Result := False;
end;

function TOWDesignerSelectionList.Intf_Get(Index: Integer): TPersistent;
begin
  Result := TPersistent( FList[ Index ] );
end;

{
function TOWDesignerSelectionList.GetComponentList: TOWDesignerSelectionList;
begin
  Result := Self;
end;
}

//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------

end.

 
