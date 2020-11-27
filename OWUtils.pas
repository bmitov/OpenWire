////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//     This software is supplied under the terms of a license agreement or    //
//     nondisclosure agreement with Mitov Software and may not be copied      //
//     or disclosed except in accordance with the terms of that agreement.    //
//         Copyright(c) 2002-2020 Mitov Software. All Rights Reserved.        //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

unit OWUtils;

interface

uses
  System.SysUtils, IGDIPlus, Mitov.Containers.Dictionary;
//  System.Generics.Collections; //

type
  TPWPinImageGetterFunc = reference to function ( HInstance : NativeInt; const AName : String; out ABitmap : IGPBitmap ) : Boolean;
//---------------------------------------------------------------------------
procedure OWRegisterPinImageGetter( AName : String; AFunc : TPWPinImageGetterFunc );
function  OWGetRegisteredPinImage( HInstance : NativeInt; AName : String; out ABitmap : IGPBitmap ) : Boolean;
procedure OWClearPinImageGetters();
procedure OWDisablePinImageGetters( AValue : Boolean );
//---------------------------------------------------------------------------
implementation
//---------------------------------------------------------------------------
var
//  GLoaded       : Boolean;
  GImageGetters : IDictionary<String,TPWPinImageGetterFunc>;
  GDisabled     : Boolean;
//  GImageGetters : TDictionary<String,TPWPinImageGetterFunc>;
//---------------------------------------------------------------------------
procedure OWDisablePinImageGetters( AValue : Boolean );
begin
  GDisabled := AValue;
end;
//---------------------------------------------------------------------------
procedure OWRegisterPinImageGetter( AName : String; AFunc : TPWPinImageGetterFunc );
begin
  if( GDisabled ) then
    Exit;

  if( GImageGetters = NIL ) then
    GImageGetters := TDictionary<String,TPWPinImageGetterFunc>.Create();

  GImageGetters.Add( AName.ToUpper(), AFunc );
end;
//---------------------------------------------------------------------------
function OWGetRegisteredPinImage( HInstance : NativeInt; AName : String; out ABitmap : IGPBitmap ) : Boolean;
var
  AFunc : TPWPinImageGetterFunc;

begin
  if( GDisabled ) then
    Exit( False );

  if( GImageGetters = NIL ) then
    Exit( False );

  if( not GImageGetters.GetValue( AName.ToUpper(), AFunc )) then
//  if( not GImageGetters.TryGetValue( AName.ToUpper(), AFunc )) then
    Exit( False );

  Result := AFunc( HInstance, AName, ABitmap );
end;
//---------------------------------------------------------------------------
procedure OWClearPinImageGetters();
begin
  if( GImageGetters <> NIL ) then
    GImageGetters.Clear();

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
{
procedure OWInitGlobals();
begin
  if( GLoaded ) then
    Exit;

  GLoaded := True;
//  GImageGetters := TDictionary<String,TPWPinImageGetterFunc>.Create();
end;
}
//---------------------------------------------------------------------------
procedure GOWUninitGlobals();
begin
  GImageGetters := NIL;
{
  if( GLoaded ) then
    begin
//    GImageGetters.DisposeOf();
    GImageGetters := NIL;
    GLoaded := False;
    end;
}
end;
//---------------------------------------------------------------------------
initialization
//  OWInitGlobals();

finalization
  GOWUninitGlobals();
//---------------------------------------------------------------------------
end.
