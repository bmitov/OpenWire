////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//     This software is supplied under the terms of a license agreement or    //
//     nondisclosure agreement with Mitov Software and may not be copied      //
//     or disclosed except in accordance with the terms of that agreement.    //
//         Copyright(c) 2002-2016 Mitov Software. All Rights Reserved.        //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

unit OpenWire.Delphi.PropertyEditors;

interface

uses
  System.Classes, System.Types, Vcl.Graphics, DesignIntf, VCLEditors,
  Mitov.Design, OpenWirePinEditors, Mitov.TypeInfo;

type
  TOWPinListOwnerPropertyEditorProxy = class( OpenWirePinEditors.TOWPinListOwnerPropertyEditor, IInterface, IProperty, IPropertyKind, IProperty70, IInheritedPropertyEditor,
    ICustomPropertyDrawing, ICustomPropertyListDrawing, ICustomPropertyDrawing80
    )

  protected
   FNestedEditor  : IPropertyEditor;
   FDesigner      : IDesigner;
   FValueRect     : TRect;
   HInGetValues   : Boolean;
   FOwnerTypeInfo : ITypeInfo; // For chache speedup!

  protected
    function QueryInterface(const IID: TGUID; out Obj): HResult; stdcall;

  protected
    procedure PropDrawName(ACanvas: TCanvas; const ARect: TRect; ASelected: Boolean);
    procedure PropDrawValue(ACanvas: TCanvas; const ARect: TRect; ASelected: Boolean);

    function  PropDrawNameRect(const ARect: TRect): TRect;
    function  PropDrawValueRect(const ARect: TRect): TRect;

  protected
    procedure ListMeasureWidth(const Value: String; ACanvas: TCanvas; var AWidth: Integer);
    procedure ListMeasureHeight(const Value: String; ACanvas: TCanvas; var AHeight: Integer);
    procedure ListDrawValue(const Value: String; ACanvas: TCanvas; const ARect: TRect; ASelected: Boolean);

  public
    procedure Edit(); override;
    function  GetAttributes() : TPropertyAttributes; override;
    procedure GetValues( Proc : TGetStrProc ); override;
    procedure Initialize(); override;
    function  GetName(): String; override;
    function  GetValue() : String; override;
    function  GetValueW() : WideString; override;
    procedure SetValue(const Value: String); overload; override;
    procedure SetValue(const Value: WideString); overload; override;
    function  GetParentString() : String;
    procedure SetParentString( AValue : String );
    function  ValueAvailable() : Boolean;
    procedure GetProperties(Proc: TGetPropProc); override;
    function  GetPropCount() : Integer;
    function  GetDesigner() : DesignIntf.IDesigner;

  end;
//---------------------------------------------------------------------------
procedure Register;
//---------------------------------------------------------------------------
implementation

uses
  Winapi.ActiveX, Mitov.Delphi.PropertyEditors, OpenWire.Design;

//---------------------------------------------------------------------------
procedure TOWPinListOwnerPropertyEditorProxy.Initialize();
begin
  inherited;
  InitializeEditor( FOwnerTypeInfo, Self, FNestedEditor );
end;
//---------------------------------------------------------------------------
function TOWPinListOwnerPropertyEditorProxy.GetName(): String;
begin
  Result := FNestedEditor.GetName();
end;
//---------------------------------------------------------------------------
function TOWPinListOwnerPropertyEditorProxy.GetValue() : String;
begin
  Result := FNestedEditor.GetStringValue();
end;
//---------------------------------------------------------------------------
function TOWPinListOwnerPropertyEditorProxy.GetValueW() : WideString;
begin
  Result := FNestedEditor.GetStringValue();
end;
//---------------------------------------------------------------------------
procedure TOWPinListOwnerPropertyEditorProxy.SetValue(const Value: String);
begin
  FNestedEditor.SetStringValue( Value );
end;
//---------------------------------------------------------------------------
procedure TOWPinListOwnerPropertyEditorProxy.SetValue(const Value: WideString);
begin
  FNestedEditor.SetStringValue( Value );
end;
//---------------------------------------------------------------------------
function TOWPinListOwnerPropertyEditorProxy.GetParentString() : String;
begin
  Result := inherited GetValue();
end;
//---------------------------------------------------------------------------
procedure TOWPinListOwnerPropertyEditorProxy.SetParentString( AValue : String );
begin
  inherited SetValue( AValue );
end;
//---------------------------------------------------------------------------
function TOWPinListOwnerPropertyEditorProxy.ValueAvailable() : Boolean;
begin
  Result := inherited;
  if( Result ) then
    Result := FNestedEditor.GetIsVisible();

end;
//---------------------------------------------------------------------------
procedure TOWPinListOwnerPropertyEditorProxy.GetProperties( Proc: TGetPropProc );
begin
  if( EditorGetProperties( FNestedEditor, Designer, Proc )) then
    Exit;

  inherited;
end;
//---------------------------------------------------------------------------
function TOWPinListOwnerPropertyEditorProxy.GetPropCount() : Integer;
begin
  Result := PropCount;
end;
//---------------------------------------------------------------------------
function TOWPinListOwnerPropertyEditorProxy.GetDesigner() : DesignIntf.IDesigner;
begin
  Result := Designer;
end;
//---------------------------------------------------------------------------
function TOWPinListOwnerPropertyEditorProxy.QueryInterface(const IID: TGUID; out Obj): HResult; stdcall;
begin
  Result := EditorQueryInterface( FNestedEditor, IID, Obj);
  if( Succeeded( Result ) ) then
    Result := inherited QueryInterface( IID, Obj );

end;
//---------------------------------------------------------------------------
procedure TOWPinListOwnerPropertyEditorProxy.PropDrawName(ACanvas: TCanvas; const ARect: TRect; ASelected: Boolean);
begin
  EditorPropDrawName( Self, FNestedEditor, ACanvas, ARect, ASelected );
end;
//---------------------------------------------------------------------------
procedure TOWPinListOwnerPropertyEditorProxy.PropDrawValue(ACanvas: TCanvas; const ARect: TRect; ASelected: Boolean);
begin
  EditorPropDrawValue( Self, FNestedEditor, ACanvas, ARect, FValueRect, ASelected );
end;
//---------------------------------------------------------------------------
function TOWPinListOwnerPropertyEditorProxy.PropDrawNameRect(const ARect: TRect): TRect;
begin
  Result := EditorPropDrawNameRect( FNestedEditor, ARect );
end;
//---------------------------------------------------------------------------
function TOWPinListOwnerPropertyEditorProxy.PropDrawValueRect(const ARect: TRect): TRect;
begin
  FValueRect := ARect;
  Result := EditorPropDrawValueRect( FNestedEditor, ARect );
end;
//---------------------------------------------------------------------------
procedure TOWPinListOwnerPropertyEditorProxy.ListMeasureWidth(const Value: String; ACanvas: TCanvas; var AWidth: Integer);
begin
  EditorListMeasureWidth( FNestedEditor, Value, ACanvas, AWidth );
end;
//---------------------------------------------------------------------------
procedure TOWPinListOwnerPropertyEditorProxy.ListMeasureHeight(const Value: String; ACanvas: TCanvas; var AHeight: Integer);
begin
  EditorListMeasureHeight( FNestedEditor, Value, ACanvas, AHeight );
end;
//---------------------------------------------------------------------------
procedure TOWPinListOwnerPropertyEditorProxy.ListDrawValue(const Value: String; ACanvas: TCanvas; const ARect: TRect; ASelected: Boolean);
begin
  EditorListDrawValue( FNestedEditor, Value, ACanvas, ARect, ASelected );
end;
//---------------------------------------------------------------------------
procedure TOWPinListOwnerPropertyEditorProxy.Edit();
begin
  if( CheckEditorDialog( Self, FNestedEditor )) then
    Exit;

  inherited;
end;
//---------------------------------------------------------------------------
function TOWPinListOwnerPropertyEditorProxy.GetAttributes() : TPropertyAttributes;
begin
  Result := inherited + CheckEditorAttributes( FNestedEditor );
end;
//---------------------------------------------------------------------------
procedure TOWPinListOwnerPropertyEditorProxy.GetValues( Proc : TGetStrProc );
begin
  if( not HInGetValues ) then
    begin
    HInGetValues := True;
    if( CheckEditorDropDownList( FNestedEditor, Proc )) then
      begin
      HInGetValues := False;
      Exit;
      end;

    HInGetValues := False;
    end;

  inherited;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure Register;
begin
  RegisterEditorProxyAssociation( TOWPinListOwnerPropertyEditor, TOWPinListOwnerPropertyEditorProxy );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
end.

