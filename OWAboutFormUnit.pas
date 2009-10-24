unit OWAboutFormUnit;

{$IFDEF VER140} // Delphi 6.0
{$DEFINE D6}
{$ENDIF}

{$IFDEF VER150} // Delphi 7.0
{$DEFINE D6}
{$ENDIF}

{$IFDEF VER170} // Delphi 9.0
{$DEFINE D9}
{$ENDIF}

{$IFDEF VER180} // Delphi 10.0
{$DEFINE D9}
{$ENDIF}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TOWAboutForm = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    OWLabel: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure OWLabelClick(Sender: TObject);
    procedure OWLabelMouseEnter(Sender: TObject);
    procedure OWLabelMouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses ShellAPI;

{$R *.DFM}

procedure TOWAboutForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if( Key = #27 ) then
    begin
    Close();
    Key := '0';
    end;

end;

procedure TOWAboutForm.OWLabelClick(Sender: TObject);
begin
  ShellExecute( 0, 'open', 'http://www.openwire.org', '', '', SW_SHOWNORMAL );
end;

procedure TOWAboutForm.OWLabelMouseEnter(Sender: TObject);
begin
  OWLabel.Font.Color := clRed;
end;

procedure TOWAboutForm.OWLabelMouseLeave(Sender: TObject);
begin
  OWLabel.Font.Color := clBlue;
end;

procedure TOWAboutForm.FormCreate(Sender: TObject);
begin
{$IFDEF D6}
  OWLabel.OnMouseEnter := OWLabelMouseEnter;
  OWLabel.OnMouseLeave := OWLabelMouseLeave;
{$ENDIF}
end;

end.
