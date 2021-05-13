////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//     This software is supplied under the terms of a license agreement or    //
//     nondisclosure agreement with Mitov Software and may not be copied      //
//     or disclosed except in accordance with the terms of that agreement.    //
//         Copyright(c) 2002-2021 Mitov Software. All Rights Reserved.        //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

unit OWAfterPinSelectFormUnit;

{$IFDEF FPC}
{$MODE DELPHI}{$H+}
{$ENDIF}

interface

uses
{$IFDEF FPC}
  LCLIntf, LMessages, LResources,
{$ELSE}
  Windows, Messages,
{$ENDIF}
  SysUtils, Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, OWPins;

type
  TOWAfterPinSelectForm = class(TForm)
    ListBox: TListBox;
    Panel1: TPanel;
    Panel2: TPanel;
    CancelButton: TBitBtn;
    OkButton: TBitBtn;
    procedure ListBoxDblClick( Sender : TObject );
  private
    { Private declarations }
  public
    procedure FillFromDisparcher( AExcludePin : TOWBasicPin; ADispatcher : TOWBasicStateDispatcher; ANotifyAfterPin : TOWBasicPin );
    procedure FillFromSourcePin( AExcludePin : TOWBasicPin; ASourcePin : TOWSourcePin; ANotifyAfterPin : TOWBasicPin );
    function  GetSelectedName() : String;
    function  GetSelectedPin() : TOWPin;

  end;

implementation

{$IFNDEF FPC}
{$R *.DFM}
{$ENDIF}

//---------------------------------------------------------------------------
procedure TOWAfterPinSelectForm.FillFromDisparcher( AExcludePin : TOWBasicPin; ADispatcher : TOWBasicStateDispatcher; ANotifyAfterPin : TOWBasicPin );
var
  NotifyAfterName : String;

begin
  ListBox.Items.Add( '(none)' );
  var AExecutePinRootName := AExcludePin.GetRootName();
  for var I : Integer := 0 to ADispatcher.PinCount - 1 do
    begin
    var APin := ADispatcher.Pins[ I ];
//    if( AExcludePin <> APin ) then
    if( ADispatcher.CanConnectAfter( AExcludePin, APin )) then
      ListBox.Items.AddObject( APin.GetFullName( AExecutePinRootName <> APin.GetRootName() ), APin );

    end;

  if( ANotifyAfterPin <> NIL ) then
    NotifyAfterName := ANotifyAfterPin.GetFullName( AExcludePin.GetRoot() <> ANotifyAfterPin.GetRoot() );

  if( NotifyAfterName <> '' ) then
    ListBox.ItemIndex := ListBox.Items.IndexOf( NotifyAfterName );

  if( ListBox.ItemIndex < 0 ) then
    ListBox.ItemIndex := 0;

end;
//---------------------------------------------------------------------------
procedure TOWAfterPinSelectForm.FillFromSourcePin( AExcludePin : TOWBasicPin; ASourcePin : TOWSourcePin; ANotifyAfterPin : TOWBasicPin );
var
  NotifyAfterName : String;

begin
  ListBox.Items.Add( '(none)' );
  var APinRoot := AExcludePin.GetRoot();
  for var I : Integer := 0 to ASourcePin.SinkCount - 1 do
    begin
    var APin := ASourcePin.Sinks[ I ];
//    if( AExcludePin <> APin ) then
    if( ASourcePin.CanConnectAfter( AExcludePin, APin )) then
      ListBox.Items.AddObject( APin.GetFullName( APinRoot <> APin.GetRoot() ), APin );

    end;

  if( ANotifyAfterPin <> NIL ) then
    NotifyAfterName := ANotifyAfterPin.GetFullName( APinRoot <> ANotifyAfterPin.GetRoot() );

  if( NotifyAfterName <> '' ) then
    ListBox.ItemIndex := ListBox.Items.IndexOf( NotifyAfterName );

  if( ListBox.ItemIndex < 0 ) then
    ListBox.ItemIndex := 0;
    
end;
//---------------------------------------------------------------------------
function TOWAfterPinSelectForm.GetSelectedName() : String;
begin
  if( ListBox.ItemIndex > 0 ) then
    Exit( ListBox.Items[ ListBox.ItemIndex ] );

  Result := '';
end;
//---------------------------------------------------------------------------
function  TOWAfterPinSelectForm.GetSelectedPin() : TOWPin;
begin
  if( ListBox.ItemIndex > 0 ) then
    Exit( TOWPin( ListBox.Items.Objects[ ListBox.ItemIndex ] ));

  Result := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWAfterPinSelectForm.ListBoxDblClick( Sender : TObject );
begin
  if( ListBox.ItemIndex > 0 ) then
    ModalResult := mrOk;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
{$IFDEF FPC}
initialization
  {$i OWAfterPinSelectFormUnit.lrs}
{$ENDIF}

end.
