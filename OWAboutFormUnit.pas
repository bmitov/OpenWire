unit OWAboutFormUnit;

{$IFDEF FPC}
{$MODE DELPHI}{$H+}
{$ENDIF}

{$IFDEF VER140} // Delphi 6.0
{$DEFINE D6}
{$ENDIF}

{$IFDEF VER150} // Delphi 7.0
{$DEFINE D6}
{$ENDIF}

{$IFDEF VER170} // Delphi 9.0
{$DEFINE D6}
{$ENDIF}

{$IFDEF VER180} // Delphi 10.0
{$DEFINE D6}
{$ENDIF}

{$IFDEF VER190} // Delphi 11.0
{$DEFINE D6}
{$ENDIF}

{$IFDEF VER200} // Delphi 12.0
{$DEFINE D6}
{$ENDIF}

{$IFDEF VER210} // Delphi 13.0
{$DEFINE D6}
{$ENDIF}

interface

uses
{$IFDEF FPC}
  LCLIntf, LMessages, LResources,
{$ELSE}
  Windows, Messages,
{$ENDIF}
  SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
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

{$IFNDEF FPC}
uses ShellAPI;
{$ENDIF}

{$IFNDEF FPC}
{$R *.DFM}
{$ENDIF}

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
{$IFDEF FPC}
  OpenURL( 'http://www.openwire.org' );
{$ELSE}
  ShellExecute( 0, 'open', 'http://www.openwire.org', '', '', SW_SHOWNORMAL );
{$ENDIF}
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

{$IFDEF FPC}
initialization
  {$i OWAboutFormUnit.lrs}
{$ENDIF}

end.
