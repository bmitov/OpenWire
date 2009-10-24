unit OWDesignSelectionsList;

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

{$IFDEF VER130}
{$DEFINE D5}
{$ENDIF}

interface
  uses
{$IFNDEF D5}
{$IFDEF __VSDESIGN__}
    VSDesign
{$ELSE}
    DesignIntf
{$ENDIF}
{$ELSE}
    DsgnIntf
{$ENDIF}
    , Classes;
{ TOWDesignerSelectionList }
{   Used to transport VCL component selections between property editors }
type
  {$IFDEF D5}
    TOWDesignerSelectionList = class(TDesignerSelectionList, IDesignerSelections)
  {$ELSE}
    TOWDesignerSelectionList = class(TInterfacedObject, IDesignerSelections)
  {$ENDIF}
  private
    FList: TList;
    { IDesignSelections }
    function IDesignerSelections.Add = Intf_Add;
    {$IFDEF D5}
      function Intf_Add(const Item: IPersistent): Integer;
    {$ELSE}
      function Intf_Add(const Item: TPersistent): Integer;
    {$ENDIF}
    function IDesignerSelections.Equals = Intf_Equals;
    function Intf_Equals(const List: IDesignerSelections): Boolean;
    function IDesignerSelections.Get = Intf_Get;
    {$IFDEF D5}
      function Intf_Get(Index: Integer): IPersistent;
    {$ELSE}
      function Intf_Get(Index: Integer): TPersistent;
    {$ENDIF}
    function Get(Index: Integer): TPersistent;
    function GetCount: Integer;
{$IFDEF D9} // Delphi 9.0
    function GetDesignObject( Index : Integer ) : IDesignObject;
{$ENDIF}
    { IComponentList }
//    function GetComponentList: TOWDesignerSelectionList;
  public
    constructor Create;
    destructor Destroy; override;
    function Add(Item: TPersistent): Integer;
    function Equals(List: TOWDesignerSelectionList): Boolean;
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

{$IFDEF D9} // Delphi 9.0
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

function TOWDesignerSelectionList.Equals(List: TOWDesignerSelectionList): Boolean;
begin
  Result := False;
end;

{$IFDEF D5}
  function TOWDesignerSelectionList.Intf_Add(const Item: IPersistent): Integer;
{$ELSE}
  function TOWDesignerSelectionList.Intf_Add(const Item: TPersistent): Integer;
{$ENDIF}
begin
  {$IFDEF D5}
    Result := Add( ExtractPersistent( Item ) );
  {$ELSE}
    Result := Add( Item );
  {$ENDIF}
end;

function TOWDesignerSelectionList.Intf_Equals(const List: IDesignerSelections): Boolean;
begin
  Result := False;
end;

{$IFDEF D5}
  function TOWDesignerSelectionList.Intf_Get(Index: Integer): IPersistent;
{$ELSE}
  function TOWDesignerSelectionList.Intf_Get(Index: Integer): TPersistent;
{$ENDIF}
begin
  {$IFDEF D5}
    Result := MakeIPersistent( TPersistent( FList[ Index ] ) );
  {$ELSE}
    Result := TPersistent( FList[ Index ] );
  {$ENDIF}
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

 
