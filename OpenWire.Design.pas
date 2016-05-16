////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//     This software is supplied under the terms of a license agreement or    //
//     nondisclosure agreement with Mitov Software and may not be copied      //
//     or disclosed except in accordance with the terms of that agreement.    //
//         Copyright(c) 2002-2016 Mitov Software. All Rights Reserved.        //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

unit OpenWire.Design;

{$IFDEF __DELPHI_DESIGN__}
  {$DEFINE VCL_EDITORS}
{$ELSE}
  {$IFNDEF __VSDESIGN__}
    {$DEFINE FORM_EDITORS}
  {$ENDIF}
{$ENDIF}

interface

uses
  Mitov.Design, Mitov.Containers.List;

type
  TOWPinListOwnerPropertyEditor = class( TSinglePropertyEditor )
{$IFNDEF VCL_EDITORS}
  public
    function  GetDisplayValue() : String; override;
    function  GetStringValue( AObjectsList : IArrayList<TObject> = NIL ) : String; override;
    procedure SetStringValue(const  AValue: String ); override;
{$ENDIF}
  end;
//---------------------------------------------------------------------------
{$IFDEF FORM_EDITORS}
procedure Register;
{$ENDIF}
//---------------------------------------------------------------------------
implementation

uses
  System.SysUtils, System.Rtti, OWPins;

{$IFNDEF VCL_EDITORS}
function TOWPinListOwnerPropertyEditor.GetDisplayValue() : String;
begin
  Result := IntToStr( GetValue().AsType<TOWPinListOwner>.Count ) + ' Items';
end;
//---------------------------------------------------------------------------
function TOWPinListOwnerPropertyEditor.GetStringValue( AObjectsList : IArrayList<TObject> = NIL ) : String;
begin
  Result := IntToStr( GetValue().AsType<TOWPinListOwner>.Count );
end;
//---------------------------------------------------------------------------
procedure TOWPinListOwnerPropertyEditor.SetStringValue(const  AValue: String );
begin
  GetValue().AsType<TOWPinListOwner>.Count := StrToIntDef( AValue, GetValue().AsType<TOWPinListOwner>.Count );
end;
{$ENDIF}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
{$IFDEF FORM_EDITORS}
procedure Register;
begin
  RegisterPropertyEditor( TypeInfo(TOWPin),  NIL, '', THiddenEditor );
  RegisterPropertyEditor( TypeInfo(TOWPinList),  NIL, '', THiddenEditor );
  RegisterPropertyEditor( TypeInfo(TOWPinListOwner),  NIL, '', TOWPinListOwnerPropertyEditor );
end;
{$ENDIF}
//---------------------------------------------------------------------------
end.
