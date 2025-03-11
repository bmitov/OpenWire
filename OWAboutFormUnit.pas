////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//     This software is supplied under the terms of a license agreement or    //
//     nondisclosure agreement with Mitov Software and may not be copied      //
//     or disclosed except in accordance with the terms of that agreement.    //
//         Copyright(c) 2002-2025 Mitov Software. All Rights Reserved.        //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

unit OWAboutFormUnit;

interface

uses
  WinApi.Windows, WinApi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Mitov.SharedImagesModuleUnit;

type
  TOWAboutForm = class( TForm )
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    OKButton: TButton;
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
uses
  WinApi.ShellAPI;
{$ENDIF}

{$IFNDEF FPC}
{$R *.DFM}
{$ENDIF}

//---------------------------------------------------------------------------
procedure TOWAboutForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if( Key <> #27 ) then
    Exit;

  Close();
  Key := '0';
end;
//---------------------------------------------------------------------------
procedure TOWAboutForm.OWLabelClick(Sender: TObject);
begin
{$IFDEF FPC}
  OpenURL( 'http://www.openwire.org' );
{$ELSE}
  ShellExecute( 0, 'open', 'http://www.openwire.org', '', '', SW_SHOWNORMAL );
{$ENDIF}
end;
//---------------------------------------------------------------------------
procedure TOWAboutForm.OWLabelMouseEnter(Sender: TObject);
begin
  OWLabel.Font.Color := clRed;
end;
//---------------------------------------------------------------------------
procedure TOWAboutForm.OWLabelMouseLeave(Sender: TObject);
begin
  OWLabel.Font.Color := clBlue;
end;
//---------------------------------------------------------------------------
procedure TOWAboutForm.FormCreate(Sender: TObject);
begin
  OWLabel.OnMouseEnter := OWLabelMouseEnter;
  OWLabel.OnMouseLeave := OWLabelMouseLeave;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
end.
