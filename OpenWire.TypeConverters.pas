unit OpenWire.TypeConverters;

interface

uses
  OWPins, Mitov.Containers.List, Mitov.Containers.Dictionary, Mitov.Elements;

type
  TOWTypeConverterEntry = class;
//---------------------------------------------------------------------------
  IOWTypeConverterEntry = interface
    ['{C8A8135F-6D0F-45CE-AFB5-12A414F3DFA2}']

    function GetInstance() : TOWTypeConverterEntry;

  end;
//---------------------------------------------------------------------------
  TOWTypeConverterEntry = class( TInterfacedObject, IOWTypeConverterEntry )
  protected
    FInputID          : TGUID;
    FOutputID         : TGUID;
    FConverterClasses : IArrayList<TOWFormatConverterClass>;

  protected
    function GetConverterClass() : TOWFormatConverterClass;

  protected
    function GetInstance() : TOWTypeConverterEntry;

  public
    property InputID          : TGUID                               read FInputID;
    property OutputID         : TGUID                               read FOutputID;
    property ConverterClass   : TOWFormatConverterClass             read GetConverterClass;
    property ConverterClasses : IArrayList<TOWFormatConverterClass> read FConverterClasses;

  public
    procedure ReplaceConverterClass( AConverterClass : TOWFormatConverterClass );

  public
    constructor Create( AInputID : TGUID; AOutputID : TGUID; AConverterClass : TOWFormatConverterClass );

  end;
//---------------------------------------------------------------------------
procedure OWRegisterTypeConverter( AInputID : TGUID; AOutputID : TGUID; AConverterClass : TOWFormatConverterClass ); overload;
procedure OWRegisterTypeConverter( AConverterClass : TOWFormatConverterClass ); overload;
procedure OWRegisterTypeConverters( AConverterClasses : array of TOWFormatConverterClass );
function  OWGetConverter( AInputID : TGUID; AOutputID : TGUID; out AConverterClass : TOWFormatConverterClass ) : Boolean;
function  OWCanConvert( AInputID : TGUID; AOutputID : TGUID ) : Boolean;
function  OWSetTypeConvertrsEnabled( AValue : Boolean ) : Boolean;
//---------------------------------------------------------------------------
procedure TypeConvertersInitGlobals();
//---------------------------------------------------------------------------
implementation

uses
  Mitov.TypeInfo;

type
  IOWTypeConverterEntryDictionary = interface( IDictionary<TRecTuple<TGUID,TGUID>, IOWTypeConverterEntry> )
    ['{C211D13D-DD5C-4F4D-AB8C-86BDC1C6F353}']
  end;
//---------------------------------------------------------------------------
  TOWTypeConverterEntryDictionary = class( TDictionary<TRecTuple<TGUID,TGUID>, IOWTypeConverterEntry>, IOWTypeConverterEntryDictionary );
//---------------------------------------------------------------------------
var
  GOWConverterTypes   : IOWTypeConverterEntryDictionary;
  GConvertersDisabled : Boolean;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWTypeConverterEntry.Create( AInputID : TGUID; AOutputID : TGUID; AConverterClass : TOWFormatConverterClass );
begin
  inherited Create();
  FInputID := AInputID;
  FOutputID := AOutputID;
  FConverterClasses := TArrayList<TOWFormatConverterClass>.Create();
  FConverterClasses.Add( AConverterClass );
end;
//---------------------------------------------------------------------------
function TOWTypeConverterEntry.GetInstance() : TOWTypeConverterEntry;
begin
  Result := Self;
end;
//---------------------------------------------------------------------------
function TOWTypeConverterEntry.GetConverterClass() : TOWFormatConverterClass;
begin
  Result := FConverterClasses[ 0 ];
end;
//---------------------------------------------------------------------------
procedure TOWTypeConverterEntry.ReplaceConverterClass( AConverterClass : TOWFormatConverterClass );
begin
  FConverterClasses.Insert( 0, AConverterClass );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TypeConvertersInitGlobals();
begin
  if( GOWConverterTypes = NIL ) then
    GOWConverterTypes := TOWTypeConverterEntryDictionary.Create();

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function _OWGetTypeConverterEntry( AInputID : TGUID; AOutputID : TGUID; out AEntry  : TOWTypeConverterEntry ) : Boolean;
var
  AConverter  : IOWTypeConverterEntry;

begin
  if( GOWConverterTypes.GetValue( TRecTuple<TGUID,TGUID>.Create(AInputID, AOutputID), AConverter )) then
    begin
    AEntry := AConverter.GetInstance();
    Exit( True );
    end;

  AEntry := NIL;
  Result := False;
end;
//---------------------------------------------------------------------------
procedure OWRegisterTypeConverter( AInputID : TGUID; AOutputID : TGUID; AConverterClass : TOWFormatConverterClass );
var
  AEntry  : TOWTypeConverterEntry;

begin
  if( _OWGetTypeConverterEntry( AInputID, AOutputID, AEntry ) ) then
    AEntry.ReplaceConverterClass( AConverterClass )

  else
    GOWConverterTypes[ TRecTuple<TGUID,TGUID>.Create(AInputID, AOutputID)] := TOWTypeConverterEntry.Create( AInputID, AOutputID, AConverterClass );

end;
//---------------------------------------------------------------------------
procedure OWRegisterTypeConverter( AConverterClass : TOWFormatConverterClass );
begin
  TRttiInfo.GetType( AConverterClass ).AccessAttributes.GetAll<OWConvertDataTypeAttribute>.Query().ForEach(
      procedure( AAttribute : OWConvertDataTypeAttribute )
      begin
        OWRegisterTypeConverter( AAttribute.FromDataType, AAttribute.ToDataType, AConverterClass );
      end
    );

end;
//---------------------------------------------------------------------------
procedure OWRegisterTypeConverters( AConverterClasses : array of TOWFormatConverterClass );
var
  AConverterClass : TOWFormatConverterClass;

begin
  for AConverterClass in AConverterClasses do
    OWRegisterTypeConverter( AConverterClass );

end;
//---------------------------------------------------------------------------
function OWGetConverter( AInputID : TGUID; AOutputID : TGUID; out AConverterClass : TOWFormatConverterClass ) : Boolean;
var
  AEntry  : TOWTypeConverterEntry;

begin
  if( GConvertersDisabled ) then
    Exit( False );

  if( _OWGetTypeConverterEntry( AInputID, AOutputID, AEntry ) ) then
    begin
    AConverterClass := AEntry.ConverterClass;
    Exit( True );
    end;

  AConverterClass := NIL;
  Exit( False );
end;
//---------------------------------------------------------------------------
function OWCanConvert( AInputID : TGUID; AOutputID : TGUID ) : Boolean;
begin
  if( GConvertersDisabled ) then
    Exit( False );

  Result := GOWConverterTypes.ContainsKey( TRecTuple<TGUID,TGUID>.Create( AInputID, AOutputID ));
end;
//---------------------------------------------------------------------------
function OWSetTypeConvertrsEnabled( AValue : Boolean ) : Boolean;
begin
  Result := not GConvertersDisabled;
  GConvertersDisabled := not AValue;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure GModuleUnloadProc( HInstance: NativeInt );
begin
  GOWConverterTypes.RemoveAll(
      function( AKey : TRecTuple<TGUID,TGUID>; AValue : IOWTypeConverterEntry ) : Boolean
      var
        ATypeConverterEntryList : IArrayList<TOWFormatConverterClass>;

      begin
        ATypeConverterEntryList := AValue.GetInstance().ConverterClasses;
        ATypeConverterEntryList.RemoveAll(
            function( AClass : TOWFormatConverterClass ) : Boolean
            begin
              Result := ( NativeInt( FindClassHInstance( AClass )) = HInstance );
            end
          );

        Result := ( ATypeConverterEntryList.Count = 0 );
      end
    );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
initialization
  OWInitGlobals();
  AddModuleUnloadProc( GModuleUnloadProc );

finalization
  RemoveModuleUnloadProc( GModuleUnloadProc );
//---------------------------------------------------------------------------

end.
