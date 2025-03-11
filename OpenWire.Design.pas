////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//     This software is supplied under the terms of a license agreement or    //
//     nondisclosure agreement with Mitov Software and may not be copied      //
//     or disclosed except in accordance with the terms of that agreement.    //
//         Copyright(c) 2002-2025 Mitov Software. All Rights Reserved.        //
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
  protected
    function  GetStringValuesInternal( const AObjectsList : IObjectArrayList = NIL ) : IStringArrayList; override;

  public
    function  GetDisplayValues( const AObjectsList : IObjectArrayList = NIL ) : IStringArrayList; override;
    procedure SetStringValue( const AValue : String ); override;
{$ENDIF}
  end;
//---------------------------------------------------------------------------
{$IFDEF FORM_EDITORS}
procedure Register;
{$ENDIF}
//---------------------------------------------------------------------------
implementation

uses
  System.SysUtils, System.Rtti, OWPins, Mitov.Utils;

{$IFNDEF VCL_EDITORS}
function TOWPinListOwnerPropertyEditor.GetDisplayValues( const AObjectsList : IObjectArrayList = NIL ) : IStringArrayList;
begin
  Result := GetStringValues( AObjectsList );
  for var AValue in GetInstanceValues( AObjectsList ) do
    begin
    var ACount := AValue.AsType<TOWPinListOwner>.Count;
    if( ACount = 1 ) then
      Result.Add( '1 Item' )

    else
      Result.Add( ACount.ToString() + ' Items' );

    end;

end;
//---------------------------------------------------------------------------
function TOWPinListOwnerPropertyEditor.GetStringValuesInternal( const AObjectsList : IObjectArrayList = NIL ) : IStringArrayList;
begin
  Result := TStringArrayList.Create();
  for var AValue in GetInstanceValues( AObjectsList ) do
    Result.Add( AValue.AsType<TOWPinListOwner>.Count.ToString());

end;
//---------------------------------------------------------------------------
procedure TOWPinListOwnerPropertyEditor.SetStringValue( const AValue : String );
var
  AModification : IManagedSection;

begin
  var APinList := GetInstanceValues()[ 0 ].AsType<TOWPinListOwner>;
  var ANewValue := StrToIntDef( AValue, APinList.Count );
  if( ANewValue <> APinList.Count ) then
    begin
    AModification := BeginModify( False );
    APinList.Count := ANewValue;
//    Modified();
    end;

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
