unit OWStdTypes;

{$IFDEF fpc}
{$MODE DELPHI}{$H+}
{$ENDIF}

{$I OWDefs.inc}

interface
uses
  OWPins, classes;

type
  IOWBasicStream = interface(IOWStream)
    ['{561B072C-4191-49C6-9F22-21791EF977D9}']
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
  end;
  
  IOWClockStream = interface(IOWBasicStream)
    ['{48CDAF9F-00C7-4B45-999D-4EE25353A952}']
  end;

  IOWDataStream = interface(IOWBasicStream)
    ['{CFDF94D7-5134-49D9-AC65-902BBC1CD140}']
  end;

  IOWIntegerStream = interface(IOWDataStream)
    ['{92F6B47E-B46E-49BB-9A8E-676D3C2F2E66}']
  end;

  IOWFloatStream = interface(IOWDataStream)
    ['{67F6997B-7EB4-4E2F-8320-4A512B5F2BC7}']
  end;

  IOWRealStream = interface(IOWDataStream)
    ['{208F9564-3C20-4C97-BB77-2FC5AE6E4194}']
  end;

  IOWRealComplexStream = interface(IOWDataStream)
    ['{4CC4ADE6-E5AE-4E27-A9E7-42C14E062F41}']  
  end;

  IOWBoolStream = interface(IOWDataStream)
    ['{7AA677AE-F983-4714-8E64-EC6F3D17695B}']
  end;

  IOWCharStream = interface(IOWDataStream)
    ['{3241B885-95E1-495F-ACEC-4A1C98872B63}']
  end;

  IOWStringStream = interface(IOWDataStream)
    ['{25C048B4-89D4-4277-AA98-A835EB29F5C1}']
  end;

  IOWStringListStream = interface(IOWDataStream)
    ['{6A8D79B4-6799-4FB7-A0AB-43C327B7382A}']
  end;

  IOWIntRangedStream = interface(IOWDataStream)
    ['{836EE1EA-B8BD-4E04-8225-6AB547D1A3C4}']
  end;

  IOWInt64Stream = interface(IOWDataStream)
    ['{6D054E38-F733-4212-8D5A-0E866802F866}']
  end;

  IOWInt64RangedStream = interface(IOWDataStream)
    ['{B201C2F8-CA4D-4CF3-8E6D-E620D2B9D7EF}']
  end;

  IOWRealRangedStream = interface(IOWDataStream)
    ['{648AC95D-2772-427C-AD9D-2B7F1EDDE1A7}']
  end;

  IOWDateTimeStream = interface(IOWDataStream)
    ['{475D7D8B-4796-42A5-8F8E-B512B8FD2704}']
  end;

  IOWDateTimeRangedStream = interface(IOWDataStream)
    ['{92419B6E-F281-455A-852F-8253D761E30B}']
  end;

{$IFDEF D16Up}
  IOWStreamPersistStream = interface(IOWDataStream)
    ['{846DC44A-1EB7-4BDD-BB93-04E9BC5E4BBD}']
  end;
{$ENDIF}
//---------------------------------------------------------------------------
type
  TOWRealComplex = record
    Real        : Real;
    Imaginary   : Real;
  end;


type
  POWRealComplex = ^TOWRealComplex;
  

type TOWClockEvent = procedure( Sender : TOWPin ) of object;

type TOWStringChangeEvent = procedure( Sender : TOWPin; AValue : String; AOnConnect : Boolean ) of object;
type TOWStringPinNotificationEvent = function( Handler : IOWStringStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult of object;

type TOWStringListGetDataEvent = procedure( Sender : TOWPin; AValue : TStrings ) of object;
type TOWStringListChangeEvent = procedure( Sender : TOWPin; AValue : TStrings; AOnConnect : Boolean ) of object;
type TOWStringListPinNotificationEvent = function( Handler : IOWStringListStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult of object;

type TOWCharChangeEvent = procedure( Sender : TOWPin; AValue : Char; AOnConnect : Boolean ) of object;
type TOWCharPinNotificationEvent = function( Handler : IOWCharStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult of object;

type TOWBoolChangeEvent = procedure( Sender : TOWPin; AValue : Boolean; AOnConnect : Boolean ) of object;
type TOWBoolPinNotificationEvent = function( Handler : IOWBoolStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult of object;

type TOWFloatChangeEvent = procedure( Sender : TOWPin; AValue : Single; AOnConnect : Boolean ) of object;
type TOWFloatPinNotificationEvent = function( Handler : IOWFloatStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult of object;

type TOWIntegerChangeEvent = procedure( Sender : TOWPin; AValue : Integer; AOnConnect : Boolean ) of object;
type TOWIntegerPinNotificationEvent = function( Handler : IOWIntegerStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult of object;

type TOWInt64ChangeEvent = procedure( Sender : TOWPin; AValue : Int64; AOnConnect : Boolean ) of object;
type TOWInt64PinNotificationEvent = function(Handler : IOWInt64Stream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult of object;

type TOWRealChangeEvent = procedure( Sender : TOWPin; AValue : Real; AOnConnect : Boolean ) of object;
type TOWRealPinNotificationEvent = function( Handler : IOWRealStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult of object;

type TOWRealComplexChangeEvent = procedure( Sender : TOWPin; AValue : TOWRealComplex; AOnConnect : Boolean ) of object;
type TOWRealComplexPinNotificationEvent = function( Handler : IOWRealComplexStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult of object;

type TOWIntValueRangeChangeEvent = procedure( Sender : TOWPin; AValue, AMin, AMax : Integer; ARangesFilled : Boolean; AOnConnect : Boolean ) of object;
type TOWInt64ValueRangeChangeEvent = procedure( Sender : TOWPin; AValue, AMin, AMax : Int64; ARangesFilled : Boolean; AOnConnect : Boolean ) of object;
type TOWRealValueRangeChangeEvent = procedure( Sender : TOWPin; AValue, AMin, AMax : Real; ARangesFilled : Boolean; AOnConnect : Boolean ) of object;

type TOWIntRangeChangeEvent = procedure( Sender : TOWPin; AMin, AMax : Integer; AOnConnect : Boolean ) of object;
type TOWInt64RangeChangeEvent = procedure( Sender : TOWPin; AMin, AMax : Int64; AOnConnect : Boolean ) of object;
type TOWRealRangeChangeEvent = procedure( Sender : TOWPin; AMin, AMax : Real; AOnConnect : Boolean ) of object;

type TOWDateTimeChangeEvent = procedure( Sender : TOWPin; AValue : TDateTime; AOnConnect : Boolean ) of object;
type TOWDateTimePinNotificationEvent = function( Handler : IOWDateTimeStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult of object;

type TOWInt64DateTimeValueRangeChangeEvent = procedure( Sender : TOWPin; AValue, AMin, AMax : Int64; AMinTime, AMaxTime : TDateTime; ARangesFilled : Boolean; AOnConnect : Boolean ) of object;
type TOWInt64DateTimeRangeChangeEvent = procedure( Sender : TOWPin; AMin, AMax : Int64; AMinTime, AMaxTime : TDateTime; AOnConnect : Boolean ) of object;

type TOWPinNotificationEvent = function( Handler : IOWDataStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult of object;
type TOWPinDispatchEvent = function( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult of object;

type TOWClockPinNotificationEvent = function( Sender : TOWBasicPin; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult of object;

type
  TOWPumpType = ( ptNone, ptSlave, ptMaster, ptHardware );
//---------------------------------------------------------------------------
  TOWClockOperation = class( TOWNotifyOperation )
  end;
//---------------------------------------------------------------------------
  TOWClockQueryOperation = class( TOWNotifyOperation )
  end;
//---------------------------------------------------------------------------
  TOWClockNeededOperation = class( TOWNotifyOperation )
  public
    Enabled : Boolean;

  public
    constructor Create( AEnabled : Boolean );

  end;
//---------------------------------------------------------------------------
  TOWClearContentOperation = class( TOWNotifyOperation )
  end;
//---------------------------------------------------------------------------
  TOWSuppliedOperation = class( TOWClockOperation )
  end;
//---------------------------------------------------------------------------
  TOWMasterPumpOperation = class( TOWNotifyOperation )
  public
    Pump      : TObject;

  public
    constructor Create( APump : TObject );

  end;
//---------------------------------------------------------------------------
  TOWPumpRequestOperation = class( TOWNotifyOperation )
  public
    Pump         : TObject;
    PumpType     : TOWPumpType;
    PumpPriority : Integer;     // Priority level for this group.

    DesiredRate  : Single;      // If different than 0 there has been a rate request.

  public
    constructor Create();
    constructor CreateEx( APump : TObject; APumpType : TOWPumpType; APumpPriority : Integer; ADesiredRate : Single );

  end;
//---------------------------------------------------------------------------
  TOWStartPumpOperation = class( TOWNotifyOperation )
  public
    Pump         : TObject;

  public
    constructor Create( APump : TObject );

  end;
//---------------------------------------------------------------------------
  TOWStartOperation = class( TOWNotifyOperation )
  end;
//---------------------------------------------------------------------------
  TOWStartRateOperation = class( TOWStartOperation )
  public
    Rate : Single;

  public
    constructor Create( ARate : Single );

  end;
//---------------------------------------------------------------------------
  TOWStopOperation = class( TOWNotifyOperation )
  end;
//---------------------------------------------------------------------------
  TOWEndStopOperation = class( TOWStopOperation )
  end;
//---------------------------------------------------------------------------
  TOWFileEndNoStopOperation = class( TOWNotifyOperation )
  end;
//---------------------------------------------------------------------------
  TOWSuppliedMulticastOperation = class( TOWSuppliedOperation )
  end;
//---------------------------------------------------------------------------
  TOWQueryStreamOperation = class( TOWNotifyOperation )
  end;
//---------------------------------------------------------------------------
  TOWIgnoreStreamOperation = class( TOWNotifyOperation )
  end;
//---------------------------------------------------------------------------
  TOWActivateStreamOperation = class( TOWNotifyOperation )
  end;
//---------------------------------------------------------------------------
  TOWFlushStreamOperation = class( TOWNotifyOperation )
  end;
//---------------------------------------------------------------------------
  TOWSuppliedSingleOperation = class( TOWSuppliedOperation )
  public
    Value : Single;

  public
    constructor Create( AValue : Single );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedBoolOperation = class( TOWSuppliedOperation )
  public
    Value : Boolean;

  public
    constructor Create( AValue : Boolean );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedCharOperation = class( TOWSuppliedOperation )
  public
    Value : Char;

  public
    constructor Create( AValue : Char );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedStringOperation = class( TOWSuppliedOperation )
  public
    Value : String;

  public
    constructor Create( AValue : String );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedStringListOperation = class( TOWSuppliedOperation )
  public
    Value : TStrings;

  public
    constructor Create( AValue : TStrings );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedRealOperation = class( TOWSuppliedOperation )
  public
    Value : Real;

  public
    constructor Create( AValue : Real );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedRealValueRangeOperation = class( TOWSuppliedRealOperation )
  public
    Min   : Real;
    Max   : Real;

  public
    constructor Create( AValue : Real; AMin : Real; AMax : Real );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedRealRangeOperation = class( TOWSuppliedOperation )
  public
    Min   : Real;
    Max   : Real;

  public
    constructor Create( AMin : Real; AMax : Real );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedIntegerOperation = class( TOWSuppliedOperation )
  public
    Value : Integer;

  public
    constructor Create( AValue : Integer );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedIntValueRangeOperation = class( TOWSuppliedIntegerOperation )
  public
    Min : Integer;
    Max : Integer;

  public
    constructor Create( AValue, AMinValue, AMaxValue : Integer );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedIntRangeOperation = class( TOWSuppliedOperation )
  public
    Min : Integer;
    Max : Integer;

  public
    constructor Create( AMinValue, AMaxValue : Integer );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedInt64Operation = class( TOWSuppliedOperation )
  public
    Value : Int64;

  public
    constructor Create( AValue : Int64 );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedInt64ValueRangeOperation = class( TOWSuppliedInt64Operation )
  public
    Min : Int64;
    Max : Int64;

  public
    constructor Create( AValue, AMinValue, AMaxValue : Int64 );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedInt64RangeOperation = class( TOWSuppliedOperation )
  public
    Min : Int64;
    Max : Int64;

  public
    constructor Create( AMinValue, AMaxValue : Int64 );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedRealComplexOperation = class( TOWSuppliedOperation )
  public
    Value : TOWRealComplex;

  public
    constructor Create( AValue : TOWRealComplex );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedDateTimeOperation = class( TOWSuppliedOperation )
  public
    Value : TDateTime;

  public
    constructor Create( AValue : TDateTime );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedDateTimeValueRangeOperation = class( TOWSuppliedDateTimeOperation )
  public
    Min : TDateTime;
    Max : TDateTime;

  public
    constructor Create( AValue, AMinValue, AMaxValue : TDateTime );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedDateTimeRangeOperation = class( TOWSuppliedOperation )
  public
    Min : TDateTime;
    Max : TDateTime;

  public
    constructor Create( AMinValue, AMaxValue : TDateTime );

  end;
//---------------------------------------------------------------------------
{$IFDEF D16Up}
  TOWSuppliedStreamPersistOperation = class( TOWSuppliedOperation )
  public
    Value : TStream;

  public
    constructor Create(); overload;
    constructor Create( AValue : TStream ); overload;
    destructor  Destroy(); override;

  end;
{$ENDIF}
//---------------------------------------------------------------------------
  TOWClockSourcePin = class( TOWSourcePin, IOWClockStream )
  protected
    FPinNotificationEvent : TOWClockPinNotificationEvent;

  protected
    function ClockNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;

  public
    procedure Clock();

  public
    constructor Create( AOwner: TComponent; APinNotificationEvent : TOWClockPinNotificationEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWClockPinNotificationEvent = NIL );

end;
//---------------------------------------------------------------------------
  TOWClockSinkPin = class( TOWSinkPin, IOWClockStream )
  protected
    FOnPinNotificationEvent : TOWClockPinNotificationEvent;
    FOnClock                : TOWClockEvent;

  protected
    function ClockNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWClockPinNotificationEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWClockPinNotificationEvent = NIL; ACustomData : TObject = NIL );

  end;
//---------------------------------------------------------------------------
  TOWClockMultiSinkPin = class( TOWMultiSinkPin, IOWClockStream )
  protected
    FOnPinNotificationEvent : TOWClockPinNotificationEvent;
    FOnClock                : TOWClockEvent;

  protected
    function ClockNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWClockPinNotificationEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWClockPinNotificationEvent = NIL; ACustomData : TObject = NIL );

  end;
//---------------------------------------------------------------------------
  TOWStdSourcePin = class( TOWClockSourcePin )
  protected
    FOnDisconnect : TOWPinEvent;

  protected
    procedure BeforeDisconnectFrom( APin : TOWBasicPin ); override;

  public
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent; APinNotificationEvent : TOWClockPinNotificationEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent; APinNotificationEvent : TOWClockPinNotificationEvent = NIL );

  end;
//---------------------------------------------------------------------------
  TOWStdStatePin = class( TOWStatePin )
  protected
    FOnDisconnect       : TOWPinEvent;
    FOnPinDispatchEvent : TOWPinDispatchEvent;

  protected
    function TryCustomDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var AResult : TOWNotifyResult ) : Boolean;

  protected
    procedure BeforeDisconnectFrom( APin : TOWBasicPin ); override;

  public
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent; AOnPinDispatchEvent : TOWPinDispatchEvent; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent; AOnPinDispatchEvent : TOWPinDispatchEvent; ACustomData : TObject = NIL );

  end;
//---------------------------------------------------------------------------
  TOWStdSinkPin = class( TOWSinkPin )
  protected
    FOnPinDispatchEvent : TOWPinDispatchEvent;

  protected
    function TryCustomDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var AResult : TOWNotifyResult ) : Boolean;

  public
    constructor Create( AOwner: TComponent; AOnPinDispatchEvent : TOWPinDispatchEvent; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnPinDispatchEvent : TOWPinDispatchEvent; ACustomData : TObject = NIL );

  end;
//---------------------------------------------------------------------------
  TOWStdMultiSinkPin = class( TOWMultiSinkPin )
  protected
    FOnPinDispatchEvent : TOWPinDispatchEvent;

  protected
    function TryCustomDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var AResult : TOWNotifyResult ) : Boolean;

  public
    constructor Create( AOwner: TComponent; AOnPinDispatchEvent : TOWPinDispatchEvent; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnPinDispatchEvent : TOWPinDispatchEvent; ACustomData : TObject = NIL );

  end;
//---------------------------------------------------------------------------
  TOWFloatSourcePin = class( TOWStdSourcePin )
  protected
    FPinNotificationEvent : TOWFloatPinNotificationEvent;
    
  protected
    FValue  : Single;

  protected
    procedure SetValue( AValue : Single );
    
  public
    procedure Send( AValue : Single );

  public
    constructor CreateEx( AOwner: TComponent; APinNotificationEvent : TOWFloatPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWFloatPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    
  public
    property Value : Single read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWFloatSinkPin = class( TOWStdSinkPin, IOWFloatStream )
  protected
    FOnDataChange : TOWFloatChangeEvent;
    FValue        : Single;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWFloatChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWFloatChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value   : Single read FValue;

  end;
//---------------------------------------------------------------------------
  TOWFloatMultiSinkPin = class( TOWStdMultiSinkPin, IOWFloatStream )
  protected
    FOnDataChange : TOWFloatChangeEvent;
    FValue        : Single;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWFloatChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWFloatChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value   : Single read FValue;

  end;
//---------------------------------------------------------------------------
  TOWFloatStatePin = class( TOWStdStatePin, IOWFloatStream )
  protected
    FPinNotificationEvent : TOWFloatPinNotificationEvent;
    FOnDataChange         : TOWFloatChangeEvent;
    FValue                : Single;

  protected
    procedure SetValue( AValue : Single );

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    procedure Send( AValue : Single );

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWFloatChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWFloatChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value : Single read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
  TOWBoolSourcePin = class( TOWStdSourcePin )
  protected
    FPinNotificationEvent : TOWBoolPinNotificationEvent;
    
  protected
    FValue  : Boolean;

  protected
    procedure SetValue( AValue : Boolean );

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  public
    procedure Send( AValue : Boolean );

  public
    constructor CreateEx( AOwner: TComponent; APinNotificationEvent : TOWBoolPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWBoolPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );

  public
    property Value   : Boolean read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWBoolSinkPin = class( TOWStdSinkPin, IOWBoolStream )
  protected
    FOnDataChange : TOWBoolChangeEvent;
    FValue        : Boolean;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWBoolChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWBoolChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value  : Boolean read FValue;

  end;
//---------------------------------------------------------------------------
  TOWBoolMultiSinkPin = class( TOWStdMultiSinkPin, IOWBoolStream )
  protected
    FOnDataChange : TOWBoolChangeEvent;
    FValue        : Boolean;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWBoolChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWBoolChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value  : Boolean read FValue;

  end;
//---------------------------------------------------------------------------
  TOWBoolStatePin = class( TOWStdStatePin, IOWBoolStream )
  protected
    FPinNotificationEvent : TOWBoolPinNotificationEvent;
    FOnDataChange         : TOWBoolChangeEvent;
    FValue                : Boolean;

  protected
    procedure SetValue( AValue : Boolean );

  protected
    function  Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  protected
    function  DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    procedure Send( AValue : Boolean );

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWBoolChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWBoolChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value  : Boolean read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWCharSourcePin = class( TOWStdSourcePin )
  protected
    FPinNotificationEvent : TOWCharPinNotificationEvent;

  protected
    FValue  : Char;

  public
    constructor CreateEx( AOwner: TComponent; APinNotificationEvent : TOWCharPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWCharPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );

  protected
    procedure SetValue( AValue : Char );

  public
    procedure Send( AValue : Char ); overload;
    procedure Send( AText : String ); overload;

  protected
    function  Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  public
    property Value : Char read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWCharSinkPin = class( TOWStdSinkPin, IOWCharStream )
  protected
    FOnDataChange : TOWCharChangeEvent;
    FValue        : Char;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWCharChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWCharChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value  : Char read FValue;

  end;
//---------------------------------------------------------------------------
  TOWCharStatePin = class( TOWStdStatePin, IOWCharStream )
  protected
    FPinNotificationEvent : TOWCharPinNotificationEvent;
    FOnDataChange         : TOWCharChangeEvent;
    FValue                : Char;

  protected
    procedure SetValue( AValue : Char );

  protected
    function  Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    
  protected
    function  DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    procedure Send( AValue : Char );

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWCharChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWCharChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value : Char read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWStringSourcePin = class( TOWStdSourcePin )
  protected
    FPinNotificationEvent : TOWStringPinNotificationEvent;

  protected
    FValue  : String;

  public
    constructor CreateEx( AOwner: TComponent; APinNotificationEvent : TOWStringPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWStringPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );

  protected
    procedure SetValue( AValue : String );

  public
    procedure Send( AText : String );

  protected
    function  Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  public
    property Value : String read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWStringSinkPin = class( TOWStdSinkPin, IOWStringStream )
  protected
    FOnDataChange : TOWStringChangeEvent;
    FValue        : String;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWStringChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWStringChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value : String read FValue;

  end;
//---------------------------------------------------------------------------
  TOWStringMultiSinkPin = class( TOWStdMultiSinkPin, IOWStringStream )
  protected
    FOnDataChange : TOWStringChangeEvent;
    FValue        : String;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWStringChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWStringChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value  : String read FValue;

  end;
//---------------------------------------------------------------------------
  TOWStringStatePin = class( TOWStdStatePin, IOWStringStream )
  protected
    FPinNotificationEvent : TOWStringPinNotificationEvent;
    FOnDataChange         : TOWStringChangeEvent;
    FValue                : String;

  protected
    procedure SetValue( AValue : String );

  protected
    function  Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  protected
    function  DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWStringChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWStringChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    procedure Send( AText : String );

  public
    property Value : String read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWStringListSourcePin = class( TOWStdSourcePin )
  protected
    FPinNotificationEvent : TOWStringListPinNotificationEvent;

//  protected
//    FValue  : TStrings;

  public
    constructor CreateEx( AOwner: TComponent; APinNotificationEvent : TOWStringListPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWStringListPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );

//  protected
//    procedure SetValue( AValue : TStrings );

  public
    procedure Send( AValue : TStrings );

  protected
    function  Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

//  public
//    property Value : TStrings read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWStringListSinkPin = class( TOWStdSinkPin, IOWStringListStream )
  protected
    FOnDataChange : TOWStringListChangeEvent;
//    FValue        : TStrings;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWStringListChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWStringListChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

//  public
//    property Value : TStrings read FValue;

  end;
//---------------------------------------------------------------------------
  TOWStringListMultiSinkPin = class( TOWStdMultiSinkPin, IOWStringListStream )
  protected
    FOnDataChange : TOWStringListChangeEvent;
//    FValue        : String;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWStringListChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWStringListChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

//  public
//    property Value  : String read FValue;

  end;
//---------------------------------------------------------------------------
  TOWStringListStatePin = class( TOWStdStatePin, IOWStringListStream )
  protected
    FPinNotificationEvent : TOWStringListPinNotificationEvent;
    FOnDataChange         : TOWStringListChangeEvent;
    FOnGetDataEvent       : TOWStringListGetDataEvent;
//    FValue                : String;

//  protected
//    procedure SetValue( AValue : String );

  protected
    function  Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  protected
    function  DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWStringListChangeEvent; AOnGetDataEvent : TOWStringListGetDataEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWStringListChangeEvent; AOnGetDataEvent : TOWStringListGetDataEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    procedure Send( AValue : TStrings );

//  public
//    property Value : String read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWIntegerSourcePin = class( TOWStdSourcePin )
  protected
    FPinNotificationEvent : TOWIntegerPinNotificationEvent;

  protected
    FValue  : Integer;

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  protected
    procedure SetValue( AValue : Integer );

  public
    procedure Send( AValue : Integer );

  public
    constructor CreateEx( AOwner: TComponent; APinNotificationEvent : TOWIntegerPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWIntegerPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );

  public
    property Value : Integer read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWIntegerSinkPin = class( TOWStdSinkPin, IOWIntegerStream )
  protected
    FOnDataChange : TOWIntegerChangeEvent;
    FValue        : Integer;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWIntegerChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWIntegerChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value : Integer read FValue;

  end;
//---------------------------------------------------------------------------
  TOWIntegerMultiSinkPin = class( TOWStdMultiSinkPin, IOWIntegerStream )
  protected
    FOnDataChange : TOWIntegerChangeEvent;
    FValue        : Integer;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange  : TOWIntegerChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange  : TOWIntegerChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value : Integer read FValue;

  end;
//---------------------------------------------------------------------------
  TOWIntegerStatePin = class( TOWStdStatePin, IOWIntegerStream )
  protected
    FPinNotificationEvent : TOWIntegerPinNotificationEvent;
    FOnDataChange         : TOWIntegerChangeEvent;
    FValue                : Integer;

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    
  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  protected
    procedure SetValue( AValue : Integer );
    
  public
    procedure Send( AValue : Integer );

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWIntegerChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWIntegerChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value : Integer read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWInt64SourcePin = class( TOWStdSourcePin )
  protected
    FPinNotificationEvent : TOWInt64PinNotificationEvent;

  protected
    FValue : Int64;

  protected
    procedure SetValue( AValue : Int64 );
    
  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  public
    procedure Send( AValue : Int64 );

  public
    constructor CreateEx( AOwner: TComponent; APinNotificationEvent : TOWInt64PinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWInt64PinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );

  public
    property Value : Int64 read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWInt64SinkPin = class( TOWStdSinkPin, IOWInt64Stream )
  protected
    FOnDataChange : TOWInt64ChangeEvent;
    FValue        : Int64;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWInt64ChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWInt64ChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value : Int64 read FValue;

  end;
//---------------------------------------------------------------------------
  TOWInt64MultiSinkPin = class( TOWStdMultiSinkPin, IOWInt64Stream )
  protected
    FOnDataChange : TOWInt64ChangeEvent;
    FValue        : Int64;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWInt64ChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWInt64ChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value : Int64 read FValue;

  end;
//---------------------------------------------------------------------------
  TOWInt64StatePin = class( TOWStdStatePin, IOWInt64Stream )
  protected
    FPinNotificationEvent : TOWInt64PinNotificationEvent;
    FOnDataChange         : TOWInt64ChangeEvent;
    FValue                : Int64;

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    
  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  protected
    procedure SetValue( AValue : Int64 );
    
  public
    procedure Send( AValue : Int64 );

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWInt64ChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWInt64ChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value : Int64 read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWInt64RangedSourcePin = class( TOWStdSourcePin )
  protected
    FMin    : Int64;
    FMax    : Int64;
    FValue  : Int64;

  protected
    procedure SetMin( AValue : Int64 );
    procedure SetMax( AValue : Int64 );
    procedure SetValue( AValue : Int64 );

  public
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );

  public
    procedure SubmitValueRange( AValue : Int64; AMin : Int64; AMax : Int64 );
    procedure SubmitRange( AMin : Int64; AMax : Int64 );

  protected
    function IntNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function IntRangedNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  public
    property Min    : Int64 read FMin   write SetMin;
    property Max    : Int64 read FMax   write SetMax;
    property Value  : Int64 read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWInt64RangedSinkPin = class( TOWStdSinkPin, IOWInt64Stream, IOWInt64RangedStream )
  protected
    FOnDataChange   : TOWInt64ValueRangeChangeEvent;
    FOnRangeChange  : TOWInt64RangeChangeEvent;

  protected
    FMin    : Int64;
    FMax    : Int64;
    FValue  : Int64;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    
  public
    constructor Create( AOwner: TComponent; AOnDataChange  : TOWInt64ValueRangeChangeEvent; AOnRangeChange : TOWInt64RangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange  : TOWInt64ValueRangeChangeEvent; AOnRangeChange : TOWInt64RangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Min    : Int64 read FMin;
    property Max    : Int64 read FMax;
    property Value  : Int64 read FValue;

  end;
//---------------------------------------------------------------------------
  TOWInt64AndRangedSinkPin = class( TOWStdSinkPin, IOWInt64Stream, IOWInt64RangedStream )
  protected
    FOnDataChange   : TOWInt64ValueRangeChangeEvent;
    FOnRangeChange  : TOWInt64RangeChangeEvent;

  protected
    FMin    : Int64;
    FMax    : Int64;
    FValue  : Int64;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    
  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWInt64ValueRangeChangeEvent; AOnRangeChange : TOWInt64RangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWInt64ValueRangeChangeEvent; AOnRangeChange : TOWInt64RangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Min    : Int64 read FMin;
    property Max    : Int64 read FMax;
    property Value  : Int64 read FValue;

  end;
//---------------------------------------------------------------------------
  TOWInt64RangedStatePin = class( TOWStdStatePin, IOWInt64RangedStream, IOWInt64Stream )
  protected
    FOnDataChange   : TOWInt64ValueRangeChangeEvent;
    FOnRangeChange  : TOWInt64RangeChangeEvent;

  protected
    FMin    : Int64;
    FMax    : Int64;
    FValue  : Int64;

  protected
    function IntNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function IntRangedNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  protected
    procedure SetMin( AValue : Int64 );
    procedure SetMax( AValue : Int64 );
    procedure SetRanged( AValue : Int64 );

  public
    procedure SubmitValueRange( AValue : Int64; AMin : Int64; AMax : Int64 );
    procedure SubmitRange( AMin : Int64; AMax : Int64 );

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWInt64ValueRangeChangeEvent; AOnRangeChange : TOWInt64RangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWInt64ValueRangeChangeEvent; AOnRangeChange : TOWInt64RangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Min    : Int64 read FMin write SetMin;
    property Max    : Int64 read FMax write SetMax;
    property Value  : Int64 read FValue write SetRanged;

  end;
//---------------------------------------------------------------------------
  TOWRealSourcePin = class( TOWStdSourcePin )
  protected
    FPinNotificationEvent : TOWPinNotificationEvent;

  protected
    FValue  : Real;

  protected
    procedure SetValue( AValue : Real );

  public
    constructor CreateEx( AOwner: TComponent; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );

  public
    procedure Send( AValue : Real );

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  public
    property Value : Real read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWRealSinkPin = class( TOWStdSinkPin, IOWFloatStream, IOWRealStream )
  protected
    FOnDataChange : TOWRealChangeEvent;
    FValue        : Real;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWRealChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWRealChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value : Real read FValue;

  end;
//---------------------------------------------------------------------------
  TOWRealMultiSinkPin = class( TOWStdMultiSinkPin, IOWFloatStream, IOWRealStream )
  protected
    FOnDataChange : TOWRealChangeEvent;
    FValue        : Real;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWRealChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWRealChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value : Real read FValue;

  end;
//---------------------------------------------------------------------------
  TOWRealStatePin = class( TOWStdStatePin, IOWFloatStream, IOWRealStream )
  protected
    FPinNotificationEvent : TOWPinNotificationEvent;
    FOnDataChange         : TOWRealChangeEvent;
    FValue                : Real;

  protected
    procedure SetValue( AValue : Real );

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    procedure Send( AValue : Real );

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWRealChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWRealChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value : Real read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWRealRangedSourcePin = class( TOWStdSourcePin )
  protected
    FPinNotificationEvent : TOWPinNotificationEvent;

  protected
    FMin    : Real;
    FMax    : Real;
    FValue  : Real;

  protected
    procedure SetMin( AValue : Real );
    procedure SetMax( AValue : Real );
    procedure SetValue( AValue : Real );

  public
    constructor CreateEx( AOwner: TComponent; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );

  public
    procedure SubmitValueRange( AValue : Real; AMin : Real; AMax : Real );
    procedure SubmitRange( AMin : Real; AMax : Real );

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  public
    property Min    : Real read FMin    write SetMin;
    property Max    : Real read FMax    write SetMax;
    property Value  : Real read FValue  write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWRealRangedSinkPin = class( TOWStdSinkPin, IOWRealRangedStream )
  protected
    FOnDataChange   : TOWRealValueRangeChangeEvent;
    FOnRangeChange  : TOWRealRangeChangeEvent;

  protected
    FMin    : Real;
    FMax    : Real;
    FValue  : Real;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    
  public
    constructor Create( AOwner: TComponent; AOnDataChange  : TOWRealValueRangeChangeEvent; AOnRangeChange : TOWRealRangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange  : TOWRealValueRangeChangeEvent; AOnRangeChange : TOWRealRangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Min    : Real read FMin;
    property Max    : Real read FMax;
    property Value  : Real read FValue;

  end;
//---------------------------------------------------------------------------
  TOWRealAndRangedSinkPin = class( TOWStdSinkPin, IOWRealRangedStream, IOWRealStream )
  protected
    FOnDataChange   : TOWRealValueRangeChangeEvent;
    FOnRangeChange  : TOWRealRangeChangeEvent;

  protected
    FMin    : Real;
    FMax    : Real;
    FValue  : Real;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    
  public
    constructor Create( AOwner: TComponent; AOnDataChange  : TOWRealValueRangeChangeEvent; AOnRangeChange : TOWRealRangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange  : TOWRealValueRangeChangeEvent; AOnRangeChange : TOWRealRangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Min    : Real read FMin;
    property Max    : Real read FMax;
    property Value  : Real read FValue;

  end;
//---------------------------------------------------------------------------
  TOWRealAndRangedStatePin = class( TOWStdStatePin, IOWRealRangedStream, IOWRealStream )
  protected
    FPinNotificationEvent : TOWPinNotificationEvent;
    FOnDataChange         : TOWRealValueRangeChangeEvent;
    FOnRangeChange        : TOWRealRangeChangeEvent;

  protected
    FMin    : Real;
    FMax    : Real;
    FValue  : Real;

  protected
    procedure SetMin( AValue : Real );
    procedure SetMax( AValue : Real );
    procedure SetValue( AValue : Real );

  public
    procedure SubmitValueRange( AValue : Real; AMin : Real; AMax : Real );
    procedure SubmitRange( AMin : Real; AMax : Real );

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    
  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    
  public
    constructor Create( AOwner: TComponent; AValue : Real; AMin : Real; AMax : Real; AOnDataChange  : TOWRealValueRangeChangeEvent; AOnRangeChange : TOWRealRangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AValue : Real; AMin : Real; AMax : Real; AOwnerLock : IOWLock; AOnDataChange  : TOWRealValueRangeChangeEvent; AOnRangeChange : TOWRealRangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Min    : Real read FMin;
    property Max    : Real read FMax;
    property Value  : Real read FValue;

  end;
//---------------------------------------------------------------------------
type
  TOWFloatIntSourcePin = class( TOWStdSourcePin )
  protected
    FValue               : Single;

  protected
    procedure SetValue( AValue : Single );

  protected
    function FloatNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function IntegerNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  public
    procedure Send( AValue : Single );

  public
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );

  public
    property Value : Single read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWFloatIntSinkPin = class( TOWStdSinkPin, IOWFloatStream, IOWIntegerStream )
  protected
    FOnDataChange : TOWFloatChangeEvent;
    FValue        : Single;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWFloatChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWFloatChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value : Single read FValue;

  end;
//---------------------------------------------------------------------------
  TOWFloatIntStatePin = class( TOWStdStatePin, IOWFloatStream, IOWIntegerStream )
  protected
    FFloatPinNotificationEvent    : TOWFloatPinNotificationEvent;
    FIntegerPinNotificationEvent  : TOWIntegerPinNotificationEvent;

    FOnDataChange                 : TOWFloatChangeEvent;

    FValue                        : Single;

  protected
    procedure SetValue( AValue : Single );

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    
  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    procedure Send( AValue : Single );

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWFloatChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWFloatChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value : Single read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWComplexSourcePin = class( TOWStdSourcePin )
  protected
    FPinNotificationEvent : TOWRealComplexPinNotificationEvent;
    FValue                : TOWRealComplex;

  protected
    procedure SetValue( AValue : TOWRealComplex );

  public
    constructor CreateEx( AOwner: TComponent; APinNotificationEvent : TOWRealComplexPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWRealComplexPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  public
    procedure Send( AValue : TOWRealComplex );

  public
    property Value : TOWRealComplex read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWComplexSinkPin = class( TOWStdSinkPin, IOWRealComplexStream )
  protected
    FOnDataChange : TOWRealComplexChangeEvent;
    FValue        : TOWRealComplex;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWRealComplexChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWRealComplexChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value : TOWRealComplex read FValue;

  end;
//---------------------------------------------------------------------------
  TOWComplexStatePin = class( TOWStdStatePin, IOWRealComplexStream )
  protected
    FPinNotificationEvent : TOWRealComplexPinNotificationEvent;
    FOnDataChange         : TOWRealComplexChangeEvent;
    FValue                : TOWRealComplex;

  protected
    procedure SetValue( AValue : TOWRealComplex );

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    
  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    procedure Send( AValue : TOWRealComplex );

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWRealComplexChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWRealComplexChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value : TOWRealComplex read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWDateTimeSourcePin = class( TOWStdSourcePin )
  protected
    FPinNotificationEvent : TOWPinNotificationEvent;

  protected
    FValue  : TDateTime;

  protected
    procedure SetValue( AValue : TDateTime );

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  public
    procedure Send( AValue : TDateTime );

  public
    constructor CreateEx( AOwner: TComponent; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );

  public
    property Value : TDateTime read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWDateTimeSinkPin = class( TOWStdSinkPin, IOWDateTimeStream )
  protected
    FOnDataChange : TOWDateTimeChangeEvent;
    FValue        : TDateTime;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWDateTimeChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWDateTimeChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value : TDateTime read FValue;

  end;
//---------------------------------------------------------------------------
  TOWDateTimeMultiSinkPin = class( TOWStdSinkPin, IOWDateTimeStream )
  protected
    FOnDataChange : TOWDateTimeChangeEvent;
    FValue        : TDateTime;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWDateTimeChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWDateTimeChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value : TDateTime read FValue;

  end;
//---------------------------------------------------------------------------
  TOWDateTimeStatePin = class( TOWStdStatePin, IOWDateTimeStream )
  protected
    FPinNotificationEvent : TOWPinNotificationEvent;
    FOnDataChange         : TOWDateTimeChangeEvent;
    FValue                : TDateTime;

  protected
    procedure SetValue( AValue : TDateTime );

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    
  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    procedure Send( AValue : TDateTime );

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWDateTimeChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWDateTimeChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value : TDateTime read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWInt64TimeRangedSourcePin = class( TOWStdSourcePin )
  protected
    FMinTime  : TDateTime;
    FMaxTime  : TDateTime;
    FMin      : Int64;
    FMax      : Int64;
    FValue    : Int64;

  protected
    procedure SetMinTime( AValue : TDateTime );
    procedure SetMaxTime( AValue : TDateTime );
    procedure SetMin( AValue : Int64 );
    procedure SetMax( AValue : Int64 );
    procedure SetValue( AValue : Int64 );

  protected
    function IntNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function IntRangedNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function TimeNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function TimeRangedNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  public
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );

  public
    procedure SubmitValueRange( AValue : Int64; AMin : Int64; AMax : Int64; AMinTime : TDateTime; AMaxTime : TDateTime );
    procedure SubmitRange( AMin : Int64; AMax : Int64; AMinTime : TDateTime; AMaxTime : TDateTime );

  public
    property MinTime  : TDateTime read FMinTime write SetMinTime;
    property MaxTime  : TDateTime read FMaxTime write SetMaxTime;
    property Min      : Int64     read FMin     write SetMin;
    property Max      : Int64     read FMax     write SetMax;
    property Value    : Int64     read FValue   write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWInt64TimeRangedStatePin = class( TOWStdStatePin, IOWInt64RangedStream, IOWInt64Stream, IOWDateTimeRangedStream, IOWDateTimeStream )
  protected
    FOnDataChange   : TOWInt64DateTimeValueRangeChangeEvent;
    FOnRangeChange  : TOWInt64DateTimeRangeChangeEvent;

  protected
    FMinTime  : TDateTime;
    FMaxTime  : TDateTime;
    FMin      : Int64;
    FMax      : Int64;
    FValue    : Int64;

  protected
    procedure SetMinTime( AValue : TDateTime );
    procedure SetMaxTime( AValue : TDateTime );
    procedure SetMin( AValue : Int64 );
    procedure SetMax( AValue : Int64 );
    procedure SetValue( AValue : Int64 );

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWInt64DateTimeValueRangeChangeEvent; AOnRangeChange : TOWInt64DateTimeRangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWInt64DateTimeValueRangeChangeEvent; AOnRangeChange : TOWInt64DateTimeRangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    procedure SubmitValueRange( AValue : Int64; AMin : Int64; AMax : Int64; AMinTime : TDateTime; AMaxTime : TDateTime );
    procedure SubmitRange( AMin : Int64; AMax : Int64; AMinTime : TDateTime; AMaxTime : TDateTime );

  protected
    function IntNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function IntRangedNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function TimeNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function TimeRangedNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    property MinTime  : TDateTime read FMinTime write SetMinTime;
    property MaxTime  : TDateTime read FMaxTime write SetMaxTime;
    property Min      : Int64     read FMin     write SetMin;
    property Max      : Int64     read FMax     write SetMax;
    property Value    : Int64     read FValue   write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWStdComboSourcePin = class( TOWStdSourcePin )
  protected
    FValue               : Real;
    FNotifyOnChangeOnly  : Boolean;

  protected
    function RealNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function FloatNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function IntegerNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function StringNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function BoolNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  protected
    procedure SetValue( AValue : Real );

  public
    procedure Send( AValue : Real );

  public
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );

  public
    property Value : Real read FValue write SetValue;
    property NotifyOnChangeOnly  : Boolean read FNotifyOnChangeOnly write FNotifyOnChangeOnly;

  end;
//---------------------------------------------------------------------------
  TOWIntRangedSourcePin = class( TOWStdSourcePin )
  protected
    FMin    : Integer;
    FMax    : Integer;
    FValue  : Integer;

  protected
    procedure SetMin( AValue : Integer );
    procedure SetMax( AValue : Integer );
    procedure SetValue( AValue : Integer );

  protected
    function IntNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function IntRangedNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  public
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );

  public
    procedure SubmitValueRange( AValue : Integer; AMin : Integer; AMax : Integer );
    procedure SubmitRange( AMin : Integer; AMax : Integer );

  public
    property Min    : Integer read FMin   write SetMin;
    property Max    : Integer read FMax   write SetMax;
    property Value  : Integer read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWIntRangedSinkPin = class( TOWStdSinkPin, IOWIntegerStream, IOWIntRangedStream )
  protected
    FOnDataChange   : TOWIntValueRangeChangeEvent;
    FOnRangeChange  : TOWIntRangeChangeEvent;

  protected
    FMin    : Integer;
    FMax    : Integer;
    FValue  : Integer;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    
  public
    constructor Create( AOwner: TComponent; AOnDataChange  : TOWIntValueRangeChangeEvent; AOnRangeChange : TOWIntRangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange  : TOWIntValueRangeChangeEvent; AOnRangeChange : TOWIntRangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Min    : Integer read FMin;
    property Max    : Integer read FMax;
    property Value  : Integer read FValue;

  end;
//---------------------------------------------------------------------------
  TOWIntAndRangedSinkPin = class( TOWStdSinkPin, IOWIntegerStream, IOWIntRangedStream )
  protected
    FOnDataChange   : TOWIntValueRangeChangeEvent;
    FOnRangeChange  : TOWIntRangeChangeEvent;

  protected
    FMin    : Integer;
    FMax    : Integer;
    FValue  : Integer;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    
  public
    constructor Create( AOwner: TComponent; AOnDataChange  : TOWIntValueRangeChangeEvent; AOnRangeChange : TOWIntRangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange  : TOWIntValueRangeChangeEvent; AOnRangeChange : TOWIntRangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Min    : Integer read FMin;
    property Max    : Integer read FMax;
    property Value  : Integer read FValue;

  end;
//---------------------------------------------------------------------------
  TOWIntRangedStatePin = class( TOWStdStatePin, IOWIntRangedStream, IOWIntegerStream )
  protected
    FOnDataChange       : TOWIntValueRangeChangeEvent;
    FOnRangeChange      : TOWIntRangeChangeEvent;

  protected
    FMin    : Integer;
    FMax    : Integer;
    FValue  : Integer;

  protected
    function IntNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function IntRangedNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  protected
    procedure SetMin( AValue : Integer );
    procedure SetMax( AValue : Integer );
    procedure SetRanged( AValue : Integer );

  public
    procedure SubmitValueRange( AValue : Integer; AMin : Integer; AMax : Integer );
    procedure SubmitRange( AMin : Integer; AMax : Integer );

  public
    constructor Create( AOwner: TComponent; AOnDataChange  : TOWIntValueRangeChangeEvent; AOnRangeChange : TOWIntRangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange  : TOWIntValueRangeChangeEvent; AOnRangeChange : TOWIntRangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Min    : Integer read FMin write SetMin;
    property Max    : Integer read FMax write SetMax;
    property Value  : Integer read FValue write SetRanged;

  end;
//---------------------------------------------------------------------------
{$IFDEF D16Up}
  TOWStreamPersistSourcePin = class( TOWClockSourcePin )
  public
    FPinNotificationEvent : TOWPinNotificationEvent;

  public
    constructor CreateEx( AOwner: TComponent; APinNotificationEvent : TOWPinNotificationEvent );
    constructor CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWPinNotificationEvent );
    constructor Create( AOwner: TComponent );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock );

  public
    procedure SubmitData( Value : TStream );

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  end;
{$ENDIF}
//---------------------------------------------------------------------------
implementation

uses
  SysUtils;
//---------------------------------------------------------------------------
function IncMilliSecond(const AValue: TDateTime;
  const ANumberOfMilliSeconds: Int64): TDateTime;
begin
  Result := ((AValue * MSecsPerDay) + ANumberOfMilliSeconds) / MSecsPerDay;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStdSourcePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent; APinNotificationEvent : TOWClockPinNotificationEvent = NIL );
begin
  inherited Create( AOwner, APinNotificationEvent );
  FOnDisconnect := AOnDisconnect;
end;
//---------------------------------------------------------------------------
constructor TOWStdSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent; APinNotificationEvent : TOWClockPinNotificationEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, APinNotificationEvent );
  FOnDisconnect := AOnDisconnect;
end;
//---------------------------------------------------------------------------
procedure TOWStdSourcePin.BeforeDisconnectFrom( APin : TOWBasicPin );
begin
  if( Assigned( FOnDisconnect )) then
    FOnDisconnect( APin );

  inherited;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStdStatePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent; AOnPinDispatchEvent : TOWPinDispatchEvent; ACustomData : TObject );
begin
  inherited Create( AOwner, ACustomData );
  FOnDisconnect := AOnDisconnect;
  FOnPinDispatchEvent := AOnPinDispatchEvent;
end;
//---------------------------------------------------------------------------
constructor TOWStdStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent; AOnPinDispatchEvent : TOWPinDispatchEvent; ACustomData : TObject );
begin
  inherited CreateLock( AOwner, AOwnerLock, ACustomData );
  FOnDisconnect := AOnDisconnect;
  FOnPinDispatchEvent := AOnPinDispatchEvent;
end;
//---------------------------------------------------------------------------
function TOWStdStatePin.TryCustomDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var AResult : TOWNotifyResult ) : Boolean;
begin
  if( Assigned( FOnPinDispatchEvent )) then
    begin
    Result := True;
    AResult := FOnPinDispatchEvent( DataTypeID, Operation, State, Result );
    if( Result ) then
      Exit;

    end;

  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWStdStatePin.BeforeDisconnectFrom( APin : TOWBasicPin );
begin
  if( Assigned( FOnDisconnect )) then
    FOnDisconnect( APin );

  inherited;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStdSinkPin.Create( AOwner: TComponent; AOnPinDispatchEvent : TOWPinDispatchEvent; ACustomData : TObject );
begin
  inherited Create( AOwner, ACustomData );
  FOnPinDispatchEvent := AOnPinDispatchEvent;
end;
//---------------------------------------------------------------------------
constructor TOWStdSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnPinDispatchEvent : TOWPinDispatchEvent; ACustomData : TObject );
begin
  inherited CreateLock( AOwner, AOwnerLock, ACustomData );
  FOnPinDispatchEvent := AOnPinDispatchEvent;
end;
//---------------------------------------------------------------------------
function TOWStdSinkPin.TryCustomDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var AResult : TOWNotifyResult ) : Boolean;
begin
  if( Assigned( FOnPinDispatchEvent )) then
    begin
    Result := True;
    AResult := FOnPinDispatchEvent( DataTypeID, Operation, State, Result );
    if( Result ) then
      Exit;

    end;

  Result := False;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStdMultiSinkPin.Create( AOwner: TComponent; AOnPinDispatchEvent : TOWPinDispatchEvent; ACustomData : TObject );
begin
  inherited Create( AOwner, ACustomData );
  FOnPinDispatchEvent := AOnPinDispatchEvent;
end;
//---------------------------------------------------------------------------
constructor TOWStdMultiSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnPinDispatchEvent : TOWPinDispatchEvent; ACustomData : TObject );
begin
  inherited CreateLock( AOwner, AOwnerLock, ACustomData );
  FOnPinDispatchEvent := AOnPinDispatchEvent;
end;
//---------------------------------------------------------------------------
function TOWStdMultiSinkPin.TryCustomDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var AResult : TOWNotifyResult ) : Boolean;
begin
  if( Assigned( FOnPinDispatchEvent )) then
    begin
    Result := True;
    AResult := FOnPinDispatchEvent( DataTypeID, Operation, State, Result );
    if( Result ) then
      Exit;

    end;

  Result := False;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWClockSourcePin.Create(AOwner: TComponent; APinNotificationEvent : TOWClockPinNotificationEvent = NIL );
begin
  inherited Create( AOwner );
  FPinNotificationEvent := APinNotificationEvent;
  AddType( IOWClockStream, ClockNotification );
end;
//---------------------------------------------------------------------------
constructor TOWClockSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWClockPinNotificationEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock );
  FPinNotificationEvent := APinNotificationEvent;
  AddType( IOWClockStream, ClockNotification );
end;
//---------------------------------------------------------------------------
procedure TOWClockSourcePin.Clock();
begin
  Notify( TOWClockOperation.Create() );
end;
//---------------------------------------------------------------------------
function TOWClockSourcePin.ClockNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWClockStream;

begin
  Result := [];

  if( Handler.QueryInterface( IOWClockStream, Interf ) = 0 ) then
    Interf.DispatchData( DataTypeID, Operation, State );

end;
//---------------------------------------------------------------------------
function TOWClockSourcePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Assigned( FPinNotificationEvent )) then
    Result := FPinNotificationEvent( Self, DataTypeID, Operation, State );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWClockSinkPin.Create( AOwner: TComponent; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWClockPinNotificationEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, ACustomData );
  FOnClock := AOnClock;
  FOnPinNotificationEvent := AOnPinNotificationEvent;
  AddType( IOWClockStream, ClockNotification );
end;
//---------------------------------------------------------------------------
constructor TOWClockSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWClockPinNotificationEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, ACustomData );
  FOnClock := AOnClock;
  FOnPinNotificationEvent := AOnPinNotificationEvent;
  AddType( IOWClockStream, ClockNotification );
end;
//---------------------------------------------------------------------------
function TOWClockSinkPin.ClockNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWClockStream;

begin
  Result := [];

  if( Handler.QueryInterface( IOWClockStream, Interf ) = 0 ) then
    Interf.DispatchData( DataTypeID, Operation, State );

end;
//---------------------------------------------------------------------------
function TOWClockSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  if( Assigned( FOnPinNotificationEvent )) then
    FOnPinNotificationEvent( Self, DataTypeID, Operation, State );

  if( Assigned( FOnClock )) then
//    if( not ( nsNewLink in State )) then
    begin
    if( Operation.Instance() is TOWClockOperation ) then
      FOnClock( Self );

    end;
    
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWFloatSourcePin.CreateEx( AOwner: TComponent; APinNotificationEvent : TOWFloatPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;

  AddType( IOWFloatStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWFloatSourcePin.CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWFloatPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;

  AddType( IOWFloatStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWFloatSourcePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  AddType( IOWFloatStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWFloatSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  AddType( IOWFloatStream, Notification );
end;
//---------------------------------------------------------------------------
procedure TOWFloatSourcePin.SetValue( AValue : Single );
begin
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWFloatSourcePin.Send( AValue : Single );
begin
  FValue := AValue;
  Notify( TOWSuppliedSingleOperation.Create( FValue ));
end;
//---------------------------------------------------------------------------
function TOWFloatSourcePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf  : IOWFloatStream;
  Handled : Boolean;

begin
  Result := [];

  if( Handler.QueryInterface( IOWFloatStream, Interf ) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( Interf, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedSingleOperation.Create( Value ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWFloatSinkPin.Create( AOwner: TComponent; AOnDataChange : TOWFloatChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWFloatSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWFloatChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWFloatSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;  stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedSingleOperation ) then
    begin
//    if( FValue <> TOWSuppliedSingleOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedSingleOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );
         
      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWFloatMultiSinkPin.Create( AOwner: TComponent; AOnDataChange : TOWFloatChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWFloatMultiSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWFloatChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWFloatMultiSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;  stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedSingleOperation ) then
    begin
//    if( FValue <> TOWSuppliedSingleOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedSingleOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else
    TryCustomDispatch( DataTypeID, Operation, State, Result );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWBoolSourcePin.CreateEx( AOwner: TComponent; APinNotificationEvent : TOWBoolPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;

  AddType( IOWBoolStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWBoolSourcePin.CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWBoolPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;

  AddType( IOWBoolStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWBoolSourcePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  AddType( IOWBoolStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWBoolSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  AddType( IOWBoolStream, Notification );
end;
//---------------------------------------------------------------------------
function TOWBoolSourcePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf  : IOWBoolStream;
  Handled : Boolean;

begin
  Result := [];
  if( Handler.QueryInterface(IOWBoolStream,Interf) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( Interf, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedBoolOperation.Create( Value ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWBoolSourcePin.SetValue( AValue : Boolean );
begin
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWBoolSourcePin.Send( AValue : Boolean );
begin
  FValue := AValue;
  Notify( TOWSuppliedBoolOperation.Create( FValue ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWBoolSinkPin.Create( AOwner: TComponent; AOnDataChange : TOWBoolChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWBoolSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWBoolChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWBoolSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedBoolOperation ) then
    begin
//    if( FValue <> TOWSuppliedBoolOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedBoolOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := False;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWBoolMultiSinkPin.Create( AOwner: TComponent; AOnDataChange : TOWBoolChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWBoolMultiSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWBoolChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWBoolMultiSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedBoolOperation ) then
    begin
//    if( FValue <> TOWSuppliedBoolOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedBoolOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else
    TryCustomDispatch( DataTypeID, Operation, State, Result );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWCharSourcePin.CreateEx( AOwner: TComponent; APinNotificationEvent : TOWCharPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;

  AddType( IOWFloatStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWCharSourcePin.CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWCharPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;

  AddType( IOWFloatStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWCharSourcePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  AddType( IOWCharStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWCharSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  AddType( IOWCharStream, Notification );
end;
//---------------------------------------------------------------------------
function TOWCharSourcePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf  : IOWCharStream;
  Handled : Boolean;

begin
  Result := [];
  if( Handler.QueryInterface(IOWCharStream,Interf) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( Interf, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedCharOperation.Create( Value ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWCharSourcePin.SetValue( AValue : Char );
begin
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWCharSourcePin.Send( AValue : Char );
begin
  FValue := AValue;
  Notify( TOWSuppliedCharOperation.Create( FValue ));
end;
//---------------------------------------------------------------------------
procedure TOWCharSourcePin.Send( AText : String );
var
  I : Integer;

begin
  for I := 1 to Length( AText ) do
    begin
    FValue := AText[ I ];
    Notify( TOWSuppliedCharOperation.Create( FValue ));
    end;

end;
//---------------------------------------------------------------------------
constructor TOWCharSinkPin.Create( AOwner: TComponent; AOnDataChange : TOWCharChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWCharSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWCharChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWCharSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedCharOperation ) then
    begin
//    if( FValue <> TOWSuppliedCharOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedCharOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := #0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStringSourcePin.CreateEx( AOwner: TComponent; APinNotificationEvent : TOWStringPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
  AddType( IOWStringStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWStringSourcePin.CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWStringPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
  AddType( IOWStringStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWStringSourcePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  AddType( IOWStringStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWStringSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  AddType( IOWStringStream, Notification );
end;
//---------------------------------------------------------------------------
function TOWStringSourcePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf  : IOWStringStream;
  Handled : Boolean;

begin
  Result := [];
  if( Handler.QueryInterface(IOWStringStream,Interf) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( Interf, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedStringOperation.Create( Value ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWStringSourcePin.SetValue( AValue : String );
begin
  if( FValue <> AValue ) then
    begin
    FValue := AValue;
    Notify( TOWSuppliedStringOperation.Create( FValue ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWStringSourcePin.Send( AText : String );
begin
  FValue := AText;
  Notify( TOWSuppliedStringOperation.Create( FValue ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStringSinkPin.Create( AOwner: TComponent; AOnDataChange : TOWStringChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWStringSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWStringChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWStringSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedStringOperation ) then
    begin
//    if( FValue <> TOWSuppliedStringOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedStringOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := '';
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStringMultiSinkPin.Create( AOwner: TComponent; AOnDataChange : TOWStringChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWStringMultiSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWStringChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWStringMultiSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedStringOperation ) then
    begin
//    if( FValue <> TOWSuppliedStringOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedStringOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else
    TryCustomDispatch( DataTypeID, Operation, State, Result );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWIntegerSourcePin.CreateEx( AOwner: TComponent; APinNotificationEvent : TOWIntegerPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
  AddType( IOWIntegerStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWIntegerSourcePin.CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWIntegerPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
  AddType( IOWIntegerStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWIntegerSourcePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  AddType( IOWIntegerStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWIntegerSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  AddType( IOWIntegerStream, Notification );
end;
//---------------------------------------------------------------------------
procedure TOWIntegerSourcePin.SetValue( AValue : Integer );
begin
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWIntegerSourcePin.Send( AValue : Integer );
begin
  FValue := AValue;
  Notify( TOWSuppliedIntegerOperation.Create( FValue ));
end;
//---------------------------------------------------------------------------
function TOWIntegerSourcePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf  : IOWIntegerStream;
  Handled : Boolean;

begin
  Result := [];
  if( Handler.QueryInterface(IOWIntegerStream,Interf) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( Interf, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      Result := Interf.DispatchData( DataTypeID, TOWSuppliedIntegerOperation.Create( Value ), State );
      Exit;
      end;

    Result := Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWIntegerSinkPin.Create( AOwner: TComponent; AOnDataChange : TOWIntegerChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWIntegerSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWIntegerChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWIntegerSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedIntegerOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedIntegerOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );
         
      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWIntegerMultiSinkPin.Create( AOwner: TComponent; AOnDataChange  : TOWIntegerChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWIntegerMultiSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWIntegerChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWIntegerMultiSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedIntegerOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedIntegerOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else
    TryCustomDispatch( DataTypeID, Operation, State, Result );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWInt64SourcePin.CreateEx( AOwner: TComponent; APinNotificationEvent : TOWInt64PinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
  AddType( IOWInt64Stream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWInt64SourcePin.CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWInt64PinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
  AddType( IOWInt64Stream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWInt64SourcePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  AddType( IOWInt64Stream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWInt64SourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  AddType( IOWInt64Stream, Notification );
end;
//---------------------------------------------------------------------------
procedure TOWInt64SourcePin.SetValue( AValue : Int64 );
begin
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWInt64SourcePin.Send( AValue : Int64 );
begin
  FValue := AValue;
  Notify( TOWSuppliedInt64Operation.Create( FValue ));
end;
//---------------------------------------------------------------------------
function TOWInt64SourcePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf  : IOWInt64Stream;
  Handled : Boolean;

begin
  Result := [];
  if( Handler.QueryInterface(IOWInt64Stream,Interf) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( Interf, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      Result := Interf.DispatchData( DataTypeID, TOWSuppliedInt64Operation.Create( Value ), State );
      Exit;
      end;

    Result := Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWInt64SinkPin.Create( AOwner: TComponent; AOnDataChange : TOWInt64ChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWInt64SinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWInt64ChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWInt64SinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedInt64Operation ) then
    begin
//    if( FValue <> TOWSuppliedInt64Operation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedInt64Operation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );
         
      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWInt64MultiSinkPin.Create( AOwner: TComponent; AOnDataChange : TOWInt64ChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWInt64MultiSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWInt64ChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWInt64MultiSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedInt64Operation ) then
    begin
//    if( FValue <> TOWSuppliedInt64Operation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedInt64Operation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else
    TryCustomDispatch( DataTypeID, Operation, State, Result );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWRealSourcePin.CreateEx( AOwner: TComponent; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;

  AddType( IOWFloatStream, Notification );
  AddType( IOWRealStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWRealSourcePin.CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;

  AddType( IOWFloatStream, Notification );
  AddType( IOWRealStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWRealSourcePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  AddType( IOWFloatStream, Notification );
  AddType( IOWRealStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWRealSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  AddType( IOWFloatStream, Notification );
  AddType( IOWRealStream, Notification );
end;
//---------------------------------------------------------------------------
procedure TOWRealSourcePin.SetValue( AValue : Real );
begin
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWRealSourcePin.Send( AValue : Real );
begin
  FValue := AValue;
  Notify( TOWSuppliedRealOperation.Create( AValue ));
end;
//---------------------------------------------------------------------------
function TOWRealSourcePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  InterfReal  : IOWRealStream;
  InterfFloat : IOWFloatStream;
  Handled     : Boolean;

begin
  Result := [];
  if( Handler.QueryInterface(IOWRealStream,InterfReal) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( InterfReal, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      InterfReal.DispatchData( DataTypeID, TOWSuppliedRealOperation.Create( Value ), State );
      Exit;
      end;

    InterfReal.DispatchData( DataTypeID, Operation, State );
    end
    
  else if( Handler.QueryInterface(IOWFloatStream,InterfFloat) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( InterfFloat, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      InterfFloat.DispatchData( DataTypeID, TOWSuppliedSingleOperation.Create( Value ), State );
      Exit;
      end;

    if( Operation.Instance() is TOWSuppliedRealOperation ) then
      Operation := TOWSuppliedSingleOperation.Create( TOWSuppliedRealOperation( Operation.Instance() ).Value );

    InterfFloat.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWIntegerStatePin.Create( AOwner: TComponent; AOnDataChange : TOWIntegerChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  AddType( IOWIntegerStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWIntegerStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWIntegerChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  AddType( IOWIntegerStream, Notification );
end;
//---------------------------------------------------------------------------
function TOWIntegerStatePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedIntegerOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedIntegerOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWIntegerStatePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf  : IOWIntegerStream;
  Handled : Boolean;

begin
  if( Operation.Instance() is TOWSuppliedIntegerOperation ) then
    FValue := TOWSuppliedIntegerOperation( Operation.Instance() ).Value; 

  if( Handler.QueryInterface(IOWIntegerStream,Interf) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( Interf, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedIntegerOperation.Create( Value ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

  Result := [];
end;
//---------------------------------------------------------------------------
procedure TOWIntegerStatePin.SetValue( AValue : Integer );
begin
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWIntegerStatePin.Send( AValue : Integer );
begin
  FValue := AValue;
  Notify( TOWSuppliedIntegerOperation.Create( FValue ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWRealRangedSourcePin.CreateEx( AOwner: TComponent; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;

  AddType( IOWFloatStream, Notification );
  AddType( IOWRealStream, Notification );
  AddType( IOWRealRangedStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWRealRangedSourcePin.CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;

  AddType( IOWFloatStream, Notification );
  AddType( IOWRealStream, Notification );
  AddType( IOWRealRangedStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWRealRangedSourcePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  AddType( IOWFloatStream, Notification );
  AddType( IOWRealStream, Notification );
  AddType( IOWRealRangedStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWRealRangedSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  AddType( IOWFloatStream, Notification );
  AddType( IOWRealStream, Notification );
  AddType( IOWRealRangedStream, Notification );
end;
//---------------------------------------------------------------------------
procedure TOWRealRangedSourcePin.SetValue( AValue : Real );
begin
  if( FValue <> AValue ) then
    begin
    FValue := AValue;
    SubmitValueRange( FValue, FMin, FMax );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWRealRangedSourcePin.SetMin( AValue : Real );
begin
  if( FMin <> AValue ) then
    begin
    FMin := AValue;
    SubmitRange( FMin, FMax );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWRealRangedSourcePin.SetMax( AValue : Real );
begin
  if( FMax <> AValue ) then
    begin
    FMax := AValue;
    SubmitRange( FMin, FMax );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWRealRangedSourcePin.SubmitValueRange( AValue : Real; AMin : Real; AMax : Real );
begin
  FMin := AMin;
  FMax := AMax;
  FValue := AValue;
  Notify( TOWSuppliedRealValueRangeOperation.Create( AValue, AMin, AMax ));
end;
//---------------------------------------------------------------------------
procedure TOWRealRangedSourcePin.SubmitRange( AMin : Real; AMax : Real );
begin
  FMin := AMin;
  FMax := AMax;
  Notify( TOWSuppliedRealRangeOperation.Create( AMin, AMax ));
end;
//---------------------------------------------------------------------------
function TOWRealRangedSourcePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  InterfReal    : IOWRealStream;
  InterfFloat   : IOWFloatStream;
  InterfRanged  : IOWRealRangedStream;
  Handled       : Boolean;

begin
  Result := [];
  if( Handler.QueryInterface(IOWRealStream,InterfReal) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( InterfReal, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      InterfReal.DispatchData( DataTypeID, TOWSuppliedRealOperation.Create( Value ), State );
      Exit;
      end;

    InterfReal.DispatchData( DataTypeID, Operation, State );
    end
    
  else if( Handler.QueryInterface(IOWFloatStream,InterfFloat) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( InterfFloat, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      InterfFloat.DispatchData( DataTypeID, TOWSuppliedSingleOperation.Create( Value ), State );
      Exit;
      end;

    if( Operation.Instance() is TOWSuppliedRealOperation ) then
      Operation := TOWSuppliedSingleOperation.Create( TOWSuppliedRealOperation( Operation.Instance() ).Value );

    InterfFloat.DispatchData( DataTypeID, Operation, State );
    end

  else if( Handler.QueryInterface(IOWRealRangedStream,InterfRanged) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( InterfRanged, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      InterfRanged.DispatchData( DataTypeID, TOWSuppliedRealValueRangeOperation.Create( Value, Min, Max ), State );
      Exit;
      end;

    InterfRanged.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWRealSinkPin.Create( AOwner: TComponent; AOnDataChange : TOWRealChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWRealSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWRealChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWRealSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedRealOperation ) then
    begin
//    if( FValue <> TOWSuppliedRealOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedRealOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( Operation.Instance() is TOWSuppliedSingleOperation ) then
    begin
//    if( FValue <> TOWSuppliedRealOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedSingleOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWRealMultiSinkPin.Create( AOwner: TComponent; AOnDataChange  : TOWRealChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWRealMultiSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWRealChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWRealMultiSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedRealOperation ) then
    begin
//    if( FValue <> TOWSuppliedRealOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedRealOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( Operation.Instance() is TOWSuppliedSingleOperation ) then
    begin
//    if( FValue <> TOWSuppliedRealOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedSingleOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else
    TryCustomDispatch( DataTypeID, Operation, State, Result );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWRealStatePin.Create( AOwner: TComponent; AOnDataChange : TOWRealChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  AddType( IOWFloatStream, Notification );
  AddType( IOWRealStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWRealStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWRealChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  AddType( IOWFloatStream, Notification );
  AddType( IOWRealStream, Notification );
end;
//---------------------------------------------------------------------------
function TOWRealStatePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedRealOperation ) then
    begin
//    if( FValue <> TOWSuppliedRealOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedRealOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end
      
  else if( Operation.Instance() is TOWSuppliedSingleOperation ) then
    begin
//    if( FValue <> TOWSuppliedRealOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedSingleOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWRealStatePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  InterfReal  : IOWRealStream;
  InterfFloat : IOWFloatStream;
  Handled     : Boolean;

begin
  if( Operation.Instance() is TOWSuppliedRealOperation ) then
    FValue := TOWSuppliedRealOperation( Operation.Instance() ).Value
    
  else if( Operation.Instance() is TOWSuppliedSingleOperation ) then
    FValue := TOWSuppliedSingleOperation( Operation.Instance() ).Value;

  Result := [];
  if( Handler.QueryInterface(IOWRealStream,InterfReal) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( InterfReal, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      InterfReal.DispatchData( DataTypeID, TOWSuppliedRealOperation.Create( Value ), State );
      Exit;
      end;

    InterfReal.DispatchData( DataTypeID, Operation, State );
    end
    
  else if( Handler.QueryInterface(IOWFloatStream,InterfFloat) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( InterfFloat, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      InterfFloat.DispatchData( DataTypeID, TOWSuppliedSingleOperation.Create( Value ), State );
      Exit;
      end;

    if( Operation.Instance() is TOWSuppliedRealOperation ) then
      Operation := TOWSuppliedSingleOperation.Create( TOWSuppliedRealOperation( Operation.Instance() ).Value );

    InterfFloat.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWRealStatePin.SetValue( AValue : Real );
begin
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWRealStatePin.Send( AValue : Real );
begin
  FValue := AValue;
  Notify( TOWSuppliedRealOperation.Create( FValue ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWComplexSourcePin.CreateEx( AOwner: TComponent; APinNotificationEvent : TOWRealComplexPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;

  AddType( IOWRealComplexStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWComplexSourcePin.CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWRealComplexPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;

  AddType( IOWRealComplexStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWComplexSourcePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  AddType( IOWRealComplexStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWComplexSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  AddType( IOWRealComplexStream, Notification );
end;
//---------------------------------------------------------------------------
procedure TOWComplexSourcePin.SetValue( AValue : TOWRealComplex );
begin
  if( ( FValue.Real <> AValue.Real ) or ( FValue.Imaginary <> AValue.Imaginary )) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWComplexSourcePin.Send( AValue : TOWRealComplex );
begin
  FValue := AValue;
  Notify( TOWSuppliedRealComplexOperation.Create( FValue ));
end;
//---------------------------------------------------------------------------
function TOWComplexSourcePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf  : IOWRealComplexStream;
  Handled : Boolean;

begin
  Result := [];

  if( Handler.QueryInterface(IOWRealComplexStream,Interf) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( Interf, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedRealComplexOperation.Create( Value ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
constructor TOWComplexSinkPin.Create( AOwner: TComponent; AOnDataChange : TOWRealComplexChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWComplexSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWRealComplexChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWComplexSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;  stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedRealComplexOperation ) then
    begin
//    if( FValue <> TOWSuppliedSingleOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedRealComplexOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue.Real := 0;
      FValue.Imaginary := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWComplexStatePin.Create( AOwner: TComponent; AOnDataChange : TOWRealComplexChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  AddType( IOWRealComplexStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWComplexStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWRealComplexChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  AddType( IOWRealComplexStream, Notification );
end;
//---------------------------------------------------------------------------
function TOWComplexStatePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedSingleOperation ) then
    begin
//    if( FValue <> TOWSuppliedSingleOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedRealComplexOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue.Real := 0;
      FValue.Imaginary := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWComplexStatePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf  : IOWRealComplexStream;
  Handled : Boolean;

begin
  if( Operation.Instance() is TOWSuppliedSingleOperation ) then
    FValue := TOWSuppliedRealComplexOperation( Operation.Instance() ).Value;

  if( Handler.QueryInterface(IOWRealComplexStream,Interf) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( Interf, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedRealComplexOperation.Create( Value ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

  Result := [];
end;
//---------------------------------------------------------------------------
procedure TOWComplexStatePin.SetValue( AValue : TOWRealComplex );
begin
  if( ( FValue.Real <> AValue.Real ) or ( FValue.Imaginary <> AValue.Imaginary ) ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWComplexStatePin.Send( AValue : TOWRealComplex );
begin
  FValue := AValue;
  Notify( TOWSuppliedRealComplexOperation.Create( FValue ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWDateTimeSourcePin.CreateEx( AOwner: TComponent; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;

  AddType( IOWDateTimeStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWDateTimeSourcePin.CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;

  AddType( IOWDateTimeStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWDateTimeSourcePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  AddType( IOWDateTimeStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWDateTimeSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  AddType( IOWDateTimeStream, Notification );
end;
//---------------------------------------------------------------------------
procedure TOWDateTimeSourcePin.SetValue( AValue : TDateTime );
begin
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWDateTimeSourcePin.Send( AValue : TDateTime );
begin
  FValue := AValue;
  Notify( TOWSuppliedDateTimeOperation.Create( FValue ));
end;
//---------------------------------------------------------------------------
function TOWDateTimeSourcePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  InterfDateTime  : IOWDateTimeStream;
  Handled         : Boolean;

begin
  Result := [];
  if( Handler.QueryInterface(IOWDateTimeStream,InterfDateTime) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( InterfDateTime, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      InterfDateTime.DispatchData( DataTypeID, TOWSuppliedDateTimeOperation.Create( Value ), State );
      Exit;
      end;

    InterfDateTime.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWDateTimeSinkPin.Create( AOwner: TComponent; AOnDataChange : TOWDateTimeChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWDateTimeSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWDateTimeChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWDateTimeSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedDateTimeOperation ) then
    begin
//    if( FValue <> TOWSuppliedDateTimeOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedDateTimeOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWDateTimeMultiSinkPin.Create( AOwner: TComponent; AOnDataChange : TOWDateTimeChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWDateTimeMultiSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWDateTimeChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWDateTimeMultiSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedDateTimeOperation ) then
    begin
//    if( FValue <> TOWSuppliedDateTimeOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedDateTimeOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWDateTimeStatePin.Create( AOwner: TComponent; AOnDataChange : TOWDateTimeChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  AddType( IOWDateTimeStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWDateTimeStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWDateTimeChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  AddType( IOWDateTimeStream, Notification );
end;
//---------------------------------------------------------------------------
function TOWDateTimeStatePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedDateTimeOperation ) then
    begin
//    if( FValue <> TOWSuppliedDateTimeOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedDateTimeOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWDateTimeStatePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  InterfDateTime  : IOWDateTimeStream;
  Handled         : Boolean;

begin
  if( Operation.Instance() is TOWSuppliedDateTimeOperation ) then
    FValue := TOWSuppliedDateTimeOperation( Operation.Instance() ).Value;

  Result := [];
  if( Handler.QueryInterface(IOWDateTimeStream,InterfDateTime) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( InterfDateTime, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      InterfDateTime.DispatchData( DataTypeID, TOWSuppliedDateTimeOperation.Create( Value ), State );
      Exit;
      end;

    InterfDateTime.DispatchData( DataTypeID, Operation, State );
    end;
    
end;
//---------------------------------------------------------------------------
procedure TOWDateTimeStatePin.SetValue( AValue : TDateTime );
begin
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWDateTimeStatePin.Send( AValue : TDateTime );
begin
  FValue := AValue;
  Notify( TOWSuppliedDateTimeOperation.Create( FValue ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWInt64TimeRangedSourcePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  AddType( IOWInt64Stream, IntNotification );
  AddType( IOWInt64RangedStream, IntRangedNotification );
  AddType( IOWDateTimeStream, TimeNotification );
  AddType( IOWDateTimeRangedStream, TimeRangedNotification );
end;
//---------------------------------------------------------------------------
constructor TOWInt64TimeRangedSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  AddType( IOWInt64Stream, IntNotification );
  AddType( IOWInt64RangedStream, IntRangedNotification );
  AddType( IOWDateTimeStream, TimeNotification );
  AddType( IOWDateTimeRangedStream, TimeRangedNotification );
end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedSourcePin.SubmitValueRange( AValue : Int64; AMin : Int64; AMax : Int64; AMinTime : TDateTime; AMaxTime : TDateTime );
var
  AMiliSecondsPeriod  : Int64; 
  ATimeValue  : TDateTime;
  
begin
  FMin := AMin;
  FMax := AMax;
  FMinTime := AMinTime;
  FMaxTime := AMaxTime;
  FValue := AValue;
  Notify( TOWSuppliedIntValueRangeOperation.Create( FValue, FMin, FMax ));
  if( FMax = FMin ) then
    AMiliSecondsPeriod := 0

  else
    AMiliSecondsPeriod := Round( MSecsPerDay * ( FMaxTime - FMinTime ) * ( FValue - FMin ) / ( FMax - FMin ) );

  ATimeValue := IncMilliSecond( FMinTime, AMiliSecondsPeriod );
  Notify( TOWSuppliedDateTimeValueRangeOperation.Create( ATimeValue, FMinTime, FMaxTime ));
end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedSourcePin.SubmitRange( AMin : Int64; AMax : Int64; AMinTime : TDateTime; AMaxTime : TDateTime );
begin
  FMin := AMin;
  FMax := AMax;
  FMinTime := AMinTime;
  FMaxTime := AMaxTime;
  Notify( TOWSuppliedInt64RangeOperation.Create( AMin, AMax ));
  Notify( TOWSuppliedDateTimeRangeOperation.Create( FMinTime, FMaxTime ));
end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedSourcePin.SetMin( AValue : Int64 );
begin
  if( FMin <> AValue ) then
    begin
    FMin := AValue;
    SubmitValueRange( FValue, FMin, FMax, FMinTime, FMaxTime );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedSourcePin.SetMax( AValue : Int64 );
begin
  if( FMax <> AValue ) then
    begin
    FMax := AValue;
    SubmitValueRange( FValue, FMin, FMax, FMinTime, FMaxTime );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedSourcePin.SetValue( AValue : Int64 );
begin
  if( FValue <> AValue ) then
    begin
    FValue := AValue;
    SubmitValueRange( FValue, FMin, FMax, FMinTime, FMaxTime );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedSourcePin.SetMinTime( AValue : TDateTime );
begin
  if( FMinTime <> AValue ) then
    begin
    FMinTime := AValue;
    SubmitValueRange( FValue, FMin, FMax, FMinTime, FMaxTime );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedSourcePin.SetMaxTime( AValue : TDateTime );
begin
  if( FMaxTime <> AValue ) then
    begin
    FMaxTime := AValue;
    SubmitValueRange( FValue, FMin, FMax, FMinTime, FMaxTime );
    end;

end;
//---------------------------------------------------------------------------
function TOWInt64TimeRangedSourcePin.IntNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWInt64Stream;

begin
  Result := [];
  if( Handler.QueryInterface( IOWInt64Stream, Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedInt64ValueRangeOperation.Create( FValue, FMin, FMax ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;
    
end;
//---------------------------------------------------------------------------
function TOWInt64TimeRangedSourcePin.IntRangedNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWInt64RangedStream;

begin
  Result := [];
  if( Handler.QueryInterface( IOWInt64RangedStream, Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedInt64ValueRangeOperation.Create( FValue, FMin, FMax ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
function TOWInt64TimeRangedSourcePin.TimeNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWDateTimeStream;
  AMiliSecondsPeriod  : Int64;
  ATimeValue  : TDateTime;

begin
  Result := [];
  if( Handler.QueryInterface( IOWDateTimeStream, Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      if( FMax = FMin ) then
        AMiliSecondsPeriod := 0

      else
        AMiliSecondsPeriod := Round( MSecsPerDay * ( FMaxTime - FMinTime ) * ( FValue - FMin ) / ( FMax - FMin ) );

      ATimeValue := IncMilliSecond( FMinTime, AMiliSecondsPeriod );
      Interf.DispatchData( DataTypeID, TOWSuppliedDateTimeOperation.Create( ATimeValue ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;
    
end;
//---------------------------------------------------------------------------
function TOWInt64TimeRangedSourcePin.TimeRangedNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWDateTimeRangedStream;
  AMiliSecondsPeriod  : Int64;
  ATimeValue  : TDateTime;

begin
  Result := [];
  if( Handler.QueryInterface( IOWDateTimeRangedStream, Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      if( FMax = FMin ) then
        AMiliSecondsPeriod := 0

      else
        AMiliSecondsPeriod := Round( MSecsPerDay * ( FMaxTime - FMinTime ) * ( FValue - FMin ) / ( FMax - FMin ) );

      ATimeValue := IncMilliSecond( FMinTime, AMiliSecondsPeriod );
      Interf.DispatchData( DataTypeID, TOWSuppliedDateTimeValueRangeOperation.Create( ATimeValue, FMinTime, FMaxTime ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;
    
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWInt64TimeRangedStatePin.Create( AOwner: TComponent; AOnDataChange : TOWInt64DateTimeValueRangeChangeEvent; AOnRangeChange : TOWInt64DateTimeRangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
  AddType( IOWInt64Stream, IntNotification );
  AddType( IOWInt64RangedStream, IntRangedNotification );
  AddType( IOWDateTimeStream, TimeNotification );
  AddType( IOWDateTimeRangedStream, TimeRangedNotification );
end;
//---------------------------------------------------------------------------
constructor TOWInt64TimeRangedStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWInt64DateTimeValueRangeChangeEvent; AOnRangeChange : TOWInt64DateTimeRangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
  AddType( IOWInt64Stream, IntNotification );
  AddType( IOWInt64RangedStream, IntRangedNotification );
  AddType( IOWDateTimeStream, TimeNotification );
  AddType( IOWDateTimeRangedStream, TimeRangedNotification );
end;
//---------------------------------------------------------------------------
function TOWInt64TimeRangedStatePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedInt64ValueRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedInt64Operation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedInt64ValueRangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedInt64ValueRangeOperation( Operation.Instance() ).Max;
      FValue := TOWSuppliedInt64ValueRangeOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, FMinTime, FMaxTime, True, nsNewLink in State );

      end;
    end
    
  else if( Operation.Instance() is TOWSuppliedInt64RangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedInt64Operation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedInt64RangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedInt64RangeOperation( Operation.Instance() ).Max;
      if( Assigned( FOnRangeChange )) then
        FOnRangeChange( Self, FMin, FMax, FMinTime, FMaxTime, nsNewLink in State );

      end;
    end

  else if( Operation.Instance() is TOWSuppliedInt64Operation ) then
    begin
//    if( FValue <> TOWSuppliedInt64Operation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedInt64Operation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, FMinTime, FMaxTime, False, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, FMinTime, FMaxTime, False, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedStatePin.SubmitValueRange( AValue : Int64; AMin : Int64; AMax : Int64; AMinTime : TDateTime; AMaxTime : TDateTime );
var
  AMiliSecondsPeriod  : Int64; 
  ATimeValue          : TDateTime;
  
begin
  FMin := AMin;
  FMax := AMax;
  FMinTime := AMinTime;
  FMaxTime := AMaxTime;
  FValue := AValue;
  Notify( TOWSuppliedInt64ValueRangeOperation.Create( FValue, FMin, FMax ));
  if( FMax = FMin ) then
    AMiliSecondsPeriod := 0

  else
    AMiliSecondsPeriod := Round( MSecsPerDay * ( FMaxTime - FMinTime ) * ( FValue - FMin ) / ( FMax - FMin ) );

  ATimeValue := IncMilliSecond( FMinTime, AMiliSecondsPeriod );
  Notify( TOWSuppliedDateTimeValueRangeOperation.Create( ATimeValue, FMinTime, FMaxTime ));
end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedStatePin.SubmitRange( AMin : Int64; AMax : Int64; AMinTime : TDateTime; AMaxTime : TDateTime );
begin
  FMin := AMin;
  FMax := AMax;
  FMinTime := AMinTime;
  FMaxTime := AMaxTime;
  Notify( TOWSuppliedIntRangeOperation.Create( AMin, AMax ));
  Notify( TOWSuppliedDateTimeRangeOperation.Create( FMinTime, FMaxTime ));
end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedStatePin.SetMin( AValue : Int64 );
begin
  if( FMin <> AValue ) then
    begin
    FMin := AValue;
    SubmitValueRange( FValue, FMin, FMax, FMinTime, FMaxTime );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedStatePin.SetMax( AValue : Int64 );
begin
  if( FMax <> AValue ) then
    begin
    FMax := AValue;
    SubmitValueRange( FValue, FMin, FMax, FMinTime, FMaxTime );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedStatePin.SetValue( AValue : Int64 );
begin
  if( FValue <> AValue ) then
    begin
    FValue := AValue;
    SubmitValueRange( FValue, FMin, FMax, FMinTime, FMaxTime );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedStatePin.SetMinTime( AValue : TDateTime );
begin
  if( FMinTime <> AValue ) then
    begin
    FMinTime := AValue;
    SubmitValueRange( FValue, FMin, FMax, FMinTime, FMaxTime );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedStatePin.SetMaxTime( AValue : TDateTime );
begin
  if( FMaxTime <> AValue ) then
    begin
    FMaxTime := AValue;
    SubmitValueRange( FValue, FMin, FMax, FMinTime, FMaxTime );
    end;

end;
//---------------------------------------------------------------------------
function TOWInt64TimeRangedStatePin.IntNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWInt64Stream;

begin
  Result := [];
  if( Handler.QueryInterface( IOWInt64Stream, Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedInt64ValueRangeOperation.Create( FValue, FMin, FMax ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;
    
end;
//---------------------------------------------------------------------------
function TOWInt64TimeRangedStatePin.IntRangedNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWInt64Stream;

begin
  Result := [];
  if( Handler.QueryInterface( IOWInt64RangedStream, Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedInt64ValueRangeOperation.Create( FValue, FMin, FMax ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
function TOWInt64TimeRangedStatePin.TimeNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWDateTimeStream;
  AMiliSecondsPeriod  : Int64;
  ATimeValue  : TDateTime;

begin
  Result := [];
  if( Handler.QueryInterface( IOWDateTimeStream, Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      if( FMax = FMin ) then
        AMiliSecondsPeriod := 0

      else
        AMiliSecondsPeriod := Round( MSecsPerDay * ( FMaxTime - FMinTime ) * ( FValue - FMin ) / ( FMax - FMin ) );

      ATimeValue := IncMilliSecond( FMinTime, AMiliSecondsPeriod );
      Interf.DispatchData( DataTypeID, TOWSuppliedDateTimeOperation.Create( ATimeValue ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;
    
end;
//---------------------------------------------------------------------------
function TOWInt64TimeRangedStatePin.TimeRangedNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWDateTimeRangedStream;
  AMiliSecondsPeriod  : Int64;
  ATimeValue  : TDateTime;

begin
  Result := [];
  if( Handler.QueryInterface( IOWDateTimeRangedStream, Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      if( FMax = FMin ) then
        AMiliSecondsPeriod := 0

      else
        AMiliSecondsPeriod := Round( MSecsPerDay * ( FMaxTime - FMinTime ) * ( FValue - FMin ) / ( FMax - FMin ) );

      ATimeValue := IncMilliSecond( FMinTime, AMiliSecondsPeriod );
      Interf.DispatchData( DataTypeID, TOWSuppliedDateTimeValueRangeOperation.Create( ATimeValue, FMinTime, FMaxTime ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;
    
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWInt64StatePin.Create( AOwner: TComponent; AOnDataChange : TOWInt64ChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  AddType( IOWInt64Stream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWInt64StatePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWInt64ChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  AddType( IOWInt64Stream, Notification );
end;
//---------------------------------------------------------------------------
function TOWInt64StatePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedInt64Operation ) then
    begin
//    if( FValue <> TOWSuppliedInt64Operation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedInt64Operation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWInt64StatePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf  : IOWInt64Stream;
  Handled : Boolean;

begin
  if( Operation.Instance() is TOWSuppliedInt64Operation ) then
    FValue := TOWSuppliedInt64Operation( Operation.Instance() ).Value; 

  if( Handler.QueryInterface(IOWInt64Stream,Interf) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( Interf, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedInt64Operation.Create( Value ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

  Result := [];
end;
//---------------------------------------------------------------------------
procedure TOWInt64StatePin.SetValue( AValue : Int64 );
begin
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWInt64StatePin.Send( AValue : Int64 );
begin
  FValue := AValue;
  Notify( TOWSuppliedInt64Operation.Create( FValue ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWFloatStatePin.Create( AOwner: TComponent; AOnDataChange : TOWFloatChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  AddType( IOWFloatStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWFloatStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWFloatChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  AddType( IOWFloatStream, Notification );
end;
//---------------------------------------------------------------------------
function TOWFloatStatePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedSingleOperation ) then
    begin
//    if( FValue <> TOWSuppliedSingleOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedSingleOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWFloatStatePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf  : IOWFloatStream;
  Handled : Boolean;

begin
  if( Operation.Instance() is TOWSuppliedSingleOperation ) then
    FValue := TOWSuppliedSingleOperation( Operation.Instance() ).Value; 

  if( Handler.QueryInterface(IOWFloatStream,Interf) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( Interf, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedSingleOperation.Create( Value ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

  Result := [];
end;
//---------------------------------------------------------------------------
procedure TOWFloatStatePin.SetValue( AValue : Single );
begin
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWFloatStatePin.Send( AValue : Single );
begin
  FValue := AValue;
  Notify( TOWSuppliedSingleOperation.Create( FValue ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWBoolStatePin.Create( AOwner: TComponent; AOnDataChange : TOWBoolChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  AddType( IOWBoolStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWBoolStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWBoolChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  AddType( IOWBoolStream, Notification );
end;
//---------------------------------------------------------------------------
function TOWBoolStatePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedBoolOperation ) then
    begin
//    if( FValue <> TOWSuppliedBoolOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedBoolOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := False;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWBoolStatePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf  : IOWBoolStream;
  Handled : Boolean;

begin
  if( Operation.Instance() is TOWSuppliedBoolOperation ) then
    FValue := TOWSuppliedBoolOperation( Operation.Instance() ).Value;

  if( Handler.QueryInterface(IOWBoolStream,Interf) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( Interf, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedBoolOperation.Create( Value ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

  Result := [];
end;
//---------------------------------------------------------------------------
procedure TOWBoolStatePin.SetValue( AValue : Boolean );
begin
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWBoolStatePin.Send( AValue : Boolean );
begin
  FValue := AValue;
  Notify( TOWSuppliedBoolOperation.Create( FValue ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWCharStatePin.Create( AOwner: TComponent; AOnDataChange : TOWCharChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  AddType( IOWCharStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWCharStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWCharChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  AddType( IOWCharStream, Notification );
end;
//---------------------------------------------------------------------------
function TOWCharStatePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedCharOperation ) then
    begin
//    if( FValue <> TOWSuppliedCharOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedCharOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := #0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWCharStatePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf  : IOWCharStream;
  Handled : Boolean;

begin
  if( Operation.Instance() is TOWSuppliedCharOperation ) then
    FValue := TOWSuppliedCharOperation( Operation.Instance() ).Value;

  if( Handler.QueryInterface(IOWCharStream,Interf) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( Interf, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedCharOperation.Create( Value ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

  Result := [];
end;
//---------------------------------------------------------------------------
procedure TOWCharStatePin.SetValue( AValue : Char );
begin
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWCharStatePin.Send( AValue : Char );
begin
  FValue := AValue;
  Notify( TOWSuppliedCharOperation.Create( FValue ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStringStatePin.Create( AOwner: TComponent; AOnDataChange : TOWStringChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  AddType( IOWStringStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWStringStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWStringChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  AddType( IOWStringStream, Notification );
end;
//---------------------------------------------------------------------------
function TOWStringStatePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedStringOperation ) then
    begin
//    if( FValue <> TOWSuppliedStringOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedStringOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := '';
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWStringStatePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf  : IOWStringStream;
  Handled : Boolean;

begin
  if( Operation.Instance() is TOWSuppliedStringOperation ) then
    FValue := TOWSuppliedStringOperation( Operation.Instance() ).Value;

  if( Handler.QueryInterface(IOWStringStream,Interf) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( Interf, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedStringOperation.Create( Value ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

  Result := [];
end;
//---------------------------------------------------------------------------
procedure TOWStringStatePin.SetValue( AValue : String );
begin
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWStringStatePin.Send( AText : String );
begin
  FValue := AText;
  Notify( TOWSuppliedStringOperation.Create( FValue ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStringListSourcePin.CreateEx( AOwner: TComponent; APinNotificationEvent : TOWStringListPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
  AddType( IOWStringListStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWStringListSourcePin.CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWStringListPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
  AddType( IOWStringListStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWStringListSourcePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  AddType( IOWStringListStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWStringListSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  AddType( IOWStringListStream, Notification );
end;
//---------------------------------------------------------------------------
function TOWStringListSourcePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf  : IOWStringListStream;
  Handled : Boolean;

begin
  Result := [];
  if( Handler.QueryInterface(IOWStringListStream,Interf) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( Interf, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

{
    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedStringListOperation.Create( Value ), State );
      Exit;
      end;
}
    Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
{
procedure TOWStringListSourcePin.SetValue( AValue : String );
begin
  if( FValue <> AValue ) then
    begin
    FValue := AValue;
    Notify( TOWSuppliedStringOperation.Create( FValue ));
    end;

end;
}
//---------------------------------------------------------------------------
procedure TOWStringListSourcePin.Send( AValue : TStrings );
begin
//  FValue := AText;
  Notify( TOWSuppliedStringListOperation.Create( AValue ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStringListSinkPin.Create( AOwner: TComponent; AOnDataChange : TOWStringListChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWStringListSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWStringListChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWStringListSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
var
  AStrings : TStrings;

begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedStringListOperation ) then
    begin
//    if( FValue <> TOWSuppliedStringOperation( Operation.Instance() ).Value ) then
      begin
//      FValue := TOWSuppliedStringOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, TOWSuppliedStringListOperation( Operation.Instance() ).Value, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
//      FValue := '';
      if( Assigned( FOnDataChange )) then
        begin
        AStrings := TStringList.Create();
        try
          FOnDataChange( Self, AStrings, nsNewLink in State );
        finally
          AStrings.Free();
          end;
        end;
      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStringListMultiSinkPin.Create( AOwner: TComponent; AOnDataChange : TOWStringListChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWStringListMultiSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWStringListChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWStringListMultiSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedStringListOperation ) then
    begin
//    if( FValue <> TOWSuppliedStringOperation( Operation.Instance() ).Value ) then
      begin
//      FValue := TOWSuppliedStringListOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, TOWSuppliedStringListOperation( Operation.Instance() ).Value, nsNewLink in State );

      end;
    end

  else
    TryCustomDispatch( DataTypeID, Operation, State, Result );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStringListStatePin.Create( AOwner: TComponent; AOnDataChange : TOWStringListChangeEvent; AOnGetDataEvent : TOWStringListGetDataEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  FOnGetDataEvent := AOnGetDataEvent;
  AddType( IOWStringListStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWStringListStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWStringListChangeEvent; AOnGetDataEvent : TOWStringListGetDataEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  FOnGetDataEvent := AOnGetDataEvent;
  AddType( IOWStringListStream, Notification );
end;
//---------------------------------------------------------------------------
function TOWStringListStatePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
var
  AStrings : TStrings;

begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedStringListOperation ) then
    begin
//    if( FValue <> TOWSuppliedStringOperation( Operation.Instance() ).Value ) then
      begin
//      FValue := TOWSuppliedStringListOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, TOWSuppliedStringListOperation( Operation.Instance() ).Value, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
//      FValue := '';
      if( Assigned( FOnDataChange )) then
        begin
        AStrings := TStringList.Create();
        try
          FOnDataChange( Self, AStrings, nsNewLink in State );
        finally
          AStrings.Free();
          end;

        end;
      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWStringListStatePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf    : IOWStringListStream;
  Handled   : Boolean;
  AStrings  : TStrings;

begin
//  if( Operation.Instance() is TOWSuppliedStringListOperation ) then
//    FValue := TOWSuppliedStringListOperation( Operation.Instance() ).Value;

  if( Handler.QueryInterface(IOWStringListStream,Interf) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( Interf, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      if( Assigned( FOnGetDataEvent )) then
        begin
        AStrings := TStringList.Create();
        FOnGetDataEvent( Self, AStrings );
        Interf.DispatchData( DataTypeID, TOWSuppliedStringListOperation.Create( AStrings ), State );
        AStrings.Free();
        end;

      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

  Result := [];
end;
//---------------------------------------------------------------------------
{
procedure TOWStringListStatePin.SetValue( AValue : String );
begin
  if( FValue <> AValue ) then
    Send( AValue );

end;
}
//---------------------------------------------------------------------------
procedure TOWStringListStatePin.Send( AValue : TStrings );
begin
//  FValue := AText;
  Notify( TOWSuppliedStringListOperation.Create( AValue ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWFloatIntSourcePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  AddType( IOWFloatStream, FloatNotification );
  AddType( IOWIntegerStream, IntegerNotification );
end;
//---------------------------------------------------------------------------
constructor TOWFloatIntSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  AddType( IOWFloatStream, FloatNotification );
  AddType( IOWIntegerStream, IntegerNotification );
end;
//---------------------------------------------------------------------------
procedure TOWFloatIntSourcePin.SetValue( AValue : Single );
begin
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWFloatIntSourcePin.Send( AValue : Single );
begin
  FValue := AValue;
  Notify( TOWSuppliedSingleOperation.Create( FValue ));
end;
//---------------------------------------------------------------------------
function TOWFloatIntSourcePin.FloatNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWFloatStream;

begin
  Result := [];
  if( Handler.QueryInterface( IOWFloatStream,Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedSingleOperation.Create( Value ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
function TOWFloatIntSourcePin.IntegerNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWIntegerStream;

begin
  Result := [];
  if( Handler.QueryInterface( IOWIntegerStream,Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedIntegerOperation.Create( Round( Value )), State );
      Exit;
      end;

    if( Operation.Instance() is TOWSuppliedOperation ) then
      Result := Interf.DispatchData( DataTypeID, TOWSuppliedIntegerOperation.Create( Round( FValue ) ), State )

    else
      Result := Interf.DispatchData( DataTypeID, Operation, State )

    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWFloatIntSinkPin.Create( AOwner: TComponent; AOnDataChange : TOWFloatChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWFloatIntSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWFloatChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWFloatIntSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedIntegerOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedIntegerOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( Operation.Instance() is TOWSuppliedSingleOperation ) then
    begin
//    if( FValue <> TOWSuppliedSingleOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedSingleOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWRealRangedSinkPin.Create( AOwner: TComponent; AOnDataChange  : TOWRealValueRangeChangeEvent; AOnRangeChange : TOWRealRangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWRealRangedSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange  : TOWRealValueRangeChangeEvent; AOnRangeChange : TOWRealRangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWRealRangedSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedRealValueRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedRealValueRangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedRealValueRangeOperation( Operation.Instance() ).Max;
      FValue := TOWSuppliedRealValueRangeOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, True, nsNewLink in State );

      end;
    end

  else if( Operation.Instance() is TOWSuppliedRealRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedRealRangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedRealRangeOperation( Operation.Instance() ).Max;
      if( Assigned( FOnRangeChange )) then
        FOnRangeChange( Self, FMin, FMax, nsNewLink in State );

      end;
    end

  else if( Operation.Instance() is TOWSuppliedIntValueRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedIntValueRangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedIntValueRangeOperation( Operation.Instance() ).Max;
      FValue := TOWSuppliedIntValueRangeOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, True, nsNewLink in State );

      end;
    end
    
  else if( Operation.Instance() is TOWSuppliedIntRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedIntRangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedIntRangeOperation( Operation.Instance() ).Max;
      if( Assigned( FOnRangeChange )) then
        FOnRangeChange( Self, FMin, FMax, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, True, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWRealAndRangedSinkPin.Create( AOwner: TComponent; AOnDataChange  : TOWRealValueRangeChangeEvent; AOnRangeChange : TOWRealRangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWRealAndRangedSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange  : TOWRealValueRangeChangeEvent; AOnRangeChange : TOWRealRangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWRealAndRangedSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedRealValueRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedRealValueRangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedRealValueRangeOperation( Operation.Instance() ).Max;
      FValue := TOWSuppliedRealValueRangeOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, True, nsNewLink in State );

      end;
    end

  else if( Operation.Instance() is TOWSuppliedRealRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedRealRangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedRealRangeOperation( Operation.Instance() ).Max;
      if( Assigned( FOnRangeChange )) then
        FOnRangeChange( Self, FMin, FMax, nsNewLink in State );

      end;
    end

  else if( Operation.Instance() is TOWSuppliedIntValueRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedIntValueRangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedIntValueRangeOperation( Operation.Instance() ).Max;
      FValue := TOWSuppliedIntValueRangeOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, True, nsNewLink in State );

      end;
    end
    
  else if( Operation.Instance() is TOWSuppliedIntRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedIntRangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedIntRangeOperation( Operation.Instance() ).Max;
      if( Assigned( FOnRangeChange )) then
        FOnRangeChange( Self, FMin, FMax, nsNewLink in State );

      end;
    end
    
  else if( Operation.Instance() is TOWSuppliedIntegerOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedIntegerOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in State );

      end;
    end

  else if( Operation.Instance() is TOWSuppliedRealOperation ) then
    begin
//    if( FValue <> TOWSuppliedSingleOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedRealOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWRealAndRangedStatePin.Create( AOwner: TComponent; AValue : Real; AMin : Real; AMax : Real; AOnDataChange  : TOWRealValueRangeChangeEvent; AOnRangeChange : TOWRealRangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
  AddType( IOWFloatStream, Notification );
  AddType( IOWRealStream, Notification );
  FMin := AMin;
  FMax := AMax;
  FValue := AValue;
end;
//---------------------------------------------------------------------------
constructor TOWRealAndRangedStatePin.CreateLock( AOwner: TComponent; AValue : Real; AMin : Real; AMax : Real; AOwnerLock : IOWLock; AOnDataChange  : TOWRealValueRangeChangeEvent; AOnRangeChange : TOWRealRangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
  AddType( IOWFloatStream, Notification );
  AddType( IOWRealStream, Notification );
  FMin := AMin;
  FMax := AMax;
  FValue := AValue;
end;
//---------------------------------------------------------------------------
procedure TOWRealAndRangedStatePin.SubmitValueRange( AValue : Real; AMin : Real; AMax : Real );
begin
  FMin := AMin;
  FMax := AMax;
  FValue := AValue;
  Notify( TOWSuppliedRealValueRangeOperation.Create( AValue, AMin, AMax ));
end;
//---------------------------------------------------------------------------
procedure TOWRealAndRangedStatePin.SubmitRange( AMin : Real; AMax : Real );
begin
  FMin := AMin;
  FMax := AMax;
  Notify( TOWSuppliedRealRangeOperation.Create( AMin, AMax ));
end;
//---------------------------------------------------------------------------
function TOWRealAndRangedStatePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  InterfReal    : IOWRealStream;
  InterfFloat   : IOWFloatStream;
  InterfRanged  : IOWRealRangedStream;
  Handled       : Boolean;

begin
  Result := [];
  if( Handler.QueryInterface(IOWRealStream,InterfReal) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( InterfReal, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      InterfReal.DispatchData( DataTypeID, TOWSuppliedRealOperation.Create( Value ), State );
      Exit;
      end;

    InterfReal.DispatchData( DataTypeID, Operation, State );
    end
    
  else if( Handler.QueryInterface(IOWFloatStream,InterfFloat) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( InterfFloat, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      InterfFloat.DispatchData( DataTypeID, TOWSuppliedSingleOperation.Create( Value ), State );
      Exit;
      end;

    if( Operation.Instance() is TOWSuppliedRealOperation ) then
      Operation := TOWSuppliedSingleOperation.Create( TOWSuppliedRealOperation( Operation.Instance() ).Value );

    InterfFloat.DispatchData( DataTypeID, Operation, State );
    end

  else if( Handler.QueryInterface(IOWRealRangedStream,InterfRanged) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( InterfRanged, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      InterfRanged.DispatchData( DataTypeID, TOWSuppliedRealValueRangeOperation.Create( Value, Min, Max ), State );
      Exit;
      end;

    InterfRanged.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
function TOWRealAndRangedStatePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedRealValueRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedRealValueRangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedRealValueRangeOperation( Operation.Instance() ).Max;
      FValue := TOWSuppliedRealValueRangeOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, True, nsNewLink in State );

      end;
    end

  else if( Operation.Instance() is TOWSuppliedRealRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedRealRangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedRealRangeOperation( Operation.Instance() ).Max;
      if( Assigned( FOnRangeChange )) then
        FOnRangeChange( Self, FMin, FMax, nsNewLink in State );

      end;
    end

  else if( Operation.Instance() is TOWSuppliedIntValueRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedIntValueRangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedIntValueRangeOperation( Operation.Instance() ).Max;
      FValue := TOWSuppliedIntValueRangeOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, True, nsNewLink in State );

      end;
    end
    
  else if( Operation.Instance() is TOWSuppliedIntRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedIntRangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedIntRangeOperation( Operation.Instance() ).Max;
      if( Assigned( FOnRangeChange )) then
        FOnRangeChange( Self, FMin, FMax, nsNewLink in State );

      end;
    end
    
  else if( Operation.Instance() is TOWSuppliedIntegerOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedIntegerOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in State );

      end;
    end

  else if( Operation.Instance() is TOWSuppliedRealOperation ) then
    begin
//    if( FValue <> TOWSuppliedSingleOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedRealOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
procedure TOWRealAndRangedStatePin.SetValue( AValue : Real );
begin
  if( FValue <> AValue ) then
    begin
    FValue := AValue;
    SubmitValueRange( FValue, FMin, FMax );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWRealAndRangedStatePin.SetMin( AValue : Real );
begin
  if( FMin <> AValue ) then
    begin
    FMin := AValue;
    SubmitRange( FMin, FMax );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWRealAndRangedStatePin.SetMax( AValue : Real );
begin
  if( FMax <> AValue ) then
    begin
    FMax := AValue;
    SubmitRange( FMin, FMax );
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWFloatIntStatePin.Create( AOwner: TComponent; AOnDataChange : TOWFloatChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  AddType( IOWFloatStream, Notification );
  AddType( IOWIntegerStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWFloatIntStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWFloatChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  AddType( IOWFloatStream, Notification );
  AddType( IOWIntegerStream, Notification );
end;
//---------------------------------------------------------------------------
function TOWFloatIntStatePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedIntegerOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedIntegerOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( Operation.Instance() is TOWSuppliedSingleOperation ) then
    begin
//    if( FValue <> TOWSuppliedSingleOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedSingleOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
procedure TOWFloatIntStatePin.SetValue( AValue : Single );
begin
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWFloatIntStatePin.Send( AValue : Single );
begin
  FValue := AValue;
  Notify( TOWSuppliedMulticastOperation.Create() );
//  Notify( TOWSuppliedIntegerOperation.Create( FValue ));
end;
//---------------------------------------------------------------------------
function TOWFloatIntStatePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  FloatInterf : IOWFloatStream;
  IntInterf   : IOWIntegerStream;
  Handled     : Boolean;

begin
  Result := [];
  if( Handler.QueryInterface(IOWFloatStream, FloatInterf) = 0 ) then
    begin
    if( Assigned( FFloatPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FFloatPinNotificationEvent( FloatInterf, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      FloatInterf.DispatchData( DataTypeID, TOWSuppliedSingleOperation.Create( Value ), State );
      Exit;
      end;

    if( Operation.Instance() is TOWSuppliedMulticastOperation ) then
      Result := FloatInterf.DispatchData( DataTypeID, TOWSuppliedSingleOperation.Create( FValue ), State )

    else
      Result := FloatInterf.DispatchData( DataTypeID, Operation, State );

    end

  else if( Handler.QueryInterface(IOWIntegerStream, IntInterf) = 0 ) then
    begin
    if( Assigned( FIntegerPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FIntegerPinNotificationEvent( IntInterf, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      begin
      IntInterf.DispatchData( DataTypeID, TOWSuppliedIntegerOperation.Create( Round( Value )), State );
      Exit;
      end;

    if( Operation.Instance() is TOWSuppliedMulticastOperation ) then
      Result := IntInterf.DispatchData( DataTypeID, TOWSuppliedIntegerOperation.Create( Round( FValue ) ), State )

    else
      Result := IntInterf.DispatchData( DataTypeID, Operation, State )

    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
type TOWIntToRealFormatConverter = class( TOWFormatConverter )
protected
  procedure SinkOperationEvent( Sender : TOWPin; AValue : Integer; AOnConnect : Boolean );
  function  DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

protected
  constructor Create(); override;

end;
//---------------------------------------------------------------------------
constructor TOWIntToRealFormatConverter.Create();
begin
  inherited CreateEx( TOWIntegerSinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWRealSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWIntToRealFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : Integer; AOnConnect : Boolean );
begin
  FOutputPin.Notify( TOWSuppliedRealOperation.Create( AValue ) );
end;
//------------------------------------------------------------------------------
function TOWIntToRealFormatConverter.DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
begin
  if( not ( Operation.Instance() is TOWSuppliedOperation )) then
    FOutputPin.Notify( Operation )

  else
    Handled := False;

end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type TOWIntToFloatFormatConverter = class( TOWFormatConverter )
protected
  procedure SinkOperationEvent( Sender : TOWPin; AValue : Integer; AOnConnect : Boolean );
  function  DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

protected
  constructor Create(); override;

end;
//---------------------------------------------------------------------------
constructor TOWIntToFloatFormatConverter.Create();
begin
  inherited CreateEx( TOWIntegerSinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWFloatSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWIntToFloatFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : Integer; AOnConnect : Boolean );
begin
  FOutputPin.Notify( TOWSuppliedSingleOperation.Create( AValue ) );
end;
//------------------------------------------------------------------------------
function TOWIntToFloatFormatConverter.DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
begin
  if( not ( Operation.Instance() is TOWSuppliedOperation )) then
    FOutputPin.Notify( Operation )

  else
    Handled := False;

end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type TOWIntToStringFormatConverter = class( TOWFormatConverter )
protected
  procedure SinkOperationEvent( Sender : TOWPin; AValue : Integer; AOnConnect : Boolean );
  function  DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

protected
  constructor Create(); override;

end;
//---------------------------------------------------------------------------
constructor TOWIntToStringFormatConverter.Create();
begin
  inherited CreateEx( TOWIntegerSinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWStringSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWIntToStringFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : Integer; AOnConnect : Boolean );
begin
  FOutputPin.Notify( TOWSuppliedStringOperation.Create( IntToStr( AValue )) );
end;
//------------------------------------------------------------------------------
function TOWIntToStringFormatConverter.DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
begin
  if( not ( Operation.Instance() is TOWSuppliedOperation )) then
    FOutputPin.Notify( Operation )

  else
    Handled := False;

end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type TOWFloatToRealFormatConverter = class( TOWFormatConverter )
protected
  procedure SinkOperationEvent( Sender : TOWPin; AValue : Single; AOnConnect : Boolean );
  function  DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

protected
  constructor Create(); override;

end;
//---------------------------------------------------------------------------
constructor TOWFloatToRealFormatConverter.Create();
begin
  inherited CreateEx( TOWFloatSinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWRealSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWFloatToRealFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : Single; AOnConnect : Boolean );
begin
  FOutputPin.Notify( TOWSuppliedRealOperation.Create( AValue ) );
end;
//------------------------------------------------------------------------------
function TOWFloatToRealFormatConverter.DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
begin
  if( not ( Operation.Instance() is TOWSuppliedOperation )) then
    FOutputPin.Notify( Operation )

  else
    Handled := False;

end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type TOWFloatToStringFormatConverter = class( TOWFormatConverter )
protected
  procedure SinkOperationEvent( Sender : TOWPin; AValue : Single; AOnConnect : Boolean );
  function  DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

protected
  constructor Create(); override;

end;
//---------------------------------------------------------------------------
constructor TOWFloatToStringFormatConverter.Create();
begin
  inherited CreateEx( TOWFloatSinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWStringSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWFloatToStringFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : Single; AOnConnect : Boolean );
begin
  FOutputPin.Notify( TOWSuppliedStringOperation.Create( FloatToStr( AValue )));
end;
//------------------------------------------------------------------------------
function TOWFloatToStringFormatConverter.DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
begin
  if( not ( Operation.Instance() is TOWSuppliedOperation )) then
    FOutputPin.Notify( Operation )

  else
    Handled := False;

end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type TOWRealToStringFormatConverter = class( TOWFormatConverter )
protected
  procedure SinkOperationEvent( Sender : TOWPin; AValue : Real; AOnConnect : Boolean );
  function  DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

protected
  constructor Create(); override;

end;
//---------------------------------------------------------------------------
constructor TOWRealToStringFormatConverter.Create();
begin
  inherited CreateEx( TOWRealSinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWStringSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWRealToStringFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : Real; AOnConnect : Boolean );
begin
  FOutputPin.Notify( TOWSuppliedStringOperation.Create( FloatToStr( AValue )));
end;
//------------------------------------------------------------------------------
function TOWRealToStringFormatConverter.DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
begin
  if( not ( Operation.Instance() is TOWSuppliedOperation )) then
    FOutputPin.Notify( Operation )

  else
    Handled := False;

end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type TOWInt64ToRealFormatConverter = class( TOWFormatConverter )
protected
  procedure SinkOperationEvent( Sender : TOWPin; AValue : Int64; AOnConnect : Boolean );
  function  DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

protected
  constructor Create(); override;

end;
//---------------------------------------------------------------------------
constructor TOWInt64ToRealFormatConverter.Create();
begin
  inherited CreateEx( TOWInt64SinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWRealSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWInt64ToRealFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : Int64; AOnConnect : Boolean );
begin
  FOutputPin.Notify( TOWSuppliedRealOperation.Create( AValue ) );
end;
//------------------------------------------------------------------------------
function TOWInt64ToRealFormatConverter.DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
begin
  if( not ( Operation.Instance() is TOWSuppliedOperation )) then
    FOutputPin.Notify( Operation )

  else
    Handled := False;

end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type TOWInt64ToFloatFormatConverter = class( TOWFormatConverter )
protected
  procedure SinkOperationEvent( Sender : TOWPin; AValue : Int64; AOnConnect : Boolean );
  function  DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

protected
  constructor Create(); override;

end;
//---------------------------------------------------------------------------
constructor TOWInt64ToFloatFormatConverter.Create();
begin
  inherited CreateEx( TOWInt64SinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWFloatSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWInt64ToFloatFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : Int64; AOnConnect : Boolean );
begin
  FOutputPin.Notify( TOWSuppliedSingleOperation.Create( AValue ) );
end;
//------------------------------------------------------------------------------
function TOWInt64ToFloatFormatConverter.DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
begin
  if( not ( Operation.Instance() is TOWSuppliedOperation )) then
    FOutputPin.Notify( Operation )

  else
    Handled := False;

end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type TOWInt64ToStringFormatConverter = class( TOWFormatConverter )
protected
  procedure SinkOperationEvent( Sender : TOWPin; AValue : Int64; AOnConnect : Boolean );
  function  DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

protected
  constructor Create(); override;

end;
//---------------------------------------------------------------------------
constructor TOWInt64ToStringFormatConverter.Create();
begin
  inherited CreateEx( TOWInt64SinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWStringSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWInt64ToStringFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : Int64; AOnConnect : Boolean );
begin
  FOutputPin.Notify( TOWSuppliedStringOperation.Create( IntToStr( AValue )));
end;
//------------------------------------------------------------------------------
function TOWInt64ToStringFormatConverter.DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
begin
  if( not ( Operation.Instance() is TOWSuppliedOperation )) then
    FOutputPin.Notify( Operation )

  else
    Handled := False;

end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type TOWIntToRealRangedFormatConverter = class( TOWFormatConverter )
protected
  procedure SinkOperationEvent( Sender : TOWPin; AValue, AMin, AMax : Integer; ARangesFilled : Boolean; AOnConnect : Boolean );
  function  DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

protected
  constructor Create(); override;

end;
//---------------------------------------------------------------------------
constructor TOWIntToRealRangedFormatConverter.Create();
begin
  inherited CreateEx( TOWIntAndRangedSinkPin.CreateLock( Self, FLock, SinkOperationEvent, NIL, DoDispatch ), TOWRealRangedSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWIntToRealRangedFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue, AMin, AMax : Integer; ARangesFilled : Boolean; AOnConnect : Boolean );
begin
  if( ARangesFilled ) then
    FOutputPin.Notify( TOWSuppliedRealValueRangeOperation.Create( AValue, AMin, AMax ) )
    
  else
     FOutputPin.Notify( TOWSuppliedSingleOperation.Create( AValue ) );
     
end;
//------------------------------------------------------------------------------
function TOWIntToRealRangedFormatConverter.DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
begin
  if( not ( Operation.Instance() is TOWSuppliedOperation )) then
    FOutputPin.Notify( Operation )

  else
    Handled := False;

end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type TOWInt64ToRealRangedFormatConverter = class( TOWFormatConverter )
protected
  procedure SinkOperationEvent( Sender : TOWPin; AValue, AMin, AMax : Int64; ARangesFilled : Boolean; AOnConnect : Boolean );
  function  DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

protected
  constructor Create(); override;

end;
//---------------------------------------------------------------------------
constructor TOWInt64ToRealRangedFormatConverter.Create();
begin
  inherited CreateEx( TOWInt64AndRangedSinkPin.CreateLock( Self, FLock, SinkOperationEvent, NIL, DoDispatch ), TOWRealRangedSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWInt64ToRealRangedFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue, AMin, AMax : Int64; ARangesFilled : Boolean; AOnConnect : Boolean );
begin
  if( ARangesFilled ) then
    FOutputPin.Notify( TOWSuppliedRealValueRangeOperation.Create( AValue, AMin, AMax ) )

  else
     FOutputPin.Notify( TOWSuppliedSingleOperation.Create( AValue ) );

end;
//------------------------------------------------------------------------------
function TOWInt64ToRealRangedFormatConverter.DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
begin
  if( not ( Operation.Instance() is TOWSuppliedOperation )) then
    FOutputPin.Notify( Operation )

  else
    Handled := False;

end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
function OWDefaultDataNotificationHandler( Sender : TOWPin; Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWDataStream;

begin
  Result := [];
  if( Handler.QueryInterface( IOWDataStream, Interf ) = 0 ) then
    Result := Interf.DispatchData( DataTypeID, Operation, State );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStdComboSourcePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  FNotifyOnChangeOnly := True;
  AddType( IOWRealStream,    RealNotification );
  AddType( IOWFloatStream,   FloatNotification );
  AddType( IOWIntegerStream, IntegerNotification );
  AddType( IOWStringStream,  StringNotification );
  AddType( IOWBoolStream,    BoolNotification );
end;
//---------------------------------------------------------------------------
constructor TOWStdComboSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  FNotifyOnChangeOnly := True;
  AddType( IOWRealStream,    RealNotification );
  AddType( IOWFloatStream,   FloatNotification );
  AddType( IOWIntegerStream, IntegerNotification );
  AddType( IOWStringStream,  StringNotification );
  AddType( IOWBoolStream,    BoolNotification );
end;
//---------------------------------------------------------------------------
procedure TOWStdComboSourcePin.SetValue( AValue : Real );
begin
  if( ( not FNotifyOnChangeOnly ) or ( FValue <> AValue )) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWStdComboSourcePin.Send( AValue : Real );
begin
  FValue := AValue;
  Notify( TOWSuppliedRealOperation.Create( FValue ));
end;
//---------------------------------------------------------------------------
function TOWStdComboSourcePin.RealNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWRealStream;

begin
  Result := [];
  if( Handler.QueryInterface( IOWRealStream,Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedRealOperation.Create( Value ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State )
    end;

end;
//---------------------------------------------------------------------------
function TOWStdComboSourcePin.FloatNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWFloatStream;

begin
  Result := [];
  if( Handler.QueryInterface( IOWFloatStream,Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedSingleOperation.Create( Value ), State );
      Exit;
      end;

    if( Operation.Instance() is TOWSuppliedOperation ) then
      Interf.DispatchData( DataTypeID, TOWSuppliedSingleOperation.Create( Value ), State )

    else
      Interf.DispatchData( DataTypeID, Operation, State );
      
    end;

end;
//---------------------------------------------------------------------------
function TOWStdComboSourcePin.IntegerNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWIntegerStream;

begin
  Result := [];
  if( Handler.QueryInterface( IOWIntegerStream,Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedIntegerOperation.Create( Round( Value )), State );
      Exit;
      end;

    if( Operation.Instance() is TOWSuppliedOperation ) then
      Interf.DispatchData( DataTypeID, TOWSuppliedIntegerOperation.Create( Round( Value )), State )

    else
      Interf.DispatchData( DataTypeID, Operation, State );
      
    end;

end;
//---------------------------------------------------------------------------
function TOWStdComboSourcePin.StringNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWStringStream;

begin
  Result := [];
  if( Handler.QueryInterface( IOWStringStream,Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedStringOperation.Create( FloatToStr( Value )), State );
      Exit;
      end;

    if( Operation.Instance() is TOWSuppliedOperation ) then
      Interf.DispatchData( DataTypeID, TOWSuppliedStringOperation.Create( FloatToStr( Value )), State )

    else
      Interf.DispatchData( DataTypeID, Operation, State );
      
    end;

end;
//---------------------------------------------------------------------------
function TOWStdComboSourcePin.BoolNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; 
var
  Interf : IOWBoolStream;

begin
  Result := [];
  if( Handler.QueryInterface( IOWBoolStream,Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedBoolOperation.Create( Value <> 0 ), State );
      Exit;
      end;

    if( Operation.Instance() is TOWSuppliedOperation ) then
      Interf.DispatchData( DataTypeID, TOWSuppliedBoolOperation.Create( Value <> 0 ), State )

    else
      Interf.DispatchData( DataTypeID, Operation, State );

    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWIntRangedSourcePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  AddType( IOWIntegerStream, IntNotification );
  AddType( IOWIntRangedStream, IntRangedNotification );
end;
//---------------------------------------------------------------------------
constructor TOWIntRangedSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  AddType( IOWIntegerStream, IntNotification );
  AddType( IOWIntRangedStream, IntRangedNotification );
end;
//---------------------------------------------------------------------------
procedure TOWIntRangedSourcePin.SubmitValueRange( AValue : Integer; AMin : Integer; AMax : Integer );
begin
  FMin := AMin;
  FMax := AMax;
  FValue := AValue;
  Notify( TOWSuppliedIntValueRangeOperation.Create( AValue, AMin, AMax ));
end;
//---------------------------------------------------------------------------
procedure TOWIntRangedSourcePin.SubmitRange( AMin : Integer; AMax : Integer );
begin
  FMin := AMin;
  FMax := AMax;
  Notify( TOWSuppliedIntRangeOperation.Create( AMin, AMax ));
end;
//---------------------------------------------------------------------------
procedure TOWIntRangedSourcePin.SetMin( AValue : Integer );
begin
  if( FMin <> AValue ) then
    begin
    FMin := AValue;
    Notify( TOWSuppliedIntValueRangeOperation.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWIntRangedSourcePin.SetMax( AValue : Integer );
begin
  if( FMax <> AValue ) then
    begin
    FMax := AValue;
    Notify( TOWSuppliedIntValueRangeOperation.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWIntRangedSourcePin.SetValue( AValue : Integer );
begin
  if( FValue <> AValue ) then
    begin
    FValue := AValue;
    Notify( TOWSuppliedIntValueRangeOperation.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
function TOWIntRangedSourcePin.IntNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWIntegerStream;

begin
  Result := [];
  if( Handler.QueryInterface( IOWIntegerStream, Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedIntegerOperation.Create( FValue ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
function TOWIntRangedSourcePin.IntRangedNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWIntRangedStream;

begin
  Result := [];
  if( Handler.QueryInterface( IOWIntRangedStream, Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedIntValueRangeOperation.Create( FValue, FMin, FMax ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWIntRangedSinkPin.Create( AOwner: TComponent; AOnDataChange  : TOWIntValueRangeChangeEvent; AOnRangeChange : TOWIntRangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWIntRangedSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange  : TOWIntValueRangeChangeEvent; AOnRangeChange : TOWIntRangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWIntRangedSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedIntValueRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedIntValueRangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedIntValueRangeOperation( Operation.Instance() ).Max;
      FValue := TOWSuppliedIntValueRangeOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, True, nsNewLink in State );

      end;
    end

  else if( Operation.Instance() is TOWSuppliedIntRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedIntRangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedIntRangeOperation( Operation.Instance() ).Max;
      if( Assigned( FOnRangeChange )) then
        FOnRangeChange( Self, FMin, FMax, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWIntAndRangedSinkPin.Create( AOwner: TComponent; AOnDataChange  : TOWIntValueRangeChangeEvent; AOnRangeChange : TOWIntRangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWIntAndRangedSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange  : TOWIntValueRangeChangeEvent; AOnRangeChange : TOWIntRangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWIntAndRangedSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedIntValueRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedIntValueRangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedIntValueRangeOperation( Operation.Instance() ).Max;
      FValue := TOWSuppliedIntValueRangeOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, True, nsNewLink in State );

      end;
    end

  else if( Operation.Instance() is TOWSuppliedIntRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedIntRangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedIntRangeOperation( Operation.Instance() ).Max;
      if( Assigned( FOnRangeChange )) then
        FOnRangeChange( Self, FMin, FMax, nsNewLink in State );

      end;
    end

  else if( Operation.Instance() is TOWSuppliedIntegerOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedIntegerOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWIntRangedStatePin.Create( AOwner: TComponent; AOnDataChange  : TOWIntValueRangeChangeEvent; AOnRangeChange : TOWIntRangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
  AddType( IOWIntegerStream, IntNotification );
  AddType( IOWIntRangedStream, IntRangedNotification );
end;
//---------------------------------------------------------------------------
constructor TOWIntRangedStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange  : TOWIntValueRangeChangeEvent; AOnRangeChange : TOWIntRangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
  AddType( IOWIntegerStream, IntNotification );
  AddType( IOWIntRangedStream, IntRangedNotification );
end;
//---------------------------------------------------------------------------
function TOWIntRangedStatePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedIntValueRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedIntValueRangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedIntValueRangeOperation( Operation.Instance() ).Max;
      FValue := TOWSuppliedIntValueRangeOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, True, nsNewLink in State );

      end;
    end
    
  else if( Operation.Instance() is TOWSuppliedIntRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedIntRangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedIntRangeOperation( Operation.Instance() ).Max;
      if( Assigned( FOnRangeChange )) then
        FOnRangeChange( Self, FMin, FMax, nsNewLink in State );

      end;
    end

  else if( Operation.Instance() is TOWSuppliedIntegerOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedIntegerOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWIntRangedStatePin.IntNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWIntegerStream;

begin
  Result := [];
  if( Handler.QueryInterface( IOWIntegerStream, Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedIntegerOperation.Create( FValue ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
function TOWIntRangedStatePin.IntRangedNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWIntRangedStream;

begin
  Result := [];
  if( Handler.QueryInterface( IOWIntRangedStream, Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedIntValueRangeOperation.Create( FValue, FMin, FMax ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWIntRangedStatePin.SetMin( AValue : Integer );
begin
  if( FMin <> AValue ) then
    begin
    FMin := AValue;
    Notify( TOWSuppliedIntValueRangeOperation.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWIntRangedStatePin.SetMax( AValue : Integer );
begin
  if( FMax <> AValue ) then
    begin
    FMax := AValue;
    Notify( TOWSuppliedIntValueRangeOperation.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWIntRangedStatePin.SetRanged( AValue : Integer );
begin
  if( FValue <> AValue ) then
    begin
    FValue := AValue;
    Notify( TOWSuppliedIntValueRangeOperation.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWIntRangedStatePin.SubmitValueRange( AValue : Integer; AMin : Integer; AMax : Integer );
begin
  FMin := AMin;
  FMax := AMax;
  FValue := AValue;
  Notify( TOWSuppliedIntValueRangeOperation.Create( AValue, AMin, AMax ));
end;
//---------------------------------------------------------------------------
procedure TOWIntRangedStatePin.SubmitRange( AMin : Integer; AMax : Integer );
begin
  FMin := AMin;
  FMax := AMax;
  Notify( TOWSuppliedIntRangeOperation.Create( AMin, AMax ));
end;      
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWInt64RangedSourcePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  AddType( IOWInt64Stream, IntNotification );
  AddType( IOWInt64RangedStream, IntRangedNotification );
end;
//---------------------------------------------------------------------------
constructor TOWInt64RangedSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  AddType( IOWInt64Stream, IntNotification );
  AddType( IOWInt64RangedStream, IntRangedNotification );
end;
//---------------------------------------------------------------------------
procedure TOWInt64RangedSourcePin.SubmitValueRange( AValue : Int64; AMin : Int64; AMax : Int64 );
begin
  FMin := AMin;
  FMax := AMax;
  FValue := AValue;
  Notify( TOWSuppliedInt64ValueRangeOperation.Create( AValue, AMin, AMax ));
end;
//---------------------------------------------------------------------------
procedure TOWInt64RangedSourcePin.SubmitRange( AMin : Int64; AMax : Int64 );
begin
  FMin := AMin;
  FMax := AMax;
  Notify( TOWSuppliedInt64RangeOperation.Create( AMin, AMax ));
end;
//---------------------------------------------------------------------------
procedure TOWInt64RangedSourcePin.SetMin( AValue : Int64 );
begin
  if( FMin <> AValue ) then
    begin
    FMin := AValue;
    Notify( TOWSuppliedInt64ValueRangeOperation.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64RangedSourcePin.SetMax( AValue : Int64 );
begin
  if( FMax <> AValue ) then
    begin
    FMax := AValue;
    Notify( TOWSuppliedInt64ValueRangeOperation.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64RangedSourcePin.SetValue( AValue : Int64 );
begin
  if( FValue <> AValue ) then
    begin
    FValue := AValue;
    Notify( TOWSuppliedInt64ValueRangeOperation.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
function TOWInt64RangedSourcePin.IntNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWInt64Stream;

begin
  Result := [];
  if( Handler.QueryInterface( IOWInt64Stream, Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedInt64Operation.Create( FValue ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
function TOWInt64RangedSourcePin.IntRangedNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWInt64RangedStream;

begin
  Result := [];
  if( Handler.QueryInterface( IOWInt64RangedStream, Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedInt64ValueRangeOperation.Create( FValue, FMin, FMax ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWInt64RangedSinkPin.Create( AOwner: TComponent; AOnDataChange  : TOWInt64ValueRangeChangeEvent; AOnRangeChange : TOWInt64RangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWInt64RangedSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange  : TOWInt64ValueRangeChangeEvent; AOnRangeChange : TOWInt64RangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWInt64RangedSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedInt64ValueRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedInt64Operation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedInt64ValueRangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedInt64ValueRangeOperation( Operation.Instance() ).Max;
      FValue := TOWSuppliedInt64ValueRangeOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, True, nsNewLink in State );

      end;
    end

  else if( Operation.Instance() is TOWSuppliedInt64RangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedInt64Operation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedInt64RangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedInt64RangeOperation( Operation.Instance() ).Max;
      if( Assigned( FOnRangeChange )) then
        FOnRangeChange( Self, FMin, FMax, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWInt64AndRangedSinkPin.Create( AOwner: TComponent; AOnDataChange : TOWInt64ValueRangeChangeEvent; AOnRangeChange : TOWInt64RangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWInt64AndRangedSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWInt64ValueRangeChangeEvent; AOnRangeChange : TOWInt64RangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWInt64AndRangedSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedInt64ValueRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedInt64Operation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedInt64ValueRangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedInt64ValueRangeOperation( Operation.Instance() ).Max;
      FValue := TOWSuppliedInt64ValueRangeOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, True, nsNewLink in State );

      end;
    end

  else if( Operation.Instance() is TOWSuppliedInt64RangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedInt64Operation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedInt64RangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedInt64RangeOperation( Operation.Instance() ).Max;
      if( Assigned( FOnRangeChange )) then
        FOnRangeChange( Self, FMin, FMax, nsNewLink in State );

      end;
    end

  else if( Operation.Instance() is TOWSuppliedInt64Operation ) then
    begin
//    if( FValue <> TOWSuppliedInt64Operation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedInt64Operation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWInt64RangedStatePin.Create( AOwner: TComponent; AOnDataChange : TOWInt64ValueRangeChangeEvent; AOnRangeChange : TOWInt64RangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
  AddType( IOWInt64Stream, IntNotification );
  AddType( IOWInt64RangedStream, IntRangedNotification );
end;
//---------------------------------------------------------------------------
constructor TOWInt64RangedStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWInt64ValueRangeChangeEvent; AOnRangeChange : TOWInt64RangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
  AddType( IOWInt64Stream, IntNotification );
  AddType( IOWInt64RangedStream, IntRangedNotification );
end;
//---------------------------------------------------------------------------
function TOWInt64RangedStatePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedInt64ValueRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedInt64Operation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedInt64ValueRangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedInt64ValueRangeOperation( Operation.Instance() ).Max;
      FValue := TOWSuppliedInt64ValueRangeOperation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, True, nsNewLink in State );

      end;
    end
    
  else if( Operation.Instance() is TOWSuppliedInt64RangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedInt64Operation( Operation.Instance() ).Value ) then
      begin
      FMin := TOWSuppliedInt64RangeOperation( Operation.Instance() ).Min;
      FMax := TOWSuppliedInt64RangeOperation( Operation.Instance() ).Max;
      if( Assigned( FOnRangeChange )) then
        FOnRangeChange( Self, FMin, FMax, nsNewLink in State );

      end;
    end

  else if( Operation.Instance() is TOWSuppliedInt64Operation ) then
    begin
//    if( FValue <> TOWSuppliedInt64Operation( Operation.Instance() ).Value ) then
      begin
      FValue := TOWSuppliedInt64Operation( Operation.Instance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWInt64RangedStatePin.IntNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWInt64Stream;

begin
  Result := [];

  if( Handler.QueryInterface( IOWInt64Stream, Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedInt64Operation.Create( FValue ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
function TOWInt64RangedStatePin.IntRangedNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWInt64RangedStream;

begin
  Result := [];

  if( Handler.QueryInterface( IOWInt64RangedStream, Interf) = 0 ) then
    begin
    if( nsNewLink in State ) then
      begin
      Interf.DispatchData( DataTypeID, TOWSuppliedInt64ValueRangeOperation.Create( FValue, FMin, FMax ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64RangedStatePin.SetMin( AValue : Int64 );
begin
  if( FMin <> AValue ) then
    begin
    FMin := AValue;
    Notify( TOWSuppliedInt64ValueRangeOperation.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64RangedStatePin.SetMax( AValue : Int64 );
begin
  if( FMax <> AValue ) then
    begin
    FMax := AValue;
    Notify( TOWSuppliedInt64ValueRangeOperation.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64RangedStatePin.SetRanged( AValue : Int64 );
begin
  if( FValue <> AValue ) then
    begin
    FValue := AValue;
    Notify( TOWSuppliedInt64ValueRangeOperation.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64RangedStatePin.SubmitValueRange( AValue : Int64; AMin : Int64; AMax : Int64 );
begin
  FMin := AMin;
  FMax := AMax;
  FValue := AValue;
  Notify( TOWSuppliedInt64ValueRangeOperation.Create( AValue, AMin, AMax ));
end;
//---------------------------------------------------------------------------
procedure TOWInt64RangedStatePin.SubmitRange( AMin : Int64; AMax : Int64 );
begin
  FMin := AMin;
  FMax := AMax;
  Notify( TOWSuppliedInt64RangeOperation.Create( AMin, AMax ));
end;      
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWClockMultiSinkPin.Create( AOwner: TComponent; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWClockPinNotificationEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner );
  FOnClock := AOnClock;
  FOnPinNotificationEvent := AOnPinNotificationEvent;
  AddType( IOWClockStream, ClockNotification );
end;
//---------------------------------------------------------------------------
constructor TOWClockMultiSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWClockPinNotificationEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock );
  FOnClock := AOnClock;
  FOnPinNotificationEvent := AOnPinNotificationEvent;
  AddType( IOWClockStream, ClockNotification );
end;
//---------------------------------------------------------------------------
function TOWClockMultiSinkPin.ClockNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWClockStream;

begin
  Result := [];

  if( Handler.QueryInterface( IOWClockStream, Interf ) = 0 ) then
    Interf.DispatchData( DataTypeID, Operation, State );

end;
//---------------------------------------------------------------------------
function TOWClockMultiSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Assigned( FOnPinNotificationEvent )) then
    FOnPinNotificationEvent( Self, DataTypeID, Operation, State );

  if( Assigned( FOnClock )) then
//    if( not ( nsNewLink in State )) then
    begin
    if( Operation.Instance() is TOWClockOperation ) then
      FOnClock( Self );

    end;
    
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
{$IFDEF D16Up}
constructor TOWStreamPersistSourcePin.CreateEx( AOwner: TComponent; APinNotificationEvent : TOWPinNotificationEvent );
begin
  inherited Create( AOwner );
  FPinNotificationEvent := APinNotificationEvent;

  AddType( IOWStreamPersistStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWStreamPersistSourcePin.CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWPinNotificationEvent );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock );
  FPinNotificationEvent := APinNotificationEvent;

  AddType( IOWStreamPersistStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWStreamPersistSourcePin.Create( AOwner: TComponent );
begin
  inherited Create( AOwner );
  AddType( IOWStreamPersistStream, Notification );
end;
//---------------------------------------------------------------------------
constructor TOWStreamPersistSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock );
  AddType( IOWStreamPersistStream, Notification );
end;
//---------------------------------------------------------------------------
procedure TOWStreamPersistSourcePin.SubmitData( Value : TStream );
begin
  Notify( TOWSuppliedStreamPersistOperation.Create( Value ));
end;
//---------------------------------------------------------------------------
function TOWStreamPersistSourcePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  InterfPersist : IOWStreamPersistStream;
  Handled       : Boolean;

begin
  Result := [];
  if( Handler.QueryInterface(IOWStreamPersistStream, InterfPersist ) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( InterfPersist, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

{
    if( nsNewLink in State ) then
      begin
      InterfPersist.DispatchData( DataTypeID, TOWSuppliedStreamPersistOperation.Create( Value ), State );
      Exit;
      end;
}
    InterfPersist.DispatchData( DataTypeID, Operation, State );
    end;

end;
{$ENDIF}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStartRateOperation.Create( ARate : Single );
begin
  inherited Create;
  Rate := ARate;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSuppliedSingleOperation.Create( AValue : Single );
begin
  inherited Create;
  Value := AValue;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSuppliedBoolOperation.Create( AValue : Boolean );
begin
  inherited Create;
  Value := AValue;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSuppliedCharOperation.Create( AValue : Char );
begin
  inherited Create;
  Value := AValue;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSuppliedStringOperation.Create( AValue : String );
begin
  inherited Create;
  Value := AValue;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSuppliedStringListOperation.Create( AValue : TStrings );
begin
  inherited Create;
  Value := AValue;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSuppliedRealOperation.Create( AValue : Real );
begin
  inherited Create;
  Value := AValue;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSuppliedRealValueRangeOperation.Create( AValue : Real; AMin : Real; AMax : Real );
begin
  inherited Create( AValue );
  Min := AMin;
  Max := AMax;
end;
//---------------------------------------------------------------------------
constructor TOWSuppliedRealRangeOperation.Create( AMin : Real; AMax : Real );
begin
  inherited Create();
  Min := AMin;
  Max := AMax;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSuppliedIntegerOperation.Create( AValue : Integer );
begin
  inherited Create;
  Value := AValue;
end;
//---------------------------------------------------------------------------
constructor TOWSuppliedIntValueRangeOperation.Create( AValue, AMinValue, AMaxValue : Integer );
begin
  inherited Create( AValue );
  Min := AMinValue;
  Max := AMaxValue;
end;
//---------------------------------------------------------------------------
constructor TOWSuppliedIntRangeOperation.Create( AMinValue, AMaxValue : Integer );
begin
  inherited Create();
  Min := AMinValue;
  Max := AMaxValue;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSuppliedInt64Operation.Create( AValue : Int64 );
begin
  inherited Create;
  Value := AValue;
end;
//---------------------------------------------------------------------------
constructor TOWSuppliedInt64ValueRangeOperation.Create( AValue, AMinValue, AMaxValue : Int64 );
begin
  inherited Create( AValue );
  Min := AMinValue;
  Max := AMaxValue;
end;
//---------------------------------------------------------------------------
constructor TOWSuppliedInt64RangeOperation.Create( AMinValue, AMaxValue : Int64 );
begin
  inherited Create();
  Min := AMinValue;
  Max := AMaxValue;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSuppliedRealComplexOperation.Create( AValue : TOWRealComplex );
begin
  inherited Create;

  Value := AValue;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSuppliedDateTimeOperation.Create( AValue : TDateTime );
begin
  inherited Create();
  Value := AValue;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSuppliedDateTimeValueRangeOperation.Create( AValue, AMinValue, AMaxValue : TDateTime );
begin
  inherited Create( AValue );
  Min := AMinValue;
  Max := AMaxValue;
end;
//---------------------------------------------------------------------------
constructor TOWSuppliedDateTimeRangeOperation.Create( AMinValue, AMaxValue : TDateTime );
begin
  inherited Create();
  Min := AMinValue;
  Max := AMaxValue;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
{$IFDEF D16Up}
constructor TOWSuppliedStreamPersistOperation.Create();
begin
  inherited Create();
  Value := TMemoryStream.Create();
end;
//---------------------------------------------------------------------------
constructor TOWSuppliedStreamPersistOperation.Create( AValue : TStream );
begin
  inherited Create();
  Value := TMemoryStream.Create();
  TMemoryStream( Value ).LoadFromStream( AValue );
end;
//---------------------------------------------------------------------------
destructor TOWSuppliedStreamPersistOperation.Destroy();
begin
  Value.Free();
  inherited;
end;
{$ENDIF}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWPumpRequestOperation.Create();
begin
  inherited;
end;
//---------------------------------------------------------------------------
constructor TOWPumpRequestOperation.CreateEx( APump : TObject; APumpType : TOWPumpType; APumpPriority : Integer; ADesiredRate : Single );
begin
  inherited Create();
  Pump := APump;
  PumpType := APumpType;
  PumpPriority := APumpPriority;
  DesiredRate := ADesiredRate;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStartPumpOperation.Create( APump : TObject );
begin
  inherited Create();
  Pump := APump;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWMasterPumpOperation.Create( APump : TObject );
begin
  inherited Create();
  Pump := APump;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWClockNeededOperation.Create( AEnabled : Boolean );
begin
  inherited Create();
  Enabled := AEnabled;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
initialization
  OWRegisterStream( IOWClockStream,       'Clock' );
  OWRegisterStream( IOWIntegerStream,     '32 bit Integer' );
  OWRegisterStream( IOWInt64Stream,       '64 bit Integer' );
  OWRegisterStream( IOWFloatStream,       'Float' );
  OWRegisterStream( IOWRealStream,        'Real' );
  OWRegisterStream( IOWRealComplexStream, 'Real Complex' );
  OWRegisterStream( IOWBoolStream,        'Boolean' );
  OWRegisterStream( IOWCharStream,        'Character' );
  OWRegisterStream( IOWStringStream,      'Sting' );
  OWRegisterStream( IOWIntRangedStream,   'Ranged 32 bit Integer' );
  OWRegisterStream( IOWInt64RangedStream, 'Ranged 64 bit Integer' );
  OWRegisterStream( IOWRealRangedStream,  'Ranged Real' );
  OWRegisterStream( IOWDateTimeStream,    'Date/Time' );
  
  OWRegisterDefaultHandler( IOWDataStream, OWDefaultDataNotificationHandler );

  OWRegisterTypeConverter( IOWIntegerStream,      IOWFloatStream,       TOWIntToFloatFormatConverter );
  OWRegisterTypeConverter( IOWIntegerStream,      IOWRealStream,        TOWIntToRealFormatConverter );
  OWRegisterTypeConverter( IOWIntegerStream,      IOWStringStream,      TOWIntToStringFormatConverter );
  OWRegisterTypeConverter( IOWInt64Stream,        IOWFloatStream,       TOWInt64ToFloatFormatConverter );
  OWRegisterTypeConverter( IOWInt64Stream,        IOWRealStream,        TOWInt64ToRealFormatConverter );
  OWRegisterTypeConverter( IOWInt64Stream,        IOWStringStream,      TOWInt64ToStringFormatConverter );
  OWRegisterTypeConverter( IOWFloatStream,        IOWRealStream,        TOWFloatToRealFormatConverter );
  OWRegisterTypeConverter( IOWFloatStream,        IOWStringStream,      TOWFloatToStringFormatConverter );
  OWRegisterTypeConverter( IOWRealStream,         IOWStringStream,      TOWRealToStringFormatConverter );
  OWRegisterTypeConverter( IOWIntRangedStream,    IOWRealRangedStream,  TOWIntToRealRangedFormatConverter );
  OWRegisterTypeConverter( IOWInt64RangedStream,  IOWRealRangedStream,  TOWInt64ToRealRangedFormatConverter );

end.
