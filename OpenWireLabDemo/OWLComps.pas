// OpenWire demo components.
// The package is not designed for a real usage, but to demonstrate the power of OpenWire,
// however the components are fully implemented and can be used in a real application.

{$IFNDEF FMX}
unit OWLComps;
{$ENDIF}

{$IFDEF FPC}
{$MODE DELPHI}{$H+}
{$ENDIF}

interface

uses
  System.Classes, System.SysUtils,
{$IFDEF FMX}
  FMX.Types, FMX.Controls,
{$ELSE}
  Vcl.Controls, Vcl.Forms, Vcl.StdCtrls, Vcl.ExtCtrls,
{$ENDIF}
  OWStdTypes, OWPins;

type PSingle = ^Single;

type
  TOWLAdd = class( TComponent )
  protected // OpenWire support
    FOutputPin          : TOWFloatSourcePin;
    FPositiveInputPins  : TOWPinListOwner;
    FNegativeInputPins  : TOWPinListOwner;

  private
    FPositiveDataArray  : TArray<Single>;
    FNegativeDataArray  : TArray<Single>;

  protected
    function  PinNotification( AOtherPin : TOWBasicPin; const AHandler : IOWDataStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState; var AHandled : Boolean ) : TOWNotifyResult;

    function  CreatePositivePin( APinListOwner : TOWPinList; const AOnCreated : TProc<TOWPin> ) : TOWPin;
    function  CreateNegativePin( APinListOwner : TOWPinList; const AOnCreated : TProc<TOWPin> ) : TOWPin;

    procedure DestroyPositivePin( APinListOwner : TOWPinList; APin : TOWBasicPin );
    procedure DestroyNegativePin( APinListOwner : TOWPinList; APin : TOWBasicPin );

  public
    constructor Create(AOwner : TComponent); override;
    destructor  Destroy(); override;

  published // OpenWire support
    property OutputPin          : TOWFloatSourcePin read FOutputPin         write FOutputPin;
    property PositiveInputPins  : TOWPinListOwner   read FPositiveInputPins write FPositiveInputPins;
    property NegativeInputPins  : TOWPinListOwner   read FNegativeInputPins write FNegativeInputPins;

  end;

  TOWLTestClock = class( TTimer )
  protected // OpenWire support
    FOutputPin      : TOWFloatSourcePin;
    
  protected
    FCounter        : Single;
    FStep           : Single;
    FMax            : Single;
    FMin            : Single;
    FStartReported  : Boolean;

  protected
{$IFDEF FPC}
    procedure DoOnTimer; override;
{$ELSE}
{$IFDEF FMX}
    procedure DoOnTimer; override;
{$ELSE}
    procedure Timer; override;
{$ENDIF}
{$ENDIF}
    procedure Loaded; override;
    
    procedure STestClockComponentTimer( ASender : TObject );

  protected
    procedure SetMax( Value : Single ); 
    procedure SetMin( Value : Single ); 

  public
    constructor Create(AOwner : TComponent); override;
    destructor  Destroy(); override;

  published // OpenWire support
    property OutputPin  : TOWFloatSourcePin   read FOutputPin write FOutputPin;
    
  published
    property Step : Single read FStep write FStep;
    property Max  : Single read FMax  write SetMax;
    property Min  : Single read FMin  write SetMin;
    
  end;

type
  TOWLMultiply = class( TComponent )
  protected // OpenWire support
    FOutputPin  : TOWFloatSourcePin;
    FInputPins  : TOWPinListOwner;

  private
    FInputDataArray : TArray<Single>;

  protected
    function  PinNotification( AOtherPin : TOWBasicPin; const AHandler : IOWDataStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState; var AHandled : Boolean ) : TOWNotifyResult;

    function  CreateInputPin( APinListOwner : TOWPinList; const AOnCreated : TProc<TOWPin> ) : TOWPin;
    procedure DestroyInputPin( APinListOwner : TOWPinList; APin : TOWBasicPin );

  public
    constructor Create(AOwner : TComponent); override;
    destructor  Destroy(); override;

  published // OpenWire support
    property OutputPin  : TOWFloatSourcePin read FOutputPin write FOutputPin;
    property InputPins  : TOWPinListOwner   read FInputPins write FInputPins;
    
  end;

type
  TOWLDivide = class( TComponent )
  private
    FDivisible : Single;
    FDivider   : Single;

  protected
    FOutputPin             : TOWFloatSourcePin;
    FDivisibleInputPin     : TOWFloatSinkPin;
    FDividerInputPin       : TOWFloatSinkPin;

  protected
    procedure SendDivisibleData( ASender : TOWPin; const AValue : Single; AOnConnect : Boolean );
    procedure SendDividerData( ASender : TOWPin; const AValue : Single; AOnConnect : Boolean );
    function  PinNotification( AOtherPin : TOWBasicPin; const AHandler : IOWDataStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState; var AHandled : Boolean ) : TOWNotifyResult;

  public
    constructor Create(AOwner : TComponent); override;
    destructor  Destroy(); override;

  published // OpenWire support
    property OutputPin          : TOWFloatSourcePin read FOutputPin write FOutputPin;
    property DivisibleInputPin  : TOWFloatSinkPin   read FDivisibleInputPin write FDivisibleInputPin;
    property DividerInputPin    : TOWFloatSinkPin   read FDividerInputPin write FDividerInputPin;
    
  end;

type
  TOWLLabel = class( TLabel )
  protected
    FInputPin : TOWFloatSinkPin;

  protected
    procedure PinValueChange( ASender : TOWPin; const AValue : Single; AOnConnect : Boolean );

  public
    constructor Create(AOwner : TComponent); override;
    destructor  Destroy(); override;

  published
    property InputPin : TOWFloatSinkPin   read FInputPin write FInputPin;
    
  end;

procedure Register;
//---------------------------------------------------------------------------
implementation


//---------------------------------------------------------------------------
constructor TOWLAdd.Create( AOwner : TComponent );
begin
  inherited;
  TOWFloatSourcePin.CreateEx( TOWPin.PinOwnerSetter<TOWFloatSourcePin>( FOutputPin, Self, Self ), NIL, PinNotification );
  TOWPinListOwner.CreateEx( TOWPinList.PinListOwnerSetter( FPositiveInputPins, Self, Self ), NIL, 1, [pcSink], 1, 100, CreatePositivePin, DestroyPositivePin );
  TOWPinListOwner.CreateEx( TOWPinList.PinListOwnerSetter( FNegativeInputPins, Self, Self ), NIL, 1, [pcSink], 1, 100, CreateNegativePin, DestroyNegativePin );
end;
//---------------------------------------------------------------------------
destructor TOWLAdd.Destroy();
begin
  FNegativeInputPins.Free();
  FPositiveInputPins.Free();
  FOutputPin.Free();
  inherited;
end;
//---------------------------------------------------------------------------
function TOWLAdd.CreatePositivePin( APinListOwner : TOWPinList; const AOnCreated : TProc<TOWPin> ) : TOWPin;
begin
  SetLength( FPositiveDataArray, APinListOwner.Count + 1 );
  FPositiveDataArray[ APinListOwner.Count ] := 0.0;

  var APin := TOWFloatSinkPin.Create( TOWPin.PinListAddSetter( APinListOwner ), NIL,
      procedure( ASender : TOWPin; const AValue : Single; AOnConnect : Boolean )
      begin
        FPositiveDataArray[ APinListOwner.IndexOf( ASender ) ] := AValue;
        FOutputPin.Notify( TOWNotifyOperation.Make() );
      end
    );

  FOutputPin.FunctionSources.Add( APin );
  Result := APin;
end;
//---------------------------------------------------------------------------
function TOWLAdd.CreateNegativePin( APinListOwner : TOWPinList; const AOnCreated : TProc<TOWPin> ) : TOWPin;
begin
  SetLength( FNegativeDataArray, APinListOwner.Count + 1 );
  FNegativeDataArray[ APinListOwner.Count ] := 0.0;

  var APin := TOWFloatSinkPin.Create( TOWPin.PinListAddSetter( APinListOwner ), NIL,
      procedure( ASender : TOWPin; const AValue : Single; AOnConnect : Boolean )
      begin
        FNegativeDataArray[ APinListOwner.IndexOf( ASender ) ] := AValue;
        FOutputPin.Notify( TOWNotifyOperation.Make() );
      end
    );

  FOutputPin.FunctionSources.Add( APin );
  Result := APin;
end;
//---------------------------------------------------------------------------
procedure TOWLAdd.DestroyPositivePin( APinListOwner : TOWPinList; APin : TOWBasicPin );
begin
  SetLength( FPositiveDataArray, APinListOwner.Count );
end;
//---------------------------------------------------------------------------
procedure TOWLAdd.DestroyNegativePin( APinListOwner : TOWPinList; APin : TOWBasicPin );
begin
  SetLength( FNegativeDataArray, APinListOwner.Count );
end;
//---------------------------------------------------------------------------
function TOWLAdd.PinNotification( AOtherPin : TOWBasicPin; const AHandler : IOWDataStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState; var AHandled : Boolean ) : TOWNotifyResult;
begin
  var AValue : Single := 0.0;

  for var I : Integer := 0 to FPositiveInputPins.Count - 1 do
    AValue := AValue + FPositiveDataArray[ I ];

  for var I : Integer := 0 to FNegativeInputPins.Count - 1 do
    AValue := AValue - FNegativeDataArray[ I ];

  AHandler.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<Single>.Make( AValue ), AState );
//  Handler.SendFloatData( AValue );
  Result := [];
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWLMultiply.Create(AOwner : TComponent);
begin
  inherited;
  TOWFloatSourcePin.CreateEx( TOWPin.PinOwnerSetter<TOWFloatSourcePin>( FOutputPin, Self, Self ), NIL, PinNotification );
  TOWPinListOwner.CreateEx( TOWPinList.PinListOwnerSetter( FInputPins, Self, Self ), NIL, 1, [pcSink], 1, 100, CreateInputPin, DestroyInputPin );
end;
//---------------------------------------------------------------------------
destructor TOWLMultiply.Destroy();
begin
  FInputPins.Free();
  FOutputPin.Free();
  inherited;
end;
//---------------------------------------------------------------------------
function TOWLMultiply.CreateInputPin( APinListOwner : TOWPinList; const AOnCreated : TProc<TOWPin> ) : TOWPin;
begin
  SetLength( FInputDataArray, APinListOwner.Count + 1 );
  FInputDataArray[ APinListOwner.Count ] := 1.0;

  var APin := TOWFloatSinkPin.Create( TOWPin.PinListAddSetter( APinListOwner ), NIL,
      procedure ( ASender : TOWPin; const AValue : Single; AOnConnect : Boolean )
      begin
        FInputDataArray[ APinListOwner.IndexOf( ASender ) ] := AValue;
        FOutputPin.Notify( TOWNotifyOperation.Make() );
      end
    );

  FOutputPin.FunctionSources.Add( APin );

  Result := APin;
end;
//---------------------------------------------------------------------------
procedure TOWLMultiply.DestroyInputPin( APinListOwner : TOWPinList; APin : TOWBasicPin );
begin
  SetLength( FInputDataArray, APinListOwner.Count );
end;
//---------------------------------------------------------------------------
function TOWLMultiply.PinNotification( AOtherPin : TOWBasicPin; const AHandler : IOWDataStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState; var AHandled : Boolean ) : TOWNotifyResult;
begin
  var AValue : Single := 1;

  for var I : Integer := 0 to FInputPins.Count - 1 do
    AValue := AValue * FInputDataArray[ I ];

  AHandler.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<Single>.Make( AValue ), AState );
  Result := [];
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWLDivide.Create(AOwner : TComponent);
begin
  inherited;
  FDivisible := 0;
  FDivider   := 1;
  
  TOWFloatSourcePin.CreateEx( TOWPin.PinOwnerSetter<TOWFloatSourcePin>( FOutputPin, Self, Self ), NIL, PinNotification );
  TOWFloatSinkPin.Create( TOWPin.PinOwnerSetter<TOWFloatSinkPin>( FDivisibleInputPin, Self, Self ), NIL, SendDivisibleData, NIL );
  TOWFloatSinkPin.Create( TOWPin.PinOwnerSetter<TOWFloatSinkPin>( FDividerInputPin, Self, Self ), NIL, SendDividerData, NIL );
  FOutputPin.FunctionSources.Add( FDivisibleInputPin );
  FOutputPin.FunctionSources.Add( FDividerInputPin );
end;
//---------------------------------------------------------------------------
destructor  TOWLDivide.Destroy();
begin
  FDividerInputPin.Free();
  FDivisibleInputPin.Free();
  FOutputPin.Free();
  inherited;
end;
//---------------------------------------------------------------------------
function TOWLDivide.PinNotification( AOtherPin : TOWBasicPin; const AHandler : IOWDataStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState; var AHandled : Boolean ) : TOWNotifyResult;
var
  AValue  : Single;
  
begin
  if( FDivider <> 0 ) then
    AValue := FDivisible / FDivider

  else
    AValue := 0;

  AHandler.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<Single>.Make( AValue ), AState );
  Result := [];
end;
//---------------------------------------------------------------------------
procedure TOWLDivide.SendDivisibleData( ASender : TOWPin; const AValue : Single; AOnConnect : Boolean );
begin
  FDivisible := AValue;
  FOutputPin.Notify( TOWNotifyOperation.Make() );
end;
//---------------------------------------------------------------------------
procedure TOWLDivide.SendDividerData( ASender : TOWPin; const AValue : Single; AOnConnect : Boolean );
begin
  FDivider := AValue;
  FOutputPin.Notify( TOWNotifyOperation.Make() );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWLTestClock.Create(AOwner : TComponent);
begin
  inherited;
  TOWFloatSourcePin.Create( TOWPin.PinOwnerSetter<TOWFloatSourcePin>( FOutputPin, Self, Self ), NIL );
  FCounter := 1;
  FStep := 0.5;
  FMin := 1;
  FMax := 1000;
end;
//---------------------------------------------------------------------------
destructor TOWLTestClock.Destroy();
begin
  FOutputPin.Free();
  inherited;
end;

//---------------------------------------------------------------------------
{$IFDEF FPC}
procedure TOWLTestClock.DoOnTimer;
{$ELSE}
{$IFDEF FMX}
procedure TOWLTestClock.DoOnTimer;
{$ELSE}
procedure TOWLTestClock.Timer;
{$ENDIF}
{$ENDIF}
begin
  inherited;

  if( not FStartReported ) then
    begin
    FOutputPin.Notify( TOWStartRateOperation.Make( 1000 / Interval ) );
    FStartReported := True;
    end;

  FOutputPin.Value := FCounter;

  if( FCounter > FMax ) then
    FCounter := FMax;

  if( FCounter < FMin ) then
    FCounter := FMin;

  FCounter := FCounter + FStep;
  if( FCounter > FMax ) then
    FCounter := FMin;
    
end;
//---------------------------------------------------------------------------
procedure TOWLTestClock.Loaded;
begin
  inherited;
  if( ( not Assigned( OnTimer ) ) and ( not ( csDesigning in ComponentState ) )) then
    OnTimer := STestClockComponentTimer;

  FOutputPin.Value := FCounter;
end;
//---------------------------------------------------------------------------
procedure TOWLTestClock.STestClockComponentTimer( ASender : TObject );
begin
end;
//---------------------------------------------------------------------------
procedure TOWLTestClock.SetMax( Value : Single );
begin
  if( Value = FMax ) then
    Exit;

  FMax := Value;
  if( FMax < FMin ) then
    FMin := FMax;
    
  if( FCounter > FMax ) then
    FCounter := FMax;

end;
//---------------------------------------------------------------------------
procedure TOWLTestClock.SetMin( Value : Single );
begin
  if( Value = FMin ) then
    Exit;

  FMin := Value;
  if( FMax < FMin ) then
    FMax := FMin;

  if( FCounter < FMin ) then
    FCounter := FMin;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWLLabel.Create(AOwner : TComponent);
begin
  inherited;
  TOWFloatSinkPin.Create( TOWPin.PinOwnerSetter<TOWFloatSinkPin>( FInputPin, Self, Self ), NIL, PinValueChange );
end;
//---------------------------------------------------------------------------
destructor TOWLLabel.Destroy();
begin
  FInputPin.Free();
  inherited;
end;
//---------------------------------------------------------------------------
procedure TOWLLabel.PinValueChange( ASender : TOWPin; const AValue : Single; AOnConnect : Boolean );
begin
{$IFDEF FMX}
  Text := FloatToStr( AValue );
{$ELSE}
  Caption := FloatToStr( AValue );
{$ENDIF}
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure Register;
begin
  RegisterComponents('OpenWire', [TOWLAdd, TOWLMultiply, TOWLDivide]);
  RegisterComponents('OpenWire', [TOWLTestClock]);
  RegisterComponents('OpenWire', [TOWLLabel]);
end;
//---------------------------------------------------------------------------
end.
 
