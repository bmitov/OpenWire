unit OpenWire.TypeConverters;

interface

uses
  OWPins, Mitov.Containers.List, Mitov.Containers.Dictionary, Mitov.Elements, Mitov.Containers.Common;

type
  TOWTypeConverterEntry = class;
//---------------------------------------------------------------------------
  IOWTypeConverterEntry = interface
    ['{C8A8135F-6D0F-45CE-AFB5-12A414F3DFA2}']

    [Result : Weak]
    function GetInstance() : TOWTypeConverterEntry;

  end;
//---------------------------------------------------------------------------
  TOWTypeConverterEntry = class( TBasicInterfacedObject, IOWTypeConverterEntry )
  protected
    FInputID          : TGUID;
    FOutputID         : TGUID;
    FConverterClasses : IArrayList<TOWFormatConverterClass>;

  protected
    function GetConverterClass() : TOWFormatConverterClass;

  protected
    [Result : Weak]
    function GetInstance() : TOWTypeConverterEntry;

  public
    property InputID : TGUID                                        read FInputID;
    property OutputID : TGUID                                       read FOutputID;
    property ConverterClass : TOWFormatConverterClass               read GetConverterClass;
    property ConverterClasses : IArrayList<TOWFormatConverterClass> read FConverterClasses;

  public
    procedure ReplaceConverterClass( AConverterClass : TOWFormatConverterClass );

  public
    constructor Create( const AInputID : TGUID; const AOutputID : TGUID; AConverterClass : TOWFormatConverterClass );

  end;
//---------------------------------------------------------------------------
procedure OWRegisterTypeConverter( const AInputID : TGUID; const AOutputID : TGUID; AConverterClass : TOWFormatConverterClass ); overload;
procedure OWRegisterTypeConverter( AConverterClass : TOWFormatConverterClass ); overload;
procedure OWRegisterTypeConverters( const AConverterClasses : TArray<TOWFormatConverterClass> );
function  OWGetConverter( const AInputID : TGUID; const AOutputID : TGUID; out AConverterClass : TOWFormatConverterClass ) : Boolean;
function  OWCanConvert( const AInputID : TGUID; const AOutputID : TGUID ) : Boolean;
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
constructor TOWTypeConverterEntry.Create( const AInputID : TGUID; const AOutputID : TGUID; AConverterClass : TOWFormatConverterClass );
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
function _OWGetTypeConverterEntry( const AInputID : TGUID; const AOutputID : TGUID; out AEntry : TOWTypeConverterEntry ) : Boolean;
var
  AConverter  : IOWTypeConverterEntry;

begin
  if( GOWConverterTypes.GetValue( TRecTuple<TGUID,TGUID>.Create( AInputID, AOutputID ), AConverter )) then
    begin
    AEntry := AConverter.GetInstance();
    Exit( True );
    end;

  AEntry := NIL;
  Result := False;
end;
//---------------------------------------------------------------------------
procedure OWRegisterTypeConverter( const AInputID : TGUID; const AOutputID : TGUID; AConverterClass : TOWFormatConverterClass );
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
  AConverterClass.ClassTypeInfo().AccessAttributes.GetAll<OWConvertDataTypeAttribute>.Query().ForEach(
      procedure( const AAttribute : OWConvertDataTypeAttribute )
      begin
        OWRegisterTypeConverter( AAttribute.FromDataType, AAttribute.ToDataType, AConverterClass );
      end
    );

end;
//---------------------------------------------------------------------------
procedure OWRegisterTypeConverters( const AConverterClasses : TArray<TOWFormatConverterClass> );
begin
  for var AConverterClass in AConverterClasses do
    OWRegisterTypeConverter( AConverterClass );

end;
//---------------------------------------------------------------------------
function OWGetConverter( const AInputID : TGUID; const AOutputID : TGUID; out AConverterClass : TOWFormatConverterClass ) : Boolean;
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
function OWCanConvert( const AInputID : TGUID; const AOutputID : TGUID ) : Boolean;
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
procedure GModuleUnloadProc( AHInstance : NativeInt );
begin
  GOWConverterTypes.RemoveAll(
      function( const AKey : TRecTuple<TGUID,TGUID>; const AValue : IOWTypeConverterEntry ) : Boolean
      var
        ATypeConverterEntryList : IArrayList<TOWFormatConverterClass>;

      begin
        ATypeConverterEntryList := AValue.GetInstance().ConverterClasses;
        ATypeConverterEntryList.RemoveAll(
            function( const AClass : TOWFormatConverterClass ) : Boolean
            begin
              Result := ( NativeInt( FindClassHInstance( AClass )) = AHInstance );
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
