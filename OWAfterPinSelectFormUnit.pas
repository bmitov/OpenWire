unit OWAfterPinSelectFormUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, OWPins;

type
  TOWAfterPinSelectForm = class(TForm)
    ListBox: TListBox;
    Panel1: TPanel;
    Panel2: TPanel;
    CancelButton: TBitBtn;
    OkButton: TBitBtn;
    procedure ListBoxDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure FillFromDisparcher( AExcludePin : TOWBasicPin; ADispatcher : TOWStateDispatcher; ANotifyAfterPin : TOWBasicPin );
    procedure FillFromSourcePin( AExcludePin : TOWBasicPin; ASourcePin : TOWSourcePin; ANotifyAfterPin : TOWBasicPin );
    function  GetSelectedName() : String;
    function  GetSelectedPin() : TOWPin;

  end;

implementation

{$R *.dfm}

//type TOWExposedSourcePin = class(TOWSourcePin);

procedure TOWAfterPinSelectForm.FillFromDisparcher( AExcludePin : TOWBasicPin; ADispatcher : TOWStateDispatcher; ANotifyAfterPin : TOWBasicPin );
var
  I : Integer;
  NotifyAfterName : String;

begin
  ListBox.Items.Add( '(none)' );
  for I := 0 to ADispatcher.PinCount - 1 do
//    if( AExcludePin <> ADispatcher.Pins[ I ] ) then
    if( ADispatcher.CanConnectAfter( AExcludePin, ADispatcher.Pins[ I ] )) then
      ListBox.Items.AddObject( ADispatcher.Pins[ I ].GetFullName( AExcludePin.GetRootName() <> ADispatcher.Pins[ I ].GetRootName() ), ADispatcher.Pins[ I ] );

  if( ANotifyAfterPin <> NIL ) then
      NotifyAfterName := ANotifyAfterPin.GetFullName( AExcludePin.GetRoot() <> ANotifyAfterPin.GetRoot() );

  if( NotifyAfterName <> '' ) then
    ListBox.ItemIndex := ListBox.Items.IndexOf( NotifyAfterName );

  if( ListBox.ItemIndex < 0 ) then
    ListBox.ItemIndex := 0;

end;

procedure TOWAfterPinSelectForm.FillFromSourcePin( AExcludePin : TOWBasicPin; ASourcePin : TOWSourcePin; ANotifyAfterPin : TOWBasicPin );
var
  I       : Integer;
  NotifyAfterName : String;

begin
  ListBox.Items.Add( '(none)' );
  for I := 0 to ASourcePin.SinkCount - 1 do
//    if( AExcludePin <> ASourcePin.Sinks[ I ] ) then
    if( ASourcePin.CanConnectAfter( AExcludePin, ASourcePin.Sinks[ I ] )) then
      ListBox.Items.AddObject( ASourcePin.Sinks[ I ].GetFullName( AExcludePin.GetRoot() <> ASourcePin.Sinks[ I ].GetRoot() ), ASourcePin.Sinks[ I ] );

  if( ANotifyAfterPin <> NIL ) then
      NotifyAfterName := ANotifyAfterPin.GetFullName( AExcludePin.GetRoot() <> ANotifyAfterPin.GetRoot() );

  if( NotifyAfterName <> '' ) then
    ListBox.ItemIndex := ListBox.Items.IndexOf( NotifyAfterName );

  if( ListBox.ItemIndex < 0 ) then
    ListBox.ItemIndex := 0;
    
end;

function TOWAfterPinSelectForm.GetSelectedName() : String;
begin
  if( ListBox.ItemIndex > 0 ) then
    Result := ListBox.Items[ ListBox.ItemIndex ]

  else
    Result := '';

end;

function  TOWAfterPinSelectForm.GetSelectedPin() : TOWPin;
begin
  if( ListBox.ItemIndex > 0 ) then
    Result := TOWPin( ListBox.Items.Objects[ ListBox.ItemIndex ] )

  else
    Result := NIL;

end;

procedure TOWAfterPinSelectForm.ListBoxDblClick(Sender: TObject);
begin
  if( ListBox.ItemIndex > 0 ) then
    ModalResult := mrOk;
    
end;

end.
