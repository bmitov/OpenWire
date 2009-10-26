// OpenWire demo components.
// The package is not designed for a real usage, but to demonstrate the power of OpenWire,
// however the components are fully implemented and can be used in a real application.

unit OWLComps;

{$IFDEF FPC}
{$MODE DELPHI}{$H+}
{$ENDIF}

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms, Dialogs, OWStdTypes, OWPins, extctrls, stdctrls;



type PSingle = ^Single;

type
  TOWLAdd = class(TComponent)
  protected // OpenWire support
    FOutputPin          : TOWFloatSourcePin;
    FPositiveInputPins  : TOWPinListOwner;
    FNegativeInputPins  : TOWPinListOwner;

  private
    FPositiveDataArray : array of Single;
    FNegativeDataArray : array of Single;

  protected
    procedure SendPositiveData( Sender : TOWPin; AValue : Single );
    procedure SendNegativeData( Sender : TOWPin; AValue : Single );
    function  PinNotification( Handler : IOWFloatStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;

    function  CreatePositivePin( APinListOwner : TOWPinList ) : TOWPin;
    function  CreateNegativePin( APinListOwner : TOWPinList ) : TOWPin;

    procedure DestroyPositivePin( APinListOwner : TOWPinList; APin : TOWBasicPin );
    procedure DestroyNegativePin( APinListOwner : TOWPinList; APin : TOWBasicPin );

  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy(); override;

  published // OpenWire support
    property OutputPin          : TOWFloatSourcePin read FOutputPin write FOutputPin;
    property PositiveInputPins  : TOWPinListOwner   read FPositiveInputPins write FPositiveInputPins;
    property NegativeInputPins  : TOWPinListOwner   read FNegativeInputPins write FNegativeInputPins;

  end;

  TOWLTestClock = class(TTimer)
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
    procedure Timer; override;
{$ENDIF}
    procedure Loaded; override;
    
    procedure STestClockComponentTimer( Sender : TObject );

  protected
    procedure SetMax( Value : Single ); 
    procedure SetMin( Value : Single ); 

  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy(); override;

  published // OpenWire support
    property OutputPin  : TOWFloatSourcePin   read FOutputPin write FOutputPin;
    
  published
    property Step       : Single read FStep write FStep;
    property Max        : Single read FMax write SetMax;
    property Min        : Single read FMin write SetMin;
    
  end;

type
  TOWLMultiply = class(TComponent)
  protected // OpenWire support
    FOutputPin  : TOWFloatSourcePin;
    FInputPins  : TOWPinListOwner;

  private
    FInputDataArray : array of Single;

  protected
    procedure SendData( Sender : TOWPin; AValue : Single );
    function  PinNotification( Handler : IOWFloatStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;

    function  CreateInputPin( APinListOwner : TOWPinList ) : TOWPin;
    procedure DestroyInputPin( APinListOwner : TOWPinList; APin : TOWBasicPin );

  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy(); override;

  published // OpenWire support
    property OutputPin  : TOWFloatSourcePin read FOutputPin write FOutputPin;
    property InputPins  : TOWPinListOwner   read FInputPins write FInputPins;
    
  end;

type
  TOWLDivide = class(TComponent)
  private
    FDivisible : Single;
    FDivider   : Single;

  protected
    FOutputPin             : TOWFloatSourcePin;
    FDivisibleInputPin     : TOWFloatSinkPin;
    FDividerInputPin       : TOWFloatSinkPin;

  protected
    procedure SendDivisibleData( Sender : TOWPin; AValue : Single );
    procedure SendDividerData( Sender : TOWPin; AValue : Single );
    function  PinNotification( Handler : IOWFloatStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;

  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy(); override;

  published // OpenWire support
    property OutputPin          : TOWFloatSourcePin read FOutputPin write FOutputPin;
    property DivisibleInputPin  : TOWFloatSinkPin   read FDivisibleInputPin write FDivisibleInputPin;
    property DividerInputPin    : TOWFloatSinkPin   read FDividerInputPin write FDividerInputPin;
    
  end;

type
  TOWLLabel = class(TLabel)
  protected
    FInput   : TOWFloatSinkPin;

  protected
    procedure PinValueChange( Sender : TOWPin; AValue : Single );

  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy(); override;

  published
    property Input : TOWFloatSinkPin   read FInput write FInput;
    
  end;

procedure Register;
//---------------------------------------------------------------------------
implementation


//---------------------------------------------------------------------------
constructor TOWLAdd.Create(AOwner: TComponent);
begin
  inherited;
  FOutputPin := TOWFloatSourcePin.CreateEx( Self, PinNotification );
  FPositiveInputPins := TOWPinListOwner.CreateEx( Self, 1, 100, CreatePositivePin, DestroyPositivePin );
  FNegativeInputPins := TOWPinListOwner.CreateEx( Self, 1, 100, CreateNegativePin, DestroyNegativePin );
end;
//---------------------------------------------------------------------------
destructor  TOWLAdd.Destroy();
begin
  FNegativeInputPins.Free();
  FPositiveInputPins.Free();
  FOutputPin.Free();
  inherited;
end;
//---------------------------------------------------------------------------
function TOWLAdd.CreatePositivePin( APinListOwner : TOWPinList ) : TOWPin;
var
  Pin : TOWFloatSinkPin;

begin
  SetLength( FPositiveDataArray, APinListOwner.Count + 1 );
  FPositiveDataArray[ APinListOwner.Count ] := 0.0;
  
  Pin := TOWFloatSinkPin.Create( Self, SendPositiveData, Pointer( APinListOwner.Count ));
  FOutputPin.FunctionSources.Add( Pin );
  Result := Pin;
end;
//---------------------------------------------------------------------------
function TOWLAdd.CreateNegativePin( APinListOwner : TOWPinList ) : TOWPin;
var
  Pin : TOWFloatSinkPin;

begin
  SetLength( FNegativeDataArray, APinListOwner.Count + 1 );
  FNegativeDataArray[ APinListOwner.Count ] := 0.0;
  
  Pin := TOWFloatSinkPin.Create( Self, SendNegativeData, Pointer( APinListOwner.Count ));
  FOutputPin.FunctionSources.Add( Pin );
  Result := Pin;
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
function TOWLAdd.PinNotification( Handler : IOWFloatStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  I     : Integer;
  Value : Single;

begin
  Value := 0;

  for I := 0 to FPositiveInputPins.Count - 1 do
    Value := Value + FPositiveDataArray[ I ];

  for I := 0 to FNegativeInputPins.Count - 1 do
    Value := Value - FNegativeDataArray[ I ];

  Handler.DispatchData( DataTypeID, TOWSuppliedSingleOperation.Create( Value ), State );
//  Handler.SendFloatData( Value );
  Result := [];
end;
//---------------------------------------------------------------------------
procedure TOWLAdd.SendPositiveData( Sender : TOWPin; AValue : Single );
begin
  FPositiveDataArray[ Integer( Sender.CustomData ) ] := AValue;
  FOutputPin.Notify( TOWNotifyOperation.Create() );
end;
//---------------------------------------------------------------------------
procedure TOWLAdd.SendNegativeData ( Sender : TOWPin; AValue : Single );
begin
  FNegativeDataArray[ Integer( Sender.CustomData ) ] := AValue;
  FOutputPin.Notify( TOWNotifyOperation.Create() );
    
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWLMultiply.Create(AOwner: TComponent);
var
  I : Integer;
  
begin
  inherited;
  FOutputPin := TOWFloatSourcePin.CreateEx( Self, PinNotification );
  FInputPins := TOWPinListOwner.CreateEx( Self, 1, 100, CreateInputPin, DestroyInputPin );
  for I := 0 to FInputPins.Count - 1 do
    FInputPins[ I ].CustomData := Pointer( I );
    
end;
//---------------------------------------------------------------------------
destructor  TOWLMultiply.Destroy();
begin
  FInputPins.Free();
  FOutputPin.Free();
  inherited;
end;
//---------------------------------------------------------------------------
function TOWLMultiply.CreateInputPin( APinListOwner : TOWPinList ) : TOWPin;
var
  Pin : TOWFloatSinkPin;

begin
  SetLength( FInputDataArray, APinListOwner.Count + 1 );
  FInputDataArray[ APinListOwner.Count ] := 1.0;

  Pin := TOWFloatSinkPin.Create( Self, SendData, Pointer( APinListOwner.Count ));
  FOutputPin.FunctionSources.Add( Pin );

  if( FInputPins <> NIL ) then
    Pin.CustomData := Pointer( FInputPins.Count );
  
  Result := Pin;
end;
//---------------------------------------------------------------------------
procedure TOWLMultiply.DestroyInputPin( APinListOwner : TOWPinList; APin : TOWBasicPin );
var
  I   : Integer;
  
begin
  SetLength( FInputDataArray, APinListOwner.Count );

  for I := 0 to FInputPins.Count - 1 do
    FInputPins[ I ].CustomData := Pointer( I );
    
end;
//---------------------------------------------------------------------------
function TOWLMultiply.PinNotification( Handler : IOWFloatStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  I     : Integer;
  Value : Single;

begin
  Value := 1;

  for I := 0 to FInputPins.Count - 1 do
    Value := Value * FInputDataArray[ I ];

  Handler.DispatchData( DataTypeID, TOWSuppliedSingleOperation.Create( Value ), State );
  Result := [];
end;
//---------------------------------------------------------------------------
procedure TOWLMultiply.SendData( Sender : TOWPin; AValue : Single );
begin
  FInputDataArray[ Integer( Sender.CustomData ) ] := AValue;
  FOutputPin.Notify( TOWNotifyOperation.Create() );    
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWLDivide.Create(AOwner: TComponent);
begin
  inherited;
  FDivisible := 0;
  FDivider   := 1;
  
  FOutputPin := TOWFloatSourcePin.CreateEx( Self, PinNotification );
  FDivisibleInputPin := TOWFloatSinkPin.Create( Self, SendDivisibleData, NIL );
  FDividerInputPin   := TOWFloatSinkPin.Create( Self, SendDividerData, NIL );
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
function TOWLDivide.PinNotification( Handler : IOWFloatStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Value : Single;
  
begin
  if( FDivider <> 0 ) then
    Value := FDivisible / FDivider

  else
    Value := 0;

  Handler.DispatchData( DataTypeID, TOWSuppliedSingleOperation.Create( Value ), State );
  Result := [];
end;
//---------------------------------------------------------------------------
procedure TOWLDivide.SendDivisibleData( Sender : TOWPin; AValue : Single );
begin
  FDivisible := AValue;
  FOutputPin.Notify( TOWNotifyOperation.Create() );
end;
//---------------------------------------------------------------------------
procedure TOWLDivide.SendDividerData( Sender : TOWPin; AValue : Single );
begin
  FDivider := AValue;
  FOutputPin.Notify( TOWNotifyOperation.Create() );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWLTestClock.Create(AOwner: TComponent);
begin
  inherited;
  FOutputPin := TOWFloatSourcePin.Create( Self );
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
procedure TOWLTestClock.Timer;
{$ENDIF}
begin
  inherited;

  if( not FStartReported ) then
    begin
    FOutputPin.Notify( TOWStartRateOperation.Create( 1000 / Interval ) );
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
procedure TOWLTestClock.STestClockComponentTimer( Sender : TObject ); 
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
constructor TOWLLabel.Create(AOwner: TComponent);
begin
  inherited;
  FInput := TOWFloatSinkPin.Create( Self, PinValueChange );
end;
//---------------------------------------------------------------------------
destructor TOWLLabel.Destroy();
begin
  FInput.Free();
  inherited;
end;
//---------------------------------------------------------------------------
procedure TOWLLabel.PinValueChange( Sender : TOWPin; AValue : Single );
begin
  Caption := FloatToStr( AValue );
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

end.
 
