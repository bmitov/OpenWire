unit OWStdTypes;

{$IFDEF fpc}
{$MODE DELPHI}{$H+}
{$ENDIF}

{$I OWDefs.inc}

{$IFDEF D16Up}
{$POINTERMATH ON}
{$ENDIF}

interface
uses
  Classes, OWPins, System.Generics.Defaults;

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
  
type TOWClockEvent = reference to procedure( Sender : TOWPin ) ;

type TOWStringListGetDataEvent = reference to procedure( Sender : TOWPin; AValue : TStrings );
type TOWStringListChangeEvent = reference to procedure( Sender : TOWPin; AValue : TStrings; AOnConnect : Boolean );
type TOWStringListPinNotificationEvent = reference to function( Handler : IOWStringListStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

type TOWFloatChangeEvent = reference to procedure( Sender : TOWPin; AValue : Single; AOnConnect : Boolean );
type TOWFloatPinNotificationEvent = reference to function( Handler : IOWFloatStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

type TOWIntegerPinNotificationEvent = reference to function( Handler : IOWIntegerStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

type TOWIntValueRangeChangeEvent = reference to procedure( Sender : TOWPin; AValue, AMin, AMax : Integer; ARangesFilled : Boolean; AOnConnect : Boolean );
type TOWInt64ValueRangeChangeEvent = reference to procedure( Sender : TOWPin; AValue, AMin, AMax : Int64; ARangesFilled : Boolean; AOnConnect : Boolean );
type TOWRealValueRangeChangeEvent = reference to procedure( Sender : TOWPin; AValue, AMin, AMax : Real; ARangesFilled : Boolean; AOnConnect : Boolean );

type TOWIntRangeChangeEvent = reference to procedure( Sender : TOWPin; AMin, AMax : Integer; AOnConnect : Boolean );
type TOWInt64RangeChangeEvent = reference to procedure( Sender : TOWPin; AMin, AMax : Int64; AOnConnect : Boolean );
type TOWRealRangeChangeEvent = reference to procedure( Sender : TOWPin; AMin, AMax : Real; AOnConnect : Boolean );

type TOWInt64DateTimeValueRangeChangeEvent = reference to procedure( Sender : TOWPin; AValue, AMin, AMax : Int64; AMinTime, AMaxTime : TDateTime; ARangesFilled : Boolean; AOnConnect : Boolean );
type TOWInt64DateTimeRangeChangeEvent = reference to procedure( Sender : TOWPin; AMin, AMax : Int64; AMinTime, AMaxTime : TDateTime; AOnConnect : Boolean );

type TOWPinNotificationEvent = reference to function( Handler : IOWDataStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
type TOWPinDispatchEvent = reference to function( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

type TOWBasicPinNotificationEvent = reference to function( Sender : TOWBasicPin; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;

type TOWDataChangeEvent<T_Data> = reference to procedure( Sender : TOWPin; AValue : T_Data; AOnConnect : Boolean );
type TOWRealChangeEvent = TOWDataChangeEvent<Real>;
//---------------------------------------------------------------------------

type
  TOWPumpType = ( ptNone, ptSlave, ptMaster, ptHardware );
//---------------------------------------------------------------------------
  TOWClockOperation = class( TOWNotifyOperation )
  public
    Samples : Integer;

  public
    constructor Create( ASamples : Integer );

  end;
//---------------------------------------------------------------------------
  TOWClockQueryOperation = class( TOWNotifyOperation );
//---------------------------------------------------------------------------
  TOWClockNeededOperation = class( TOWNotifyOperation )
  public
    Enabled : Boolean;

  public
    constructor Create( AEnabled : Boolean );

  end;
//---------------------------------------------------------------------------
  TOWClearContentOperation = class( TOWNotifyOperation );
//---------------------------------------------------------------------------
  TOWSuppliedOperation = class( TOWClockOperation );
//---------------------------------------------------------------------------
  TOWMasterPumpOperation = class( TOWNotifyOperation )
  public
    Pump  : TObject;

  public
    constructor Create( APump : TObject );

  end;
//---------------------------------------------------------------------------
  TOWPumpRequestOperation = class( TOWNotifyOperation )
  public
    Pump         : TObject;
    PumpType     : TOWPumpType;
    PumpPriority : Cardinal;     // Priority level for this group.

    DesiredRate  : Real;      // If different than 0 there has been a rate request.

  public
    constructor Create();
    constructor CreateEx( APump : TObject; APumpType : TOWPumpType; APumpPriority : Cardinal; ADesiredRate : Real );

  end;
//---------------------------------------------------------------------------
  TOWStartPumpOperation = class( TOWNotifyOperation )
  public
    Pump  : TObject;

  public
    constructor Create( APump : TObject );

  end;
//---------------------------------------------------------------------------
  TOWStartOperation = class( TOWNotifyOperation );
//---------------------------------------------------------------------------
  TOWStartRateOperation = class( TOWStartOperation )
  public
    Rate : Real;

  public
    constructor Create( ARate : Real );

  end;
//---------------------------------------------------------------------------
  TOWStopOperation = class( TOWNotifyOperation );
//---------------------------------------------------------------------------
  TOWEndStopOperation = class( TOWStopOperation );
//---------------------------------------------------------------------------
  TOWFileEndNoStopOperation = class( TOWNotifyOperation );
//---------------------------------------------------------------------------
  TOWSuppliedMulticastOperation = class( TOWSuppliedOperation );
//---------------------------------------------------------------------------
  TOWQueryStreamOperation = class( TOWNotifyOperation );
//---------------------------------------------------------------------------
  TOWIgnoreStreamOperation = class( TOWNotifyOperation );
//---------------------------------------------------------------------------
  TOWActivateStreamOperation = class( TOWNotifyOperation );
//---------------------------------------------------------------------------
  TOWFlushStreamOperation = class( TOWNotifyOperation );
//---------------------------------------------------------------------------
  TOWTypedSuppliedOperation<T> = class( TOWSuppliedOperation )
  public
    Value : T;

  public
    constructor Create( AValue : T );

  end;
//---------------------------------------------------------------------------
  TOWTypedSuppliedRangeOperation<T> = class( TOWSuppliedOperation )
  public
    Min : T;
    Max : T;

  public
    constructor Create( AMin : T; AMax : T );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedSingleOperation = class( TOWTypedSuppliedOperation<Single> );
//---------------------------------------------------------------------------
  TOWSuppliedBoolOperation = class( TOWTypedSuppliedOperation<Boolean> );
//---------------------------------------------------------------------------
  TOWSuppliedCharOperation = class( TOWTypedSuppliedOperation<Char> );
//---------------------------------------------------------------------------
  TOWSuppliedStringOperation = class( TOWTypedSuppliedOperation<String> );
//---------------------------------------------------------------------------
  TOWSuppliedStringListOperation = class( TOWSuppliedOperation )
  public
    Value : TStrings;

  public
    constructor Create( AValue : TStrings );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedRealOperation = class( TOWTypedSuppliedOperation<Real> );
//---------------------------------------------------------------------------
  TOWSuppliedRealValueRangeOperation = class( TOWSuppliedRealOperation )
  public
    Min : Real;
    Max : Real;

  public
    constructor Create( AValue : Real; AMin : Real; AMax : Real );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedRealRangeOperation = class( TOWTypedSuppliedRangeOperation<Real> );
//---------------------------------------------------------------------------
  TOWSuppliedIntegerOperation = class( TOWTypedSuppliedOperation<Integer> );
//---------------------------------------------------------------------------
  TOWSuppliedIntValueRangeOperation = class( TOWSuppliedIntegerOperation )
  public
    Min : Integer;
    Max : Integer;

  public
    constructor Create( AValue, AMinValue, AMaxValue : Integer );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedIntRangeOperation = class( TOWTypedSuppliedRangeOperation<Integer> );
//---------------------------------------------------------------------------
  TOWSuppliedInt64Operation = class( TOWTypedSuppliedOperation<Int64> );
//---------------------------------------------------------------------------
  TOWSuppliedInt64ValueRangeOperation = class( TOWSuppliedInt64Operation )
  public
    Min : Int64;
    Max : Int64;

  public
    constructor Create( AValue, AMinValue, AMaxValue : Int64 );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedInt64RangeOperation = class( TOWTypedSuppliedRangeOperation<Int64> );
//---------------------------------------------------------------------------
  TOWSuppliedRealComplexOperation = class( TOWTypedSuppliedOperation<TOWRealComplex> );
//---------------------------------------------------------------------------
  TOWSuppliedDateTimeOperation = class( TOWTypedSuppliedOperation<TDateTime> );
//---------------------------------------------------------------------------
  TOWSuppliedDateTimeValueRangeOperation = class( TOWSuppliedDateTimeOperation )
  public
    Min : TDateTime;
    Max : TDateTime;

  public
    constructor Create( AValue, AMinValue, AMaxValue : TDateTime );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedDateTimeRangeOperation = class( TOWTypedSuppliedRangeOperation<TDateTime> );
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
  TOWDispatchSourcePin = class( TOWSourcePin )
  protected
    FPinNotificationEvent : TOWBasicPinNotificationEvent;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AMaxConnections : Integer = -1; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );

  end;
//---------------------------------------------------------------------------
  TOWDispatchSinkPin = class( TOWSinkPin )
  protected
    FPinNotificationEvent : TOWBasicPinNotificationEvent;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL; ACustomData : TObject = NIL );

  end;
//---------------------------------------------------------------------------
  TOWDispatchMultiSinkPin = class( TOWMultiSinkPin )
  protected
    FPinNotificationEvent : TOWBasicPinNotificationEvent;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL; ACustomData : TObject = NIL );

  end;
//---------------------------------------------------------------------------
  TOWDispatchStatePin = class( TOWStatePin )
  protected
    FPinNotificationEvent : TOWBasicPinNotificationEvent;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL; ACustomData : TObject = NIL );

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWClockStream )]
  TOWClockSourcePin = class( TOWDispatchSourcePin, IOWClockStream )
  protected
    function ClockNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  public
    procedure Clock( ASamples : Integer );

  public
    constructor Create( AOwner: TComponent; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );

end;
//---------------------------------------------------------------------------
  [OWDataType( IOWClockStream )]
  TOWClockSinkPin = class( TOWDispatchSinkPin, IOWClockStream )
  protected
    FOnClock  : TOWClockEvent;

  protected
    function ClockNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWBasicPinNotificationEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWBasicPinNotificationEvent = NIL; ACustomData : TObject = NIL );

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWClockStream )]
  TOWClockMultiSinkPin = class( TOWDispatchMultiSinkPin, IOWClockStream )
  protected
    FOnClock  : TOWClockEvent;

  protected
    function ClockNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWBasicPinNotificationEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWBasicPinNotificationEvent = NIL; ACustomData : TObject = NIL );

  end;
//---------------------------------------------------------------------------
  TOWStdSourcePin = class( TOWClockSourcePin )
  protected
    FOnDisconnect : TOWPinEvent;

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;
    function IntNotificationHandler( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  protected
    procedure BeforeDisconnectFrom( APin : TOWBasicPin ); override;

  public
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );

  end;
//---------------------------------------------------------------------------
  TOWStdStatePin = class( TOWStatePin )
  protected
    FOnDisconnect       : TOWPinEvent;
    FOnPinDispatchEvent : TOWPinDispatchEvent;

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;
    function IntNotificationHandler( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

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
  TOWTypedPinNotificationEvent<T_Interface : IInterface; T_Data> = reference to function( Handler : T_Interface; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
//---------------------------------------------------------------------------
  TOWTypedSourcePin<T_Interface : IOWBasicStream; T_Data> = class( TOWStdSourcePin )
  protected
    FPinNotificationEvent : TOWTypedPinNotificationEvent<T_Interface, T_Data>;

  protected
    FValue    : T_Data;
    FComparer : IComparer<T_Data>;

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;

  protected
    function CreateNotifyOperation( AValue : T_Data ) : IOWNotifyOperation; virtual; abstract;

  protected
    procedure SetValue( AValue : T_Data );

  public
    procedure Send( AValue : T_Data );

  public
    constructor CreateEx( AOwner: TComponent; APinNotificationEvent : TOWTypedPinNotificationEvent<T_Interface, T_Data>; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWTypedPinNotificationEvent<T_Interface, T_Data>; AOnDisconnect : TOWPinEvent = NIL );
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );

  public
    property Value : T_Data read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWTypedSinkPin<T_SuppliedOperation : TOWNotifyOperation; T_Data> = class( TOWStdSinkPin )
  protected
    FOnDataChange : TOWDataChangeEvent<T_Data>;
    FValue        : T_Data;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    function ExtractData( AOperation : T_SuppliedOperation ) : T_Data; virtual;

  public
    constructor Create( AOwner : TComponent; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value  : T_Data read FValue;

  end;
//---------------------------------------------------------------------------
  TOWTypedMultiSinkPin<T_SuppliedOperation : TOWNotifyOperation; T_Data> = class( TOWStdMultiSinkPin )
  protected
    FOnDataChange : TOWDataChangeEvent<T_Data>;
    FValue        : T_Data;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    function ExtractData( AOperation : T_SuppliedOperation ) : T_Data; virtual;

  public
    constructor Create( AOwner : TComponent; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner : TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value  : T_Data read FValue;

  end;
//---------------------------------------------------------------------------
  TOWTypedStatePin<T_Interface : IInterface; T_SuppliedOperation : TOWNotifyOperation; T_Data> = class( TOWStdStatePin )
  protected
    FPinNotificationEvent : TOWTypedPinNotificationEvent<T_Interface, T_Data>;
    FOnDataChange         : TOWDataChangeEvent<T_Data>;
    FValue                : T_Data;
    FComparer             : IComparer<T_Data>;

  protected
    procedure SetValue( AValue : T_Data );

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;
    function CreateNotifyOperation( AValue : T_Data ) : IOWNotifyOperation; virtual; abstract;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    function ExtractData( AOperation : T_SuppliedOperation ) : T_Data; virtual;

  public
    procedure Send( AValue : T_Data );

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Value : T_Data read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWFloatStream )]
  TOWFloatSourcePin = class( TOWTypedSourcePin<IOWFloatStream, Single> )
  protected
    function CreateNotifyOperation( AValue : Single ) : IOWNotifyOperation; override;

  end;
//---------------------------------------------------------------------------
  TOWFloatSinkPin = class( TOWTypedSinkPin<TOWSuppliedSingleOperation, Single>, IOWFloatStream )
  protected
    function ExtractData( AOperation : TOWSuppliedSingleOperation ) : Single; override;

  end;
//---------------------------------------------------------------------------
  TOWFloatMultiSinkPin = class( TOWTypedMultiSinkPin<TOWSuppliedSingleOperation, Single>, IOWFloatStream )
  protected
    function ExtractData( AOperation : TOWSuppliedSingleOperation ) : Single; override;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWFloatStream )]
  TOWFloatStatePin = class( TOWTypedStatePin<IOWFloatStream, TOWSuppliedSingleOperation, Single>, IOWFloatStream )
  protected
    function CreateNotifyOperation( AValue : Single ) : IOWNotifyOperation; override;
    function ExtractData( AOperation : TOWSuppliedSingleOperation ) : Single; override;

  end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
  [OWDataType( IOWBoolStream )]
  TOWBoolSourcePin = class( TOWTypedSourcePin<IOWBoolStream, Boolean> )
  protected
    function CreateNotifyOperation( AValue : Boolean ) : IOWNotifyOperation; override;

  end;
//---------------------------------------------------------------------------
  TOWBoolSinkPin = class( TOWTypedSinkPin<TOWSuppliedBoolOperation, Boolean>, IOWBoolStream )
  protected
    function ExtractData( AOperation : TOWSuppliedBoolOperation ) : Boolean; override;

  end;
//---------------------------------------------------------------------------
  TOWBoolMultiSinkPin = class( TOWTypedMultiSinkPin<TOWSuppliedBoolOperation, Boolean>, IOWBoolStream )
  protected
    function ExtractData( AOperation : TOWSuppliedBoolOperation ) : Boolean; override;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWBoolStream )]
  TOWBoolStatePin = class( TOWTypedStatePin<IOWBoolStream, TOWSuppliedBoolOperation, Boolean>, IOWBoolStream )
  protected
    function CreateNotifyOperation( AValue : Boolean ) : IOWNotifyOperation; override;
    function ExtractData( AOperation : TOWSuppliedBoolOperation ) : Boolean; override;

  end;
//---------------------------------------------------------------------------
  TOWBoolClockSinkPin = class( TOWBoolSinkPin, IOWClockStream )
  public
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWCharStream )]
  TOWCharSourcePin = class( TOWTypedSourcePin<IOWCharStream, Char> )
  protected
    function CreateNotifyOperation( AValue : Char ) : IOWNotifyOperation; override;

  public
    procedure SendText( AText : String );

  end;
//---------------------------------------------------------------------------
  TOWCharSinkPin = class( TOWTypedSinkPin<TOWSuppliedCharOperation, Char>, IOWCharStream )
  protected
    function ExtractData( AOperation : TOWSuppliedCharOperation ) : Char; override;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWCharStream )]
  TOWCharStatePin = class( TOWTypedStatePin<IOWCharStream, TOWSuppliedCharOperation, Char>, IOWCharStream )
  protected
    function CreateNotifyOperation( AValue : Char ) : IOWNotifyOperation; override;
    function ExtractData( AOperation : TOWSuppliedCharOperation ) : Char; override;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWStringStream )]
  TOWStringSourcePin = class( TOWTypedSourcePin<IOWStringStream, String> )
  protected
    function CreateNotifyOperation( AValue : String ) : IOWNotifyOperation; override;

  end;
//---------------------------------------------------------------------------
  TOWStringSinkPin = class( TOWTypedSinkPin<TOWSuppliedStringOperation, String>, IOWStringStream )
  protected
    function ExtractData( AOperation : TOWSuppliedStringOperation ) : String; override;

  end;
//---------------------------------------------------------------------------
  TOWStringMultiSinkPin = class( TOWTypedMultiSinkPin<TOWSuppliedStringOperation, String>, IOWStringStream )
  protected
    function ExtractData( AOperation : TOWSuppliedStringOperation ) : String; override;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWStringStream )]
  TOWStringStatePin = class( TOWTypedStatePin<IOWStringStream, TOWSuppliedStringOperation, String>, IOWStringStream )
  protected
    function CreateNotifyOperation( AValue : String ) : IOWNotifyOperation; override;
    function ExtractData( AOperation : TOWSuppliedStringOperation ) : String; override;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWStringListStream )]
  TOWStringListSourcePin = class( TOWStdSourcePin )
  protected
    FPinNotificationEvent : TOWStringListPinNotificationEvent;

  public
    constructor CreateEx( AOwner: TComponent; APinNotificationEvent : TOWStringListPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWStringListPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );

  public
    procedure Send( AValue : TStrings );

  protected
    function  Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;

  end;
//---------------------------------------------------------------------------
  TOWStringListSinkPin = class( TOWStdSinkPin, IOWStringListStream )
  protected
    FOnDataChange : TOWStringListChangeEvent;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWStringListChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWStringListChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  end;
//---------------------------------------------------------------------------
  TOWStringListMultiSinkPin = class( TOWStdMultiSinkPin, IOWStringListStream )
  protected
    FOnDataChange : TOWStringListChangeEvent;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWStringListChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWStringListChangeEvent; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWStringListStream )]
  TOWStringListStatePin = class( TOWStdStatePin, IOWStringListStream )
  protected
    FPinNotificationEvent : TOWStringListPinNotificationEvent;
    FOnDataChange         : TOWStringListChangeEvent;
    FOnGetDataEvent       : TOWStringListGetDataEvent;

  protected
    function  Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;

  protected
    function  DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWStringListChangeEvent; AOnGetDataEvent : TOWStringListGetDataEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWStringListChangeEvent; AOnGetDataEvent : TOWStringListGetDataEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    procedure Send( AValue : TStrings );

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWIntegerStream )]
  TOWIntegerSourcePin = class( TOWTypedSourcePin<IOWIntegerStream, Integer> )
  protected
    function CreateNotifyOperation( AValue : Integer ) : IOWNotifyOperation; override;

  end;
//---------------------------------------------------------------------------
  TOWIntegerSinkPin = class( TOWTypedSinkPin<TOWSuppliedIntegerOperation, Integer>, IOWIntegerStream )
  protected
    function ExtractData( AOperation : TOWSuppliedIntegerOperation ) : Integer; override;

  end;
//---------------------------------------------------------------------------
  TOWIntegerMultiSinkPin = class( TOWTypedMultiSinkPin<TOWSuppliedIntegerOperation, Integer>, IOWIntegerStream )
  protected
    function ExtractData( AOperation : TOWSuppliedIntegerOperation ) : Integer; override;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWIntegerStream )]
  TOWIntegerStatePin = class( TOWTypedStatePin<IOWIntegerStream, TOWSuppliedIntegerOperation, Integer>, IOWIntegerStream )
  protected
    function CreateNotifyOperation( AValue : Integer ) : IOWNotifyOperation; override;
    function ExtractData( AOperation : TOWSuppliedIntegerOperation ) : Integer; override;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWInt64Stream )]
  TOWInt64SourcePin = class( TOWTypedSourcePin<IOWInt64Stream, Int64> )
  protected
    function CreateNotifyOperation( AValue : Int64 ) : IOWNotifyOperation; override;

  end;
//---------------------------------------------------------------------------
  TOWInt64SinkPin = class( TOWTypedSinkPin<TOWSuppliedInt64Operation, Int64>, IOWInt64Stream )
  protected
    function ExtractData( AOperation : TOWSuppliedInt64Operation ) : Int64; override;

  end;
//---------------------------------------------------------------------------
  TOWInt64MultiSinkPin = class( TOWTypedMultiSinkPin<TOWSuppliedInt64Operation, Int64>, IOWInt64Stream )
  protected
    function ExtractData( AOperation : TOWSuppliedInt64Operation ) : Int64; override;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWInt64Stream )]
  TOWInt64StatePin = class( TOWTypedStatePin<IOWInt64Stream, TOWSuppliedInt64Operation, Int64>, IOWInt64Stream )
  protected
    function CreateNotifyOperation( AValue : Int64 ) : IOWNotifyOperation; override;
    function ExtractData( AOperation : TOWSuppliedInt64Operation ) : Int64; override;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWInt64Stream )]
  [OWDataType( IOWInt64RangedStream )]
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
  [OWDataType( IOWInt64Stream )]
  [OWDataType( IOWInt64RangedStream )]
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
    property Min    : Int64 read FMin   write SetMin;
    property Max    : Int64 read FMax   write SetMax;
    property Value  : Int64 read FValue write SetRanged;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWFloatStream )]
  [OWDataType( IOWRealStream )]
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

  public
    procedure Send( AValue : Real );

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;

  public
    property Value : Real read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWRealSinkPin = class( TOWTypedSinkPin<TOWSuppliedRealOperation, Real>, IOWFloatStream, IOWRealStream )
  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  end;
//---------------------------------------------------------------------------
  TOWRealMultiSinkPin = class( TOWTypedMultiSinkPin<TOWSuppliedRealOperation, Real>, IOWFloatStream, IOWRealStream )
  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWFloatStream )]
  [OWDataType( IOWRealStream )]
  TOWRealStatePin = class( TOWStdStatePin, IOWFloatStream, IOWRealStream )
  protected
    FPinNotificationEvent : TOWPinNotificationEvent;
    FOnDataChange         : TOWRealChangeEvent;
    FValue                : Real;

  protected
    procedure SetValue( AValue : Real );

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;

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
  [OWDataType( IOWFloatStream )]
  [OWDataType( IOWRealStream )]
  [OWDataType( IOWRealRangedStream )]
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

  public
    procedure SubmitValueRange( AValue : Real; AMin : Real; AMax : Real );
    procedure SubmitValue( AValue : Real );
    procedure SubmitRange( AMin : Real; AMax : Real );

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;

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

    FRangePopulated : Boolean;

  protected
    function GetRangePopulated() : Boolean;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange  : TOWRealValueRangeChangeEvent; AOnRangeChange : TOWRealRangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange  : TOWRealValueRangeChangeEvent; AOnRangeChange : TOWRealRangeChangeEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );

  public
    property Min    : Real read FMin;
    property Max    : Real read FMax;
    property Value  : Real read FValue;

    property IsConnectedByRange : Boolean read GetRangePopulated;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWRealStream )]
  [OWDataType( IOWRealRangedStream )]
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
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;
    
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
  [OWDataType( IOWFloatStream )]
  [OWDataType( IOWIntegerStream )]
  TOWFloatIntSourcePin = class( TOWStdSourcePin )
  protected
    FValue  : Single;

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
  [OWDataType( IOWFloatStream )]
  [OWDataType( IOWIntegerStream )]
  TOWFloatIntStatePin = class( TOWStdStatePin, IOWFloatStream, IOWIntegerStream )
  protected
    FFloatPinNotificationEvent    : TOWFloatPinNotificationEvent;
    FIntegerPinNotificationEvent  : TOWIntegerPinNotificationEvent;

    FOnDataChange                 : TOWFloatChangeEvent;

    FValue                        : Single;

  protected
    procedure SetValue( AValue : Single );

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;
    
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
  [OWDataType( IOWRealComplexStream )]
  TOWComplexSourcePin = class( TOWTypedSourcePin<IOWRealComplexStream, TOWRealComplex> )
  protected
    function CreateNotifyOperation( AValue : TOWRealComplex ) : IOWNotifyOperation; override;

  end;
//---------------------------------------------------------------------------
  TOWComplexSinkPin = class( TOWTypedSinkPin<TOWSuppliedRealComplexOperation, TOWRealComplex>, IOWRealComplexStream )
  protected
    function ExtractData( AOperation : TOWSuppliedRealComplexOperation ) : TOWRealComplex; override;

  end;
//---------------------------------------------------------------------------
  TOWComplexMultiSinkPin = class( TOWTypedMultiSinkPin<TOWSuppliedRealComplexOperation, TOWRealComplex>, IOWRealComplexStream )
  protected
    function ExtractData( AOperation : TOWSuppliedRealComplexOperation ) : TOWRealComplex; override;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWRealComplexStream )]
  TOWComplexStatePin = class( TOWTypedStatePin<IOWRealComplexStream, TOWSuppliedRealComplexOperation, TOWRealComplex>, IOWRealComplexStream )
  protected
    function CreateNotifyOperation( AValue : TOWRealComplex ) : IOWNotifyOperation; override;
    function ExtractData( AOperation : TOWSuppliedRealComplexOperation ) : TOWRealComplex; override;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWDateTimeStream )]
  TOWDateTimeSourcePin = class( TOWTypedSourcePin<IOWDateTimeStream, TDateTime> )
  protected
    function CreateNotifyOperation( AValue : TDateTime ) : IOWNotifyOperation; override;

  end;
//---------------------------------------------------------------------------
  TOWDateTimeSinkPin = class( TOWTypedSinkPin<TOWSuppliedDateTimeOperation, TDateTime>, IOWDateTimeStream )
  protected
    function ExtractData( AOperation : TOWSuppliedDateTimeOperation ) : TDateTime; override;

  end;
//---------------------------------------------------------------------------
  TOWDateTimeMultiSinkPin = class( TOWTypedMultiSinkPin<TOWSuppliedDateTimeOperation, TDateTime>, IOWDateTimeStream )
  protected
    function ExtractData( AOperation : TOWSuppliedDateTimeOperation ) : TDateTime; override;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWDateTimeStream )]
  TOWDateTimeStatePin = class( TOWTypedStatePin<IOWDateTimeStream, TOWSuppliedDateTimeOperation, TDateTime>, IOWDateTimeStream )
  protected
    function CreateNotifyOperation( AValue : TDateTime ) : IOWNotifyOperation; override;
    function ExtractData( AOperation : TOWSuppliedDateTimeOperation ) : TDateTime; override;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWDateTimeStream )]
  TOWDateTimeRealSourcePin = class( TOWRealSourcePin )
  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWInt64Stream )]
  [OWDataType( IOWInt64RangedStream )]
  [OWDataType( IOWDateTimeStream )]
  [OWDataType( IOWDateTimeRangedStream )]
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
  [OWDataType( IOWInt64Stream )]
  [OWDataType( IOWInt64RangedStream )]
  [OWDataType( IOWDateTimeStream )]
  [OWDataType( IOWDateTimeRangedStream )]
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
  [OWDataType( IOWRealStream )]
  [OWDataType( IOWFloatStream )]
  [OWDataType( IOWIntegerStream )]
  [OWDataType( IOWStringStream )]
  [OWDataType( IOWBoolStream )]
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
  [OWDataType( IOWIntegerStream )]
  [OWDataType( IOWIntRangedStream )]
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
  [OWDataType( IOWIntegerStream )]
  [OWDataType( IOWIntRangedStream )]
  TOWIntRangedStatePin = class( TOWStdStatePin, IOWIntRangedStream, IOWIntegerStream )
  protected
    FOnDataChange   : TOWIntValueRangeChangeEvent;
    FOnRangeChange  : TOWIntRangeChangeEvent;

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
  [OWDataType( IOWStreamPersistStream )]
  TOWStreamPersistSourcePin = class( TOWClockSourcePin )
  public
    FPinNotificationEvent : TOWPinNotificationEvent;

  public
    constructor CreateEx( AOwner: TComponent; APinNotificationEvent : TOWPinNotificationEvent );
    constructor CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWPinNotificationEvent );

  public
    procedure SubmitData( Value : TStream );

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;

  end;
{$ENDIF}
//---------------------------------------------------------------------------
implementation

uses
  SysUtils, TypInfo;
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
constructor TOWStdSourcePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited Create( AOwner, APinNotificationEvent );
  FOnDisconnect := AOnDisconnect;
end;
//---------------------------------------------------------------------------
constructor TOWStdSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, APinNotificationEvent );
  FOnDisconnect := AOnDisconnect;
end;
//---------------------------------------------------------------------------
function TOWStdSourcePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  AGenInterf  : IOWDataStream;

begin
  Result := [];
  if( not ( nsNewLink in State )) then
    begin
    if( Handler.QueryInterface( IOWDataStream, AGenInterf ) = 0 ) then
      Result := AGenInterf.DispatchData( DataTypeID, Operation, State )

    else
      Result := IntNotificationHandler( Handler, DataTypeID, Operation, State );

    end;

end;
//---------------------------------------------------------------------------
function TOWStdSourcePin.IntNotificationHandler( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
begin
  Result := [];
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
function TOWStdStatePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  AGenInterf  : IOWDataStream;

begin
  Result := [];
  if( not ( nsNewLink in State )) then
    begin
    if( Handler.QueryInterface( IOWDataStream, AGenInterf ) = 0 ) then
      Result := AGenInterf.DispatchData( DataTypeID, Operation, State )

    else
      Result := IntNotificationHandler( Handler, DataTypeID, Operation, State );

    end;

end;
//---------------------------------------------------------------------------
function TOWStdStatePin.IntNotificationHandler( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
begin
  Result := [];
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
constructor TOWDispatchSourcePin.Create(AOwner: TComponent; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited Create( AOwner );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
constructor TOWDispatchSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AMaxConnections : Integer = -1; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
function TOWDispatchSourcePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  if( Assigned( FPinNotificationEvent )) then
    Result := FPinNotificationEvent( Self, DataTypeID, Operation, State )

  else
    Result := [];

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWDispatchSinkPin.Create( AOwner: TComponent; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, ACustomData );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
constructor TOWDispatchSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, ACustomData );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
function TOWDispatchSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  if( Assigned( FPinNotificationEvent )) then
    Result := FPinNotificationEvent( Self, DataTypeID, Operation, State )

  else
    Result := [];

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWDispatchMultiSinkPin.Create( AOwner: TComponent; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, ACustomData );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
constructor TOWDispatchMultiSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, ACustomData );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
function TOWDispatchMultiSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  if( Assigned( FPinNotificationEvent )) then
    Result := FPinNotificationEvent( Self, DataTypeID, Operation, State )

  else
    Result := [];

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWDispatchStatePin.Create( AOwner: TComponent; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, ACustomData );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
constructor TOWDispatchStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, ACustomData );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
function TOWDispatchStatePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  if( Assigned( FPinNotificationEvent )) then
    Result := FPinNotificationEvent( Self, DataTypeID, Operation, State )

  else
    Result := [];

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWClockSourcePin.Create(AOwner: TComponent; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited;
  AddType( IOWClockStream, ClockNotification, True );
end;
//---------------------------------------------------------------------------
constructor TOWClockSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, -1, APinNotificationEvent );
  AddType( IOWClockStream, ClockNotification, True );
end;
//---------------------------------------------------------------------------
procedure TOWClockSourcePin.Clock( ASamples : Integer );
begin
  Notify( TOWClockOperation.Create( ASamples ) );
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
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWClockSinkPin.Create( AOwner: TComponent; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWBasicPinNotificationEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinNotificationEvent, ACustomData );
  FOnClock := AOnClock;
  AddType( IOWClockStream, ClockNotification, True );
end;
//---------------------------------------------------------------------------
constructor TOWClockSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWBasicPinNotificationEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinNotificationEvent, ACustomData );
  FOnClock := AOnClock;
  AddType( IOWClockStream, ClockNotification, True );
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
  if( Assigned( FPinNotificationEvent )) then
    FPinNotificationEvent( Self, DataTypeID, Operation, State );

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
function TOWFloatSourcePin.CreateNotifyOperation( AValue : Single ) : IOWNotifyOperation;
begin
  Result := TOWSuppliedSingleOperation.Create( FValue );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWTypedSinkPin<T_SuppliedOperation, T_Data>.Create( AOwner: TComponent; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWTypedSinkPin<T_SuppliedOperation, T_Data>.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWTypedSinkPin<T_SuppliedOperation, T_Data>.ExtractData( AOperation : T_SuppliedOperation ) : T_Data;
begin
  Result := Default( T_Data );
end;
//---------------------------------------------------------------------------
function TOWTypedSinkPin<T_SuppliedOperation, T_Data>.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;  stdcall;
begin
  Result := [];

  if( Operation.Instance() is T_SuppliedOperation ) then
    begin
//    if( FValue <> TOWSuppliedSingleOperation( Operation.Instance() ).Value ) then
      begin
      FValue := ExtractData( T_SuppliedOperation( Operation.Instance() ));
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := Default( T_Data );
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWTypedMultiSinkPin<T_SuppliedOperation, T_Data>.Create( AOwner: TComponent; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWTypedMultiSinkPin<T_SuppliedOperation, T_Data>.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWTypedMultiSinkPin<T_SuppliedOperation, T_Data>.ExtractData( AOperation : T_SuppliedOperation ) : T_Data;
begin
  Result := Default( T_Data );
end;
//---------------------------------------------------------------------------
function TOWTypedMultiSinkPin<T_SuppliedOperation, T_Data>.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;  stdcall;
begin
  Result := [];

  if( Operation.Instance() is T_SuppliedOperation ) then
    begin
//    if( FValue <> TOWSuppliedSingleOperation( Operation.Instance() ).Value ) then
      begin
      FValue := ExtractData( T_SuppliedOperation( Operation.Instance() ));
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := Default( T_Data );
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWTypedStatePin<T_Interface, T_SuppliedOperation, T_Data>.Create( AOwner: TComponent; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  FComparer := TComparer<T_Data>.Default;
end;
//---------------------------------------------------------------------------
constructor TOWTypedStatePin<T_Interface, T_SuppliedOperation, T_Data>.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  FComparer := TComparer<T_Data>.Default;
end;
//---------------------------------------------------------------------------
function TOWTypedStatePin<T_Interface, T_SuppliedOperation, T_Data>.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is T_SuppliedOperation ) then
    begin
//    if( FValue <> TOWSuppliedSingleOperation( Operation.Instance() ).Value ) then
      begin
      FValue := ExtractData( T_SuppliedOperation( Operation.Instance() ));
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.Instance() is TOWClearContentOperation ) then
      begin
      FValue := Default( T_Data );
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWTypedStatePin<T_Interface, T_SuppliedOperation, T_Data>.ExtractData( AOperation : T_SuppliedOperation ) : T_Data;
begin
  Result := Default( T_Data );
end;
//---------------------------------------------------------------------------
function TOWTypedStatePin<T_Interface, T_SuppliedOperation, T_Data>.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf  : IOWFloatStream;
  Handled : Boolean;

begin
  if( Operation.Instance() is T_SuppliedOperation ) then
    FValue := ExtractData( Operation.Instance() );

  if( Handler.QueryInterface( GetTypeData(TypeInfo(T_Interface))^.Guid, Interf) = 0 ) then
//  if( Handler.QueryInterface(IOWFloatStream,Interf) = 0 ) then
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
      Interf.DispatchData( DataTypeID, CreateNotifyOperation( Value ), State );
      Exit;
      end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

  Result := [];
end;
//---------------------------------------------------------------------------
procedure TOWTypedStatePin<T_Interface, T_SuppliedOperation, T_Data>.SetValue( AValue : T_Data );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FComparer.Compare( FValue, AValue ) <> 0 ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWTypedStatePin<T_Interface, T_SuppliedOperation, T_Data>.Send( AValue : T_Data );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  FValue := AValue;
  Notify( CreateNotifyOperation( FValue ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWFloatSinkPin.ExtractData( AOperation : TOWSuppliedSingleOperation ) : Single;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWFloatMultiSinkPin.ExtractData( AOperation : TOWSuppliedSingleOperation ) : Single;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWBoolSourcePin.CreateNotifyOperation( AValue : Boolean ) : IOWNotifyOperation;
begin
  Result := TOWSuppliedBoolOperation.Create( FValue );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWBoolSinkPin.ExtractData( AOperation : TOWSuppliedBoolOperation ) : Boolean;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWBoolMultiSinkPin.ExtractData( AOperation : TOWSuppliedBoolOperation ) : Boolean;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWCharSourcePin.CreateNotifyOperation( AValue : Char ) : IOWNotifyOperation;
begin
  Result := TOWSuppliedCharOperation.Create( FValue );
end;
//---------------------------------------------------------------------------
procedure TOWCharSourcePin.SendText( AText : String );
var
  I : Integer;
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  for I := 1 to Length( AText ) do
    begin
    FValue := AText[ I ];
    Notify( TOWSuppliedCharOperation.Create( FValue ));
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWCharSinkPin.ExtractData( AOperation : TOWSuppliedCharOperation ) : Char;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWStringSourcePin.CreateNotifyOperation( AValue : String ) : IOWNotifyOperation;
begin
  Result := TOWSuppliedStringOperation.Create( FValue );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWStringSinkPin.ExtractData( AOperation : TOWSuppliedStringOperation ) : String;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWStringMultiSinkPin.ExtractData( AOperation : TOWSuppliedStringOperation ) : String;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWTypedSourcePin<T_Interface; T_Data>.CreateEx( AOwner: TComponent; APinNotificationEvent : TOWTypedPinNotificationEvent<T_Interface, T_Data>; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
  FComparer := TComparer<T_Data>.Default;
end;
//---------------------------------------------------------------------------
constructor TOWTypedSourcePin<T_Interface; T_Data>.CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWTypedPinNotificationEvent<T_Interface, T_Data>; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
  FComparer := TComparer<T_Data>.Default;
end;
//---------------------------------------------------------------------------
constructor TOWTypedSourcePin<T_Interface; T_Data>.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited;
  FComparer := TComparer<T_Data>.Default;
end;
//---------------------------------------------------------------------------
constructor TOWTypedSourcePin<T_Interface; T_Data>.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited;
  FComparer := TComparer<T_Data>.Default;
end;
//---------------------------------------------------------------------------
procedure TOWTypedSourcePin<T_Interface; T_Data>.SetValue( AValue : T_Data );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FComparer.Compare( FValue, AValue ) <> 0 ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWTypedSourcePin<T_Interface; T_Data>.Send( AValue : T_Data );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  FValue := AValue;
  Notify( CreateNotifyOperation( FValue ));
end;
//---------------------------------------------------------------------------
function TOWTypedSourcePin<T_Interface; T_Data>.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf  : IOWBasicStream;
  Handled : Boolean;

begin
  Result := [];
  if( Handler.QueryInterface( GetTypeData(TypeInfo(T_Interface))^.Guid, Interf) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( Interf, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( nsNewLink in State ) then
      Exit( IOWBasicStream( Interf ).DispatchData( DataTypeID, CreateNotifyOperation( Value ), State ));

    Result := Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWIntegerSourcePin.CreateNotifyOperation( AValue : Integer ) : IOWNotifyOperation;
begin
  Result := TOWSuppliedIntegerOperation.Create( FValue );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWIntegerSinkPin.ExtractData( AOperation : TOWSuppliedIntegerOperation ) : Integer;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWIntegerMultiSinkPin.ExtractData( AOperation : TOWSuppliedIntegerOperation ) : Integer;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWInt64SourcePin.CreateNotifyOperation( AValue : Int64 ) : IOWNotifyOperation;
begin
  Result := TOWSuppliedInt64Operation.Create( FValue );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWInt64SinkPin.ExtractData( AOperation : TOWSuppliedInt64Operation ) : Int64;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWInt64MultiSinkPin.ExtractData( AOperation : TOWSuppliedInt64Operation ) : Int64;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWRealSourcePin.CreateEx( AOwner: TComponent; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
constructor TOWRealSourcePin.CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
procedure TOWRealSourcePin.SetValue( AValue : Real );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWRealSourcePin.Send( AValue : Real );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
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
function TOWIntegerStatePin.CreateNotifyOperation( AValue : Integer ) : IOWNotifyOperation;
begin
  Result := TOWSuppliedIntegerOperation.Create( FValue );
end;
//---------------------------------------------------------------------------
function TOWIntegerStatePin.ExtractData( AOperation : TOWSuppliedIntegerOperation ) : Integer;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWRealRangedSourcePin.CreateEx( AOwner: TComponent; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
constructor TOWRealRangedSourcePin.CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
procedure TOWRealRangedSourcePin.SetValue( AValue : Real );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FValue <> AValue ) then
    begin
    FValue := AValue;
    SubmitValueRange( FValue, FMin, FMax );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWRealRangedSourcePin.SetMin( AValue : Real );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FMin <> AValue ) then
    begin
    FMin := AValue;
    SubmitRange( FMin, FMax );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWRealRangedSourcePin.SetMax( AValue : Real );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FMax <> AValue ) then
    begin
    FMax := AValue;
    SubmitRange( FMin, FMax );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWRealRangedSourcePin.SubmitValueRange( AValue : Real; AMin : Real; AMax : Real );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  FMin := AMin;
  FMax := AMax;
  FValue := AValue;
  Notify( TOWSuppliedRealValueRangeOperation.Create( AValue, AMin, AMax ));
end;
//---------------------------------------------------------------------------
procedure TOWRealRangedSourcePin.SubmitValue( AValue : Real );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  FValue := AValue;
  Notify( TOWSuppliedRealOperation.Create( AValue ));
end;
//---------------------------------------------------------------------------
procedure TOWRealRangedSourcePin.SubmitRange( AMin : Real; AMax : Real );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
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
  if( Handler.QueryInterface(IOWRealRangedStream,InterfRanged) = 0 ) then
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
    end

  else if( Handler.QueryInterface(IOWRealStream,InterfReal) = 0 ) then
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
end;
//---------------------------------------------------------------------------
constructor TOWRealStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWRealChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
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
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWRealStatePin.Send( AValue : Real );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  FValue := AValue;
  Notify( TOWSuppliedRealOperation.Create( FValue ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWComplexSourcePin.CreateNotifyOperation( AValue : TOWRealComplex ) : IOWNotifyOperation;
begin
  Result := TOWSuppliedRealComplexOperation.Create( FValue );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWComplexSinkPin.ExtractData( AOperation : TOWSuppliedRealComplexOperation ) : TOWRealComplex;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWComplexMultiSinkPin.ExtractData( AOperation : TOWSuppliedRealComplexOperation ) : TOWRealComplex;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWComplexStatePin.CreateNotifyOperation( AValue : TOWRealComplex ) : IOWNotifyOperation;
begin
  Result := TOWSuppliedRealComplexOperation.Create( FValue );
end;
//---------------------------------------------------------------------------
function TOWComplexStatePin.ExtractData( AOperation : TOWSuppliedRealComplexOperation ) : TOWRealComplex;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWDateTimeSourcePin.CreateNotifyOperation( AValue : TDateTime ) : IOWNotifyOperation;
begin
  Result := TOWSuppliedDateTimeOperation.Create( FValue );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWDateTimeSinkPin.ExtractData( AOperation : TOWSuppliedDateTimeOperation ) : TDateTime;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWDateTimeMultiSinkPin.ExtractData( AOperation : TOWSuppliedDateTimeOperation ) : TDateTime;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWDateTimeStatePin.CreateNotifyOperation( AValue : TDateTime ) : IOWNotifyOperation;
begin
  Result := TOWSuppliedDateTimeOperation.Create( FValue );
end;
//---------------------------------------------------------------------------
function TOWDateTimeStatePin.ExtractData( AOperation : TOWSuppliedDateTimeOperation ) : TDateTime;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWDateTimeRealSourcePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  InterfDateTime  : IOWDateTimeStream;
  Handled         : Boolean;
  ADateTime       : TDateTime;
  ATimeStamp      : TTimeStamp;
  AMSec           : Integer;

begin
  Result := [];
  if( Handler.QueryInterface( IOWDateTimeStream, InterfDateTime ) = 0 ) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      Result := FPinNotificationEvent( InterfDateTime, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    AMSec := Round( Value * 1000 );
    if( AMSec = 0 ) then
      ADateTime := 0

    else
      begin
      ATimeStamp := MSecsToTimeStamp( Round( Value * 1000 ));
      ATimeStamp.Date := 1;
      ADateTime := TimeStampToDateTime( ATimeStamp );
      end;

    if( nsNewLink in State ) then
      begin
      InterfDateTime.DispatchData( DataTypeID, TOWSuppliedDateTimeOperation.Create( ADateTime ), State );
      Exit;
      end;

    InterfDateTime.DispatchData( DataTypeID, TOWSuppliedDateTimeOperation.Create( ADateTime ), State );
    end

  else
    Result := inherited;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWInt64TimeRangedSourcePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  AddType( IOWInt64Stream, IntNotification, True );
  AddType( IOWInt64RangedStream, IntRangedNotification, True );
  AddType( IOWDateTimeStream, TimeNotification, True );
  AddType( IOWDateTimeRangedStream, TimeRangedNotification, True );
end;
//---------------------------------------------------------------------------
constructor TOWInt64TimeRangedSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  AddType( IOWInt64Stream, IntNotification, True );
  AddType( IOWInt64RangedStream, IntRangedNotification, True );
  AddType( IOWDateTimeStream, TimeNotification, True );
  AddType( IOWDateTimeRangedStream, TimeRangedNotification, True );
end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedSourcePin.SubmitValueRange( AValue : Int64; AMin : Int64; AMax : Int64; AMinTime : TDateTime; AMaxTime : TDateTime );
var
  AMiliSecondsPeriod  : Int64; 
  ATimeValue  : TDateTime;
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
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
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  FMin := AMin;
  FMax := AMax;
  FMinTime := AMinTime;
  FMaxTime := AMaxTime;
  Notify( TOWSuppliedInt64RangeOperation.Create( AMin, AMax ));
  Notify( TOWSuppliedDateTimeRangeOperation.Create( FMinTime, FMaxTime ));
end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedSourcePin.SetMin( AValue : Int64 );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FMin <> AValue ) then
    begin
    FMin := AValue;
    SubmitValueRange( FValue, FMin, FMax, FMinTime, FMaxTime );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedSourcePin.SetMax( AValue : Int64 );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FMax <> AValue ) then
    begin
    FMax := AValue;
    SubmitValueRange( FValue, FMin, FMax, FMinTime, FMaxTime );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedSourcePin.SetValue( AValue : Int64 );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FValue <> AValue ) then
    begin
    FValue := AValue;
    SubmitValueRange( FValue, FMin, FMax, FMinTime, FMaxTime );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedSourcePin.SetMinTime( AValue : TDateTime );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FMinTime <> AValue ) then
    begin
    FMinTime := AValue;
    SubmitValueRange( FValue, FMin, FMax, FMinTime, FMaxTime );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedSourcePin.SetMaxTime( AValue : TDateTime );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
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
  Interf              : IOWDateTimeRangedStream;
  AMiliSecondsPeriod  : Int64;
  ATimeValue          : TDateTime;

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
  AddType( IOWInt64Stream, IntNotification, True );
  AddType( IOWInt64RangedStream, IntRangedNotification, True );
  AddType( IOWDateTimeStream, TimeNotification, True );
  AddType( IOWDateTimeRangedStream, TimeRangedNotification, True );
end;
//---------------------------------------------------------------------------
constructor TOWInt64TimeRangedStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWInt64DateTimeValueRangeChangeEvent; AOnRangeChange : TOWInt64DateTimeRangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
  AddType( IOWInt64Stream, IntNotification, True );
  AddType( IOWInt64RangedStream, IntRangedNotification, True );
  AddType( IOWDateTimeStream, TimeNotification, True );
  AddType( IOWDateTimeRangedStream, TimeRangedNotification, True );
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
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
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
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  FMin := AMin;
  FMax := AMax;
  FMinTime := AMinTime;
  FMaxTime := AMaxTime;
  Notify( TOWSuppliedIntRangeOperation.Create( AMin, AMax ));
  Notify( TOWSuppliedDateTimeRangeOperation.Create( FMinTime, FMaxTime ));
end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedStatePin.SetMin( AValue : Int64 );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FMin <> AValue ) then
    begin
    FMin := AValue;
    SubmitValueRange( FValue, FMin, FMax, FMinTime, FMaxTime );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedStatePin.SetMax( AValue : Int64 );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FMax <> AValue ) then
    begin
    FMax := AValue;
    SubmitValueRange( FValue, FMin, FMax, FMinTime, FMaxTime );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedStatePin.SetValue( AValue : Int64 );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FValue <> AValue ) then
    begin
    FValue := AValue;
    SubmitValueRange( FValue, FMin, FMax, FMinTime, FMaxTime );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedStatePin.SetMinTime( AValue : TDateTime );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FMinTime <> AValue ) then
    begin
    FMinTime := AValue;
    SubmitValueRange( FValue, FMin, FMax, FMinTime, FMaxTime );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedStatePin.SetMaxTime( AValue : TDateTime );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
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
  Interf              : IOWDateTimeRangedStream;
  AMiliSecondsPeriod  : Int64;
  ATimeValue          : TDateTime;

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
function TOWInt64StatePin.CreateNotifyOperation( AValue : Int64 ) : IOWNotifyOperation;
begin
  Result := TOWSuppliedInt64Operation.Create( FValue );
end;
//---------------------------------------------------------------------------
function TOWInt64StatePin.ExtractData( AOperation : TOWSuppliedInt64Operation ) : Int64;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWFloatStatePin.CreateNotifyOperation( AValue : Single ) : IOWNotifyOperation;
begin
  Result := TOWSuppliedSingleOperation.Create( FValue );
end;
//---------------------------------------------------------------------------
function TOWFloatStatePin.ExtractData( AOperation : TOWSuppliedSingleOperation ) : Single;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWBoolStatePin.CreateNotifyOperation( AValue : Boolean ) : IOWNotifyOperation;
begin
  Result := TOWSuppliedBoolOperation.Create( FValue );
end;
//---------------------------------------------------------------------------
function TOWBoolStatePin.ExtractData( AOperation : TOWSuppliedBoolOperation ) : Boolean;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWBoolClockSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
begin
  Result := [];
  if( ( not ( IsEqualGUID( PGUID( DataTypeID )^, IOWBoolStream ))) and ( Operation.Instance() is TOWClockOperation )) then
    begin
    FValue := not FValue;
    if( Assigned( FOnDataChange )) then
      FOnDataChange( Self, FValue, nsNewLink in State );

    FValue := not FValue;
    if( Assigned( FOnDataChange )) then
      FOnDataChange( Self, FValue, nsNewLink in State );

    end

  else
    Result := inherited DispatchData( DataTypeID, Operation, State );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWCharStatePin.CreateNotifyOperation( AValue : Char ) : IOWNotifyOperation;
begin
  Result := TOWSuppliedCharOperation.Create( FValue );
end;
//---------------------------------------------------------------------------
function TOWCharStatePin.ExtractData( AOperation : TOWSuppliedCharOperation ) : Char;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWStringStatePin.CreateNotifyOperation( AValue : String ) : IOWNotifyOperation;
begin
  Result := TOWSuppliedStringOperation.Create( FValue );
end;
//---------------------------------------------------------------------------
function TOWStringStatePin.ExtractData( AOperation : TOWSuppliedStringOperation ) : String;
begin
  Result := AOperation.Value;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStringListSourcePin.CreateEx( AOwner: TComponent; APinNotificationEvent : TOWStringListPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
constructor TOWStringListSourcePin.CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWStringListPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
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
end;
//---------------------------------------------------------------------------
constructor TOWStringListStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWStringListChangeEvent; AOnGetDataEvent : TOWStringListGetDataEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
  FOnGetDataEvent := AOnGetDataEvent;
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
  Notify( TOWSuppliedStringListOperation.Create( AValue ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWFloatIntSourcePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  AddType( IOWFloatStream, FloatNotification, True );
  AddType( IOWIntegerStream, IntegerNotification, True );
end;
//---------------------------------------------------------------------------
constructor TOWFloatIntSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  AddType( IOWFloatStream, FloatNotification, True );
  AddType( IOWIntegerStream, IntegerNotification, True );
end;
//---------------------------------------------------------------------------
procedure TOWFloatIntSourcePin.SetValue( AValue : Single );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWFloatIntSourcePin.Send( AValue : Single );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
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
function TOWRealAndRangedSinkPin.GetRangePopulated() : Boolean;
begin
  Result := ( IsConnected() and FRangePopulated );
end;
//---------------------------------------------------------------------------
function TOWRealAndRangedSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.Instance() is TOWSuppliedRealValueRangeOperation ) then
    begin
//    if( FValue <> TOWSuppliedIntegerOperation( Operation.Instance() ).Value ) then
      begin
      FRangePopulated := True;
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
      FRangePopulated := True;
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
      FRangePopulated := True;
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
      FRangePopulated := True;
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
  FMin := AMin;
  FMax := AMax;
  FValue := AValue;
end;
//---------------------------------------------------------------------------
procedure TOWRealAndRangedStatePin.SubmitValueRange( AValue : Real; AMin : Real; AMax : Real );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  FMin := AMin;
  FMax := AMax;
  FValue := AValue;
  Notify( TOWSuppliedRealValueRangeOperation.Create( AValue, AMin, AMax ));
end;
//---------------------------------------------------------------------------
procedure TOWRealAndRangedStatePin.SubmitRange( AMin : Real; AMax : Real );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
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
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FValue <> AValue ) then
    begin
    FValue := AValue;
    SubmitValueRange( FValue, FMin, FMax );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWRealAndRangedStatePin.SetMin( AValue : Real );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FMin <> AValue ) then
    begin
    FMin := AValue;
    SubmitRange( FMin, FMax );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWRealAndRangedStatePin.SetMax( AValue : Real );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
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
end;
//---------------------------------------------------------------------------
constructor TOWFloatIntStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWFloatChangeEvent; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnDataChange := AOnDataChange;
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
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWFloatIntStatePin.Send( AValue : Single );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  FValue := AValue;
  Notify( TOWSuppliedMulticastOperation.Create( 1 ) );
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

public
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
  TOWRealSourcePin( FOutputPin ).Send( AValue );
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

public
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
  TOWFloatSourcePin( FOutputPin ).Send( AValue );
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

public
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
  TOWStringSourcePin( FOutputPin ).Send( IntToStr( AValue ));
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

public
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
  TOWRealSourcePin( FOutputPin ).Send( AValue );
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

public
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
  TOWStringSourcePin( FOutputPin ).Send( FloatToStr( AValue ));
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

public
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
  TOWStringSourcePin( FOutputPin ).Send( FloatToStr( AValue ));
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

public
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
  TOWRealSourcePin( FOutputPin ).Send( AValue );
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

public
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
  TOWFloatSourcePin( FOutputPin ).Send( AValue );
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

public
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
  TOWStringSourcePin( FOutputPin ).Send( IntToStr( AValue ));
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
type TOWBoolToStringFormatConverter = class( TOWFormatConverter )
protected
  procedure SinkOperationEvent( Sender : TOWPin; AValue : Boolean; AOnConnect : Boolean );
  function  DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

public
  constructor Create(); override;

end;
//---------------------------------------------------------------------------
constructor TOWBoolToStringFormatConverter.Create();
begin
  inherited CreateEx( TOWBoolSinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWStringSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWBoolToStringFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : Boolean; AOnConnect : Boolean );
const
  Values : array [Boolean] of String =
    (
      'False',
      'True'
    );

begin
  TOWStringSourcePin( FOutputPin ).Send( Values[ AValue ]);
end;
//------------------------------------------------------------------------------
function TOWBoolToStringFormatConverter.DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
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
type TOWRealComplexToStringFormatConverter = class( TOWFormatConverter )
protected
  procedure SinkOperationEvent( Sender : TOWPin; AValue : TOWRealComplex; AOnConnect : Boolean );
  function  DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

public
  constructor Create(); override;

end;
//---------------------------------------------------------------------------
constructor TOWRealComplexToStringFormatConverter.Create();
begin
  inherited CreateEx( TOWComplexSinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWStringSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWRealComplexToStringFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : TOWRealComplex; AOnConnect : Boolean );
begin
  TOWStringSourcePin( FOutputPin ).Send( FloatToStr( AValue.Real ) + ' I:' + FloatToStr( AValue.Imaginary ));
end;
//------------------------------------------------------------------------------
function TOWRealComplexToStringFormatConverter.DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
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
type TOWTimeToStringFormatConverter = class( TOWFormatConverter )
protected
  procedure DoTimeChange( Sender : TOWPin; AValue : TDateTime; AOnConnect : Boolean );
  function  DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

public
  constructor Create(); override;

end;
//---------------------------------------------------------------------------
constructor TOWTimeToStringFormatConverter.Create();
begin
  inherited CreateEx( TOWDateTimeSinkPin.CreateLock( Self, FLock, DoTimeChange, DoDispatch ), TOWStringSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//---------------------------------------------------------------------------
procedure TOWTimeToStringFormatConverter.DoTimeChange( Sender : TOWPin; AValue : TDateTime; AOnConnect : Boolean );
begin
  TOWStringSourcePin( FOutputPin ).Send( DateTimeToStr( AValue ) );
end;
//---------------------------------------------------------------------------
function TOWTimeToStringFormatConverter.DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
begin
  if( not ( Operation.Instance() is TOWSuppliedOperation )) then
    FOutputPin.Notify( Operation )

  else
    Handled := False;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
type TOWIntRangedToStringFormatConverter = class( TOWFormatConverter )
protected
  procedure SinkOperationEvent( Sender : TOWPin; AValue, AMin, AMax : Integer; ARangesFilled : Boolean; AOnConnect : Boolean );
  function  DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

public
  constructor Create(); override;

end;
//---------------------------------------------------------------------------
constructor TOWIntRangedToStringFormatConverter.Create();
begin
  inherited CreateEx( TOWIntAndRangedSinkPin.CreateLock( Self, FLock, SinkOperationEvent, NIL, DoDispatch ), TOWStringSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWIntRangedToStringFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue, AMin, AMax : Integer; ARangesFilled : Boolean; AOnConnect : Boolean );
begin
  TOWStringSourcePin( FOutputPin ).Send( IntToStr( AValue ) + ' [' + IntToStr( AMin ) + ' - ' + IntToStr( AMax ) + ']' );
end;
//------------------------------------------------------------------------------
function TOWIntRangedToStringFormatConverter.DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
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
type TOWInt64RangedToStringFormatConverter = class( TOWFormatConverter )
protected
  procedure SinkOperationEvent( Sender : TOWPin; AValue, AMin, AMax : Int64; ARangesFilled : Boolean; AOnConnect : Boolean );
  function  DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

public
  constructor Create(); override;

end;
//---------------------------------------------------------------------------
constructor TOWInt64RangedToStringFormatConverter.Create();
begin
  inherited CreateEx( TOWInt64AndRangedSinkPin.CreateLock( Self, FLock, SinkOperationEvent, NIL, DoDispatch ), TOWStringSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWInt64RangedToStringFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue, AMin, AMax : Int64; ARangesFilled : Boolean; AOnConnect : Boolean );
begin
  TOWStringSourcePin( FOutputPin ).Send( IntToStr( AValue ) + ' [' + IntToStr( AMin ) + ' - ' + IntToStr( AMax ) + ']' );
end;
//------------------------------------------------------------------------------
function TOWInt64RangedToStringFormatConverter.DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
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
type TOWRealRangedToStringFormatConverter = class( TOWFormatConverter )
protected
  procedure SinkOperationEvent( Sender : TOWPin; AValue, AMin, AMax : Real; ARangesFilled : Boolean; AOnConnect : Boolean );
  function  DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

public
  constructor Create(); override;

end;
//---------------------------------------------------------------------------
constructor TOWRealRangedToStringFormatConverter.Create();
begin
  inherited CreateEx( TOWRealAndRangedSinkPin.CreateLock( Self, FLock, SinkOperationEvent, NIL, DoDispatch ), TOWStringSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWRealRangedToStringFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue, AMin, AMax : Real; ARangesFilled : Boolean; AOnConnect : Boolean );
begin
  TOWStringSourcePin( FOutputPin ).Send( FloatToStr( AValue ) + ' [' + FloatToStr( AMin ) + ' - ' + FloatToStr( AMax ) + ']' );
end;
//------------------------------------------------------------------------------
function TOWRealRangedToStringFormatConverter.DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
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

public
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
    TOWRealRangedSourcePin( FOutputPin ).SubmitValueRange( AValue, AMin, AMax )
    
  else
     TOWRealRangedSourcePin( FOutputPin ).SubmitValue( AValue );
     
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

public
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
    TOWRealRangedSourcePin( FOutputPin ).SubmitValueRange( AValue, AMin, AMax )

  else
    TOWRealRangedSourcePin( FOutputPin ).SubmitValue( AValue );

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
  AddType( IOWRealStream,    RealNotification, True );
  AddType( IOWFloatStream,   FloatNotification, True );
  AddType( IOWIntegerStream, IntegerNotification, True );
  AddType( IOWStringStream,  StringNotification, True );
  AddType( IOWBoolStream,    BoolNotification, True );
end;
//---------------------------------------------------------------------------
constructor TOWStdComboSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  FNotifyOnChangeOnly := True;
  AddType( IOWRealStream,    RealNotification, True );
  AddType( IOWFloatStream,   FloatNotification, True );
  AddType( IOWIntegerStream, IntegerNotification, True );
  AddType( IOWStringStream,  StringNotification, True );
  AddType( IOWBoolStream,    BoolNotification, True );
end;
//---------------------------------------------------------------------------
procedure TOWStdComboSourcePin.SetValue( AValue : Real );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( ( not FNotifyOnChangeOnly ) or ( FValue <> AValue )) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWStdComboSourcePin.Send( AValue : Real );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
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
  AddType( IOWIntegerStream, IntNotification, True );
  AddType( IOWIntRangedStream, IntRangedNotification, True );
end;
//---------------------------------------------------------------------------
constructor TOWIntRangedSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  AddType( IOWIntegerStream, IntNotification, True );
  AddType( IOWIntRangedStream, IntRangedNotification, True );
end;
//---------------------------------------------------------------------------
procedure TOWIntRangedSourcePin.SubmitValueRange( AValue : Integer; AMin : Integer; AMax : Integer );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  FMin := AMin;
  FMax := AMax;
  FValue := AValue;
  Notify( TOWSuppliedIntValueRangeOperation.Create( AValue, AMin, AMax ));
end;
//---------------------------------------------------------------------------
procedure TOWIntRangedSourcePin.SubmitRange( AMin : Integer; AMax : Integer );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  FMin := AMin;
  FMax := AMax;
  Notify( TOWSuppliedIntRangeOperation.Create( AMin, AMax ));
end;
//---------------------------------------------------------------------------
procedure TOWIntRangedSourcePin.SetMin( AValue : Integer );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FMin <> AValue ) then
    begin
    FMin := AValue;
    Notify( TOWSuppliedIntValueRangeOperation.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWIntRangedSourcePin.SetMax( AValue : Integer );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FMax <> AValue ) then
    begin
    FMax := AValue;
    Notify( TOWSuppliedIntValueRangeOperation.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWIntRangedSourcePin.SetValue( AValue : Integer );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
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
  AddType( IOWIntegerStream, IntNotification, True );
  AddType( IOWIntRangedStream, IntRangedNotification, True );
end;
//---------------------------------------------------------------------------
constructor TOWIntRangedStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange  : TOWIntValueRangeChangeEvent; AOnRangeChange : TOWIntRangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
  AddType( IOWIntegerStream, IntNotification, True );
  AddType( IOWIntRangedStream, IntRangedNotification, True );
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
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FMin <> AValue ) then
    begin
    FMin := AValue;
    Notify( TOWSuppliedIntValueRangeOperation.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWIntRangedStatePin.SetMax( AValue : Integer );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FMax <> AValue ) then
    begin
    FMax := AValue;
    Notify( TOWSuppliedIntValueRangeOperation.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWIntRangedStatePin.SetRanged( AValue : Integer );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FValue <> AValue ) then
    begin
    FValue := AValue;
    Notify( TOWSuppliedIntValueRangeOperation.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWIntRangedStatePin.SubmitValueRange( AValue : Integer; AMin : Integer; AMax : Integer );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  FMin := AMin;
  FMax := AMax;
  FValue := AValue;
  Notify( TOWSuppliedIntValueRangeOperation.Create( AValue, AMin, AMax ));
end;
//---------------------------------------------------------------------------
procedure TOWIntRangedStatePin.SubmitRange( AMin : Integer; AMax : Integer );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
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
  AddType( IOWInt64Stream, IntNotification, True );
  AddType( IOWInt64RangedStream, IntRangedNotification, True );
end;
//---------------------------------------------------------------------------
constructor TOWInt64RangedSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  AddType( IOWInt64Stream, IntNotification, True );
  AddType( IOWInt64RangedStream, IntRangedNotification, True );
end;
//---------------------------------------------------------------------------
procedure TOWInt64RangedSourcePin.SubmitValueRange( AValue : Int64; AMin : Int64; AMax : Int64 );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  FMin := AMin;
  FMax := AMax;
  FValue := AValue;
  Notify( TOWSuppliedInt64ValueRangeOperation.Create( AValue, AMin, AMax ));
end;
//---------------------------------------------------------------------------
procedure TOWInt64RangedSourcePin.SubmitRange( AMin : Int64; AMax : Int64 );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  FMin := AMin;
  FMax := AMax;
  Notify( TOWSuppliedInt64RangeOperation.Create( AMin, AMax ));
end;
//---------------------------------------------------------------------------
procedure TOWInt64RangedSourcePin.SetMin( AValue : Int64 );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FMin <> AValue ) then
    begin
    FMin := AValue;
    Notify( TOWSuppliedInt64ValueRangeOperation.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64RangedSourcePin.SetMax( AValue : Int64 );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FMax <> AValue ) then
    begin
    FMax := AValue;
    Notify( TOWSuppliedInt64ValueRangeOperation.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64RangedSourcePin.SetValue( AValue : Int64 );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
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
  AddType( IOWInt64Stream, IntNotification, True );
  AddType( IOWInt64RangedStream, IntRangedNotification, True );
end;
//---------------------------------------------------------------------------
constructor TOWInt64RangedStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnDataChange : TOWInt64ValueRangeChangeEvent; AOnRangeChange : TOWInt64RangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent, ACustomData );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
  AddType( IOWInt64Stream, IntNotification, True );
  AddType( IOWInt64RangedStream, IntRangedNotification, True );
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
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FMin <> AValue ) then
    begin
    FMin := AValue;
    Notify( TOWSuppliedInt64ValueRangeOperation.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64RangedStatePin.SetMax( AValue : Int64 );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FMax <> AValue ) then
    begin
    FMax := AValue;
    Notify( TOWSuppliedInt64ValueRangeOperation.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64RangedStatePin.SetRanged( AValue : Int64 );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FValue <> AValue ) then
    begin
    FValue := AValue;
    Notify( TOWSuppliedInt64ValueRangeOperation.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64RangedStatePin.SubmitValueRange( AValue : Int64; AMin : Int64; AMax : Int64 );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  FMin := AMin;
  FMax := AMax;
  FValue := AValue;
  Notify( TOWSuppliedInt64ValueRangeOperation.Create( AValue, AMin, AMax ));
end;
//---------------------------------------------------------------------------
procedure TOWInt64RangedStatePin.SubmitRange( AMin : Int64; AMax : Int64 );
var
  AWriteLock  : IOWLockSection;

begin
  AWriteLock := WriteLock();
  FMin := AMin;
  FMax := AMax;
  Notify( TOWSuppliedInt64RangeOperation.Create( AMin, AMax ));
end;      
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWClockMultiSinkPin.Create( AOwner: TComponent; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWBasicPinNotificationEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited Create( AOwner, AOnPinNotificationEvent );
  FOnClock := AOnClock;
  AddType( IOWClockStream, ClockNotification, True );
end;
//---------------------------------------------------------------------------
constructor TOWClockMultiSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWBasicPinNotificationEvent = NIL; ACustomData : TObject = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinNotificationEvent );
  FOnClock := AOnClock;
  AddType( IOWClockStream, ClockNotification, True );
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

  if( Assigned( FPinNotificationEvent )) then
    FPinNotificationEvent( Self, DataTypeID, Operation, State );

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
end;
//---------------------------------------------------------------------------
constructor TOWStreamPersistSourcePin.CreateLockEx( AOwner: TComponent; AOwnerLock : IOWLock; AInputOwnerLock : IOWLock; APinNotificationEvent : TOWPinNotificationEvent );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock );
  FPinNotificationEvent := APinNotificationEvent;
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
constructor TOWStartRateOperation.Create( ARate : Real );
begin
  inherited Create;
  Rate := ARate;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWTypedSuppliedOperation<T>.Create( AValue : T );
begin
  inherited Create( 1 );
  Value := AValue;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWTypedSuppliedRangeOperation<T>.Create( AMin : T; AMax : T );
begin
  inherited Create( 1 );
  Min := AMin;
  Max := AMax;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSuppliedStringListOperation.Create( AValue : TStrings );
begin
  inherited Create( AValue.Count );
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
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSuppliedIntValueRangeOperation.Create( AValue, AMinValue, AMaxValue : Integer );
begin
  inherited Create( AValue );
  Min := AMinValue;
  Max := AMaxValue;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSuppliedInt64ValueRangeOperation.Create( AValue, AMinValue, AMaxValue : Int64 );
begin
  inherited Create( AValue );
  Min := AMinValue;
  Max := AMaxValue;
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
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
{$IFDEF D16Up}
constructor TOWSuppliedStreamPersistOperation.Create();
begin
  inherited Create( 1 );
  Value := TMemoryStream.Create();
end;
//---------------------------------------------------------------------------
constructor TOWSuppliedStreamPersistOperation.Create( AValue : TStream );
begin
  inherited Create( 1 );
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
constructor TOWPumpRequestOperation.CreateEx( APump : TObject; APumpType : TOWPumpType; APumpPriority : Cardinal; ADesiredRate : Real );
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
constructor TOWClockOperation.Create( ASamples : Integer );
begin
  inherited Create();
  Samples := ASamples;
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
  OWRegisterTypeConverter( IOWIntRangedStream,    IOWStringStream,      TOWIntRangedToStringFormatConverter );
  OWRegisterTypeConverter( IOWInt64RangedStream,  IOWStringStream,      TOWInt64RangedToStringFormatConverter );
  OWRegisterTypeConverter( IOWRealRangedStream,   IOWStringStream,      TOWRealRangedToStringFormatConverter );
  OWRegisterTypeConverter( IOWBoolStream,         IOWStringStream,      TOWBoolToStringFormatConverter );
  OWRegisterTypeConverter( IOWRealComplexStream,  IOWStringStream,      TOWRealComplexToStringFormatConverter );
  OWRegisterTypeConverter( IOWDateTimeStream,     IOWStringStream,      TOWTimeToStringFormatConverter );

end.
