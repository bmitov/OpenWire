unit OWStdTypes;

{$POINTERMATH ON}

interface

uses
  Classes, System.SysUtils, System.UITypes, OWPins, System.Generics.Defaults,
  System.TypInfo, Mitov.Types, Mitov.Containers.List, Mitov.Threading;

type
  IOWBasicStream = interface(IOWStream)
    ['{561B072C-4191-49C6-9F22-21791EF977D9}']

    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;

  end;
//---------------------------------------------------------------------------
  [OWName('Clock')]
  [OWCoreInterface]
  IOWClockStream = interface(IOWBasicStream)
    ['{48CDAF9F-00C7-4B45-999D-4EE25353A952}']
  end;
//---------------------------------------------------------------------------
  [OWName('General Data Stream')]
  [OWCoreInterface]
  IOWDataStream = interface(IOWBasicStream)
    ['{CFDF94D7-5134-49D9-AC65-902BBC1CD140}']
  end;
//---------------------------------------------------------------------------
  [OWName('32 bit Integer')]
  IOWIntegerStream = interface(IOWDataStream)
    ['{92F6B47E-B46E-49BB-9A8E-676D3C2F2E66}']
  end;
//---------------------------------------------------------------------------
  [OWName('32 bit Unsigned Integer')]
  IOWCardinalStream = interface(IOWDataStream)
    ['{B9867263-626B-47A4-AC8D-F3B6C68392B9}']
  end;
//---------------------------------------------------------------------------
  [OWName('Float')]
  IOWFloatStream = interface(IOWDataStream)
    ['{67F6997B-7EB4-4E2F-8320-4A512B5F2BC7}']
  end;
//---------------------------------------------------------------------------
  [OWName('Real')]
  IOWRealStream = interface(IOWDataStream)
    ['{208F9564-3C20-4C97-BB77-2FC5AE6E4194}']
  end;
//---------------------------------------------------------------------------
  [OWName('Real Complex')]
  IOWRealComplexStream = interface(IOWDataStream)
    ['{4CC4ADE6-E5AE-4E27-A9E7-42C14E062F41}']
  end;
//---------------------------------------------------------------------------
  [OWName('Boolean')]
  IOWBoolStream = interface(IOWDataStream)
    ['{7AA677AE-F983-4714-8E64-EC6F3D17695B}']
  end;
//---------------------------------------------------------------------------
  [OWName('Byte')]
  IOWByteStream = interface(IOWDataStream)
    ['{6869A0AD-852B-454F-B664-F54040F7019D}']
  end;
//---------------------------------------------------------------------------
  [OWName('Character')]
  IOWCharStream = interface(IOWDataStream)
    ['{3241B885-95E1-495F-ACEC-4A1C98872B63}']
  end;
//---------------------------------------------------------------------------
  [OWName('Color')]
  IOWColorStream = interface(IOWDataStream)
    ['{44421113-BE8B-4C12-86C3-5721B6EFD882}']
  end;
//---------------------------------------------------------------------------
  [OWName('Alpha Color')]
  IOWAlphaColorStream = interface(IOWDataStream)
    ['{C9C4E86B-29A1-41B3-B749-0D69035B140E}']
  end;
//---------------------------------------------------------------------------
  [OWName('Sting')]
  IOWStringStream = interface(IOWDataStream)
    ['{25C048B4-89D4-4277-AA98-A835EB29F5C1}']
  end;
//---------------------------------------------------------------------------
  [OWName('TStings')]
  IOWStringListStream = interface(IOWDataStream)
    ['{6A8D79B4-6799-4FB7-A0AB-43C327B7382A}']
  end;
//---------------------------------------------------------------------------
  [OWName('Ranged 32 bit Integer')]
  IOWIntRangedStream = interface(IOWDataStream)
    ['{836EE1EA-B8BD-4E04-8225-6AB547D1A3C4}']
  end;
//---------------------------------------------------------------------------
  [OWName('64 bit Integer')]
  IOWInt64Stream = interface(IOWDataStream)
    ['{6D054E38-F733-4212-8D5A-0E866802F866}']
  end;
//---------------------------------------------------------------------------
  [OWName('64 bit Unsigned Integer')]
  IOWUInt64Stream = interface(IOWDataStream)
    ['{EE313232-48B9-40E6-A7CE-3682B3ADE39B}']
  end;
//---------------------------------------------------------------------------
  [OWName('Ranged 64 bit Integer')]
  IOWInt64RangedStream = interface(IOWDataStream)
    ['{B201C2F8-CA4D-4CF3-8E6D-E620D2B9D7EF}']
  end;
//---------------------------------------------------------------------------
  [OWName('Ranged Real')]
  IOWRealRangedStream = interface(IOWDataStream)
    ['{648AC95D-2772-427C-AD9D-2B7F1EDDE1A7}']
  end;
//---------------------------------------------------------------------------
  [OWName('Date/Time')]
  IOWDateTimeStream = interface(IOWDataStream)
    ['{475D7D8B-4796-42A5-8F8E-B512B8FD2704}']
  end;
//---------------------------------------------------------------------------
  [OWName('Date')]
  IOWDateStream = interface(IOWDataStream)
    ['{FE356F3A-7552-4CA2-B542-A39061A61617}']
  end;
//---------------------------------------------------------------------------
  [OWName('Time')]
  IOWTimeStream = interface(IOWDataStream)
    ['{B8EA13BE-233C-4309-AF37-6441A57973BC}']
  end;
//---------------------------------------------------------------------------
  [OWName('Ranged DateTime')]
  IOWDateTimeRangedStream = interface(IOWDataStream)
    ['{92419B6E-F281-455A-852F-8253D761E30B}']
  end;
//---------------------------------------------------------------------------
  [OWName('Stream Persist')]
  IOWStreamPersistStream = interface(IOWDataStream)
    ['{846DC44A-1EB7-4BDD-BB93-04E9BC5E4BBD}']
  end;
//---------------------------------------------------------------------------
  [OWName('Integer List')]
  IOWIntegerListStream = interface(IOWDataStream)
    ['{FB1752DB-AA81-4237-8FC1-26721AE56974}']
  end;
//---------------------------------------------------------------------------
  [OWName('Int64 List')]
  IOWInt64ListStream = interface(IOWDataStream)
    ['{FB0AD5A2-9033-48B3-87F5-E8FCF69EF47B}']
  end;
//---------------------------------------------------------------------------
  [OWName('Real List')]
  IOWRealListStream = interface(IOWDataStream)
    ['{727FDD83-ADDB-4755-9A6D-1C4CFC72604C}']
  end;
//---------------------------------------------------------------------------
  [OWName('Float List')]
  IOWFloatListStream = interface(IOWDataStream)
    ['{0B59821C-2927-41DD-BC4B-1AB541FF9B28}']
  end;
//---------------------------------------------------------------------------
type
  TOWRealComplex = record
    Real      : Real;
    Imaginary : Real;

  public
    constructor Create( AReal : Real; AImaginary : Real );

  end;

type
  POWRealComplex = ^TOWRealComplex;
  
type TOWClockEvent = reference to procedure( Sender : TOWPin );

type TOWPinNotificationEvent = reference to function( Handler : IOWDataStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

type TOWDataChangeEvent<T_Data> = reference to procedure( Sender : TOWPin; AValue : T_Data; AOnConnect : Boolean );
type TOWTypedValueRangeChangeEvent<T_Data> = reference to procedure( Sender : TOWPin; AValue, AMin, AMax : T_Data; ARangesFilled : Boolean; AOnConnect : Boolean );

type TOWTypedRangeChangeEvent<T_Data> = reference to procedure( Sender : TOWPin; AMin, AMax : T_Data; AOnConnect : Boolean );

type TOWInt64DateTimeValueRangeChangeEvent = reference to procedure( Sender : TOWPin; AValue, AMin, AMax : Int64; AMinTime, AMaxTime : TDateTime; ARangesFilled : Boolean; AOnConnect : Boolean );
type TOWInt64DateTimeRangeChangeEvent = reference to procedure( Sender : TOWPin; AMin, AMax : Int64; AMinTime, AMaxTime : TDateTime; AOnConnect : Boolean );

type TOWPinDispatchEvent = reference to function( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

type TOWBasicPinNotificationEvent = reference to function( Sender : TOWBasicPin; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;


type TOWStringListGetDataEvent = reference to procedure( Sender : TOWPin; AValue : TStrings );

//---------------------------------------------------------------------------

type
  TOWPumpType = ( ptNone, ptSlave, ptMaster, ptHardware );
//---------------------------------------------------------------------------
  OWDontUpdateOnConnectAttribute = class( TCustomAttribute );
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
    constructor CreateEx( AValue : T; ASampleCount : Integer );

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
  TOWTypedSuppliedValueRangeOperation<T> = class( TOWTypedSuppliedOperation<T> )
  public
    Min : T;
    Max : T;

  public
    constructor Create( AValue : T; AMin : T; AMax : T );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedStringListOperation = class( TOWSuppliedOperation )
  public
    Value : TStrings;

  public
    constructor Create( AValue : TStrings );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedStreamPersistOperation = class( TOWSuppliedOperation )
  public
    Value : TStream;

  public
    constructor Create(); overload;
    constructor Create( AValue : TStream ); overload;
    destructor  Destroy(); override;

  end;
//---------------------------------------------------------------------------
  // Introduced to work around generics package bug!
  TOWTypeBaseListSuppliedOperation = class( TOWSuppliedOperation )
  public
    class function GetHostedTypeInfo() : PTypeInfo; virtual; stdcall; abstract;

  public
    function IsType( AClass : TOWNotifyOperationClass ) : Boolean; override; stdcall;

  end;
//---------------------------------------------------------------------------
  TOWTypedListSuppliedOperation<T> = class( TOWTypeBaseListSuppliedOperation )
  public
    Value : IArrayList<T>;

  public
    class function GetHostedTypeInfo() : PTypeInfo; override; stdcall;

  public
    constructor Create( AValue : IArrayList<T> );

  end;
//---------------------------------------------------------------------------
  TOWBasicDispatchSourcePin = class( TOWSourcePin )
  protected
    FPinNotificationEvent : TOWBasicPinNotificationEvent;

  protected
    FLPDataSection  : ICriticalSection;
    FStartOperation : IOWNotifyOperation;

  protected
    procedure IntConnect( const SinkPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; const ADataType : TGUID ); override;
    function  IntConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin; ADataType : TGUID ) : Boolean; override;

  public
    function  Notify( Operation : IOWNotifyOperation ) : TOWNotifyResult; override;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; AMaxConnections : Integer = -1; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWDataStream )]
  TOWDispatchSourcePin = class( TOWBasicDispatchSourcePin );
//---------------------------------------------------------------------------
  TOWDispatchSinkPin = class( TOWSinkPin )
  protected
    FPinNotificationEvent : TOWBasicPinNotificationEvent;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );

  end;
//---------------------------------------------------------------------------
  TOWDispatchMultiSinkPin = class( TOWMultiSinkPin )
  protected
    FPinNotificationEvent : TOWBasicPinNotificationEvent;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );

  end;
//---------------------------------------------------------------------------
  TOWDispatchStatePin = class( TOWStatePin )
  protected
    FPinNotificationEvent : TOWBasicPinNotificationEvent;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWClockStream )]
  TOWClockSourcePin = class( TOWDispatchSourcePin, IOWClockStream )
  protected
    FOnDisconnect : TOWPinEvent;

  protected
    function ClockNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  public
    procedure Clock( ASamples : Integer );

  public
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL ); virtual;

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
    constructor Create( AOwner: TComponent; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWBasicPinNotificationEvent = NIL );

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
    constructor Create( AOwner: TComponent; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWBasicPinNotificationEvent = NIL );

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWDataStream )]
  TOWStdSourcePin = class( TOWClockSourcePin )
  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;
    function IntNotificationHandler( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

  protected
    procedure BeforeDisconnectFrom( const APin : TOWBasicPin ); override;

  end;
//---------------------------------------------------------------------------
  TOWStdSourcePinClass = class of TOWStdSourcePin;
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
    procedure BeforeDisconnectFrom( const APin : TOWBasicPin ); override;

  public
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent; AOnPinDispatchEvent : TOWPinDispatchEvent );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDisconnect : TOWPinEvent; AOnPinDispatchEvent : TOWPinDispatchEvent );

  end;
//---------------------------------------------------------------------------
  TOWStdSinkPin = class( TOWSinkPin )
  protected
    FOnPinDispatchEvent : TOWPinDispatchEvent;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    function TryCustomDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var AResult : TOWNotifyResult ) : Boolean; virtual;

  public
    constructor Create( AOwner: TComponent; AOnPinDispatchEvent : TOWPinDispatchEvent );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnPinDispatchEvent : TOWPinDispatchEvent );

  end;
//---------------------------------------------------------------------------
  TOWStdMultiSinkPin = class( TOWMultiSinkPin )
  protected
    FOnPinDispatchEvent : TOWPinDispatchEvent;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    function TryCustomDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var AResult : TOWNotifyResult ) : Boolean;

  public
    constructor Create( AOwner: TComponent; AOnPinDispatchEvent : TOWPinDispatchEvent );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnPinDispatchEvent : TOWPinDispatchEvent );

  end;
//---------------------------------------------------------------------------
  TOWTypedPinNotificationEvent<T_Interface : IInterface; T_Data> = reference to function( Handler : T_Interface; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
//---------------------------------------------------------------------------
  TOWBasicTypedSourcePin<T_Data> = class( TOWStdSourcePin )
  protected
    FPinNotificationEvent : TOWPinNotificationEvent;

  protected
    FValue    : T_Data;
    FComparer : IComparer<T_Data>;

  protected
    procedure SetValue( AValue : T_Data );

  public
    procedure Send( AValue : T_Data );

  public
    constructor CreateEx( AOwner: TComponent; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLockEx( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL ); override;

  public
    property Value : T_Data read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWTypedSourcePin<T_Interface : IOWBasicStream; T_Data> = class( TOWBasicTypedSourcePin<T_Data> )
  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;

  end;
//---------------------------------------------------------------------------
  TOWTypedSinkPin<T_Data> = class( TOWStdSinkPin )
  protected
    FOnDataChange : TOWDataChangeEvent<T_Data>;
    FValue        : T_Data;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  public
    constructor Create( AOwner : TComponent; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );

  public
    property Value  : T_Data read FValue;

  end;
//---------------------------------------------------------------------------
  TOWTypedMultiSinkPin<T_Data> = class( TOWStdMultiSinkPin )
  protected
    FOnDataChange : TOWDataChangeEvent<T_Data>;
    FValue        : T_Data;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  public
    constructor Create( AOwner : TComponent; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
    constructor CreateLock( AOwner : TComponent; AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );

  public
    property Value  : T_Data read FValue;

  end;
//---------------------------------------------------------------------------
  TOWTypedStatePin<T_Interface : IInterface; T_Data> = class( TOWStdStatePin )
  protected
    FPinNotificationEvent : TOWTypedPinNotificationEvent<T_Interface, T_Data>;
    FOnDataChange         : TOWDataChangeEvent<T_Data>;
    FValue                : T_Data;
    FComparer             : IComparer<T_Data>;

  protected
    procedure SetValue( AValue : T_Data );

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    procedure Send( AValue : T_Data );

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );

  public
    property Value : T_Data read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWTypedRangedSourcePin<T_Interface : IOWBasicStream; T_Interface_Ranged : IOWBasicStream; T_Data> = class( TOWStdSourcePin )
  protected
    FMin    : T_Data;
    FMax    : T_Data;
    FValue  : T_Data;

  protected
    FComparer : IComparer<T_Data>;

  protected
    procedure SetMin( AValue : T_Data );
    procedure SetMax( AValue : T_Data );
    procedure SetValue( AValue : T_Data ); virtual;

  protected
    function  IntNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function  IntRangedNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    procedure SublitMinMaxChanges(); virtual;

  public
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL ); override;

  public
    procedure SubmitValueRange( AValue : T_Data; AMin : T_Data; AMax : T_Data );
    procedure SubmitValue( AValue : T_Data );
    procedure SubmitRange( AMin : T_Data; AMax : T_Data );

  public
    property Min    : T_Data read FMin   write SetMin;
    property Max    : T_Data read FMax   write SetMax;
    property Value  : T_Data read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWTypedRangedSinkPin<T_Data> = class( TOWStdSinkPin )
  protected
    FOnDataChange   : TOWTypedValueRangeChangeEvent<T_Data>;
    FOnRangeChange  : TOWTypedRangeChangeEvent<T_Data>;

  protected
    FMin    : T_Data;
    FMax    : T_Data;
    FValue  : T_Data;

  protected
    FRangePopulated : Boolean;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange  : TOWTypedValueRangeChangeEvent<T_Data>; AOnRangeChange : TOWTypedRangeChangeEvent<T_Data> = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange  : TOWTypedValueRangeChangeEvent<T_Data>; AOnRangeChange : TOWTypedRangeChangeEvent<T_Data> = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );

  public
    property Min    : T_Data read FMin;
    property Max    : T_Data read FMax;
    property Value  : T_Data read FValue;

  end;
//---------------------------------------------------------------------------
  TOWTypedAndRangedSinkPin<T_Data> = class( TOWTypedRangedSinkPin<T_Data> )
  protected
    function GetRangePopulated() : Boolean;

  protected
    function TryCustomDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var AResult : TOWNotifyResult ) : Boolean; override;

  public
    property IsConnectedByRange : Boolean read GetRangePopulated;

  end;
//---------------------------------------------------------------------------
  TOWTypedRangedStatePin<T_Interface : IOWBasicStream; T_Interface_Ranged : IOWBasicStream; T_Data> = class( TOWStdStatePin )
  protected
    FOnDataChange   : TOWTypedValueRangeChangeEvent<T_Data>;
    FOnRangeChange  : TOWTypedRangeChangeEvent<T_Data>;

  protected
    FMin    : T_Data;
    FMax    : T_Data;
    FValue  : T_Data;

  protected
    FComparer : IComparer<T_Data>;

  protected
    function  IntNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function  IntRangedNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function  DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    procedure SublitMinMaxChanges(); virtual;

  protected
    procedure SetMin( AValue : T_Data );
    procedure SetMax( AValue : T_Data );
    procedure SetValue( AValue : T_Data ); virtual;

  public
    procedure SubmitValueRange( AValue : T_Data; AMin : T_Data; AMax : T_Data );
    procedure SubmitValue( AValue : T_Data );
    procedure SubmitRange( AMin : T_Data; AMax : T_Data );

  public
    constructor Create( AOwner: TComponent; AValue : T_Data; AMin : T_Data; AMax : T_Data; AOnDataChange : TOWTypedValueRangeChangeEvent<T_Data>; AOnRangeChange : TOWTypedRangeChangeEvent<T_Data> = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AValue : T_Data; AMin : T_Data; AMax : T_Data; AOnDataChange : TOWTypedValueRangeChangeEvent<T_Data>; AOnRangeChange : TOWTypedRangeChangeEvent<T_Data> = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );

  public
    property Min    : T_Data read FMin   write SetMin;
    property Max    : T_Data read FMax   write SetMax;
    property Value  : T_Data read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWFloatStream )]
  TOWFloatSourcePin = class( TOWTypedSourcePin<IOWFloatStream, Single> );
//---------------------------------------------------------------------------
  TOWFloatSinkPin = class( TOWTypedSinkPin<Single>, IOWFloatStream );
//---------------------------------------------------------------------------
  TOWFloatMultiSinkPin = class( TOWTypedMultiSinkPin<Single>, IOWFloatStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWFloatStream )]
  TOWFloatStatePin = class( TOWTypedStatePin<IOWFloatStream, Single>, IOWFloatStream );
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
  [OWDataType( IOWByteStream )]
  TOWByteSourcePin = class( TOWTypedSourcePin<IOWByteStream, Byte> );
//---------------------------------------------------------------------------
  TOWByteSinkPin = class( TOWTypedSinkPin<Byte>, IOWByteStream );
//---------------------------------------------------------------------------
  TOWByteMultiSinkPin = class( TOWTypedMultiSinkPin<Byte>, IOWByteStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWByteStream )]
  TOWByteStatePin = class( TOWTypedStatePin<IOWByteStream, Byte>, IOWByteStream );
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
  [OWDataType( IOWBoolStream )]
  TOWBoolSourcePin = class( TOWTypedSourcePin<IOWBoolStream, Boolean> );
//---------------------------------------------------------------------------
  TOWBoolSinkPin = class( TOWTypedSinkPin<Boolean>, IOWBoolStream );
//---------------------------------------------------------------------------
  TOWBoolMultiSinkPin = class( TOWTypedMultiSinkPin<Boolean>, IOWBoolStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWBoolStream )]
  TOWBoolStatePin = class( TOWTypedStatePin<IOWBoolStream, Boolean>, IOWBoolStream );
//---------------------------------------------------------------------------
  TOWBoolClockSinkPin = class( TOWBoolSinkPin, IOWClockStream )
  protected
    FOnClock : TProc;

  public
    constructor CreateLockClock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<Boolean>; AOnClock : TProc; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );

  public
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWColorStream )]
  TOWColorSourcePin = class( TOWTypedSourcePin<IOWColorStream, TColor> );
//---------------------------------------------------------------------------
  TOWColorSinkPin = class( TOWTypedSinkPin<TColor>, IOWColorStream );
//---------------------------------------------------------------------------
  TOWColorMultiSinkPin = class( TOWTypedMultiSinkPin<TColor>, IOWColorStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWColorStream )]
  TOWColorStatePin = class( TOWTypedStatePin<IOWColorStream, TColor>, IOWColorStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWAlphaColorStream )]
  TOWAlphaColorSourcePin = class( TOWTypedSourcePin<IOWAlphaColorStream, TAlphaColor> );
//---------------------------------------------------------------------------
  TOWAlphaColorSinkPin = class( TOWTypedSinkPin<TAlphaColor>, IOWAlphaColorStream );
//---------------------------------------------------------------------------
  TOWAlphaColorMultiSinkPin = class( TOWTypedMultiSinkPin<TAlphaColor>, IOWAlphaColorStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWAlphaColorStream )]
  TOWAlphaColorStatePin = class( TOWTypedStatePin<IOWAlphaColorStream, TAlphaColor>, IOWAlphaColorStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWCharStream )]
  TOWCharSourcePin = class( TOWTypedSourcePin<IOWCharStream, Char> )
  public
    procedure SendText( AText : String );

  end;
//---------------------------------------------------------------------------
  TOWCharSinkPin = class( TOWTypedSinkPin<Char>, IOWCharStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWCharStream )]
  TOWCharStatePin = class( TOWTypedStatePin<IOWCharStream, Char>, IOWCharStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWStringStream )]
  TOWStringSourcePin = class( TOWTypedSourcePin<IOWStringStream, String> );
//---------------------------------------------------------------------------
  TOWStringSinkPin = class( TOWTypedSinkPin<String>, IOWStringStream );
//---------------------------------------------------------------------------
  TOWStringMultiSinkPin = class( TOWTypedMultiSinkPin<String>, IOWStringStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWStringStream )]
  TOWStringStatePin = class( TOWTypedStatePin<IOWStringStream, String>, IOWStringStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWStringListStream )]
  TOWStringListSourcePin = class( TOWStdSourcePin )
  protected
    FPinNotificationEvent : TOWPinNotificationEvent;
    FOnConnect            : TOWPinEvent;

  public
    constructor CreateEx( AOwner: TComponent; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLockEx( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateConnect( AOwner: TComponent; AOnConnect : TOWPinEvent );

  public
    procedure Send( AValue : TStrings );

  protected
    function  Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;
    procedure NewConnection( const ASinkPin : TOWBasicPin ); overload; override;

  end;
//---------------------------------------------------------------------------
  TOWStringListSinkPin = class( TOWStdSinkPin, IOWStringListStream )
  protected
    FOnDataChange : TOWDataChangeEvent<TStrings>;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWDataChangeEvent<TStrings>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<TStrings>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );

  end;
//---------------------------------------------------------------------------
  TOWStringListMultiSinkPin = class( TOWStdMultiSinkPin, IOWStringListStream )
  protected
    FOnDataChange : TOWDataChangeEvent<TStrings>;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWDataChangeEvent<TStrings>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<TStrings>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWStringListStream )]
  TOWStringListStatePin = class( TOWStdStatePin, IOWStringListStream )
  protected
    FPinNotificationEvent : TOWPinNotificationEvent;
    FOnDataChange         : TOWDataChangeEvent<TStrings>;
    FOnGetDataEvent       : TOWStringListGetDataEvent;

  protected
    function  Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;

  protected
    function  DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWDataChangeEvent<TStrings>; AOnGetDataEvent : TOWStringListGetDataEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<TStrings>; AOnGetDataEvent : TOWStringListGetDataEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );

  public
    procedure Send( AValue : TStrings );

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWIntegerStream )]
  TOWIntegerSourcePin = class( TOWTypedSourcePin<IOWIntegerStream, Integer> );
//---------------------------------------------------------------------------
  TOWIntegerSinkPin = class( TOWTypedSinkPin<Integer>, IOWIntegerStream );
//---------------------------------------------------------------------------
  TOWIntegerMultiSinkPin = class( TOWTypedMultiSinkPin<Integer>, IOWIntegerStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWIntegerStream )]
  TOWIntegerStatePin = class( TOWTypedStatePin<IOWIntegerStream, Integer>, IOWIntegerStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWCardinalStream )]
  TOWCardinalSourcePin = class( TOWTypedSourcePin<IOWCardinalStream, Cardinal> );
//---------------------------------------------------------------------------
  TOWCardinalSinkPin = class( TOWTypedSinkPin<Cardinal>, IOWCardinalStream );
//---------------------------------------------------------------------------
  TOWCardinalMultiSinkPin = class( TOWTypedMultiSinkPin<Cardinal>, IOWCardinalStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWCardinalStream )]
  TOWCardinalStatePin = class( TOWTypedStatePin<IOWCardinalStream, Cardinal>, IOWCardinalStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWInt64Stream )]
  TOWInt64SourcePin = class( TOWTypedSourcePin<IOWInt64Stream, Int64> );
//---------------------------------------------------------------------------
  TOWInt64SinkPin = class( TOWTypedSinkPin<Int64>, IOWInt64Stream );
//---------------------------------------------------------------------------
  TOWInt64MultiSinkPin = class( TOWTypedMultiSinkPin<Int64>, IOWInt64Stream );
//---------------------------------------------------------------------------
  [OWDataType( IOWInt64Stream )]
  TOWInt64StatePin = class( TOWTypedStatePin<IOWInt64Stream, Int64>, IOWInt64Stream );
//---------------------------------------------------------------------------
  [OWDataType( IOWInt64Stream )]
  [OWDataType( IOWInt64RangedStream )]
  TOWInt64RangedSourcePin = class( TOWTypedRangedSourcePin<IOWInt64Stream, IOWInt64RangedStream, Int64> );
//---------------------------------------------------------------------------
  TOWInt64RangedSinkPin = class( TOWTypedRangedSinkPin<Int64>, IOWInt64RangedStream );
//---------------------------------------------------------------------------
  TOWInt64AndRangedSinkPin = class( TOWTypedAndRangedSinkPin<Int64>, IOWInt64Stream, IOWInt64RangedStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWInt64Stream )]
  [OWDataType( IOWInt64RangedStream )]
  TOWInt64AndRangedStatePin = class( TOWTypedRangedStatePin<IOWInt64Stream, IOWInt64RangedStream, Int64>, IOWInt64RangedStream, IOWInt64Stream );
//---------------------------------------------------------------------------
  [OWDataType( IOWUInt64Stream )]
  TOWUInt64SourcePin = class( TOWTypedSourcePin<IOWUInt64Stream, UInt64> );
//---------------------------------------------------------------------------
  TOWUInt64SinkPin = class( TOWTypedSinkPin<UInt64>, IOWUInt64Stream );
//---------------------------------------------------------------------------
  TOWUInt64MultiSinkPin = class( TOWTypedMultiSinkPin<UInt64>, IOWUInt64Stream );
//---------------------------------------------------------------------------
  [OWDataType( IOWUInt64Stream )]
  TOWUInt64StatePin = class( TOWTypedStatePin<IOWUInt64Stream, UInt64>, IOWUInt64Stream );
//---------------------------------------------------------------------------
  [OWDataType( IOWFloatStream )]
  [OWDataType( IOWRealStream )]
  TOWRealSourcePin = class( TOWTypedSourcePin<IOWRealStream, Real> )
  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;

  end;
//---------------------------------------------------------------------------
  TOWRealSinkPin = class( TOWTypedSinkPin<Real>, IOWFloatStream, IOWRealStream )
  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  end;
//---------------------------------------------------------------------------
  TOWRealMultiSinkPin = class( TOWTypedMultiSinkPin<Real>, IOWFloatStream, IOWRealStream )
  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWFloatStream )]
  [OWDataType( IOWRealStream )]
  TOWRealStatePin = class( TOWStdStatePin, IOWFloatStream, IOWRealStream )
  protected
    FPinNotificationEvent : TOWPinNotificationEvent;
    FOnDataChange         : TOWDataChangeEvent<Real>;
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
    constructor Create( AOwner: TComponent; AOnDataChange : TOWDataChangeEvent<Real>; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<Real>; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );

  public
    property Value : Real read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
//  [OWDataType( IOWFloatStream )]
  [OWDataType( IOWRealStream )]
  [OWDataType( IOWRealRangedStream )]
  TOWRealRangedSourcePin = class( TOWTypedRangedSourcePin<IOWRealStream, IOWRealRangedStream, Real> );
//---------------------------------------------------------------------------
  TOWRealRangedSinkPin = class( TOWTypedRangedSinkPin<Real>, IOWRealRangedStream );
//---------------------------------------------------------------------------
  TOWRealAndRangedSinkPin = class( TOWTypedAndRangedSinkPin<Real>, IOWRealStream, IOWRealRangedStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWRealStream )]
  [OWDataType( IOWRealRangedStream )]
  TOWRealAndRangedStatePin = class( TOWTypedRangedStatePin<IOWRealStream, IOWRealRangedStream, Real>, IOWRealRangedStream, IOWRealStream );
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
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL ); override;

  public
    property Value : Single read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWFloatStream )]
  [OWDataType( IOWIntegerStream )]
  TOWFloatIntStatePin = class( TOWStdStatePin, IOWFloatStream, IOWIntegerStream )
  protected
    FOnDataChange : TOWDataChangeEvent<Single>;
    FValue        : Single;

  protected
    procedure SetValue( AValue : Single );

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;
    
  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    procedure Send( AValue : Single );

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWDataChangeEvent<Single>; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<Single>; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );

  public
    property Value : Single read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWRealComplexStream )]
  TOWComplexSourcePin = class( TOWTypedSourcePin<IOWRealComplexStream, TOWRealComplex> );
//---------------------------------------------------------------------------
  TOWComplexSinkPin = class( TOWTypedSinkPin<TOWRealComplex>, IOWRealComplexStream );
//---------------------------------------------------------------------------
  TOWComplexMultiSinkPin = class( TOWTypedMultiSinkPin<TOWRealComplex>, IOWRealComplexStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWRealComplexStream )]
  TOWComplexStatePin = class( TOWTypedStatePin<IOWRealComplexStream, TOWRealComplex>, IOWRealComplexStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWDateTimeStream )]
  TOWDateTimeSourcePin = class( TOWTypedSourcePin<IOWDateTimeStream, TDateTime> );
//---------------------------------------------------------------------------
  TOWDateTimeSinkPin = class( TOWTypedSinkPin<TDateTime>, IOWDateTimeStream );
//---------------------------------------------------------------------------
  TOWDateTimeMultiSinkPin = class( TOWTypedMultiSinkPin<TDateTime>, IOWDateTimeStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWDateTimeStream )]
  TOWDateTimeStatePin = class( TOWTypedStatePin<IOWDateTimeStream, TDateTime>, IOWDateTimeStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWTimeStream )]
  TOWTimeSourcePin = class( TOWTypedSourcePin<IOWTimeStream, TTime> );
//---------------------------------------------------------------------------
  TOWTimeSinkPin = class( TOWTypedSinkPin<TTime>, IOWTimeStream );
//---------------------------------------------------------------------------
  TOWTimeMultiSinkPin = class( TOWTypedMultiSinkPin<TTime>, IOWTimeStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWTimeStream )]
  TOWTimeStatePin = class( TOWTypedStatePin<IOWTimeStream, TTime>, IOWTimeStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWDateStream )]
  TOWDateSourcePin = class( TOWTypedSourcePin<IOWDateStream, TDate> );
//---------------------------------------------------------------------------
  TOWDateSinkPin = class( TOWTypedSinkPin<TDate>, IOWDateStream );
//---------------------------------------------------------------------------
  TOWDateMultiSinkPin = class( TOWTypedMultiSinkPin<TDate>, IOWDateStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWDateStream )]
  TOWDateStatePin = class( TOWTypedStatePin<IOWDateStream, TDate>, IOWDateStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWDateTimeStream )]
  TOWDateTimeRealSourcePin = class( TOWRealSourcePin )
  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;

  end;
//---------------------------------------------------------------------------
//  [OWDataType( IOWInt64Stream )]
//  [OWDataType( IOWInt64RangedStream )]
  [OWDataType( IOWDateTimeStream )]
  [OWDataType( IOWDateTimeRangedStream )]
  TOWInt64TimeRangedSourcePin = class( TOWInt64RangedSourcePin )
  protected
    FMinTime  : TDateTime;
    FMaxTime  : TDateTime;

  protected
    procedure SetMinTime( AValue : TDateTime );
    procedure SetMaxTime( AValue : TDateTime );
    procedure SetValue( AValue : Int64 ); override;

  protected
    function  TimeNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function  TimeRangedNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    procedure SublitMinMaxChanges(); override;

  public
    constructor Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL ); override;

  public
    procedure SubmitValueRange( AValue : Int64; AMin : Int64; AMax : Int64; AMinTime : TDateTime; AMaxTime : TDateTime );
    procedure SubmitValue( AValue : Int64 );
    procedure SubmitRange( AMin : Int64; AMax : Int64; AMinTime : TDateTime; AMaxTime : TDateTime );

  public
    property MinTime  : TDateTime read FMinTime write SetMinTime;
    property MaxTime  : TDateTime read FMaxTime write SetMaxTime;

  end;
//---------------------------------------------------------------------------
//  [OWDataType( IOWInt64Stream )]
//  [OWDataType( IOWInt64RangedStream )]
  [OWDataType( IOWDateTimeStream )]
  [OWDataType( IOWDateTimeRangedStream )]
  TOWInt64TimeRangedStatePin = class( TOWInt64AndRangedStatePin, IOWInt64RangedStream, IOWInt64Stream, IOWDateTimeRangedStream, IOWDateTimeStream )
  protected
    FOnDataChange   : TOWInt64DateTimeValueRangeChangeEvent;
    FOnRangeChange  : TOWInt64DateTimeRangeChangeEvent;

  protected
    FMinTime  : TDateTime;
    FMaxTime  : TDateTime;

  protected
    procedure SetMinTime( AValue : TDateTime );
    procedure SetMaxTime( AValue : TDateTime );
    procedure SetValue( AValue : Int64 ); override;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWInt64DateTimeValueRangeChangeEvent; AOnRangeChange : TOWInt64DateTimeRangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange : TOWInt64DateTimeValueRangeChangeEvent; AOnRangeChange : TOWInt64DateTimeRangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );

  public
    procedure SubmitValueRange( AValue : Int64; AMin : Int64; AMax : Int64; AMinTime : TDateTime; AMaxTime : TDateTime );
    procedure SubmitValue( AValue : Int64 );
    procedure SubmitRange( AMin : Int64; AMax : Int64; AMinTime : TDateTime; AMaxTime : TDateTime );

  protected
    function  TimeNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function  TimeRangedNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;
    function  DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override; stdcall;
    procedure SublitMinMaxChanges(); override;

  public
    property MinTime  : TDateTime read FMinTime write SetMinTime;
    property MaxTime  : TDateTime read FMaxTime write SetMaxTime;

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
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL ); override;

  public
    property Value : Real read FValue write SetValue;
    property NotifyOnChangeOnly  : Boolean read FNotifyOnChangeOnly write FNotifyOnChangeOnly;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWIntegerStream )]
  [OWDataType( IOWIntRangedStream )]
  TOWIntRangedSourcePin = class( TOWTypedRangedSourcePin<IOWIntegerStream, IOWIntRangedStream, Integer> );
//---------------------------------------------------------------------------
  TOWIntRangedSinkPin = class( TOWTypedRangedSinkPin<Integer>, IOWIntRangedStream );
//---------------------------------------------------------------------------
  TOWIntAndRangedSinkPin = class( TOWTypedAndRangedSinkPin<Integer>, IOWIntegerStream, IOWIntRangedStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWIntegerStream )]
  [OWDataType( IOWIntRangedStream )]
  TOWIntAndRangedStatePin = class( TOWTypedRangedStatePin< IOWIntegerStream, IOWIntRangedStream, Integer>, IOWIntRangedStream, IOWIntegerStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWStreamPersistStream )]
  TOWStreamPersistSourcePin = class( TOWClockSourcePin )
  public
    FPinNotificationEvent : TOWPinNotificationEvent;

  public
    constructor CreateEx( AOwner: TComponent; APinNotificationEvent : TOWPinNotificationEvent );
    constructor CreateLockEx( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; APinNotificationEvent : TOWPinNotificationEvent );

  public
    procedure SubmitData( Value : TStream );

  protected
    function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;

  end;
//---------------------------------------------------------------------------
  TOWTypedListSourcePin<T; T_Interface : IOWBasicStream> = class( TOWStdSourcePin )
  protected
    FPinNotificationEvent : TOWPinNotificationEvent;
    FOnConnect            : TOWPinEvent;

  public
    constructor CreateEx( AOwner: TComponent; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateLockEx( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateConnect( AOwner: TComponent; AOnConnect : TOWPinEvent );

  public
    procedure Send( AValue : IArrayList<T> );

  protected
    function  Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override;
    procedure NewConnection( const ASinkPin : TOWBasicPin ); overload; override;

  end;
//---------------------------------------------------------------------------
  TOWTypedListSinkPin<T> = class( TOWStdSinkPin )
  protected
    FOnDataChange : TOWDataChangeEvent<IArrayList<T>>;

  protected
    function DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  public
    constructor Create( AOwner: TComponent; AOnDataChange : TOWDataChangeEvent<IArrayList<T>>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
    constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<IArrayList<T>>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWIntegerListStream )]
  TOWIntegerListSourcePin = class( TOWTypedListSourcePin<Integer, IOWIntegerListStream> );
//---------------------------------------------------------------------------
  TOWIntegerListSinkPin = class( TOWTypedListSinkPin<Integer>, IOWIntegerListStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWFloatListStream )]
  TOWFloatListSourcePin = class( TOWTypedListSourcePin<Single, IOWFloatListStream> );
//---------------------------------------------------------------------------
  TOWFloatListSinkPin = class( TOWTypedListSinkPin<Single>, IOWFloatListStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWInt64ListStream )]
  TOWInt64ListSourcePin = class( TOWTypedListSourcePin<Int64, IOWInt64ListStream> );
//---------------------------------------------------------------------------
  TOWInt64ListSinkPin = class( TOWTypedListSinkPin<Int64>, IOWInt64ListStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWRealListStream )]
  TOWRealListSourcePin = class( TOWTypedListSourcePin<Real, IOWRealListStream> );
//---------------------------------------------------------------------------
  TOWRealListSinkPin = class( TOWTypedListSinkPin<Real>, IOWRealListStream );
//---------------------------------------------------------------------------
  TOWBasicFormatConverter = class( TOWFormatConverter )
  protected
    function  DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

  end;
//---------------------------------------------------------------------------
implementation

uses
{$IFDEF MSWINDOWS}
  Windows,
{$ENDIF}
  Mitov.Utils, Mitov.Elements, OpenWire.TypeConverters, Mitov.ClassManagement, Mitov.TypeInfo;

//---------------------------------------------------------------------------
function IncMilliSecond(const AValue: TDateTime;
  const ANumberOfMilliSeconds: Int64): TDateTime;
begin
  Result := ((AValue * MSecsPerDay) + ANumberOfMilliSeconds) / MSecsPerDay;
end;
//---------------------------------------------------------------------------
constructor TOWRealComplex.Create( AReal : Real; AImaginary : Real );
begin
  Real := AReal;
  Imaginary := AImaginary;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWStdSourcePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  AGenInterf  : IOWDataStream;

begin
  if( not ( nsNewLink in State )) then
    begin
    if( TInterface.IfSupports<IOWDataStream>( Handler, AGenInterf )) then
      Exit( AGenInterf.DispatchData( DataTypeID, Operation, State ));

    Exit( IntNotificationHandler( Handler, DataTypeID, Operation, State ));
    end;

  Result := [];
end;
//---------------------------------------------------------------------------
function TOWStdSourcePin.IntNotificationHandler( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
begin
  Result := [];
end;
//---------------------------------------------------------------------------
procedure TOWStdSourcePin.BeforeDisconnectFrom( const APin : TOWBasicPin );
begin
  if( Assigned( FOnDisconnect )) then
    FOnDisconnect( APin );

  inherited;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStdStatePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent; AOnPinDispatchEvent : TOWPinDispatchEvent );
begin
  inherited Create( AOwner );
  FOnDisconnect := AOnDisconnect;
  FOnPinDispatchEvent := AOnPinDispatchEvent;
end;
//---------------------------------------------------------------------------
constructor TOWStdStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDisconnect : TOWPinEvent; AOnPinDispatchEvent : TOWPinDispatchEvent );
begin
  inherited CreateLock( AOwner, AOwnerLock );
  FOnDisconnect := AOnDisconnect;
  FOnPinDispatchEvent := AOnPinDispatchEvent;
end;
//---------------------------------------------------------------------------
function TOWStdStatePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  AGenInterf  : IOWDataStream;

begin
  if( not ( nsNewLink in State )) then
    begin
    if( TInterface.IfSupports<IOWDataStream>( Handler, AGenInterf )) then
      Exit( AGenInterf.DispatchData( DataTypeID, Operation, State ));

    Exit( IntNotificationHandler( Handler, DataTypeID, Operation, State ));
    end;

  Result := [];
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
procedure TOWStdStatePin.BeforeDisconnectFrom( const APin : TOWBasicPin );
begin
  if( Assigned( FOnDisconnect )) then
    FOnDisconnect( APin );

  inherited;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStdSinkPin.Create( AOwner: TComponent; AOnPinDispatchEvent : TOWPinDispatchEvent );
begin
  inherited Create( AOwner );
  FOnPinDispatchEvent := AOnPinDispatchEvent;
end;
//---------------------------------------------------------------------------
constructor TOWStdSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnPinDispatchEvent : TOWPinDispatchEvent );
begin
  inherited CreateLock( AOwner, AOwnerLock );
  FOnPinDispatchEvent := AOnPinDispatchEvent;
end;
//---------------------------------------------------------------------------
function TOWStdSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;  stdcall;
begin
  Result := [];

  TryCustomDispatch( DataTypeID, Operation, State, Result );
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
constructor TOWStdMultiSinkPin.Create( AOwner: TComponent; AOnPinDispatchEvent : TOWPinDispatchEvent );
begin
  inherited Create( AOwner );
  FOnPinDispatchEvent := AOnPinDispatchEvent;
end;
//---------------------------------------------------------------------------
constructor TOWStdMultiSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnPinDispatchEvent : TOWPinDispatchEvent );
begin
  inherited CreateLock( AOwner, AOwnerLock );
  FOnPinDispatchEvent := AOnPinDispatchEvent;
end;
//---------------------------------------------------------------------------
function TOWStdMultiSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;  stdcall;
begin
  Result := [];

  TryCustomDispatch( DataTypeID, Operation, State, Result );
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
constructor TOWBasicDispatchSourcePin.Create(AOwner: TComponent; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited Create( AOwner );
  FLPDataSection := TCriticalSection.Create();
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
constructor TOWBasicDispatchSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; AMaxConnections : Integer = -1; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock );
  FLPDataSection := TCriticalSection.Create();
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
function TOWBasicDispatchSourcePin.Notify( Operation : IOWNotifyOperation ) : TOWNotifyResult;
begin
  Result := inherited Notify( Operation );

  if( Operation.IsType( TOWStartOperation )) then
    FLPDataSection.Access.Setter<IOWNotifyOperation>( FStartOperation, Operation )

  else if( Operation.IsType( TOWStopOperation )) then
    FLPDataSection.Access.Setter<IOWNotifyOperation>( FStartOperation, NIL );

{
        else if( Operation.IsType( TOWIgnoreStreamOperation )) then
          FLPDataSection.Setter<IOWNotifyOperation>( FStartOperation, Operation );
}

end;
//---------------------------------------------------------------------------
procedure TOWBasicDispatchSourcePin.IntConnect( const SinkPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; const ADataType : TGUID );
var
  AStartOperation : IOWNotifyOperation;

begin
  inherited;

  FLPDataSection.Access.Execute(
      procedure()
      begin
        AStartOperation := FStartOperation;
      end
    );

  if( AStartOperation <> NIL ) then
    NotifyPin( SinkPin, AStartOperation );

end;
//---------------------------------------------------------------------------
function TOWBasicDispatchSourcePin.IntConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin; ADataType : TGUID ) : Boolean;
var
  AStartOperation : IOWNotifyOperation;

begin
  Result := inherited;

  FLPDataSection.Access.Execute(
      procedure()
      begin
        AStartOperation := FStartOperation;
      end
    );

  if( AStartOperation <> NIL ) then
    NotifyPin( OtherPin, AStartOperation );

end;
//---------------------------------------------------------------------------
function TOWBasicDispatchSourcePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
var
//  AInputWriteLock : ILockSection;
  AWriteLock : ILockSection;

begin
  if( Assigned( FPinNotificationEvent )) then
    begin
  //    if( FInputOwnerLock <> NIL ) then
  //      AWriteLock := FOwnerLock.WriteLock();

    AWriteLock := FOwnerLock.WriteLock();
    Exit( FPinNotificationEvent( Self, DataTypeID, Operation, State ));
    end;

  Result := [];
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWDispatchSinkPin.Create( AOwner: TComponent; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited Create( AOwner );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
constructor TOWDispatchSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
function TOWDispatchSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  if( Assigned( FPinNotificationEvent )) then
    Exit( FPinNotificationEvent( Self, DataTypeID, Operation, State ));

  Result := [];
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWDispatchMultiSinkPin.Create( AOwner: TComponent; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited Create( AOwner );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
constructor TOWDispatchMultiSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
function TOWDispatchMultiSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
var
  AWriteLock : ILockSection;

begin
  if( Assigned( FPinNotificationEvent )) then
    begin
    AWriteLock := FOwnerLock.WriteLock();
    Exit( FPinNotificationEvent( Self, DataTypeID, Operation, State ));
    end;

  Result := [];
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWDispatchStatePin.Create( AOwner: TComponent; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited Create( AOwner );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
constructor TOWDispatchStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
function TOWDispatchStatePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
var
  AWriteLock : ILockSection;

begin
  if( Assigned( FPinNotificationEvent )) then
    begin
    AWriteLock := FOwnerLock.WriteLock();
    Exit( FPinNotificationEvent( Self, DataTypeID, Operation, State ));
    end;

  Result := [];
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWClockSourcePin.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited Create( AOwner, APinNotificationEvent );
  FOnDisconnect := AOnDisconnect;
  AddType( IOWClockStream, ClockNotification, True );
end;
//---------------------------------------------------------------------------
constructor TOWClockSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, -1, APinNotificationEvent );
  FOnDisconnect := AOnDisconnect;
  AddType( IOWClockStream, ClockNotification, True );
end;
//---------------------------------------------------------------------------
procedure TOWClockSourcePin.Clock( ASamples : Integer );
begin
  Notify( TOWClockOperation.Create( ASamples ) );
end;
//---------------------------------------------------------------------------
function TOWClockSourcePin.ClockNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
begin
  Result := [];

  TInterface.IfSupports<IOWClockStream>( Handler,
      procedure( AIntf : IOWClockStream )
      begin
        AIntf.DispatchData( DataTypeID, Operation, State );
      end
    );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWClockSinkPin.Create( AOwner: TComponent; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited Create( AOwner, AOnPinNotificationEvent );
  FOnClock := AOnClock;
  AddType( IOWClockStream, ClockNotification, True );
end;
//---------------------------------------------------------------------------
constructor TOWClockSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinNotificationEvent );
  FOnClock := AOnClock;
  AddType( IOWClockStream, ClockNotification, True );
end;
//---------------------------------------------------------------------------
function TOWClockSinkPin.ClockNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
begin
  Result := [];

  TInterface.IfSupports<IOWClockStream>( Handler,
      procedure( AIntf : IOWClockStream )
      begin
        AIntf.DispatchData( DataTypeID, Operation, State );
      end
    );

end;
//---------------------------------------------------------------------------
function TOWClockSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
var
  AWriteLock : ILockSection;

begin
  Result := [];
  if( Assigned( FPinNotificationEvent )) then
    begin
    AWriteLock := FOwnerLock.WriteLock();
    Result := FPinNotificationEvent( Self, DataTypeID, Operation, State );
    end;

  if( Assigned( FOnClock )) then
//    if( not ( nsNewLink in State )) then
    if( Operation.IsType( TOWClockOperation )) then
      begin
//      AWriteLock := FOwnerLock.WriteLock();
      FOnClock( Self );
      end;

    
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWTypedSinkPin<T_Data>.Create( AOwner: TComponent; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWTypedSinkPin<T_Data>.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWTypedSinkPin<T_Data>.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;  stdcall;
begin
  Result := [];

  if( Operation.IsType( TOWTypedSuppliedOperation<T_Data> )) then
    begin
//    if( FValue <> TOWSuppliedSingleOperation( Operation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<T_Data>( Operation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.IsType( TOWClearContentOperation )) then
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
constructor TOWTypedMultiSinkPin<T_Data>.Create( AOwner: TComponent; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWTypedMultiSinkPin<T_Data>.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWTypedMultiSinkPin<T_Data>.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;  stdcall;
begin
  Result := [];

  if( Operation.IsType( TOWTypedSuppliedOperation<T_Data> )) then
    begin
//    if( FValue <> TOWSuppliedSingleOperation( Operation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<T_Data>( Operation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.IsType( TOWClearContentOperation )) then
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
constructor TOWTypedStatePin<T_Interface, T_Data>.Create( AOwner: TComponent; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;
  FComparer := TComparer<T_Data>.Default;
end;
//---------------------------------------------------------------------------
constructor TOWTypedStatePin<T_Interface, T_Data>.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;
  FComparer := TComparer<T_Data>.Default;
end;
//---------------------------------------------------------------------------
function TOWTypedStatePin<T_Interface, T_Data>.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.IsType( TOWTypedSuppliedOperation<T_Data> )) then
    begin
//    if( FValue <> TOWSuppliedSingleOperation( Operation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<T_Data>( Operation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.IsType( TOWClearContentOperation )) then
      begin
      FValue := Default( T_Data );
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWTypedStatePin<T_Interface, T_Data>.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf      : IOWFloatStream;
  Handled     : Boolean;
  AWriteLock  : ILockSection;

begin
  if( Operation.IsType( TOWTypedSuppliedOperation<T_Data> )) then
    FValue := TOWTypedSuppliedOperation<T_Data>( Operation.GetInstance()).Value;

  if( Supports( Handler, GetTypeData(System.TypeInfo(T_Interface))^.Guid, Interf )) then
//  if( Supports( Handler,IOWFloatStream,Interf )) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      AWriteLock := FOwnerLock.WriteLock();
      Result := FPinNotificationEvent( Interf, DataTypeID, Operation, State, Handled );
      AWriteLock := NIL;
      if( Handled ) then
        Exit;

      end;

    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        Interf.DispatchData( DataTypeID, TOWTypedSuppliedOperation<T_Data>.Create( FValue ), State );
        Exit;
        end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

  Result := [];
end;
//---------------------------------------------------------------------------
procedure TOWTypedStatePin<T_Interface, T_Data>.SetValue( AValue : T_Data );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if( FComparer.Compare( FValue, AValue ) <> 0 ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWTypedStatePin<T_Interface, T_Data>.Send( AValue : T_Data );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FValue := AValue;
  Notify( TOWTypedSuppliedOperation<T_Data>.Create( FValue ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWCharSourcePin.SendText( AText : String );
var
  I           : Integer;
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  for I := 1 to Length( AText ) do
    begin
    FValue := AText[ I ];
    Notify( TOWTypedSuppliedOperation<Char>.Create( FValue ));
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWBasicTypedSourcePin<T_Data>.CreateEx( AOwner: TComponent; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
  FComparer := TComparer<T_Data>.Default;
end;
//---------------------------------------------------------------------------
constructor TOWBasicTypedSourcePin<T_Data>.CreateLockEx( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
  FComparer := TComparer<T_Data>.Default;
end;
//---------------------------------------------------------------------------
constructor TOWBasicTypedSourcePin<T_Data>.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited;
  FComparer := TComparer<T_Data>.Default;
end;
//---------------------------------------------------------------------------
constructor TOWBasicTypedSourcePin<T_Data>.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited;
  FComparer := TComparer<T_Data>.Default;
end;
//---------------------------------------------------------------------------
procedure TOWBasicTypedSourcePin<T_Data>.SetValue( AValue : T_Data );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if( FComparer.Compare( FValue, AValue ) <> 0 ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWBasicTypedSourcePin<T_Data>.Send( AValue : T_Data );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FValue := AValue;
  Notify( TOWTypedSuppliedOperation<T_Data>.Create( FValue ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWTypedSourcePin<T_Interface; T_Data>.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf      : IOWDataStream;
  Handled     : Boolean;
  AWriteLock  : ILockSection;

begin
  Result := [];
  if( Supports( Handler, GetTypeData(System.TypeInfo(T_Interface))^.Guid, Interf )) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      AWriteLock := FOwnerLock.WriteLock();
      Result := FPinNotificationEvent( Interf, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        Exit( IOWBasicStream( Interf ).DispatchData( DataTypeID, TOWTypedSuppliedOperation<T_Data>.Create( Value ), State ));

    Result := Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWRealSourcePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  InterfReal  : IOWRealStream;
  InterfFloat : IOWFloatStream;
  Handled     : Boolean;
  AWriteLock  : ILockSection;

begin
  Result := [];
  if( TInterface.IfSupports<IOWRealStream>( Handler, InterfReal )) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      AWriteLock := FOwnerLock.WriteLock();
      Result := FPinNotificationEvent( InterfReal, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        InterfReal.DispatchData( DataTypeID, TOWTypedSuppliedOperation<Real>.Create( Value ), State );
        Exit;
        end;

    InterfReal.DispatchData( DataTypeID, Operation, State );
    end

  else if( TInterface.IfSupports<IOWFloatStream>( Handler, InterfFloat )) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      AWriteLock := FOwnerLock.WriteLock();
      Result := FPinNotificationEvent( InterfFloat, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        InterfFloat.DispatchData( DataTypeID, TOWTypedSuppliedOperation<Single>.Create( Value ), State );
        Exit;
        end;

    if( Operation.IsType( TOWTypedSuppliedOperation<Real> )) then
      Operation := TOWTypedSuppliedOperation<Single>.Create( TOWTypedSuppliedOperation<Real>( Operation.GetInstance() ).Value );

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

  if( Operation.IsType( TOWTypedSuppliedOperation<Real> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<Real>( Operation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<Real>( Operation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( Operation.IsType( TOWTypedSuppliedOperation<Single> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<Single>( Operation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<Single>( Operation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.IsType( TOWClearContentOperation )) then
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

  if( Operation.IsType( TOWTypedSuppliedOperation<Real> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<Real>( Operation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<Real>( Operation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( Operation.IsType( TOWTypedSuppliedOperation<Single> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<Real>( Operation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<Single>( Operation.GetInstance() ).Value;
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
constructor TOWRealStatePin.Create( AOwner: TComponent; AOnDataChange : TOWDataChangeEvent<Real>; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWRealStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<Real>; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWRealStatePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.IsType( TOWTypedSuppliedOperation<Real> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<Real>( Operation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<Real>( Operation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end
      
  else if( Operation.IsType( TOWTypedSuppliedOperation<Single> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<Real>( Operation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<Single>( Operation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.IsType( TOWClearContentOperation )) then
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
  AWriteLock  : ILockSection;

begin
  if( Operation.IsType( TOWTypedSuppliedOperation<Real> )) then
    FValue := TOWTypedSuppliedOperation<Real>( Operation.GetInstance() ).Value
    
  else if( Operation.IsType( TOWTypedSuppliedOperation<Single> )) then
    FValue := TOWTypedSuppliedOperation<Single>( Operation.GetInstance() ).Value;

  Result := [];
  if( TInterface.IfSupports<IOWRealStream>( Handler, InterfReal )) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      AWriteLock := FOwnerLock.WriteLock();
      Result := FPinNotificationEvent( InterfReal, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        InterfReal.DispatchData( DataTypeID, TOWTypedSuppliedOperation<Real>.Create( Value ), State );
        Exit;
        end;

    InterfReal.DispatchData( DataTypeID, Operation, State );
    end
    
  else if( TInterface.IfSupports<IOWFloatStream>( Handler, InterfFloat)) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      AWriteLock := FOwnerLock.WriteLock();
      Result := FPinNotificationEvent( InterfFloat, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        InterfFloat.DispatchData( DataTypeID, TOWTypedSuppliedOperation<Single>.Create( Value ), State );
        Exit;
        end;

    if( Operation.IsType( TOWTypedSuppliedOperation<Real> )) then
      Operation := TOWTypedSuppliedOperation<Single>.Create( TOWTypedSuppliedOperation<Real>( Operation.GetInstance() ).Value );

    InterfFloat.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWRealStatePin.SetValue( AValue : Real );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWRealStatePin.Send( AValue : Real );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FValue := AValue;
  Notify( TOWTypedSuppliedOperation<Real>.Create( FValue ));
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
  AWriteLock      : ILockSection;

begin
  Result := [];
  if( TInterface.IfSupports<IOWDateTimeStream>( Handler, InterfDateTime )) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      AWriteLock := FOwnerLock.WriteLock();
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

    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        InterfDateTime.DispatchData( DataTypeID, TOWTypedSuppliedOperation<TDateTime>.Create( ADateTime ), State );
        Exit;
        end;

    InterfDateTime.DispatchData( DataTypeID, TOWTypedSuppliedOperation<TDateTime>.Create( ADateTime ), State );
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
//  AddType( IOWInt64Stream, IntNotification, True );
//  AddType( IOWInt64RangedStream, IntRangedNotification, True );
  AddType( IOWDateTimeStream, TimeNotification, True );
  AddType( IOWDateTimeRangedStream, TimeRangedNotification, True );
end;
//---------------------------------------------------------------------------
constructor TOWInt64TimeRangedSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited;
//  AddType( IOWInt64Stream, IntNotification, True );
//  AddType( IOWInt64RangedStream, IntRangedNotification, True );
  AddType( IOWDateTimeStream, TimeNotification, True );
  AddType( IOWDateTimeRangedStream, TimeRangedNotification, True );
end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedSourcePin.SublitMinMaxChanges();
begin
  if( FValue > FMax ) then
    FValue := FMax

  else if( FValue < FMin ) then
    FValue := FMin

  else
    begin
    SubmitValueRange( FValue, FMin, FMax, FMinTime, FMaxTime );
    Exit;
    end;

  SubmitRange( FMin, FMax, FMinTime, FMaxTime );
end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedSourcePin.SubmitValueRange( AValue : Int64; AMin : Int64; AMax : Int64; AMinTime : TDateTime; AMaxTime : TDateTime );
var
  AMiliSecondsPeriod  : Int64;
  ATimeValue  : TDateTime;
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FMin := AMin;
  FMax := AMax;
  FMinTime := AMinTime;
  FMaxTime := AMaxTime;
  FValue := AValue;
  Notify( TOWTypedSuppliedValueRangeOperation<Int64>.Create( FValue, FMin, FMax ));
  if( FMax = FMin ) then
    AMiliSecondsPeriod := 0

  else
    AMiliSecondsPeriod := Round( MSecsPerDay * ( FMaxTime - FMinTime ) * ( FValue - FMin ) / ( FMax - FMin ) );

  ATimeValue := IncMilliSecond( FMinTime, AMiliSecondsPeriod );
  Notify( TOWTypedSuppliedValueRangeOperation<TDateTime>.Create( ATimeValue, FMinTime, FMaxTime ));
end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedSourcePin.SubmitValue( AValue : Int64 );
var
  AMiliSecondsPeriod  : Int64;
  ATimeValue  : TDateTime;
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FValue := AValue;
  Notify( TOWTypedSuppliedOperation<Int64>.Create( FValue ));
  if( FMax = FMin ) then
    AMiliSecondsPeriod := 0

  else
    AMiliSecondsPeriod := Round( MSecsPerDay * ( FMaxTime - FMinTime ) * ( FValue - FMin ) / ( FMax - FMin ) );

  ATimeValue := IncMilliSecond( FMinTime, AMiliSecondsPeriod );
  Notify( TOWTypedSuppliedOperation<TDateTime>.Create( ATimeValue ));
end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedSourcePin.SubmitRange( AMin : Int64; AMax : Int64; AMinTime : TDateTime; AMaxTime : TDateTime );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FMin := AMin;
  FMax := AMax;
  FMinTime := AMinTime;
  FMaxTime := AMaxTime;
  Notify( TOWTypedSuppliedRangeOperation<Int64>.Create( AMin, AMax ));
  Notify( TOWTypedSuppliedRangeOperation<TDateTime>.Create( FMinTime, FMaxTime ));
end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedSourcePin.SetValue( AValue : Int64 );
var
  AWriteLock  : ILockSection;

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
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if( FMinTime <> AValue ) then
    begin
    FMinTime := AValue;
    if( FMinTime > FMaxTime ) then
      FMaxTime := FMinTime;

    SublitMinMaxChanges();
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedSourcePin.SetMaxTime( AValue : TDateTime );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if( FMaxTime <> AValue ) then
    begin
    FMaxTime := AValue;
    if( FMinTime > FMaxTime ) then
      FMinTime := FMaxTime;

    SublitMinMaxChanges();
    end;

end;
//---------------------------------------------------------------------------
function TOWInt64TimeRangedSourcePin.TimeNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf              : IOWDateTimeStream;
  AMiliSecondsPeriod  : Int64;
  ATimeValue          : TDateTime;

begin
  Result := [];
  if( TInterface.IfSupports<IOWDateTimeStream>( Handler, Interf )) then
    begin
    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        if( FMax = FMin ) then
          AMiliSecondsPeriod := 0

        else
          AMiliSecondsPeriod := Round( MSecsPerDay * ( FMaxTime - FMinTime ) * ( FValue - FMin ) / ( FMax - FMin ) );

        ATimeValue := IncMilliSecond( FMinTime, AMiliSecondsPeriod );
        Interf.DispatchData( DataTypeID, TOWTypedSuppliedOperation<TDateTime>.Create( ATimeValue ), State );
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
  if( TInterface.IfSupports<IOWDateTimeRangedStream>( Handler, Interf )) then
    begin
    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        if( FMax = FMin ) then
          AMiliSecondsPeriod := 0

        else
          AMiliSecondsPeriod := Round( MSecsPerDay * ( FMaxTime - FMinTime ) * ( FValue - FMin ) / ( FMax - FMin ) );

        ATimeValue := IncMilliSecond( FMinTime, AMiliSecondsPeriod );
        Interf.DispatchData( DataTypeID, TOWTypedSuppliedValueRangeOperation<TDateTime>.Create( ATimeValue, FMinTime, FMaxTime ), State );
        Exit;
        end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;
    
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWInt64TimeRangedStatePin.Create( AOwner: TComponent; AOnDataChange : TOWInt64DateTimeValueRangeChangeEvent; AOnRangeChange : TOWInt64DateTimeRangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited Create( AOwner, 0, 0, 0, NIL, NIL, AOnDisconnect, AOnPinDispatchEvent );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
//  AddType( IOWInt64Stream, IntNotification, True );
//  AddType( IOWInt64RangedStream, IntRangedNotification, True );
  AddType( IOWDateTimeStream, TimeNotification, True );
  AddType( IOWDateTimeRangedStream, TimeRangedNotification, True );
end;
//---------------------------------------------------------------------------
constructor TOWInt64TimeRangedStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange : TOWInt64DateTimeValueRangeChangeEvent; AOnRangeChange : TOWInt64DateTimeRangeChangeEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, 0, 0, 0, NIL, NIL, AOnDisconnect, AOnPinDispatchEvent );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
//  AddType( IOWInt64Stream, IntNotification, True );
//  AddType( IOWInt64RangedStream, IntRangedNotification, True );
  AddType( IOWDateTimeStream, TimeNotification, True );
  AddType( IOWDateTimeRangedStream, TimeRangedNotification, True );
end;
//---------------------------------------------------------------------------
function TOWInt64TimeRangedStatePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.IsType( TOWTypedSuppliedValueRangeOperation<Int64> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<Int64>( Operation.GetInstance() ).Value ) then
      begin
      FMin := TOWTypedSuppliedValueRangeOperation<Int64>( Operation.GetInstance() ).Min;
      FMax := TOWTypedSuppliedValueRangeOperation<Int64>( Operation.GetInstance() ).Max;
      FValue := TOWTypedSuppliedValueRangeOperation<Int64>( Operation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, FMinTime, FMaxTime, True, nsNewLink in State );

      end;
    end
    
  else if( Operation.IsType( TOWTypedSuppliedRangeOperation<Int64> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<Int64>( Operation.GetInstance() ).Value ) then
      begin
      FMin := TOWTypedSuppliedRangeOperation<Int64>( Operation.GetInstance() ).Min;
      FMax := TOWTypedSuppliedRangeOperation<Int64>( Operation.GetInstance() ).Max;
      if( Assigned( FOnRangeChange )) then
        FOnRangeChange( Self, FMin, FMax, FMinTime, FMaxTime, nsNewLink in State );

      end;
    end

  else if( Operation.IsType( TOWTypedSuppliedOperation<Int64> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<Int64>( Operation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<Int64>( Operation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, FMinTime, FMaxTime, False, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.IsType( TOWClearContentOperation )) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, FMinTime, FMaxTime, False, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedStatePin.SublitMinMaxChanges();
begin
  if( FValue > FMax ) then
    FValue := FMax

  else if( FValue < FMin ) then
    FValue := FMin

  else
    begin
    SubmitValueRange( FValue, FMin, FMax, FMinTime, FMaxTime );
    Exit;
    end;

  SubmitRange( FMin, FMax, FMinTime, FMaxTime );
end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedStatePin.SubmitValueRange( AValue : Int64; AMin : Int64; AMax : Int64; AMinTime : TDateTime; AMaxTime : TDateTime );
var
  AMiliSecondsPeriod  : Int64;
  ATimeValue          : TDateTime;
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FMin := AMin;
  FMax := AMax;
  FMinTime := AMinTime;
  FMaxTime := AMaxTime;
  FValue := AValue;
  Notify( TOWTypedSuppliedValueRangeOperation<Int64>.Create( FValue, FMin, FMax ));
  if( FMax = FMin ) then
    AMiliSecondsPeriod := 0

  else
    AMiliSecondsPeriod := Round( MSecsPerDay * ( FMaxTime - FMinTime ) * ( FValue - FMin ) / ( FMax - FMin ) );

  ATimeValue := IncMilliSecond( FMinTime, AMiliSecondsPeriod );
  Notify( TOWTypedSuppliedValueRangeOperation<TDateTime>.Create( ATimeValue, FMinTime, FMaxTime ));
end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedStatePin.SubmitValue( AValue : Int64 );
var
  AMiliSecondsPeriod  : Int64;
  ATimeValue  : TDateTime;
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FValue := AValue;
  Notify( TOWTypedSuppliedOperation<Int64>.Create( FValue ));
  if( FMax = FMin ) then
    AMiliSecondsPeriod := 0

  else
    AMiliSecondsPeriod := Round( MSecsPerDay * ( FMaxTime - FMinTime ) * ( FValue - FMin ) / ( FMax - FMin ) );

  ATimeValue := IncMilliSecond( FMinTime, AMiliSecondsPeriod );
  Notify( TOWTypedSuppliedOperation<TDateTime>.Create( ATimeValue ));
end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedStatePin.SubmitRange( AMin : Int64; AMax : Int64; AMinTime : TDateTime; AMaxTime : TDateTime );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FMin := AMin;
  FMax := AMax;
  FMinTime := AMinTime;
  FMaxTime := AMaxTime;
  Notify( TOWTypedSuppliedRangeOperation<Int64>.Create( AMin, AMax ));
  Notify( TOWTypedSuppliedRangeOperation<TDateTime>.Create( FMinTime, FMaxTime ));
end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedStatePin.SetValue( AValue : Int64 );
var
  AWriteLock  : ILockSection;

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
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if( FMinTime <> AValue ) then
    begin
    FMinTime := AValue;
    if( FMinTime > FMaxTime ) then
      FMaxTime := FMinTime;

    SublitMinMaxChanges();
    end;

end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedStatePin.SetMaxTime( AValue : TDateTime );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if( FMaxTime <> AValue ) then
    begin
    FMaxTime := AValue;
    if( FMinTime > FMaxTime ) then
      FMinTime := FMaxTime;

    SublitMinMaxChanges();
    end;

end;
//---------------------------------------------------------------------------
function TOWInt64TimeRangedStatePin.TimeNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf              : IOWDateTimeStream;
  AMiliSecondsPeriod  : Int64;
  ATimeValue          : TDateTime;

begin
  Result := [];
  if( TInterface.IfSupports<IOWDateTimeStream>( Handler, Interf )) then
    begin
    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        if( FMax = FMin ) then
          AMiliSecondsPeriod := 0

        else
          AMiliSecondsPeriod := Round( MSecsPerDay * ( FMaxTime - FMinTime ) * ( FValue - FMin ) / ( FMax - FMin ) );

        ATimeValue := IncMilliSecond( FMinTime, AMiliSecondsPeriod );
        Interf.DispatchData( DataTypeID, TOWTypedSuppliedOperation<TDateTime>.Create( ATimeValue ), State );
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
  if( TInterface.IfSupports<IOWDateTimeRangedStream>( Handler, Interf )) then
    begin
    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        if( FMax = FMin ) then
          AMiliSecondsPeriod := 0

        else
          AMiliSecondsPeriod := Round( MSecsPerDay * ( FMaxTime - FMinTime ) * ( FValue - FMin ) / ( FMax - FMin ) );

        ATimeValue := IncMilliSecond( FMinTime, AMiliSecondsPeriod );
        Interf.DispatchData( DataTypeID, TOWTypedSuppliedValueRangeOperation<TDateTime>.Create( ATimeValue, FMinTime, FMaxTime ), State );
        Exit;
        end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;
    
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWBoolClockSinkPin.CreateLockClock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<Boolean>; AOnClock : TProc; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDataChange, AOnPinDispatchEvent );
  FOnClock := AOnClock;
end;
//---------------------------------------------------------------------------
function TOWBoolClockSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
begin
  Result := [];
  if( ( not ( IsEqualGUID( PGUID( DataTypeID )^, IOWBoolStream ))) and ( Operation.IsType( TOWClockOperation ))) then
    begin
    if( Assigned( FOnClock )) then
      begin
      FOnClock();
      Exit( [] );
      end;

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
constructor TOWStringListSourcePin.CreateEx( AOwner: TComponent; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
constructor TOWStringListSourcePin.CreateLockEx( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
constructor TOWStringListSourcePin.CreateConnect( AOwner: TComponent; AOnConnect : TOWPinEvent );
begin
  inherited Create( AOwner, NIL );
  FOnConnect := AOnConnect;
end;
//---------------------------------------------------------------------------
function TOWStringListSourcePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf      : IOWStringListStream;
  Handled     : Boolean;
  AWriteLock  : ILockSection;

begin
  Result := [];
  if( TInterface.IfSupports<IOWStringListStream>( Handler,Interf )) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      AWriteLock := FOwnerLock.WriteLock();
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
procedure TOWStringListSourcePin.NewConnection( const ASinkPin : TOWBasicPin );
begin
  inherited;
  if( Assigned( FOnConnect )) then
    FOnConnect( ASinkPin );

end;
//---------------------------------------------------------------------------
procedure TOWStringListSourcePin.Send( AValue : TStrings );
begin
  Notify( TOWSuppliedStringListOperation.Create( AValue ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStringListSinkPin.Create( AOwner: TComponent; AOnDataChange : TOWDataChangeEvent<TStrings>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWStringListSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<TStrings>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWStringListSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
var
  AStrings : TStrings;

begin
  Result := [];

  if( Operation.IsType( TOWSuppliedStringListOperation )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<String>( Operation.GetInstance() ).Value ) then
      begin
//      FValue := TOWTypedSuppliedOperation<String>( Operation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, TOWSuppliedStringListOperation( Operation.GetInstance() ).Value, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.IsType( TOWClearContentOperation )) then
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
constructor TOWStringListMultiSinkPin.Create( AOwner: TComponent; AOnDataChange : TOWDataChangeEvent<TStrings>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWStringListMultiSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<TStrings>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWStringListMultiSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.IsType( TOWSuppliedStringListOperation )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<String>( Operation.GetInstance() ).Value ) then
      begin
//      FValue := TOWSuppliedStringListOperation( Operation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, TOWSuppliedStringListOperation( Operation.GetInstance() ).Value, nsNewLink in State );

      end;
    end

  else
    TryCustomDispatch( DataTypeID, Operation, State, Result );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStringListStatePin.Create( AOwner: TComponent; AOnDataChange : TOWDataChangeEvent<TStrings>; AOnGetDataEvent : TOWStringListGetDataEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;
  FOnGetDataEvent := AOnGetDataEvent;
end;
//---------------------------------------------------------------------------
constructor TOWStringListStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<TStrings>; AOnGetDataEvent : TOWStringListGetDataEvent = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;
  FOnGetDataEvent := AOnGetDataEvent;
end;
//---------------------------------------------------------------------------
function TOWStringListStatePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
var
  AStrings : TStrings;

begin
  Result := [];

  if( Operation.IsType( TOWSuppliedStringListOperation )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<String>( Operation.GetInstance() ).Value ) then
      begin
//      FValue := TOWSuppliedStringListOperation( Operation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, TOWSuppliedStringListOperation( Operation.GetInstance() ).Value, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.IsType( TOWClearContentOperation )) then
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
  Interf      : IOWStringListStream;
  Handled     : Boolean;
  AStrings    : TStrings;
  AWriteLock  : ILockSection;

begin
//  if( Operation.IsType( TOWSuppliedStringListOperation )) then
//    FValue := TOWSuppliedStringListOperation( Operation.GetInstance() ).Value;

  if( TInterface.IfSupports<IOWStringListStream>( Handler, Interf )) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      AWriteLock := FOwnerLock.WriteLock();
      Result := FPinNotificationEvent( Interf, DataTypeID, Operation, State, Handled );
      if( Handled ) then
        Exit;

      end;

    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
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
constructor TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>.Create( AOwner: TComponent; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited;
  AddType( GetTypeData(System.TypeInfo(T_Interface))^.Guid, IntNotification, True );
  AddType( GetTypeData(System.TypeInfo(T_Interface_Ranged))^.Guid, IntRangedNotification, True );

  FComparer := TComparer<T_Data>.Default;
end;
//---------------------------------------------------------------------------
constructor TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited;
  AddType( GetTypeData(System.TypeInfo(T_Interface))^.Guid, IntNotification, True );
  AddType( GetTypeData(System.TypeInfo(T_Interface_Ranged))^.Guid, IntRangedNotification, True );

  FComparer := TComparer<T_Data>.Default;
end;
//---------------------------------------------------------------------------
procedure TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>.SubmitValueRange( AValue : T_Data; AMin : T_Data; AMax : T_Data );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FMin := AMin;
  FMax := AMax;
  FValue := AValue;
  Notify( TOWTypedSuppliedValueRangeOperation<T_Data>.Create( AValue, AMin, AMax ));
end;
//---------------------------------------------------------------------------
procedure TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>.SubmitRange( AMin : T_Data; AMax : T_Data );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FMin := AMin;
  FMax := AMax;
  Notify( TOWTypedSuppliedRangeOperation<T_Data>.Create( AMin, AMax ));
end;
//---------------------------------------------------------------------------
procedure TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>.SubmitValue( AValue : T_Data );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FValue := AValue;
  Notify( TOWTypedSuppliedOperation<T_Data>.Create( AValue ));
end;
//---------------------------------------------------------------------------
procedure TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>.SublitMinMaxChanges();
begin
  if( FComparer.Compare( FValue, FMax ) > 0 ) then
    FValue := FMax

  else if( FComparer.Compare( FValue, FMin ) < 0 ) then
    FValue := FMin

  else
    begin
    Notify( TOWTypedSuppliedValueRangeOperation<T_Data>.Create( FValue, FMin, FMax ));
    Exit;
    end;

  Notify( TOWTypedSuppliedRangeOperation<T_Data>.Create( FMin, FMax ));
end;
//---------------------------------------------------------------------------
procedure TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>.SetMin( AValue : T_Data );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if( FComparer.Compare( FMin, AValue ) <> 0 ) then
    begin
    FMin := AValue;
    if( FComparer.Compare( FMin, FMax ) > 0 ) then
      FMax := FMin;

    SublitMinMaxChanges();
    end;

end;
//---------------------------------------------------------------------------
procedure TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>.SetMax( AValue : T_Data );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if( FComparer.Compare( FMax, AValue ) <> 0 ) then
    begin
    FMax := AValue;
    if( FComparer.Compare( FMin, FMax ) > 0 ) then
      FMin := FMax;

    SublitMinMaxChanges();
    end;

end;
//---------------------------------------------------------------------------
procedure TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>.SetValue( AValue : T_Data );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if( FComparer.Compare( FValue, AValue ) <> 0 ) then
    begin
    FValue := AValue;
    Notify( TOWTypedSuppliedValueRangeOperation<T_Data>.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
function TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>.IntNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWBasicStream;

begin
  Result := [];
  if( Supports( Handler, GetTypeData(System.TypeInfo(T_Interface))^.Guid, Interf )) then
    begin
    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        Interf.DispatchData( DataTypeID, TOWTypedSuppliedOperation<T_Data>.Create( FValue ), State );
        Exit;
        end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
function TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>.IntRangedNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWBasicStream;

begin
  Result := [];
  if( Supports( Handler, GetTypeData(System.TypeInfo(T_Interface_Ranged))^.Guid, Interf )) then
    begin
    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        Interf.DispatchData( DataTypeID, TOWTypedSuppliedValueRangeOperation<T_Data>.Create( FValue, FMin, FMax ), State );
        Exit;
        end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

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
constructor TOWFloatIntSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited;
  AddType( IOWFloatStream, FloatNotification, True );
  AddType( IOWIntegerStream, IntegerNotification, True );
end;
//---------------------------------------------------------------------------
procedure TOWFloatIntSourcePin.SetValue( AValue : Single );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWFloatIntSourcePin.Send( AValue : Single );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FValue := AValue;
  Notify( TOWTypedSuppliedOperation<Single>.Create( FValue ));
end;
//---------------------------------------------------------------------------
function TOWFloatIntSourcePin.FloatNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWFloatStream;

begin
  Result := [];
  if( TInterface.IfSupports<IOWFloatStream>( Handler, Interf )) then
    begin
    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        Interf.DispatchData( DataTypeID, TOWTypedSuppliedOperation<Single>.Create( Value ), State );
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
  if( TInterface.IfSupports<IOWIntegerStream>( Handler, Interf )) then
    begin
    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        Interf.DispatchData( DataTypeID, TOWTypedSuppliedOperation<Integer>.Create( Round( Value )), State );
        Exit;
        end;

    if( Operation.IsType( TOWSuppliedOperation )) then
      Result := Interf.DispatchData( DataTypeID, TOWTypedSuppliedOperation<Integer>.Create( Round( FValue ) ), State )

    else
      Result := Interf.DispatchData( DataTypeID, Operation, State )

    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWFloatIntStatePin.Create( AOwner: TComponent; AOnDataChange : TOWDataChangeEvent<Single>; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWFloatIntStatePin.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<Single>; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWFloatIntStatePin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.IsType( TOWTypedSuppliedOperation<Integer> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<Integer>( Operation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<Integer>( Operation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( Operation.IsType( TOWTypedSuppliedOperation<Single> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<Single>( Operation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<Single>( Operation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.IsType( TOWClearContentOperation )) then
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
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if( FValue <> AValue ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWFloatIntStatePin.Send( AValue : Single );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FValue := AValue;
  Notify( TOWSuppliedMulticastOperation.Create( 1 ) );
//  Notify( TOWTypedSuppliedOperation<Integer>.Create( FValue ));
end;
//---------------------------------------------------------------------------
function TOWFloatIntStatePin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  FloatInterf : IOWFloatStream;
  IntInterf   : IOWIntegerStream;

begin
  Result := [];
  if( TInterface.IfSupports<IOWFloatStream>( Handler, FloatInterf )) then
    begin
    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        FloatInterf.DispatchData( DataTypeID, TOWTypedSuppliedOperation<Single>.Create( Value ), State );
        Exit;
        end;

    if( Operation.IsType( TOWSuppliedMulticastOperation )) then
      Result := FloatInterf.DispatchData( DataTypeID, TOWTypedSuppliedOperation<Single>.Create( FValue ), State )

    else
      Result := FloatInterf.DispatchData( DataTypeID, Operation, State );

    end

  else if( TInterface.IfSupports<IOWIntegerStream>( Handler, IntInterf )) then
    begin
    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        IntInterf.DispatchData( DataTypeID, TOWTypedSuppliedOperation<Integer>.Create( Round( Value )), State );
        Exit;
        end;

    if( Operation.IsType( TOWSuppliedMulticastOperation )) then
      Result := IntInterf.DispatchData( DataTypeID, TOWTypedSuppliedOperation<Integer>.Create( Round( FValue ) ), State )

    else
      Result := IntInterf.DispatchData( DataTypeID, Operation, State )

    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWBasicFormatConverter.DoDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
begin
  if( not ( Operation.IsType( TOWSuppliedOperation ))) then
    FOutputPin.Notify( Operation )

  else
    Handled := False;

end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWIntegerStream, IOWRealStream )]
  TOWIntToRealFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : Integer; AOnConnect : Boolean );

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
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWIntegerStream, IOWFloatStream )]
  TOWIntToFloatFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : Integer; AOnConnect : Boolean );

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
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWIntegerStream, IOWStringStream )]
  TOWIntToStringFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : Integer; AOnConnect : Boolean );

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
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWCardinalStream, IOWRealStream )]
  TOWCardinalToRealFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : Cardinal; AOnConnect : Boolean );

  public
    constructor Create(); override;

  end;
//---------------------------------------------------------------------------
constructor TOWCardinalToRealFormatConverter.Create();
begin
  inherited CreateEx( TOWCardinalSinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWRealSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWCardinalToRealFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : Cardinal; AOnConnect : Boolean );
begin
  TOWRealSourcePin( FOutputPin ).Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWCardinalStream, IOWFloatStream )]
  TOWCardinalToFloatFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : Cardinal; AOnConnect : Boolean );

  public
    constructor Create(); override;

  end;
//---------------------------------------------------------------------------
constructor TOWCardinalToFloatFormatConverter.Create();
begin
  inherited CreateEx( TOWCardinalSinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWFloatSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWCardinalToFloatFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : Cardinal; AOnConnect : Boolean );
begin
  TOWFloatSourcePin( FOutputPin ).Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWCardinalStream, IOWStringStream )]
  TOWCardinalToStringFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : Cardinal; AOnConnect : Boolean );

  public
    constructor Create(); override;

  end;
//---------------------------------------------------------------------------
constructor TOWCardinalToStringFormatConverter.Create();
begin
  inherited CreateEx( TOWCardinalSinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWStringSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWCardinalToStringFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : Cardinal; AOnConnect : Boolean );
begin
  TOWStringSourcePin( FOutputPin ).Send( IntToStr( AValue ));
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWFloatStream, IOWRealStream )]
  TOWFloatToRealFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : Single; AOnConnect : Boolean );

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
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWByteStream, IOWIntegerStream )]
  TOWByteToIntegerFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : Byte; AOnConnect : Boolean );

  public
    constructor Create(); override;

  end;
//---------------------------------------------------------------------------
constructor TOWByteToIntegerFormatConverter.Create();
begin
  inherited CreateEx( TOWByteSinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWIntegerSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWByteToIntegerFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : Byte; AOnConnect : Boolean );
begin
  TOWIntegerSourcePin( FOutputPin ).Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWFloatStream, IOWStringStream )]
  TOWFloatToStringFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : Single; AOnConnect : Boolean );

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
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWRealStream, IOWStringStream )]
  TOWRealToStringFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : Real; AOnConnect : Boolean );

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
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWInt64Stream, IOWRealStream )]
  TOWInt64ToRealFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : Int64; AOnConnect : Boolean );

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
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWInt64Stream, IOWFloatStream )]
  TOWInt64ToFloatFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : Int64; AOnConnect : Boolean );

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
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWInt64Stream, IOWStringStream )]
  TOWInt64ToStringFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : Int64; AOnConnect : Boolean );

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
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWUInt64Stream, IOWRealStream )]
  TOWUInt64ToRealFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : UInt64; AOnConnect : Boolean );

  public
    constructor Create(); override;

  end;
//---------------------------------------------------------------------------
constructor TOWUInt64ToRealFormatConverter.Create();
begin
  inherited CreateEx( TOWUInt64SinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWRealSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWUInt64ToRealFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : UInt64; AOnConnect : Boolean );
begin
  TOWRealSourcePin( FOutputPin ).Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWUInt64Stream, IOWFloatStream )]
  TOWUInt64ToFloatFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : UInt64; AOnConnect : Boolean );

  public
    constructor Create(); override;

  end;
//---------------------------------------------------------------------------
constructor TOWUInt64ToFloatFormatConverter.Create();
begin
  inherited CreateEx( TOWUInt64SinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWFloatSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWUInt64ToFloatFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : UInt64; AOnConnect : Boolean );
begin
  TOWFloatSourcePin( FOutputPin ).Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWUInt64Stream, IOWStringStream )]
  TOWUInt64ToStringFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : UInt64; AOnConnect : Boolean );

  public
    constructor Create(); override;

  end;
//---------------------------------------------------------------------------
constructor TOWUInt64ToStringFormatConverter.Create();
begin
  inherited CreateEx( TOWUInt64SinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWStringSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWUInt64ToStringFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : UInt64; AOnConnect : Boolean );
begin
  TOWStringSourcePin( FOutputPin ).Send( IntToStr( AValue ));
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWBoolStream, IOWStringStream )]
  TOWBoolToStringFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : Boolean; AOnConnect : Boolean );

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
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWRealComplexStream, IOWStringStream )]
  TOWRealComplexToStringFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : TOWRealComplex; AOnConnect : Boolean );

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
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWDateTimeStream, IOWStringStream )]
  TOWTimeToStringFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure DoTimeChange( Sender : TOWPin; AValue : TDateTime; AOnConnect : Boolean );

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
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
type
  [OWConvertDataType( IOWIntRangedStream, IOWStringStream )]
  TOWIntRangedToStringFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue, AMin, AMax : Integer; ARangesFilled : Boolean; AOnConnect : Boolean );

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
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWInt64RangedStream, IOWStringStream )]
  TOWInt64RangedToStringFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue, AMin, AMax : Int64; ARangesFilled : Boolean; AOnConnect : Boolean );

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
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWRealRangedStream,   IOWStringStream )]
  TOWRealRangedToStringFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue, AMin, AMax : Real; ARangesFilled : Boolean; AOnConnect : Boolean );

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
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWIntRangedStream, IOWRealRangedStream )]
  TOWIntToRealRangedFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue, AMin, AMax : Integer; ARangesFilled : Boolean; AOnConnect : Boolean );

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
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWInt64RangedStream, IOWRealRangedStream )]
  TOWInt64ToRealRangedFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue, AMin, AMax : Int64; ARangesFilled : Boolean; AOnConnect : Boolean );

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
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWIntegerListStream, IOWStringListStream )]
  TOWIntToStringListFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : IArrayList<Integer>; AOnConnect : Boolean );

  public
    constructor Create(); override;

  end;
//---------------------------------------------------------------------------
constructor TOWIntToStringListFormatConverter.Create();
begin
  inherited CreateEx( TOWIntegerListSinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWStringListSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWIntToStringListFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : IArrayList<Integer>; AOnConnect : Boolean );
var
  AList  : TStrings;
  AItem  : Integer;

begin
  AList := TStringList.Create();
  try
    for AItem in AValue do
      AList.Add( IntToStr( AItem ));

    TOWStringListSourcePin( FOutputPin ).Send( AList );
  finally
    AList.Free();
    end;

end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWInt64ListStream, IOWStringListStream )]
  TOWInt64ToStringListFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : IArrayList<Int64>; AOnConnect : Boolean );

  public
    constructor Create(); override;

  end;
//---------------------------------------------------------------------------
constructor TOWInt64ToStringListFormatConverter.Create();
begin
  inherited CreateEx( TOWInt64ListSinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWStringListSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWInt64ToStringListFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : IArrayList<Int64>; AOnConnect : Boolean );
var
  AList  : TStrings;
  AItem  : Int64;

begin
  AList := TStringList.Create();
  try
    for AItem in AValue do
      AList.Add( IntToStr( AItem ));

    TOWStringListSourcePin( FOutputPin ).Send( AList );
  finally
    AList.Free();
    end;

end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWRealListStream, IOWStringListStream )]
  TOWRealToStringListFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : IArrayList<Real>; AOnConnect : Boolean );

  public
    constructor Create(); override;

  end;
//---------------------------------------------------------------------------
constructor TOWRealToStringListFormatConverter.Create();
begin
  inherited CreateEx( TOWRealListSinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWStringListSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWRealToStringListFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : IArrayList<Real>; AOnConnect : Boolean );
var
  AList  : TStrings;
  AItem  : Real;

begin
  AList := TStringList.Create();
  try
    for AItem in AValue do
      AList.Add( FloatToStr( AItem ));

    TOWStringListSourcePin( FOutputPin ).Send( AList );
  finally
    AList.Free();
    end;

end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWFloatListStream, IOWStringListStream )]
  TOWFloatToStringListFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : IArrayList<Single>; AOnConnect : Boolean );

  public
    constructor Create(); override;

  end;
//---------------------------------------------------------------------------
constructor TOWFloatToStringListFormatConverter.Create();
begin
  inherited CreateEx( TOWFloatListSinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWStringListSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWFloatToStringListFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : IArrayList<Single>; AOnConnect : Boolean );
var
  AList  : TStrings;
  AItem  : Single;

begin
  AList := TStringList.Create();
  try
    for AItem in AValue do
      AList.Add( FloatToStr( AItem ));

    TOWStringListSourcePin( FOutputPin ).Send( AList );
  finally
    AList.Free();
    end;

end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWIntegerListStream, IOWRealListStream )]
  TOWIntToRealListFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : IArrayList<Integer>; AOnConnect : Boolean );

  public
    constructor Create(); override;

  end;
//---------------------------------------------------------------------------
constructor TOWIntToRealListFormatConverter.Create();
begin
  inherited CreateEx( TOWIntegerListSinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWRealListSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWIntToRealListFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : IArrayList<Integer>; AOnConnect : Boolean );
var
  AList  : IArrayList<Real>;
  AItem  : Integer;

begin
  AList := TArrayList<Real>.Create();
  for AItem in AValue do
    AList.Add( AItem );

  TOWRealListSourcePin( FOutputPin ).Send( AList );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWFloatListStream, IOWRealListStream )]
  TOWFloatToRealListFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : IArrayList<Single>; AOnConnect : Boolean );

  public
    constructor Create(); override;

  end;
//---------------------------------------------------------------------------
constructor TOWFloatToRealListFormatConverter.Create();
begin
  inherited CreateEx( TOWFloatListSinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWRealListSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWFloatToRealListFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : IArrayList<Single>; AOnConnect : Boolean );
var
  AList  : IArrayList<Real>;
  AItem  : Single;

begin
  AList := TArrayList<Real>.Create();
  for AItem in AValue do
    AList.Add( AItem );

  TOWRealListSourcePin( FOutputPin ).Send( AList );
end;
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWColorStream, IOWAlphaColorStream )]
  TOWColorToAlphaColorFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( Sender : TOWPin; AValue : TColor; AOnConnect : Boolean );

  public
    constructor Create(); override;

  end;
//------------------------------------------------------------------------------
constructor TOWColorToAlphaColorFormatConverter.Create();
begin
  inherited CreateEx( TOWColorSinkPin.CreateLock( Self, FLock, SinkOperationEvent, DoDispatch ), TOWAlphaColorSourcePin.CreateLock( Self, FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWColorToAlphaColorFormatConverter.SinkOperationEvent( Sender : TOWPin; AValue : TColor; AOnConnect : Boolean );
  function ColorToRGB(Color: TColor): Longint;
  begin
  {$IFDEF MSWINDOWS}
    if( Color < 0 ) then
      Result := GetSysColor(Color and $000000FF)

    else
  {$ENDIF}
      Result := Color;

  end;

begin
  TOWRealSourcePin( FOutputPin ).Send( $FF000000 or TAlphaColor( ColorToRGB( AValue )));
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
  if( TInterface.IfSupports<IOWDataStream>( Handler, Interf )) then
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
constructor TOWStdComboSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited;
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
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if( ( not FNotifyOnChangeOnly ) or ( FValue <> AValue )) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWStdComboSourcePin.Send( AValue : Real );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FValue := AValue;
  Notify( TOWTypedSuppliedOperation<Real>.Create( FValue ));
end;
//---------------------------------------------------------------------------
function TOWStdComboSourcePin.RealNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWRealStream;

begin
  Result := [];
  if( TInterface.IfSupports<IOWRealStream>( Handler, Interf )) then
    begin
    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        Interf.DispatchData( DataTypeID, TOWTypedSuppliedOperation<Real>.Create( Value ), State );
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
  if( TInterface.IfSupports<IOWFloatStream>( Handler, Interf )) then
    begin
    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        Interf.DispatchData( DataTypeID, TOWTypedSuppliedOperation<Single>.Create( Value ), State );
        Exit;
        end;

    if( Operation.IsType( TOWSuppliedOperation )) then
      Interf.DispatchData( DataTypeID, TOWTypedSuppliedOperation<Single>.Create( Value ), State )

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
  if( TInterface.IfSupports<IOWIntegerStream>( Handler, Interf )) then
    begin
    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        Interf.DispatchData( DataTypeID, TOWTypedSuppliedOperation<Integer>.Create( Round( Value )), State );
        Exit;
        end;

    if( Operation.IsType( TOWSuppliedOperation )) then
      Interf.DispatchData( DataTypeID, TOWTypedSuppliedOperation<Integer>.Create( Round( Value )), State )

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
  if( TInterface.IfSupports<IOWStringStream>( Handler, Interf )) then
    begin
    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        Interf.DispatchData( DataTypeID, TOWTypedSuppliedOperation<String>.Create( FloatToStr( Value )), State );
        Exit;
        end;

    if( Operation.IsType( TOWSuppliedOperation )) then
      Interf.DispatchData( DataTypeID, TOWTypedSuppliedOperation<String>.Create( FloatToStr( Value )), State )

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
  if( TInterface.IfSupports<IOWBoolStream>( Handler, Interf )) then
    begin
    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        Interf.DispatchData( DataTypeID, TOWTypedSuppliedOperation<Boolean>.Create( Value <> 0 ), State );
        Exit;
        end;

    if( Operation.IsType( TOWSuppliedOperation )) then
      Interf.DispatchData( DataTypeID, TOWTypedSuppliedOperation<Boolean>.Create( Value <> 0 ), State )

    else
      Interf.DispatchData( DataTypeID, Operation, State );

    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWTypedRangedSinkPin<T_Data>.Create( AOwner: TComponent; AOnDataChange  : TOWTypedValueRangeChangeEvent<T_Data>; AOnRangeChange : TOWTypedRangeChangeEvent<T_Data> = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWTypedRangedSinkPin<T_Data>.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange  : TOWTypedValueRangeChangeEvent<T_Data>; AOnRangeChange : TOWTypedRangeChangeEvent<T_Data> = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWTypedRangedSinkPin<T_Data>.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.IsType( TOWTypedSuppliedValueRangeOperation<T_Data> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<T_Data>( Operation.GetInstance() ).Value ) then
      begin
      FRangePopulated := True;
      FMin := TOWTypedSuppliedValueRangeOperation<T_Data>( Operation.GetInstance() ).Min;
      FMax := TOWTypedSuppliedValueRangeOperation<T_Data>( Operation.GetInstance() ).Max;
      FValue := TOWTypedSuppliedValueRangeOperation<T_Data>( Operation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, True, nsNewLink in State );

      end;
    end

  else if( Operation.IsType( TOWTypedSuppliedRangeOperation<T_Data> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<T_Data>( Operation.GetInstance() ).Value ) then
      begin
      FRangePopulated := True;
      FMin := TOWTypedSuppliedRangeOperation<T_Data>( Operation.GetInstance() ).Min;
      FMax := TOWTypedSuppliedRangeOperation<T_Data>( Operation.GetInstance() ).Max;
      if( Assigned( FOnRangeChange )) then
        FOnRangeChange( Self, FMin, FMax, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.IsType( TOWClearContentOperation )) then
      begin
      FValue := Default( T_Data );
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWTypedAndRangedSinkPin<T_Data>.GetRangePopulated() : Boolean;
begin
  Result := ( IsConnected() and FRangePopulated );
end;
//---------------------------------------------------------------------------
function TOWTypedAndRangedSinkPin<T_Data>.TryCustomDispatch( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState; var AResult : TOWNotifyResult ) : Boolean;
begin
  Result := False;
  if( Operation.IsType( TOWTypedSuppliedOperation<T_Data> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<T_Data>( Operation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<T_Data>( Operation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in State );

      end;

    Result := True;
    end

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.Create( AOwner: TComponent; AValue : T_Data; AMin : T_Data; AMax : T_Data; AOnDataChange : TOWTypedValueRangeChangeEvent<T_Data>; AOnRangeChange : TOWTypedRangeChangeEvent<T_Data> = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect, AOnPinDispatchEvent );
  FMin := AMin;
  FMax := AMax;
  FValue := AValue;

  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;

  AddType( GetTypeData(System.TypeInfo(T_Interface))^.Guid, IntNotification, True );
  AddType( GetTypeData(System.TypeInfo(T_Interface_Ranged))^.Guid, IntRangedNotification, True );

  FComparer := TComparer<T_Data>.Default;
end;
//---------------------------------------------------------------------------
constructor TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AValue : T_Data; AMin : T_Data; AMax : T_Data; AOnDataChange : TOWTypedValueRangeChangeEvent<T_Data>; AOnRangeChange : TOWTypedRangeChangeEvent<T_Data> = NIL; AOnDisconnect : TOWPinEvent = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent );
  FMin := AMin;
  FMax := AMax;
  FValue := AValue;

  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;

  AddType( GetTypeData(System.TypeInfo(T_Interface))^.Guid, IntNotification, True );
  AddType( GetTypeData(System.TypeInfo(T_Interface_Ranged))^.Guid, IntRangedNotification, True );

  FComparer := TComparer<T_Data>.Default;
end;
//---------------------------------------------------------------------------
function TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.IsType( TOWTypedSuppliedValueRangeOperation<T_Data> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<T_Data>( Operation.GetInstance() ).Value ) then
      begin
      FMin := TOWTypedSuppliedValueRangeOperation<T_Data>( Operation.GetInstance() ).Min;
      FMax := TOWTypedSuppliedValueRangeOperation<T_Data>( Operation.GetInstance() ).Max;
      FValue := TOWTypedSuppliedValueRangeOperation<T_Data>( Operation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, True, nsNewLink in State );

      end;
    end

  else if( Operation.IsType( TOWTypedSuppliedRangeOperation<T_Data> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<T_Data>( Operation.GetInstance() ).Value ) then
      begin
      FMin := TOWTypedSuppliedRangeOperation<T_Data>( Operation.GetInstance() ).Min;
      FMax := TOWTypedSuppliedRangeOperation<T_Data>( Operation.GetInstance() ).Max;
      if( Assigned( FOnRangeChange )) then
        FOnRangeChange( Self, FMin, FMax, nsNewLink in State );

      end;
    end

  else if( Operation.IsType( TOWTypedSuppliedOperation<T_Data> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<T_Data>( Operation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<T_Data>( Operation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in State );

      end;
    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.IsType( TOWClearContentOperation )) then
      begin
      FValue := Default( T_Data );
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in State );

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.IntNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWBasicStream;

begin
  Result := [];

  if( Supports( Handler, GetTypeData(System.TypeInfo(T_Interface))^.Guid, Interf )) then
    begin
    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        Interf.DispatchData( DataTypeID, TOWTypedSuppliedOperation<T_Data>.Create( FValue ), State );
        Exit;
        end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
function TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.IntRangedNotification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWBasicStream;

begin
  Result := [];

  if( Supports( Handler, GetTypeData(System.TypeInfo(T_Interface_Ranged))^.Guid, Interf )) then
    begin
    if( not TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      if( nsNewLink in State ) then
        begin
        Interf.DispatchData( DataTypeID, TOWTypedSuppliedValueRangeOperation<T_Data>.Create( FValue, FMin, FMax ), State );
        Exit;
        end;

    Interf.DispatchData( DataTypeID, Operation, State );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.SublitMinMaxChanges();
begin
  if( FComparer.Compare( FValue, FMax ) > 0 ) then
    FValue := FMax

  else if( FComparer.Compare( FValue, FMin ) < 0 ) then
    FValue := FMin

  else
    begin
    Notify( TOWTypedSuppliedValueRangeOperation<T_Data>.Create( FValue, FMin, FMax ));
    Exit;
    end;

  Notify( TOWTypedSuppliedRangeOperation<T_Data>.Create( FMin, FMax ));
end;
//---------------------------------------------------------------------------
procedure TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.SetMin( AValue : T_Data );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if( FComparer.Compare( FMin, AValue ) <> 0 ) then
    begin
    FMin := AValue;
    if( FComparer.Compare( FMin, FMax ) > 0 ) then
      FMax := FMin;

    SublitMinMaxChanges();
    end;

end;
//---------------------------------------------------------------------------
procedure TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.SetMax( AValue : T_Data );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if( FComparer.Compare( FMax, AValue ) <> 0 ) then
    begin
    FMax := AValue;
    if( FComparer.Compare( FMin, FMax ) > 0 ) then
      FMin := FMax;

    SublitMinMaxChanges();
    end;

end;
//---------------------------------------------------------------------------
procedure TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.SetValue( AValue : T_Data );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if( FComparer.Compare( FValue, AValue ) <> 0 ) then
    begin
    FValue := AValue;
    Notify( TOWTypedSuppliedValueRangeOperation<T_Data>.Create( FValue, FMin, FMax ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.SubmitValueRange( AValue : T_Data; AMin : T_Data; AMax : T_Data );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FMin := AMin;
  FMax := AMax;
  FValue := AValue;
  Notify( TOWTypedSuppliedValueRangeOperation<T_Data>.Create( AValue, AMin, AMax ));
end;
//---------------------------------------------------------------------------
procedure TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.SubmitValue( AValue : T_Data );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FValue := AValue;
  Notify( TOWTypedSuppliedOperation<T_Data>.Create( AValue ));
end;
//---------------------------------------------------------------------------
procedure TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.SubmitRange( AMin : T_Data; AMax : T_Data );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FMin := AMin;
  FMax := AMax;
  Notify( TOWTypedSuppliedRangeOperation<T_Data>.Create( AMin, AMax ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWClockMultiSinkPin.Create( AOwner: TComponent; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited Create( AOwner, AOnPinNotificationEvent );
  FOnClock := AOnClock;
  AddType( IOWClockStream, ClockNotification, True );
end;
//---------------------------------------------------------------------------
constructor TOWClockMultiSinkPin.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnClock : TOWClockEvent; AOnPinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
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

  if( TInterface.IfSupports<IOWClockStream>( Handler, Interf )) then
    Interf.DispatchData( DataTypeID, Operation, State );

end;
//---------------------------------------------------------------------------
function TOWClockMultiSinkPin.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
var
  AWriteLock : ILockSection;

begin
  Result := [];

  if( Assigned( FPinNotificationEvent )) then
    begin
    AWriteLock := FOwnerLock.WriteLock();
    Result := FPinNotificationEvent( Self, DataTypeID, Operation, State );
    end;

  if( Assigned( FOnClock )) then
//    if( not ( nsNewLink in State )) then
    begin
    if( Operation.IsType( TOWClockOperation )) then
      FOnClock( Self );

    end;
    
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStreamPersistSourcePin.CreateEx( AOwner: TComponent; APinNotificationEvent : TOWPinNotificationEvent );
begin
  inherited Create( AOwner );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
constructor TOWStreamPersistSourcePin.CreateLockEx( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; APinNotificationEvent : TOWPinNotificationEvent );
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
  AWriteLock    : ILockSection;

begin
  Result := [];
  if( TInterface.IfSupports<IOWStreamPersistStream>( Handler, InterfPersist )) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      Handled := True;
      AWriteLock := FOwnerLock.WriteLock();
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
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWTypedListSourcePin<T; T_Interface>.CreateEx( AOwner: TComponent; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOwner, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
constructor TOWTypedListSourcePin<T; T_Interface>.CreateLockEx( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AInputOwnerLock, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
constructor TOWTypedListSourcePin<T; T_Interface>.CreateConnect( AOwner: TComponent; AOnConnect : TOWPinEvent );
begin
  inherited Create( AOwner );
  FOnConnect := AOnConnect;
end;
//---------------------------------------------------------------------------
procedure TOWTypedListSourcePin<T; T_Interface>.Send( AValue : IArrayList<T> );
begin
  Notify( TOWTypedListSuppliedOperation<T>.Create( AValue ));
end;
//---------------------------------------------------------------------------
procedure TOWTypedListSourcePin<T; T_Interface>.NewConnection( const ASinkPin : TOWBasicPin );
begin
  inherited;
  if( Assigned( FOnConnect )) then
    FOnConnect( ASinkPin );

end;
//---------------------------------------------------------------------------
function TOWTypedListSourcePin<T; T_Interface>.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  Interf  : IOWDataStream;
  Handled : Boolean;

begin
  Result := [];
  if( Supports( Handler, GetTypeData(System.TypeInfo(T_Interface))^.Guid, Interf )) then
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
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWTypedListSinkPin<T>.Create( AOwner: TComponent; AOnDataChange : TOWDataChangeEvent<IArrayList<T>>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited Create( AOwner, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
constructor TOWTypedListSinkPin<T>.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<IArrayList<T>>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited CreateLock( AOwner, AOwnerLock, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
function TOWTypedListSinkPin<T>.DispatchData( DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( Operation.IsType( TOWTypedListSuppliedOperation<T> )) then
    begin
    if( Assigned( FOnDataChange )) then
      FOnDataChange( Self, TOWTypedListSuppliedOperation<T>( Operation.GetInstance() ).Value, nsNewLink in State );

    end

  else if( not TryCustomDispatch( DataTypeID, Operation, State, Result )) then
    begin
    if( Operation.IsType( TOWClearContentOperation )) then
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, TArrayList<T>.Create(), nsNewLink in State );

    end;

end;
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
constructor TOWTypedSuppliedOperation<T>.CreateEx( AValue : T; ASampleCount : Integer );
begin
  inherited Create( ASampleCount );
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
constructor TOWTypedSuppliedValueRangeOperation<T>.Create( AValue : T; AMin : T; AMax : T );
begin
  inherited Create( AValue );
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
function TOWTypeBaseListSuppliedOperation.IsType( AClass : TOWNotifyOperationClass ) : Boolean; stdcall;
type
  TOWTypeBaseClass = class of TOWTypeBaseListSuppliedOperation;

begin
  if( inherited ) then
    Exit( True );

  if( AClass.InheritsFrom( TOWTypeBaseListSuppliedOperation )) then
    Exit( TOWTypeBaseClass( AClass ).GetHostedTypeInfo() = GetHostedTypeInfo() );

  Result := False;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWTypedListSuppliedOperation<T>.Create( AValue : IArrayList<T> );
begin
  inherited Create( AValue.Count );
  Value := AValue;
end;
//---------------------------------------------------------------------------
class function TOWTypedListSuppliedOperation<T>.GetHostedTypeInfo() : PTypeInfo;
begin
  Result := System.TypeInfo( T );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure InitializationSection();
begin
  OWRegisterStreams(
      [
      TypeInfo( IOWDataStream ),
      TypeInfo( IOWClockStream ),
      TypeInfo( IOWIntegerStream ),
      TypeInfo( IOWCardinalStream ),
      TypeInfo( IOWInt64Stream ),
      TypeInfo( IOWUInt64Stream ),
      TypeInfo( IOWFloatStream ),
      TypeInfo( IOWRealStream ),
      TypeInfo( IOWRealComplexStream ),
      TypeInfo( IOWBoolStream ),
      TypeInfo( IOWByteStream ),
      TypeInfo( IOWCharStream ),
      TypeInfo( IOWStringStream ),
      TypeInfo( IOWStringListStream ),
      TypeInfo( IOWIntRangedStream ),
      TypeInfo( IOWInt64RangedStream ),
      TypeInfo( IOWRealRangedStream ),
      TypeInfo( IOWDateTimeStream ),
      TypeInfo( IOWTimeStream ),
      TypeInfo( IOWDateTimeRangedStream ),
      TypeInfo( IOWStreamPersistStream ),
      TypeInfo( IOWDateStream ),
      TypeInfo( IOWColorStream ),
      TypeInfo( IOWAlphaColorStream ),
      TypeInfo( IOWIntegerListStream ),
      TypeInfo( IOWInt64ListStream ),
      TypeInfo( IOWRealListStream ),
      TypeInfo( IOWFloatListStream )
      ]
    );

  OWRegisterDefaultHandler( IOWDataStream, OWDefaultDataNotificationHandler );

  OWRegisterTypeConverters(
      [
      TOWIntToFloatFormatConverter,
      TOWIntToRealFormatConverter,
      TOWIntToStringFormatConverter,
      TOWInt64ToFloatFormatConverter,
      TOWInt64ToRealFormatConverter,
      TOWInt64ToStringFormatConverter,
      TOWCardinalToFloatFormatConverter,
      TOWCardinalToRealFormatConverter,
      TOWCardinalToStringFormatConverter,
      TOWUInt64ToFloatFormatConverter,
      TOWUInt64ToRealFormatConverter,
      TOWUInt64ToStringFormatConverter,
      TOWFloatToRealFormatConverter,
      TOWByteToIntegerFormatConverter,
      TOWFloatToStringFormatConverter,
      TOWRealToStringFormatConverter,
      TOWIntToRealRangedFormatConverter,
      TOWInt64ToRealRangedFormatConverter,
      TOWIntRangedToStringFormatConverter,
      TOWInt64RangedToStringFormatConverter,
      TOWRealRangedToStringFormatConverter,
      TOWBoolToStringFormatConverter,
      TOWRealComplexToStringFormatConverter,
      TOWTimeToStringFormatConverter,
      TOWIntToStringListFormatConverter,
      TOWInt64ToStringListFormatConverter,
      TOWRealToStringListFormatConverter,
      TOWFloatToStringListFormatConverter,
      TOWIntToRealListFormatConverter,
      TOWFloatToRealListFormatConverter,
      TOWColorToAlphaColorFormatConverter
      ]
   );

  TClassManagement.RegisterInitClassDefaults( TOWClockSourcePin.TypeInfo(),
      procedure( AOwner : TObject; AInstance : TObject; AClass : TClass; AMember : IValueMemberInfo; ALockItem : ILockItem )
      type
        TOWClockSourcePinClass = class of TOWClockSourcePin;

      begin
        if( AInstance is TComponent ) then
          AMember.Value[ AInstance ] := TOWClockSourcePinClass( AClass ).CreateLock( TComponent( AInstance ), ALockItem.GetLock(), NIL )

        else if( AInstance is TPersistent ) then
          begin
          if( AOwner <> NIL ) then
            AMember.Value[ AInstance ] := TOWClockSourcePinClass( AClass ).CreateLock( TPersistent( AOwner ).GetOwnerComponent(), ALockItem.GetLock(), NIL )

          else
            AMember.Value[ AInstance ] := TOWClockSourcePinClass( AClass ).CreateLock( TPersistent( AInstance ).GetOwnerComponent(), ALockItem.GetLock(), NIL );

          end;

      end
    );

  TClassManagement.RegisterInitClassDefaults( TOWStdSinkPin.TypeInfo(),
      procedure( AOwner : TObject; AInstance : TObject; AClass : TClass; AMember : IValueMemberInfo; ALockItem : ILockItem )
      type
        TOWStdSinkPinClass = class of TOWStdSinkPin;

      begin
        if( AInstance is TComponent ) then
          AMember.Value[ AInstance ] := TOWStdSinkPinClass( AClass ).CreateLock( TComponent( AInstance ), ALockItem.GetLock(), NIL )

        else if( AInstance is TPersistent ) then
          begin
          if( AOwner <> NIL ) then
            AMember.Value[ AInstance ] := TOWStdSinkPinClass( AClass ).CreateLock( TPersistent( AOwner ).GetOwnerComponent(), ALockItem.GetLock(), NIL )

          else
            AMember.Value[ AInstance ] := TOWStdSinkPinClass( AClass ).CreateLock( TPersistent( AInstance ).GetOwnerComponent(), ALockItem.GetLock(), NIL );

          end;

      end
    );

  TClassManagement.RegisterInitClassDefaults( TOWClockSinkPin.TypeInfo(),
      procedure( AOwner : TObject; AInstance : TObject; AClass : TClass; AMember : IValueMemberInfo; ALockItem : ILockItem )
      type
        TOWClockSinkPinClass = class of TOWClockSinkPin;

      begin
        if( AInstance is TComponent ) then
          AMember.Value[ AInstance ] := TOWClockSinkPinClass( AClass ).CreateLock( TComponent( AInstance ), ALockItem.GetLock(), NIL )

        else if( AInstance is TPersistent ) then
          begin
          if( AOwner <> NIL ) then
            AMember.Value[ AInstance ] := TOWClockSinkPinClass( AClass ).CreateLock( TPersistent( AOwner ).GetOwnerComponent(), ALockItem.GetLock(), NIL )

          else
            AMember.Value[ AInstance ] := TOWClockSinkPinClass( AClass ).CreateLock( TPersistent( AInstance ).GetOwnerComponent(), ALockItem.GetLock(), NIL );

          end;

      end
    );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
initialization
  InitializationSection();

end.

