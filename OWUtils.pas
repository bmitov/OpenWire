unit OWUtils;

interface

uses
  System.SysUtils, IGDIPlus, Mitov.Containers.Dictionary;

type
  TPWPinImageGetterFunc = reference to function ( HInstance : NativeInt; AName : String; out ABitmap : IGPBitmap ) : Boolean;
//---------------------------------------------------------------------------
procedure OWRegisterPinImageGetter( AName : String; AFunc : TPWPinImageGetterFunc );
function  OWGetRegisteredPinImage( HInstance : NativeInt; AName : String; out ABitmap : IGPBitmap ) : Boolean;
//---------------------------------------------------------------------------
implementation
//---------------------------------------------------------------------------
var
  GLoaded       : Boolean;
  GImageGetters : IDictionary<String,TPWPinImageGetterFunc>;
//---------------------------------------------------------------------------
procedure OWRegisterPinImageGetter( AName : String; AFunc : TPWPinImageGetterFunc );
begin
  GImageGetters.Add( AName.ToUpper(), AFunc );
end;
//---------------------------------------------------------------------------
function OWGetRegisteredPinImage( HInstance : NativeInt; AName : String; out ABitmap : IGPBitmap ) : Boolean;
var
  AFunc : TPWPinImageGetterFunc;

begin
  if( not GImageGetters.GetValue( AName.ToUpper(), AFunc )) then
    Exit( False );

  Result := AFunc( HInstance, AName, ABitmap );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure OWInitGlobals();
begin
  if( GLoaded ) then
    Exit;

  GLoaded := True;
  GImageGetters := TDictionary<String,TPWPinImageGetterFunc>.Create();
end;
//---------------------------------------------------------------------------
procedure GOWUninitGlobals();
begin
  if( GLoaded ) then
    begin
    GImageGetters := NIL;
    GLoaded := False;
    end;

end;
//---------------------------------------------------------------------------
initialization
  OWInitGlobals();

finalization
  GOWUninitGlobals();
//---------------------------------------------------------------------------
end.
