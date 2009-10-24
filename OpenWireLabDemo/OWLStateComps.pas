unit OWLStateComps;

interface

uses Classes, ComCtrls, OWStdTypes, OWPins;

type
  TOWLTrackBar = class( TTrackBar )
  protected
    FPositionPin : TOWIntegerStatePin;

  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;

  protected
    procedure Changed; override;

  protected
    procedure OnIntegerChangeEvent( Sender : TOWPin; AValue : Integer );

  published
    property PositionPin : TOWIntegerStatePin read FPositionPin write FPositionPin;

  end;

type
  TOWLProgressBar = class( TProgressBar )
  protected
    FPositionPin : TOWFloatIntStatePin;

  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;

  protected
    procedure FloatChangeEvent( Sender : TOWPin; AValue : Single );
    
  published
    property PositionPin : TOWFloatIntStatePin read FPositionPin write FPositionPin;

  end;

procedure Register;

implementation

constructor TOWLTrackBar.Create(AOwner: TComponent);
begin
  inherited;
  FPositionPin := TOWIntegerStatePin.Create( Self, OnIntegerChangeEvent );
  
end;

destructor  TOWLTrackBar.Destroy;
begin
  FPositionPin.Free();
  inherited;
end;

procedure TOWLTrackBar.OnIntegerChangeEvent( Sender : TOWPin; AValue : Integer );
begin
  Position := AValue;
end;

procedure TOWLTrackBar.Changed;
begin
  inherited;
  FPositionPin.Value := Position;
end;

constructor TOWLProgressBar.Create(AOwner: TComponent);
begin
  inherited;
  FPositionPin := TOWFloatIntStatePin.Create( Self, FloatChangeEvent );

end;

destructor  TOWLProgressBar.Destroy;
begin
  FPositionPin.Free();
  inherited;
end;

procedure TOWLProgressBar.FloatChangeEvent( Sender : TOWPin; AValue : Single );
begin
  Position := Round( AValue );
end;

procedure Register;
begin
  RegisterComponents('OpenWire', [TOWLTrackBar]);
  RegisterComponents('OpenWire', [TOWLProgressBar]);
end;

end.
