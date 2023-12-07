////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//     This software is supplied under the terms of a license agreement or    //
//     nondisclosure agreement with Mitov Software and may not be copied      //
//     or disclosed except in accordance with the terms of that agreement.    //
//         Copyright(c) 2002-2023 Mitov Software. All Rights Reserved.        //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

unit OWStdTypes;

{$POINTERMATH ON}

interface

{$I Mitov.Definitions.inc}

uses
  System.Classes, System.SysUtils, System.UITypes, OWPins, System.Generics.Defaults,
  System.TypInfo, Mitov.Types, Mitov.Containers.List, Mitov.Threading, Mitov.Attributes,
  Mitov.Math.Complex, System.Math.Vectors, Mitov.Containers.Common;

type
  OWAddPinsAttribute = class( OWAddPinAttribute )
  public
    StartIndex  : Cardinal;
    Count       : Cardinal;

  public
    constructor Create( const AName : String; AStartIndex : Cardinal; ACount : Cardinal; AValue : TClass ); overload;
    constructor Create( const AName : String; AStartIndex : Cardinal; ACount : Cardinal; const AValue : IAtttributeParameterInfo ); overload;

  end;
//---------------------------------------------------------------------------
  OWPinListCategoryAttribute = class( TCustomAttribute )
  public
    Value : TOWPinCategory;

  public
    constructor Create( AValue : TOWPinCategory );

  end;
//---------------------------------------------------------------------------
  IOWBasicStream = interface( IOWStream )
    ['{561B072C-4191-49C6-9F22-21791EF977D9}']

    function  DispatchData( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; stdcall;

  end;
//---------------------------------------------------------------------------
  OWDispatchAsBasicStreamAttribute = class( TCustomAttribute )
  protected
    FDataType : TGUID;

  public
    property DataType : TGUID read FDataType;

  public
    constructor Create( const ADataType : TGUID );

  end;
//---------------------------------------------------------------------------
  [Name('Clock')]
  [OWCoreInterface]
  IOWClockStream = interface( IOWBasicStream )
    ['{48CDAF9F-00C7-4B45-999D-4EE25353A952}']
  end;
//---------------------------------------------------------------------------
  [Name('General Data Stream')]
  [OWCoreInterface]
  IOWDataStream = interface( IOWBasicStream )
    ['{CFDF94D7-5134-49D9-AC65-902BBC1CD140}']
  end;
//---------------------------------------------------------------------------
  [Name('32 bit Integer')]
  IOWIntegerStream = interface( IOWDataStream )
    ['{92F6B47E-B46E-49BB-9A8E-676D3C2F2E66}']
  end;
//---------------------------------------------------------------------------
  [Name('32 bit Unsigned Integer')]
  IOWCardinalStream = interface( IOWDataStream )
    ['{B9867263-626B-47A4-AC8D-F3B6C68392B9}']
  end;
//---------------------------------------------------------------------------
  [Name('Float')]
  IOWFloatStream = interface( IOWDataStream )
    ['{67F6997B-7EB4-4E2F-8320-4A512B5F2BC7}']
  end;
//---------------------------------------------------------------------------
  [Name('Real')]
  IOWRealStream = interface( IOWDataStream )
    ['{208F9564-3C20-4C97-BB77-2FC5AE6E4194}']
  end;
//---------------------------------------------------------------------------
  [Name('Real Complex')]
  IOWRealComplexStream = interface( IOWDataStream )
    ['{4CC4ADE6-E5AE-4E27-A9E7-42C14E062F41}']
  end;
//---------------------------------------------------------------------------
  [Name('Float Quaternion')]
  IOWFloatQuaternionStream = interface( IOWDataStream )
    ['{684C984F-FF88-4792-A2E2-927D4A087DB7}']
  end;
//---------------------------------------------------------------------------
  [Name('Float 3D Point')]
  IOWFloatPoint3DStream = interface( IOWDataStream )
    ['{51386FF6-DEA5-44B3-8110-50899B656166}']
  end;
//---------------------------------------------------------------------------
  [Name('Boolean')]
  IOWBoolStream = interface( IOWDataStream )
    ['{7AA677AE-F983-4714-8E64-EC6F3D17695B}']
  end;
//---------------------------------------------------------------------------
  [Name('Byte')]
  IOWByteStream = interface( IOWDataStream )
    ['{6869A0AD-852B-454F-B664-F54040F7019D}']
  end;
//---------------------------------------------------------------------------
  [Name('Character')]
  IOWCharStream = interface( IOWDataStream )
    ['{3241B885-95E1-495F-ACEC-4A1C98872B63}']
  end;
//---------------------------------------------------------------------------
  [Name('Color')]
  IOWColorStream = interface( IOWDataStream )
    ['{44421113-BE8B-4C12-86C3-5721B6EFD882}']
  end;
//---------------------------------------------------------------------------
  [Name('Alpha Color')]
  IOWAlphaColorStream = interface( IOWDataStream )
    ['{C9C4E86B-29A1-41B3-B749-0D69035B140E}']
  end;
//---------------------------------------------------------------------------
  [Name('RGBW Color')]
  IOWRGBWColorStream = interface( IOWDataStream )
    ['{A7F18C0D-E5B2-40AD-914C-2D3FC2231CE4}']
  end;
//---------------------------------------------------------------------------
  [Name('RGBW Alpha Color')]
  IOWRGBWAlphaColorStream = interface( IOWDataStream )
    ['{78657144-B104-48B1-9F71-72E1A6632DEC}']
  end;
//---------------------------------------------------------------------------
  [Name('Sting')]
  IOWStringStream = interface( IOWDataStream )
    ['{25C048B4-89D4-4277-AA98-A835EB29F5C1}']
  end;
//---------------------------------------------------------------------------
  [Name('TStings')]
  IOWStringListStream = interface( IOWDataStream )
    ['{6A8D79B4-6799-4FB7-A0AB-43C327B7382A}']
  end;
//---------------------------------------------------------------------------
  [Name('Ranged 32 bit Integer')]
  IOWIntRangedStream = interface( IOWDataStream )
    ['{836EE1EA-B8BD-4E04-8225-6AB547D1A3C4}']
  end;
//---------------------------------------------------------------------------
  [Name('64 bit Integer')]
  IOWInt64Stream = interface( IOWDataStream )
    ['{6D054E38-F733-4212-8D5A-0E866802F866}']
  end;
//---------------------------------------------------------------------------
  [Name('64 bit Unsigned Integer')]
  IOWUInt64Stream = interface( IOWDataStream )
    ['{EE313232-48B9-40E6-A7CE-3682B3ADE39B}']
  end;
//---------------------------------------------------------------------------
  [Name('Ranged 64 bit Integer')]
  IOWInt64RangedStream = interface( IOWDataStream )
    ['{B201C2F8-CA4D-4CF3-8E6D-E620D2B9D7EF}']
  end;
//---------------------------------------------------------------------------
  [Name('Ranged Real')]
  IOWRealRangedStream = interface( IOWDataStream )
    ['{648AC95D-2772-427C-AD9D-2B7F1EDDE1A7}']
  end;
//---------------------------------------------------------------------------
  [Name('Date/Time')]
  IOWDateTimeStream = interface( IOWDataStream )
    ['{475D7D8B-4796-42A5-8F8E-B512B8FD2704}']
  end;
//---------------------------------------------------------------------------
  [Name('Date')]
  IOWDateStream = interface( IOWDataStream )
    ['{FE356F3A-7552-4CA2-B542-A39061A61617}']
  end;
//---------------------------------------------------------------------------
  [Name('Time')]
  IOWTimeStream = interface( IOWDataStream )
    ['{B8EA13BE-233C-4309-AF37-6441A57973BC}']
  end;
//---------------------------------------------------------------------------
  [Name('Ranged DateTime')]
  IOWDateTimeRangedStream = interface( IOWDataStream )
    ['{92419B6E-F281-455A-852F-8253D761E30B}']
  end;
//---------------------------------------------------------------------------
  [Name('Stream Persist')]
  IOWStreamPersistStream = interface( IOWDataStream )
    ['{846DC44A-1EB7-4BDD-BB93-04E9BC5E4BBD}']
  end;
//---------------------------------------------------------------------------
  [Name('Integer List')]
  IOWIntegerListStream = interface( IOWDataStream )
    ['{FB1752DB-AA81-4237-8FC1-26721AE56974}']
  end;
//---------------------------------------------------------------------------
  [Name('Int64 List')]
  IOWInt64ListStream = interface( IOWDataStream )
    ['{FB0AD5A2-9033-48B3-87F5-E8FCF69EF47B}']
  end;
//---------------------------------------------------------------------------
  [Name('Real List')]
  IOWRealListStream = interface( IOWDataStream )
    ['{727FDD83-ADDB-4755-9A6D-1C4CFC72604C}']
  end;
//---------------------------------------------------------------------------
  [Name('Float List')]
  IOWFloatListStream = interface( IOWDataStream )
    ['{0B59821C-2927-41DD-BC4B-1AB541FF9B28}']
  end;
//---------------------------------------------------------------------------
{$WARN SYMBOL_DEPRECATED OFF}
{$EXTERNALSYM TOWRealComplex}
type TOWRealComplex = TComplex deprecated 'Use Mitov.Math.Complex.TComplex instead';
{$EXTERNALSYM POWRealComplex}
type POWRealComplex = PComplex deprecated 'Use Mitov.Math.Complex.PComplex instead';
//---------------------------------------------------------------------------
type TOWClockEvent = reference to procedure( ASender : TOWPin );
{$WARN SYMBOL_DEPRECATED ON}

type TOWPinNotificationEvent = reference to function( AOtherPin : TOWBasicPin; const AHandler : IOWDataStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState; var AHandled : Boolean ) : TOWNotifyResult;

type TOWDataChangeEvent<T_Data> = reference to procedure( ASender : TOWPin; const AValue : T_Data; AOnConnect : Boolean );
type TOWTypedValueRangeChangeEvent<T_Data> = reference to procedure( ASender : TOWPin; const AValue, AMin, AMax : T_Data; ARangesFilled : Boolean; AOnConnect : Boolean );

type TOWTypedRangeChangeEvent<T_Data> = reference to procedure( ASender : TOWPin; const AMin, AMax : T_Data; AOnConnect : Boolean );

type TOWInt64DateTimeValueRangeChangeEvent = reference to procedure( ASender : TOWPin; const AValue, AMin, AMax : Int64; const AMinTime, AMaxTime : TDateTime; ARangesFilled : Boolean; AOnConnect : Boolean );
type TOWInt64DateTimeRangeChangeEvent = reference to procedure( ASender : TOWPin; const AMin, AMax : Int64; const AMinTime, AMaxTime : TDateTime; AOnConnect : Boolean );

type TOWPinDispatchEvent = reference to function( ASender : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState; var AHandled : Boolean ) : TOWNotifyResult;

type TOWBasicPinNotificationEvent = reference to function( ASender : TOWBasicPin; AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;

type TOWStringListGetDataEvent = reference to procedure( ASender : TOWPin; const AAValue : IStringArrayList );

//---------------------------------------------------------------------------

type
  TOWPumpType = ( ptNone, ptSlave, ptMaster, ptHardware );
//---------------------------------------------------------------------------
  TOWClockOperation = class( TOWNotifyOperation )
  public
    Samples : Integer;

  public
    class function Create( ASamples : Integer ) : IOWNotifyOperation;

  public
    constructor CreateObject( ASamples : Integer );

  end;
//---------------------------------------------------------------------------
  TOWClockQueryOperation = class( TOWNotifyOperation );
//---------------------------------------------------------------------------
  TOWClockNeededOperation = class( TOWNotifyOperation )
  public
    Enabled : Boolean;

  public
    class function Create( AEnabled : Boolean ) : IOWNotifyOperation;

  public
    constructor CreateObject( AEnabled : Boolean );

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
    class function Create( APump : TObject ) : IOWNotifyOperation;

  public
    constructor CreateObject( APump : TObject );

  end;
//---------------------------------------------------------------------------
  TOWPumpRequestOperation = class( TOWNotifyOperation )
  public
    Pump         : TObject;
    PumpType     : TOWPumpType;
    PumpPriority : Cardinal;     // Priority level for this group.

    DesiredRate  : Real;      // If different than 0 there has been a rate request.

  public
    class function Create() : IOWNotifyOperation;
    class function CreateEx( APump : TObject; APumpType : TOWPumpType; APumpPriority : Cardinal; const ADesiredRate : Real ) : IOWNotifyOperation;

  public
    constructor CreateObject();
    constructor CreateExObject( APump : TObject; APumpType : TOWPumpType; APumpPriority : Cardinal; const ADesiredRate : Real );

  end;
//---------------------------------------------------------------------------
  TOWStartPumpOperation = class( TOWNotifyOperation )
  public
    Pump  : TObject;

  public
    class function Create( APump : TObject ) : IOWNotifyOperation;

  public
    constructor CreateObject( APump : TObject );

  end;
//---------------------------------------------------------------------------
  TOWStartOperation = class( TOWNotifyOperation );
//---------------------------------------------------------------------------
  TOWStartRateOperation = class( TOWStartOperation )
  public
    Rate : Real;

  public
    class function Create( const ARate : Real ) : IOWNotifyOperation;

  public
    constructor CreateObject( const ARate : Real );

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
    class function Create( const AValue : T ) : IOWNotifyOperation;
    class function CreateEx( const AValue : T; ASampleCount : Integer ) : IOWNotifyOperation;

  public
    constructor CreateObject( const AValue : T );
    constructor CreateExObject( const AValue : T; ASampleCount : Integer );

  end;
//---------------------------------------------------------------------------
  TOWTypedSuppliedRangeOperation<T> = class( TOWSuppliedOperation )
  public
    Min : T;
    Max : T;

  public
    class function Create( AMin : T; AMax : T ) : IOWNotifyOperation;

  public
    constructor CreateObject( AMin : T; AMax : T );

  end;
//---------------------------------------------------------------------------
  TOWTypedSuppliedValueRangeOperation<T> = class( TOWTypedSuppliedOperation<T> )
  public
    Min : T;
    Max : T;

  public
    class function Create( AValue : T; AMin : T; AMax : T ) : IOWNotifyOperation;

  public
    constructor CreateObject( AValue : T; AMin : T; AMax : T );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedStringListOperation = class( TOWSuppliedOperation )
  public
    Value : IStringArrayList;

  public
    class function Create( const AValue : IStringArrayList ) : IOWNotifyOperation;

  public
    constructor CreateObject( const AValue : IStringArrayList );

  end;
//---------------------------------------------------------------------------
  TOWSuppliedStreamPersistOperation = class( TOWSuppliedOperation )
  public
    Value : TStream;

  public
    class function Create( AValue : TStream = NIL ) : IOWNotifyOperation; overload;

  public
    constructor CreateObject( AValue : TStream = NIL ); overload;
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
    constructor Create( const AValue : IArrayList<T> );

  end;
//---------------------------------------------------------------------------
  TOWCustomDispatchDataAttribute = class( TCustomAttribute )
  public
    function  DispatchData( APinInstance : TOWBasicPin; APin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState; out AResult : TOWNotifyResult ) : Boolean; virtual; stdcall; abstract;

  end;
//---------------------------------------------------------------------------
  OWTryCustomFirstAttribute = class( TCustomAttribute );
//---------------------------------------------------------------------------
  TOWBasicDispatchSourcePin = class( TOWSourcePin )
  protected
    FPinNotificationEvent : TOWBasicPinNotificationEvent;

  protected
    FDataSection    : ICriticalSection;
    FStartOperation : IOWNotifyOperation;

  protected
    FCustomDispatchData : TArray<TOWCustomDispatchDataAttribute>;

  protected
    procedure IntConnect( const ASinkPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID; AFromOther : Boolean ); override;
    function  IntConnectAfter( AOtherPin : TOWBasicPin; ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID ) : Boolean; override;

  public
    function  Notify( const AOperation : IOWNotifyOperation ) : TOWNotifyResult; override;

  protected
    function  DispatchData( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    function  DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; AMaxConnections : Integer = -1; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWDataStream )]
  TOWDispatchSourcePin = class( TOWBasicDispatchSourcePin );
//---------------------------------------------------------------------------
  TOWManagedDispatchSourcePin = class( TOWDispatchSourcePin )
  protected
    FOnDisconnect : TOWPinEvent;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDisconnect : TOWPinEvent = NIL; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL ); virtual;

  end;
//---------------------------------------------------------------------------
  TOWDispatchSinkPin = class( TOWSinkPin )
  protected
    FPinNotificationEvent : TOWBasicPinNotificationEvent;

  protected
    FCustomDispatchData : TArray<TOWCustomDispatchDataAttribute>;

  protected
    function  DispatchData( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    function  DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );

  end;
//---------------------------------------------------------------------------
  TOWDispatchMultiSinkPin = class( TOWMultiSinkPin )
  protected
    FPinNotificationEvent : TOWBasicPinNotificationEvent;

  protected
    FCustomDispatchData : TArray<TOWCustomDispatchDataAttribute>;

  protected
    FDispatchAsBasicStream  : TArray<OWDispatchAsBasicStreamAttribute>;

  protected
    function  NotificationCall( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override;
    function  DispatchData( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    function  DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );

  end;
//---------------------------------------------------------------------------
  TOWDispatchStatePin = class( TOWStatePin )
  protected
    FPinNotificationEvent : TOWBasicPinNotificationEvent;

  protected
    FCustomDispatchData : TArray<TOWCustomDispatchDataAttribute>;

  protected
    function  DispatchData( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    function  DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWClockStream )]
  TOWClockSourcePin = class( TOWManagedDispatchSourcePin, IOWClockStream )
  protected
    function  ClockNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual;

  public
    procedure Clock( ASamples : Integer );

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDisconnect : TOWPinEvent = NIL; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL ); override;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWClockStream )]
  TOWClockSinkPin = class( TOWDispatchSinkPin, IOWClockStream )
  protected
    FOnClock  : TOWClockEvent;

  protected
    function  ClockNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual;

  protected
    function  DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnClock : TOWClockEvent; const AOnPinNotificationEvent : TOWBasicPinNotificationEvent = NIL );

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWClockStream )]
  TOWClockMultiSinkPin = class( TOWDispatchMultiSinkPin, IOWClockStream )
  protected
    FOnClock  : TOWClockEvent;

  protected
    function  ClockNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual;

  protected
    function  DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnClock : TOWClockEvent; const AOnPinNotificationEvent : TOWBasicPinNotificationEvent = NIL ); virtual;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWDataStream )]
  TOWStdSourcePin = class( TOWClockSourcePin )
  protected
    FDispatchAsBasicStream  : TArray<OWDispatchAsBasicStreamAttribute>;

  protected
    function  NotificationCall( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override;
    function  Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override;
    function  IntNotificationHandler( const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual;

  protected
    procedure BeforeDisconnectFrom( const APin : TOWBasicPin ); override;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDisconnect : TOWPinEvent = NIL; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL ); override;

  end;
//---------------------------------------------------------------------------
  TOWStdSourcePinClass = class of TOWStdSourcePin;
//---------------------------------------------------------------------------
  TOWStdStatePin = class( TOWStatePin )
  protected
    FOnDisconnect       : TOWPinEvent;
    FOnPinDispatchEvent : TOWPinDispatchEvent;

  protected
    FDispatchAsBasicStream  : TArray<OWDispatchAsBasicStreamAttribute>;

  protected
    function  NotificationCall( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override;
    function  Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override;
    function  IntNotificationHandler( const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual;

  protected
    function  TryCustomDispatch( const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState; var AResult : TOWNotifyResult ) : Boolean;

  protected
    procedure BeforeDisconnectFrom( const APin : TOWBasicPin ); override;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDisconnect : TOWPinEvent; const AOnPinDispatchEvent : TOWPinDispatchEvent );// overload; virtual;

  end;
//---------------------------------------------------------------------------
  TOWStdSinkPin = class( TOWSinkPin )
  protected
    FOnPinDispatchEvent : TOWPinDispatchEvent;

  protected
    FCustomDispatchData : TArray<TOWCustomDispatchDataAttribute>;
    FTryCustomFirst     : Boolean;

  protected
    FDispatchAsBasicStream  : TArray<OWDispatchAsBasicStreamAttribute>;

  protected
    function  NotificationCall( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override;
    function  DispatchData( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    function  DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    function  TryCustomDispatch( const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState; var AResult : TOWNotifyResult ) : Boolean; virtual;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnPinDispatchEvent : TOWPinDispatchEvent ); virtual;

  end;
//---------------------------------------------------------------------------
  TOWStdMultiSinkPin = class( TOWMultiSinkPin )
  protected
    FOnPinDispatchEvent : TOWPinDispatchEvent;

  protected
    FCustomDispatchData : TArray<TOWCustomDispatchDataAttribute>;
    FTryCustomFirst     : Boolean;

  protected
    FDispatchAsBasicStream  : TArray<OWDispatchAsBasicStreamAttribute>;

  protected
    function  NotificationCall( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override;
    function  DispatchData( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    function  DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    function  TryCustomDispatch( const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState; var AResult : TOWNotifyResult ) : Boolean;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnPinDispatchEvent : TOWPinDispatchEvent ); virtual;

  end;
//---------------------------------------------------------------------------
  TOWTypedPinNotificationEvent<T_Interface : IInterface; T_Data> = reference to function( AHandler : T_Interface; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
//---------------------------------------------------------------------------
  TOWBasicTypedSourcePin<T_Data> = class( TOWStdSourcePin )
  protected
    FPinNotificationEvent : TOWPinNotificationEvent;

  protected
    FValue    : T_Data;
    FComparer : IComparer<T_Data>;

  protected
    procedure SetValue( const AValue : T_Data );

  public
    procedure Send( const AValue : T_Data ); virtual;

  public
    class function CreateGeneric( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDisconnect : TOWPinEvent = NIL; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL ) : TOWBasicTypedSourcePin<T_Data>;

  public
    constructor CreateEx( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const APinNotificationEvent : TOWPinNotificationEvent; const AOnDisconnect : TOWPinEvent = NIL );
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDisconnect : TOWPinEvent = NIL; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL ); override;

  public
    property Value : T_Data read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWTypedSourcePin<T_Interface : IOWBasicStream; T_Data> = class( TOWBasicTypedSourcePin<T_Data> )
  protected
    function Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override;

  end;
//---------------------------------------------------------------------------
  TOWTypedSinkPin<T_Data> = class( TOWStdSinkPin )
  protected
    FOnDataChange : TOWDataChangeEvent<T_Data>;
    FValue        : T_Data;

  protected
    function IsSupportedDataType( const AOperation : IOWNotifyOperation ) : Boolean; virtual; stdcall;
    function DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  public
    class function CreateGeneric( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDataChange : TOWDataChangeEvent<T_Data>; const AOnPinDispatchEvent : TOWPinDispatchEvent = NIL ) : TOWTypedSinkPin<T_Data>;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDataChange : TOWDataChangeEvent<T_Data>; const AOnPinDispatchEvent : TOWPinDispatchEvent = NIL ); reintroduce;

  public
    property Value  : T_Data read FValue;

  end;
//---------------------------------------------------------------------------
  TOWTypedMultiSinkPin<T_Data> = class( TOWStdMultiSinkPin )
  protected
    FOnDataChange : TOWDataChangeEvent<T_Data>;
    FValue        : T_Data;

  protected
    function DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  public
    class function CreateGeneric( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL ) : TOWTypedMultiSinkPin<T_Data>;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDataChange : TOWDataChangeEvent<T_Data>; const AOnPinDispatchEvent : TOWPinDispatchEvent = NIL ); reintroduce;

  public
    property Value  : T_Data read FValue;

  end;
//---------------------------------------------------------------------------
  TOWBasicTypedStatePin<T_Data> = class( TOWStdStatePin )
  protected
    FOnDataChange : TOWDataChangeEvent<T_Data>;
    FValue        : T_Data;
    FComparer     : IComparer<T_Data>;

  protected
    FCustomDispatchData : TArray<TOWCustomDispatchDataAttribute>;

  protected
    procedure SetValue( const AValue : T_Data );

  protected
    function  DispatchData( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    function  DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    procedure Send( const AValue : T_Data ); virtual;

  public
    procedure AfterConstruction(); override;

  public
    class function CreateGeneric( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDataChange : TOWDataChangeEvent<T_Data>; const AOnDisconnect : TOWPinEvent = NIL; const AOnPinDispatchEvent : TOWPinDispatchEvent = NIL ) : TOWBasicTypedStatePin<T_Data>;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDataChange : TOWDataChangeEvent<T_Data>; const AOnDisconnect : TOWPinEvent = NIL; const AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );

  public
    property Value : T_Data read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  TOWTypedStatePin<T_Interface : IInterface; T_Data> = class( TOWBasicTypedStatePin<T_Data> )
  protected
    FPinNotificationEvent : TOWTypedPinNotificationEvent<T_Interface, T_Data>;

  protected
    function Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override;

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
    procedure SetMin( const AValue : T_Data );
    procedure SetMax( const AValue : T_Data );
    procedure SetValue( const AValue : T_Data ); virtual;

  protected
    function  IntNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual;
    function  IntRangedNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual;
    procedure SublitMinMaxChanges(); virtual;

  public
    class function CreateGeneric( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL ) : TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDisconnect : TOWPinEvent = NIL; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL ); override;

  public
    procedure SubmitValueRange( const AValue : T_Data; const AMin : T_Data; const AMax : T_Data );
    procedure SubmitValue( const AValue : T_Data );
    procedure SubmitRange( const AMin : T_Data; const AMax : T_Data );

  public
    property Min : T_Data   read FMin   write SetMin;
    property Max : T_Data   read FMax   write SetMax;
    property Value : T_Data read FValue write SetValue;

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
    function DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  public
    class function CreateGeneric( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; AOnDataChange : TOWTypedValueRangeChangeEvent<T_Data>; AOnRangeChange : TOWTypedRangeChangeEvent<T_Data> = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL ) : TOWTypedRangedSinkPin<T_Data>;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDataChange : TOWTypedValueRangeChangeEvent<T_Data>; const AOnRangeChange : TOWTypedRangeChangeEvent<T_Data> = NIL; const AOnPinDispatchEvent : TOWPinDispatchEvent = NIL ); reintroduce;

  public
    property Min : T_Data   read FMin;
    property Max : T_Data   read FMax;
    property Value : T_Data read FValue;

  end;
//---------------------------------------------------------------------------
  TOWTypedAndRangedSinkPin<T_Data> = class( TOWTypedRangedSinkPin<T_Data> )
  protected
    function GetRangePopulated() : Boolean;

  protected
    function TryCustomDispatch( const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState; var AResult : TOWNotifyResult ) : Boolean; override;

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
    FCustomDispatchData : TArray<TOWCustomDispatchDataAttribute>;

  protected
    function  IntNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual;
    function  IntRangedNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual;
    function  DispatchData( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    function  DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    procedure SublitMinMaxChanges(); virtual;

  protected
    procedure SetMin( const AValue : T_Data );
    procedure SetMax( const AValue : T_Data );
    procedure SetValue( const AValue : T_Data ); virtual;

  public
    procedure SubmitValueRange( const AValue : T_Data; const AMin : T_Data; const AMax : T_Data );
    procedure SubmitValue( const AValue : T_Data );
    procedure SubmitRange( const AMin : T_Data; const AMax : T_Data );

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AValue : T_Data; const AMin : T_Data; const AMax : T_Data; const AOnDataChange : TOWTypedValueRangeChangeEvent<T_Data>; const AOnRangeChange : TOWTypedRangeChangeEvent<T_Data> = NIL; const AOnDisconnect : TOWPinEvent = NIL; const AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );

  public
    property Min : T_Data   read FMin   write SetMin;
    property Max : T_Data   read FMax   write SetMax;
    property Value : T_Data read FValue write SetValue;

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
  TOWBasicByteSourcePin = class( TOWTypedSourcePin<IOWByteStream, Byte> );
//---------------------------------------------------------------------------
  [OWDataType( IOWByteStream )]
  TOWByteSourcePin = class( TOWBasicByteSourcePin );
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
    constructor CreateClock( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<Boolean>; AOnClock : TProc; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );

  public
    function DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

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
  [OWDataType( IOWRGBWColorStream )]
  TOWRGBWColorSourcePin = class( TOWTypedSourcePin<IOWRGBWColorStream, TRGBWColor> );
//---------------------------------------------------------------------------
  TOWRGBWColorSinkPin = class( TOWTypedSinkPin<TRGBWColor>, IOWRGBWColorStream );
//---------------------------------------------------------------------------
  TOWRGBWColorMultiSinkPin = class( TOWTypedMultiSinkPin<TRGBWColor>, IOWRGBWColorStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWRGBWColorStream )]
  TOWRGBWColorStatePin = class( TOWTypedStatePin<IOWRGBWColorStream, TRGBWColor>, IOWRGBWColorStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWRGBWAlphaColorStream )]
  TOWRGBWAlphaColorSourcePin = class( TOWTypedSourcePin<IOWRGBWAlphaColorStream, TRGBWAlphaColor> );
//---------------------------------------------------------------------------
  TOWRGBWAlphaColorSinkPin = class( TOWTypedSinkPin<TRGBWAlphaColor>, IOWRGBWAlphaColorStream );
//---------------------------------------------------------------------------
  TOWRGBWAlphaColorMultiSinkPin = class( TOWTypedMultiSinkPin<TRGBWAlphaColor>, IOWRGBWAlphaColorStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWRGBWAlphaColorStream )]
  TOWRGBWAlphaColorStatePin = class( TOWTypedStatePin<IOWRGBWAlphaColorStream, TRGBWAlphaColor>, IOWRGBWAlphaColorStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWCharStream )]
  TOWCharSourcePin = class( TOWTypedSourcePin<IOWCharStream, Char> )
  public
    procedure SendText( const AText : String );

  end;
//---------------------------------------------------------------------------
  TOWCharSinkPin = class( TOWTypedSinkPin<Char>, IOWCharStream );
//---------------------------------------------------------------------------
  TOWCharMultiSinkPin = class( TOWTypedMultiSinkPin<Char>, IOWCharStream );
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
    constructor CreateEx( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateConnect( const AOnCreated : TProc<TOWPin>; AOnConnect : TOWPinEvent );

  public
    procedure Send( const AValue : IStringArrayList );

  protected
    function  Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override;
    procedure NewConnection( const ASinkPin : TOWBasicPin ); overload; override;

  end;
//---------------------------------------------------------------------------
  TOWStringListSinkPin = class( TOWTypedSinkPin<IStringArrayList>, IOWStringListStream )
  protected
    function DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  end;
//---------------------------------------------------------------------------
  TOWStringListMultiSinkPin = class( TOWTypedMultiSinkPin<IStringArrayList>, IOWStringListStream )
  protected
    function DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWStringListStream )]
  TOWStringListStatePin = class( TOWStdStatePin, IOWStringListStream )
  protected
    FPinNotificationEvent : TOWPinNotificationEvent;
    FOnDataChange         : TOWDataChangeEvent<IStringArrayList>;
    FOnGetDataEvent       : TOWStringListGetDataEvent;

  protected
    FValue  : IStringArrayList;

  protected
    FCustomDispatchData : TArray<TOWCustomDispatchDataAttribute>;

  protected
    procedure SetValue( AValue : IStringArrayList );

  protected
    function  Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override;

  protected
    function  DispatchData( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    function  DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDataChange : TOWDataChangeEvent<IStringArrayList>; const AOnGetDataEvent : TOWStringListGetDataEvent = NIL; const AOnDisconnect : TOWPinEvent = NIL; const AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );

  public
    procedure Send( AValue : IStringArrayList );

  public
    property Value : IStringArrayList read FValue write SetValue;

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
  TOWCardinalSourcePin = class( TOWTypedSourcePin<IOWCardinalStream, Cardinal> )
  public
    procedure Send( const AValue : Cardinal ); override; // Workaround for Delphi compiler bug

  end;
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
    function Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override;

  end;
//---------------------------------------------------------------------------
  TOWRealSinkPin = class( TOWTypedSinkPin<Real>, IOWFloatStream, IOWRealStream )
  protected
    function DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  end;
//---------------------------------------------------------------------------
  TOWRealMultiSinkPin = class( TOWTypedMultiSinkPin<Real>, IOWFloatStream, IOWRealStream )
  protected
    function DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWFloatStream )]
  [OWDataType( IOWRealStream )]
  TOWRealStatePin = class( TOWBasicTypedStatePin<Real>, IOWFloatStream, IOWRealStream )
  protected
    FPinNotificationEvent : TOWPinNotificationEvent;

  protected
    function Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override;

  protected
    function DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

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
    function FloatNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual;
    function IntegerNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual;

  public
    procedure Send( AValue : Single );

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDisconnect : TOWPinEvent = NIL; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL ); override;

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
    FCustomDispatchData : TArray<TOWCustomDispatchDataAttribute>;

  protected
    procedure SetValue( AValue : Single );

  protected
    function Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override;
    
  protected
    function  DispatchData( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;
    function  DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual; stdcall;

  public
    procedure Send( AValue : Single );

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDataChange : TOWDataChangeEvent<Single>; const AOnDisconnect : TOWPinEvent = NIL; const AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );

  public
    property Value : Single read FValue write SetValue;

  end;
//---------------------------------------------------------------------------
  [OWDataType( IOWRealComplexStream )]
  TOWComplexSourcePin = class( TOWTypedSourcePin<IOWRealComplexStream, TComplex> );
//---------------------------------------------------------------------------
  TOWComplexSinkPin = class( TOWTypedSinkPin<TComplex>, IOWRealComplexStream );
//---------------------------------------------------------------------------
  TOWComplexMultiSinkPin = class( TOWTypedMultiSinkPin<TComplex>, IOWRealComplexStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWRealComplexStream )]
  TOWComplexStatePin = class( TOWTypedStatePin<IOWRealComplexStream, TComplex>, IOWRealComplexStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWFloatQuaternionStream )]
  TOWQuaternionSourcePin = class( TOWTypedSourcePin<IOWFloatQuaternionStream, TQuaternion3D> );
//---------------------------------------------------------------------------
  TOWQuaternionSinkPin = class( TOWTypedSinkPin<TQuaternion3D>, IOWFloatQuaternionStream );
//---------------------------------------------------------------------------
  TOWQuaternionMultiSinkPin = class( TOWTypedMultiSinkPin<TQuaternion3D>, IOWFloatQuaternionStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWFloatQuaternionStream )]
  TOWQuaternionStatePin = class( TOWTypedStatePin<IOWFloatQuaternionStream, TQuaternion3D>, IOWFloatQuaternionStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWFloatPoint3DStream )]
  TOWPoint3DSourcePin = class( TOWTypedSourcePin<IOWFloatPoint3DStream, TPoint3D> );
//---------------------------------------------------------------------------
  TOWPoint3DSinkPin = class( TOWTypedSinkPin<TPoint3D>, IOWFloatPoint3DStream );
//---------------------------------------------------------------------------
  TOWPoint3DMultiSinkPin = class( TOWTypedMultiSinkPin<TPoint3D>, IOWFloatPoint3DStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWFloatPoint3DStream )]
  TOWPoint3DStatePin = class( TOWTypedStatePin<IOWFloatPoint3DStream, TPoint3D>, IOWFloatPoint3DStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWDateTimeStream )]
  TOWDateTimeSourcePin = class( TOWTypedSourcePin<IOWDateTimeStream, TDateTime> );
//---------------------------------------------------------------------------
  TOWDateTimeSinkPin = class( TOWTypedSinkPin<TDateTime>, IOWDateTimeStream )
  protected
    function IsSupportedDataType( const AOperation : IOWNotifyOperation ) : Boolean; override; stdcall;

  end;
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
    function Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override;

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
    procedure SetMinTime( const AValue : TDateTime );
    procedure SetMaxTime( const AValue : TDateTime );
    procedure SetValue( const AValue : Int64 ); override;

  protected
    function  TimeNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual;
    function  TimeRangedNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual;
    procedure SublitMinMaxChanges(); override;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDisconnect : TOWPinEvent = NIL; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL ); override;

  public
    procedure SubmitValueRange( const AValue : Int64; const AMin : Int64; const AMax : Int64; const AMinTime : TDateTime; const AMaxTime : TDateTime );
    procedure SubmitValue( const AValue : Int64 );
    procedure SubmitRange( const AMin : Int64; const AMax : Int64; const AMinTime : TDateTime; const AMaxTime : TDateTime );

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
    procedure SetMinTime( const AValue : TDateTime );
    procedure SetMaxTime( const AValue : TDateTime );
    procedure SetValue( const AValue : Int64 ); override;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDataChange : TOWInt64DateTimeValueRangeChangeEvent; const AOnRangeChange : TOWInt64DateTimeRangeChangeEvent = NIL; const AOnDisconnect : TOWPinEvent = NIL; const AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );

  public
    procedure SubmitValueRange( const AValue : Int64; const AMin : Int64; const AMax : Int64; const AMinTime : TDateTime; const AMaxTime : TDateTime );
    procedure SubmitValue( const AValue : Int64 );
    procedure SubmitRange( const AMin : Int64; const AMax : Int64; const AMinTime : TDateTime; const AMaxTime : TDateTime );

  protected
    function  TimeNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual;
    function  TimeRangedNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual;
    function  DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override; stdcall;
    procedure SublitMinMaxChanges(); override;

  public
    property MinTime : TDateTime  read FMinTime write SetMinTime;
    property MaxTime : TDateTime  read FMaxTime write SetMaxTime;

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
    function RealNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual;
    function FloatNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual;
    function IntegerNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual;
    function StringNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual;
    function BoolNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual;

  protected
    procedure SetValue( const AValue : Real );

  public
    procedure Send( const AValue : Real );

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDisconnect : TOWPinEvent = NIL; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL ); override;

  public
    property Value : Real                   read FValue               write SetValue;
    property NotifyOnChangeOnly  : Boolean  read FNotifyOnChangeOnly  write FNotifyOnChangeOnly;

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
    constructor CreateEx( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; APinNotificationEvent : TOWPinNotificationEvent );

  public
    procedure SubmitData( Value : TStream );

  protected
    function Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override;

  end;
//---------------------------------------------------------------------------
  TOWTypedListSourcePin<T; T_Interface : IOWBasicStream> = class( TOWStdSourcePin )
  protected
    FPinNotificationEvent : TOWPinNotificationEvent;
    FOnConnect            : TOWPinEvent;

  public
    constructor CreateEx( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
    constructor CreateConnect( const AOnCreated : TProc<TOWPin>; AOnConnect : TOWPinEvent );

  public
    procedure Send( const AValue : IArrayList<T> );

  protected
    function  Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override;
    procedure NewConnection( const ASinkPin : TOWBasicPin ); overload; override;

  end;
//---------------------------------------------------------------------------
  TOWTypedListSinkPin<T> = class( TOWTypedSinkPin<IArrayList<T>> )
  protected
    function DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  end;
//---------------------------------------------------------------------------
  TOWTypedListStatePin<T_Interface : IInterface; T_Data> = class( TOWTypedStatePin<T_Interface, IArrayList<T_Data>> )
  protected
    function DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; override; stdcall;

  public
    procedure Send( const AValue : IArrayList<T_Data> ); override;

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
  [OWDataType( IOWRealListStream )]
  TOWRealListStatePin = class( TOWTypedListStatePin<IOWRealListStream, Real>, IOWRealListStream );
//---------------------------------------------------------------------------
  [OWDataType( IOWIntegerListStream )]
  TOWIntegerListStatePin = class( TOWTypedListStatePin<IOWIntegerListStream, Integer>, IOWIntegerListStream );
//---------------------------------------------------------------------------
  TOWBasicFormatConverter = class( TOWFormatConverter )
  protected
    function  DoDispatch( ASender : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;

  end;
//---------------------------------------------------------------------------
  TOWBasicTypedFormatConverter<T_OutStream : IOWBasicStream; T_OutData; T_OutputPin : TOWTypedSourcePin<T_OutStream, T_OutData>> = class( TOWBasicFormatConverter )
  protected
    procedure Send( const AOutData : T_OutData ); inline;

  end;
//---------------------------------------------------------------------------
  TOWTypedFormatConverter<T_OutStream : IOWBasicStream; T_InData; T_OutData; T_InputPin : TOWTypedSinkPin<T_InData>, constructor; T_OutputPin : TOWTypedSourcePin<T_OutStream, T_OutData>, constructor> = class( TOWBasicTypedFormatConverter<T_OutStream, T_OutData, T_OutputPin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : T_InData; AOnConnect : Boolean ); virtual;

  public
    constructor Create(); override;

  end;
//---------------------------------------------------------------------------
  TOWTypedFromRangedFormatConverter<T_OutStream : IOWBasicStream; T_InData; T_OutData; T_InputPin : TOWTypedAndRangedSinkPin<T_InData>, constructor; T_OutputPin : TOWTypedSourcePin<T_OutStream, T_OutData>, constructor> = class( TOWBasicTypedFormatConverter<T_OutStream, T_OutData, T_OutputPin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue, AMin, AMax : T_InData; ARangesFilled : Boolean; AOnConnect : Boolean ); virtual; abstract;

  public
    constructor Create(); override;

  end;
//---------------------------------------------------------------------------
  TOWTypedFromToRangedFormatConverter<T_OutStream : IOWBasicStream; T_OutRangedStream : IOWBasicStream; T_InData; T_OutData; T_InputPin : TOWTypedAndRangedSinkPin<T_InData>, constructor; T_OutputPin : TOWTypedRangedSourcePin<T_OutStream, T_OutRangedStream, T_OutData>, constructor> = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue, AMin, AMax : T_InData; ARangesFilled : Boolean; AOnConnect : Boolean ); virtual; abstract;
    procedure Send( const AOutData : T_OutData ); inline;
    procedure SendValueRange( const AValue, AMin, AMax : T_OutData ); inline;

  public
    constructor Create(); override;

  end;
//---------------------------------------------------------------------------
implementation

uses
{$IFDEF MSWINDOWS}
  WinApi.Windows,
{$ENDIF}
  System.UIConsts, Mitov.Utils, Mitov.TypeInfo, System.Rtti, Mitov.Elements,
  OpenWire.TypeConverters, Mitov.ClassManagement;

var
  GManagedDispatchSourcePinInit : TClassManagement.TInitClassDefaults;
  GManagedStdStatePinInit : TClassManagement.TInitClassDefaults;
  GManagedStdSinkPinInit : TClassManagement.TInitClassDefaults;
  GManagedStdMultiSinkPinInit : TClassManagement.TInitClassDefaults;
  GManagedClockSinkPinDefault : TClassManagement.TInitClassDefaults;
  GManagedClockMultiSinkPinDefault : TClassManagement.TInitClassDefaults;
  GManagedPinListOwnerDefault : TClassManagement.TInitClassDefaults;
  GManagedPinListDefault : TClassManagement.TInitClassDefaults;

//---------------------------------------------------------------------------
function IncMilliSecond( const AValue : TDateTime; const ANumberOfMilliSeconds : Int64 ): TDateTime;
begin
  Result := ((AValue * MSecsPerDay) + ANumberOfMilliSeconds) / MSecsPerDay;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor OWAddPinsAttribute.Create( const AName : String; AStartIndex : Cardinal; ACount : Cardinal; AValue : TClass );
begin
  inherited Create( AName, AValue );
  StartIndex := AStartIndex;
  Count := ACount;
end;
//---------------------------------------------------------------------------
constructor OWAddPinsAttribute.Create( const AName : String; AStartIndex : Cardinal; ACount : Cardinal; const AValue : IAtttributeParameterInfo );
begin
  inherited Create( AName, AValue );
  StartIndex := AStartIndex;
  Count := ACount;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor OWPinListCategoryAttribute.Create( AValue : TOWPinCategory );
begin
  inherited Create();
  Value := AValue;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor OWDispatchAsBasicStreamAttribute.Create( const ADataType : TGUID );
begin
  inherited Create();
  FDataType := ADataType;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStdSourcePin.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDisconnect : TOWPinEvent = NIL; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited;
  FDispatchAsBasicStream := TypeInfo().AccessAttributes.GetAll<OWDispatchAsBasicStreamAttribute>().ToArray();
end;
//---------------------------------------------------------------------------
function TOWStdSourcePin.NotificationCall( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  ABasicInterf  : IOWBasicStream;

begin
  for var AItem in FDispatchAsBasicStream do
    if( Supports( AHandler, AItem.DataType, ABasicInterf )) then
      Exit( ABasicInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState ));

  Result := inherited;
end;
//---------------------------------------------------------------------------
function TOWStdSourcePin.Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AGenInterf  : IOWDataStream;

begin
  if( not ( nsNewLink in AState )) then
    begin
    if( UpdateOnConnect()) then
      if( TInterface.IfSupports<IOWDataStream>( AHandler, AGenInterf )) then
        Exit( AGenInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState ));

    Exit( IntNotificationHandler( AHandler, ADataTypeID, AOperation, AState ));
    end;

  Result := inherited;
end;
//---------------------------------------------------------------------------
function TOWStdSourcePin.IntNotificationHandler( const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
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
constructor TOWStdStatePin.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDisconnect : TOWPinEvent; const AOnPinDispatchEvent : TOWPinDispatchEvent );
begin
  inherited Create( AOnCreated, AOwnerLock );
  FOnDisconnect := AOnDisconnect;
  FOnPinDispatchEvent := AOnPinDispatchEvent;

  FDispatchAsBasicStream := TypeInfo().AccessAttributes.GetAll<OWDispatchAsBasicStreamAttribute>().ToArray();
end;
//---------------------------------------------------------------------------
function TOWStdStatePin.NotificationCall( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  ABasicInterf  : IOWBasicStream;

begin
  for var AItem in FDispatchAsBasicStream do
    if( Supports( AHandler, AItem.DataType, ABasicInterf )) then
      Exit( ABasicInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState ));

  Result := inherited;
end;
//---------------------------------------------------------------------------
function TOWStdStatePin.Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AGenInterf  : IOWDataStream;

begin
  if( not ( nsNewLink in AState )) then
    begin
    if( UpdateOnConnect()) then
      if( TInterface.IfSupports<IOWDataStream>( AHandler, AGenInterf )) then
        Exit( AGenInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState ));

    Exit( IntNotificationHandler( AHandler, ADataTypeID, AOperation, AState ));
    end;

  Result := inherited;
end;
//---------------------------------------------------------------------------
function TOWStdStatePin.IntNotificationHandler( const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
begin
  Result := [];
end;
//---------------------------------------------------------------------------
function TOWStdStatePin.TryCustomDispatch( const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState; var AResult : TOWNotifyResult ) : Boolean;
begin
  if( not Assigned( FOnPinDispatchEvent )) then
    Exit( False );

  Result := True;
  AResult := FOnPinDispatchEvent( Self, ADataTypeID, AOperation, AState, Result );
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
constructor TOWStdSinkPin.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnPinDispatchEvent : TOWPinDispatchEvent );
begin
  inherited Create( AOnCreated, AOwnerLock );
  FOnPinDispatchEvent := AOnPinDispatchEvent;

  var ATypeInfo := TypeInfo();
  FCustomDispatchData := ATypeInfo.AccessAttributes.GetAll<TOWCustomDispatchDataAttribute>().ToArray();
  FTryCustomFirst := ATypeInfo.HasCustomAttribute( OWTryCustomFirstAttribute );

  FDispatchAsBasicStream := TypeInfo().AccessAttributes.GetAll<OWDispatchAsBasicStreamAttribute>().ToArray();
end;
//---------------------------------------------------------------------------
function TOWStdSinkPin.NotificationCall( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  ABasicInterf  : IOWBasicStream;

begin
  for var AItem in FDispatchAsBasicStream do
    if( Supports( AHandler, AItem.DataType, ABasicInterf )) then
      Exit( ABasicInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState ));

  Result := inherited;
end;
//---------------------------------------------------------------------------
function TOWStdSinkPin.DispatchData( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;  stdcall;
begin
  if( FTryCustomFirst ) then
    if( TryCustomDispatch( ADataTypeID, AOperation, AState, Result )) then
      Exit;

  for var AItem in FCustomDispatchData do
    if( AItem.DispatchData( Self, AOtherPin, ADataTypeID, AOperation, AState, Result )) then
      Exit;

  Result := DispatchDataImpl( AOtherPin, ADataTypeID, AOperation, AState );
end;
//---------------------------------------------------------------------------
function TOWStdSinkPin.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
begin
  Result := [];

  if( not FTryCustomFirst ) then
    TryCustomDispatch( ADataTypeID, AOperation, AState, Result )

end;
//---------------------------------------------------------------------------
function TOWStdSinkPin.TryCustomDispatch( const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState; var AResult : TOWNotifyResult ) : Boolean;
begin
  if( not Assigned( FOnPinDispatchEvent )) then
    Exit( False );

  Result := True;
  AResult := FOnPinDispatchEvent( Self, ADataTypeID, AOperation, AState, Result );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStdMultiSinkPin.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnPinDispatchEvent : TOWPinDispatchEvent );
begin
  inherited Create( AOnCreated, AOwnerLock );
  FOnPinDispatchEvent := AOnPinDispatchEvent;

  var ATypeInfo := TypeInfo();
  FCustomDispatchData := ATypeInfo.AccessAttributes.GetAll<TOWCustomDispatchDataAttribute>().ToArray();
  FTryCustomFirst := ATypeInfo.HasCustomAttribute( OWTryCustomFirstAttribute );

  FDispatchAsBasicStream := TypeInfo().AccessAttributes.GetAll<OWDispatchAsBasicStreamAttribute>().ToArray();
end;
//---------------------------------------------------------------------------
function TOWStdMultiSinkPin.NotificationCall( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  ABasicInterf  : IOWBasicStream;

begin
  for var AItem in FDispatchAsBasicStream do
    if( Supports( AHandler, AItem.DataType, ABasicInterf )) then
      Exit( ABasicInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState ));

  Result := inherited;
end;
//---------------------------------------------------------------------------
function TOWStdMultiSinkPin.DispatchData( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  if( FTryCustomFirst ) then
    if( TryCustomDispatch( ADataTypeID, AOperation, AState, Result )) then
      Exit;

  for var AItem in FCustomDispatchData do
    if( AItem.DispatchData( Self, AOtherPin, ADataTypeID, AOperation, AState, Result )) then
      Exit;

  Result := DispatchDataImpl( AOtherPin, ADataTypeID, AOperation, AState );
end;
//---------------------------------------------------------------------------
function TOWStdMultiSinkPin.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( not FTryCustomFirst ) then
    TryCustomDispatch( ADataTypeID, AOperation, AState, Result )

end;
//---------------------------------------------------------------------------
function TOWStdMultiSinkPin.TryCustomDispatch( const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState; var AResult : TOWNotifyResult ) : Boolean;
begin
  if( not Assigned( FOnPinDispatchEvent )) then
    Exit( False );

  Result := True;
  AResult := FOnPinDispatchEvent( Self, ADataTypeID, AOperation, AState, Result );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWBasicDispatchSourcePin.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; AMaxConnections : Integer = -1; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited Create( AOnCreated, AOwnerLock );
  FDataSection := TCriticalSection.Create();
  FPinNotificationEvent := APinNotificationEvent;

  FCustomDispatchData := TypeInfo().AccessAttributes.GetAll<TOWCustomDispatchDataAttribute>().ToArray();
end;
//---------------------------------------------------------------------------
function TOWBasicDispatchSourcePin.Notify( const AOperation : IOWNotifyOperation ) : TOWNotifyResult;
begin
  Result := inherited;

  if( AOperation.IsType( TOWStartOperation )) then
    FDataSection.Access.Setter<IOWNotifyOperation>( FStartOperation, AOperation )

  else if( AOperation.IsType( TOWStopOperation )) then
    FDataSection.Access.Setter<IOWNotifyOperation>( FStartOperation, NIL );

end;
//---------------------------------------------------------------------------
procedure TOWBasicDispatchSourcePin.IntConnect( const ASinkPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID; AFromOther : Boolean );
begin
  inherited;

  var AStartOperation := FDataSection.Access.Getter<IOWNotifyOperation>( FStartOperation );

  if( AStartOperation <> NIL ) then
    NotifyPin( ASinkPin, AStartOperation );

end;
//---------------------------------------------------------------------------
function TOWBasicDispatchSourcePin.IntConnectAfter( AOtherPin : TOWBasicPin; ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID ) : Boolean;
begin
  Result := inherited;

  var AStartOperation := FDataSection.Access.Getter<IOWNotifyOperation>( FStartOperation );

  if( AStartOperation <> NIL ) then
    NotifyPin( AOtherPin, AStartOperation );

end;
//---------------------------------------------------------------------------
function TOWBasicDispatchSourcePin.DispatchData( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  for var AItem in FCustomDispatchData do
    if( AItem.DispatchData( Self, AOtherPin, ADataTypeID, AOperation, AState, Result )) then
      Exit;

  Result := DispatchDataImpl( AOtherPin, ADataTypeID, AOperation, AState );
end;
//---------------------------------------------------------------------------
function TOWBasicDispatchSourcePin.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
//  AInputWriteLock : ILockSection;
  AWriteLock : ILockSection;

begin
  if( Assigned( FPinNotificationEvent )) then
    begin
  //    if( FInputOwnerLock <> NIL ) then
  //      AWriteLock := FOwnerLock.WriteLock();

    AWriteLock := FOwnerLock.WriteLock();
    Exit( FPinNotificationEvent( Self, AOtherPin, ADataTypeID, AOperation, AState ));
    end;

  Result := [];
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWManagedDispatchSourcePin.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDisconnect : TOWPinEvent = NIL; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited Create( AOnCreated, AOwnerLock, -1, APinNotificationEvent );
  FOnDisconnect := AOnDisconnect;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWDispatchSinkPin.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited Create( AOnCreated, AOwnerLock );
  FPinNotificationEvent := APinNotificationEvent;

  FCustomDispatchData := TypeInfo().AccessAttributes.GetAll<TOWCustomDispatchDataAttribute>().ToArray();
end;
//---------------------------------------------------------------------------
function TOWDispatchSinkPin.DispatchData( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  for var AItem in FCustomDispatchData do
    if( AItem.DispatchData( Self, AOtherPin, ADataTypeID, AOperation, AState, Result )) then
      Exit;

  Result := DispatchDataImpl( AOtherPin, ADataTypeID, AOperation, AState );
end;
//---------------------------------------------------------------------------
function TOWDispatchSinkPin.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
begin
  if( Assigned( FPinNotificationEvent )) then
    Exit( FPinNotificationEvent( Self, AOtherPin, ADataTypeID, AOperation, AState ));

  Result := [];
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWDispatchMultiSinkPin.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited Create( AOnCreated, AOwnerLock );
  FPinNotificationEvent := APinNotificationEvent;

  FCustomDispatchData := TypeInfo().AccessAttributes.GetAll<TOWCustomDispatchDataAttribute>().ToArray();
  FDispatchAsBasicStream := TypeInfo().AccessAttributes.GetAll<OWDispatchAsBasicStreamAttribute>().ToArray();
end;
//---------------------------------------------------------------------------
function TOWDispatchMultiSinkPin.NotificationCall( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  ABasicInterf  : IOWBasicStream;

begin
  for var AItem in FDispatchAsBasicStream do
    if( Supports( AHandler, AItem.DataType, ABasicInterf )) then
      Exit( ABasicInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState ));

  Result := inherited;
end;
//---------------------------------------------------------------------------
function TOWDispatchMultiSinkPin.DispatchData( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  for var AItem in FCustomDispatchData do
    if( AItem.DispatchData( Self, AOtherPin, ADataTypeID, AOperation, AState, Result )) then
      Exit;

  Result := DispatchDataImpl( AOtherPin, ADataTypeID, AOperation, AState );
end;
//---------------------------------------------------------------------------
function TOWDispatchMultiSinkPin.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AWriteLock : ILockSection;

begin
  if( Assigned( FPinNotificationEvent )) then
    begin
    AWriteLock := FOwnerLock.WriteLock();
    Exit( FPinNotificationEvent( Self, AOtherPin, ADataTypeID, AOperation, AState ));
    end;

  Result := [];
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWDispatchStatePin.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited Create( AOnCreated, AOwnerLock );
  FPinNotificationEvent := APinNotificationEvent;

  FCustomDispatchData := TypeInfo().AccessAttributes.GetAll<TOWCustomDispatchDataAttribute>().ToArray();
end;
//---------------------------------------------------------------------------
function TOWDispatchStatePin.DispatchData( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  for var AItem in FCustomDispatchData do
    if( AItem.DispatchData( Self, AOtherPin, ADataTypeID, AOperation, AState, Result )) then
      Exit;

  Result := DispatchDataImpl( AOtherPin, ADataTypeID, AOperation, AState );
end;
//---------------------------------------------------------------------------
function TOWDispatchStatePin.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AWriteLock : ILockSection;

begin
  if( Assigned( FPinNotificationEvent )) then
    begin
    AWriteLock := FOwnerLock.WriteLock();
    Exit( FPinNotificationEvent( Self, AOtherPin, ADataTypeID, AOperation, AState ));
    end;

  Result := [];
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWClockSourcePin.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDisconnect : TOWPinEvent = NIL; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited;
  AddType( IOWClockStream, ClockNotification, True );
end;
//---------------------------------------------------------------------------
procedure TOWClockSourcePin.Clock( ASamples : Integer );
begin
  Notify( TOWClockOperation.Create( ASamples ) );
end;
//---------------------------------------------------------------------------
function TOWClockSourcePin.ClockNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
begin
  Result := [];

  TInterface.IfSupports<IOWClockStream>( AHandler,
      procedure( const AIntf : IOWClockStream )
      begin
        AIntf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );
      end
    );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWClockSinkPin.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnClock : TOWClockEvent; const AOnPinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited Create( AOnCreated, AOwnerLock, AOnPinNotificationEvent );
  FOnClock := AOnClock;
  AddType( IOWClockStream, ClockNotification, True );
end;
//---------------------------------------------------------------------------
function TOWClockSinkPin.ClockNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
begin
  Result := [];

  TInterface.IfSupports<IOWClockStream>( AHandler,
      procedure( const AIntf : IOWClockStream )
      begin
        AIntf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );
      end
    );

end;
//---------------------------------------------------------------------------
function TOWClockSinkPin.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; stdcall;
var
  AWriteLock : ILockSection;

begin
  Result := [];
  if( Assigned( FPinNotificationEvent )) then
    begin
    AWriteLock := FOwnerLock.WriteLock();
    Result := FPinNotificationEvent( Self, AOtherPin, ADataTypeID, AOperation, AState );
    end;

  if( Assigned( FOnClock )) then
//    if( not ( nsNewLink in AState )) then
    if( AOperation.IsType( TOWClockOperation )) then
      begin
//      AWriteLock := FOwnerLock.WriteLock();
      FOnClock( Self );
      end;

    
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWTypedSinkPin<T_Data>.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDataChange : TOWDataChangeEvent<T_Data>; const AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited Create( AOnCreated, AOwnerLock, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
class function TOWTypedSinkPin<T_Data>.CreateGeneric( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDataChange : TOWDataChangeEvent<T_Data>; const AOnPinDispatchEvent : TOWPinDispatchEvent = NIL ) : TOWTypedSinkPin<T_Data>;
begin
  Result := Create( AOnCreated, AOwnerLock, AOnDataChange, AOnPinDispatchEvent );
end;
//---------------------------------------------------------------------------
function TOWTypedSinkPin<T_Data>.IsSupportedDataType( const AOperation : IOWNotifyOperation ) : Boolean; stdcall;
begin
  Result := AOperation.IsType( TOWTypedSuppliedOperation<T_Data> );
end;
//---------------------------------------------------------------------------
function TOWTypedSinkPin<T_Data>.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;  stdcall;
begin
  Result := [];
  if( nsNewLink in AState ) then
    if( not UpdateOnConnect()) then
      Exit;

  if( IsSupportedDataType( AOperation )) then
    begin
//    if( FValue <> TOWSuppliedSingleOperation( AOperation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<T_Data>( AOperation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in AState );

      end;
    end

  else if( not TryCustomDispatch( ADataTypeID, AOperation, AState, Result )) then
    begin
    if( AOperation.IsType( TOWClearContentOperation )) then
      begin
      FValue := Default( T_Data );
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in AState );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWTypedMultiSinkPin<T_Data>.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDataChange : TOWDataChangeEvent<T_Data>; const AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited Create( AOnCreated, AOwnerLock, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
class function TOWTypedMultiSinkPin<T_Data>.CreateGeneric( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<T_Data>; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL ) : TOWTypedMultiSinkPin<T_Data>;
begin
  Result := Create( AOnCreated, AOwnerLock, AOnDataChange, AOnPinDispatchEvent );
end;
//---------------------------------------------------------------------------
function TOWTypedMultiSinkPin<T_Data>.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;  stdcall;
begin
  Result := [];
  if( nsNewLink in AState ) then
    if( not UpdateOnConnect()) then
      Exit;

  if( AOperation.IsType( TOWTypedSuppliedOperation<T_Data> )) then
    begin
//    if( FValue <> TOWSuppliedSingleOperation( AOperation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<T_Data>( AOperation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in AState );

      end;
    end

  else if( not TryCustomDispatch( ADataTypeID, AOperation, AState, Result )) then
    begin
    if( AOperation.IsType( TOWClearContentOperation )) then
      begin
      FValue := Default( T_Data );
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in AState );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWBasicTypedStatePin<T_Data>.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDataChange : TOWDataChangeEvent<T_Data>; const AOnDisconnect : TOWPinEvent = NIL; const AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited Create( AOnCreated, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;

  FCustomDispatchData := TypeInfo().AccessAttributes.GetAll<TOWCustomDispatchDataAttribute>().ToArray();
end;
//---------------------------------------------------------------------------
class function TOWBasicTypedStatePin<T_Data>.CreateGeneric( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDataChange : TOWDataChangeEvent<T_Data>; const AOnDisconnect : TOWPinEvent = NIL; const AOnPinDispatchEvent : TOWPinDispatchEvent = NIL ) : TOWBasicTypedStatePin<T_Data>;
begin
  Result := Create( AOnCreated, AOwnerLock, AOnDataChange, AOnDisconnect, AOnPinDispatchEvent );
end;
//---------------------------------------------------------------------------
procedure TOWBasicTypedStatePin<T_Data>.AfterConstruction();
begin
  FComparer := TComparer<T_Data>.Default;
  inherited;
end;
//---------------------------------------------------------------------------
function TOWBasicTypedStatePin<T_Data>.DispatchData( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;  stdcall;
begin
  for var AItem in FCustomDispatchData do
    if( AItem.DispatchData( Self, AOtherPin, ADataTypeID, AOperation, AState, Result )) then
      Exit;

  Result := DispatchDataImpl( AOtherPin, ADataTypeID, AOperation, AState );
end;
//---------------------------------------------------------------------------
function TOWBasicTypedStatePin<T_Data>.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];
  if( nsNewLink in AState ) then
    if( not UpdateOnConnect()) then
      Exit;

  if( AOperation.IsType( TOWTypedSuppliedOperation<T_Data> )) then
    begin
//    if( FValue <> TOWSuppliedSingleOperation( AOperation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<T_Data>( AOperation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in AState );

      end;
    end

  else if( not TryCustomDispatch( ADataTypeID, AOperation, AState, Result )) then
    begin
    if( AOperation.IsType( TOWClearContentOperation )) then
      begin
      FValue := Default( T_Data );
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in AState );

      end;
    end;

end;
//---------------------------------------------------------------------------
procedure TOWBasicTypedStatePin<T_Data>.SetValue( const AValue : T_Data );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if( FComparer.Compare( FValue, AValue ) <> 0 ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWBasicTypedStatePin<T_Data>.Send( const AValue : T_Data );
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
function TOWTypedStatePin<T_Interface, T_Data>.Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterf     : IOWFloatStream;
  AWriteLock  : ILockSection;

begin
  if( AOperation.IsType( TOWTypedSuppliedOperation<T_Data> )) then
    FValue := TOWTypedSuppliedOperation<T_Data>( AOperation.GetInstance()).Value;

  Result := [];
  if( Supports( AHandler, GetTypeData(System.TypeInfo(T_Interface))^.Guid, AInterf )) then
//  if( Supports( AHandler,IOWFloatStream,AInterf )) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      var AHandled := True;
      AWriteLock := FOwnerLock.WriteLock();
      Result := FPinNotificationEvent( AInterf, ADataTypeID, AOperation, AState, AHandled );
      AWriteLock := NIL;
      if( AHandled ) then
        Exit;

      end;

    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        AInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<T_Data>.Create( FValue ), AState );
        Exit;
        end;

    AInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );
    end;

  Result := inherited;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWCharSourcePin.SendText( const AText : String );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  for var I := 1 to Length( AText ) do
    begin
    FValue := AText[ I ];
    Notify( TOWTypedSuppliedOperation<Char>.Create( FValue ));
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWBasicTypedSourcePin<T_Data>.CreateEx( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const APinNotificationEvent : TOWPinNotificationEvent; const AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOnCreated, AOwnerLock, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
  FComparer := TComparer<T_Data>.Default;
end;
//---------------------------------------------------------------------------
constructor TOWBasicTypedSourcePin<T_Data>.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDisconnect : TOWPinEvent = NIL; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited;
  FComparer := TComparer<T_Data>.Default;
end;
//---------------------------------------------------------------------------
class function TOWBasicTypedSourcePin<T_Data>.CreateGeneric( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDisconnect : TOWPinEvent = NIL; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL ) : TOWBasicTypedSourcePin<T_Data>;
begin
  Result := Create( AOnCreated, AOwnerLock, AOnDisconnect, APinNotificationEvent );
end;
//---------------------------------------------------------------------------
procedure TOWBasicTypedSourcePin<T_Data>.SetValue( const AValue : T_Data );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if( FComparer.Compare( FValue, AValue ) <> 0 ) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWBasicTypedSourcePin<T_Data>.Send( const AValue : T_Data );
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
function TOWTypedSourcePin<T_Interface; T_Data>.Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterf     : IOWDataStream;
  AWriteLock  : ILockSection;

begin
  Result := [];
  if( Supports( AHandler, GetTypeData(System.TypeInfo(T_Interface))^.Guid, AInterf )) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      var AHandled := True;
      AWriteLock := FOwnerLock.WriteLock();
      Result := FPinNotificationEvent( AOtherPin, AInterf, ADataTypeID, AOperation, AState, AHandled );
      if( AHandled ) then
        Exit;

      end;

    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        Exit( IOWBasicStream( AInterf ).DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<T_Data>.Create( Value ), AState ));

    Result := AInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );
    end;

  Result := inherited;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWRealSourcePin.Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterfReal   : IOWRealStream;
  AInterfFloat  : IOWFloatStream;
  AWriteLock    : ILockSection;

begin
  Result := [];
  if( TInterface.IfSupports<IOWRealStream>( AHandler, AInterfReal )) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      var AHandled := True;
      AWriteLock := FOwnerLock.WriteLock();
      Result := FPinNotificationEvent( AOtherPin, AInterfReal, ADataTypeID, AOperation, AState, AHandled );
      if( AHandled ) then
        Exit;

      end;

    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        AInterfReal.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<Real>.Create( Value ), AState );
        Exit;
        end;

    AInterfReal.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );
    end

  else if( TInterface.IfSupports<IOWFloatStream>( AHandler, AInterfFloat )) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      var AHandled := True;
      AWriteLock := FOwnerLock.WriteLock();
      Result := FPinNotificationEvent( AOtherPin, AInterfFloat, ADataTypeID, AOperation, AState, AHandled );
      if( AHandled ) then
        Exit;

      end;

    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        AInterfFloat.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<Single>.Create( Value ), AState );
        Exit;
        end;

    var ALocalOperation := AOperation;
    if( ALocalOperation.IsType( TOWTypedSuppliedOperation<Real> )) then
      ALocalOperation := TOWTypedSuppliedOperation<Single>.Create( TOWTypedSuppliedOperation<Real>( ALocalOperation.GetInstance() ).Value );

    AInterfFloat.DispatchData( AOtherPin, ADataTypeID, ALocalOperation, AState );
    end;

  Result := inherited;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWRealSinkPin.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( nsNewLink in AState ) then
    if( not UpdateOnConnect()) then
      Exit;

  if( AOperation.IsType( TOWTypedSuppliedOperation<Real> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<Real>( AOperation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<Real>( AOperation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in AState );

      end;
    end

  else if( AOperation.IsType( TOWTypedSuppliedOperation<Single> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<Single>( AOperation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<Single>( AOperation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in AState );

      end;
    end

  else if( not TryCustomDispatch( ADataTypeID, AOperation, AState, Result )) then
    begin
    if( AOperation.IsType( TOWClearContentOperation )) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in AState );

      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWRealMultiSinkPin.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( nsNewLink in AState ) then
    if( not UpdateOnConnect()) then
      Exit;

  if( AOperation.IsType( TOWTypedSuppliedOperation<Real> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<Real>( AOperation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<Real>( AOperation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in AState );

      end;
    end

  else if( AOperation.IsType( TOWTypedSuppliedOperation<Single> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<Real>( AOperation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<Single>( AOperation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in AState );

      end;
    end

  else
    TryCustomDispatch( ADataTypeID, AOperation, AState, Result );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWRealStatePin.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( nsNewLink in AState ) then
    if( not UpdateOnConnect()) then
      Exit;

  if( AOperation.IsType( TOWTypedSuppliedOperation<Real> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<Real>( AOperation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<Real>( AOperation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in AState );

      end;
    end
      
  else if( AOperation.IsType( TOWTypedSuppliedOperation<Single> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<Real>( AOperation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<Single>( AOperation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in AState );

      end;
    end

  else if( not TryCustomDispatch( ADataTypeID, AOperation, AState, Result )) then
    begin
    if( AOperation.IsType( TOWClearContentOperation )) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in AState );

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWRealStatePin.Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterfReal   : IOWRealStream;
  AInterfFloat  : IOWFloatStream;
  AWriteLock    : ILockSection;

begin
  Result := [];
  if( AOperation.IsType( TOWTypedSuppliedOperation<Real> )) then
    FValue := TOWTypedSuppliedOperation<Real>( AOperation.GetInstance() ).Value

  else if( AOperation.IsType( TOWTypedSuppliedOperation<Single> )) then
    FValue := TOWTypedSuppliedOperation<Single>( AOperation.GetInstance() ).Value;

  if( TInterface.IfSupports<IOWRealStream>( AHandler, AInterfReal )) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      var AHandled := True;
      AWriteLock := FOwnerLock.WriteLock();
      Result := FPinNotificationEvent( AOtherPin, AInterfReal, ADataTypeID, AOperation, AState, AHandled );
      if( AHandled ) then
        Exit;

      end;

    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        AInterfReal.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<Real>.Create( Value ), AState );
        Exit;
        end;

    AInterfReal.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );
    end
    
  else if( TInterface.IfSupports<IOWFloatStream>( AHandler, AInterfFloat)) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      var AHandled := True;
      AWriteLock := FOwnerLock.WriteLock();
      Result := FPinNotificationEvent( AOtherPin, AInterfFloat, ADataTypeID, AOperation, AState, AHandled );
      if( AHandled ) then
        Exit;

      end;

    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        AInterfFloat.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<Single>.Create( Value ), AState );
        Exit;
        end;

    var ALocalOperation := AOperation;
    if( ALocalOperation.IsType( TOWTypedSuppliedOperation<Real> )) then
      ALocalOperation := TOWTypedSuppliedOperation<Single>.Create( TOWTypedSuppliedOperation<Real>( ALocalOperation.GetInstance() ).Value );

    AInterfFloat.DispatchData( AOtherPin, ADataTypeID, ALocalOperation, AState );
    end;

  Result := inherited;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWDateTimeRealSourcePin.Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterfDateTime : IOWDateTimeStream;
  ADateTime       : TDateTime;
  AWriteLock      : ILockSection;

begin
  Result := [];
  if( TInterface.IfSupports<IOWDateTimeStream>( AHandler, AInterfDateTime )) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      var AHandled := True;
      AWriteLock := FOwnerLock.WriteLock();
      Result := FPinNotificationEvent( AOtherPin, AInterfDateTime, ADataTypeID, AOperation, AState, AHandled );
      if( AHandled ) then
        Exit;

      end;

    var AMSec := Round( Value * 1000 );
    if( AMSec = 0 ) then
      ADateTime := 0

    else
      begin
      var ATimeStamp := MSecsToTimeStamp( Round( Value * 1000 ));
      ATimeStamp.Date := 1;
      ADateTime := TimeStampToDateTime( ATimeStamp );
      end;

    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        AInterfDateTime.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<TDateTime>.Create( ADateTime ), AState );
        Exit;
        end;

    AInterfDateTime.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<TDateTime>.Create( ADateTime ), AState );
    end

  else
    Result := inherited;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWInt64TimeRangedSourcePin.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDisconnect : TOWPinEvent = NIL; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited;
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
procedure TOWInt64TimeRangedSourcePin.SubmitValueRange( const AValue : Int64; const AMin : Int64; const AMax : Int64; const AMinTime : TDateTime; const AMaxTime : TDateTime );
var
  AMiliSecondsPeriod  : Int64;
  AWriteLock          : ILockSection;

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

  var ATimeValue := IncMilliSecond( FMinTime, AMiliSecondsPeriod );
  Notify( TOWTypedSuppliedValueRangeOperation<TDateTime>.Create( ATimeValue, FMinTime, FMaxTime ));
end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedSourcePin.SubmitValue( const AValue : Int64 );
var
  AMiliSecondsPeriod  : Int64;
  AWriteLock          : ILockSection;

begin
  AWriteLock := WriteLock();
  FValue := AValue;
  Notify( TOWTypedSuppliedOperation<Int64>.Create( FValue ));
  if( FMax = FMin ) then
    AMiliSecondsPeriod := 0

  else
    AMiliSecondsPeriod := Round( MSecsPerDay * ( FMaxTime - FMinTime ) * ( FValue - FMin ) / ( FMax - FMin ) );

  var ATimeValue := IncMilliSecond( FMinTime, AMiliSecondsPeriod );
  Notify( TOWTypedSuppliedOperation<TDateTime>.Create( ATimeValue ));
end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedSourcePin.SubmitRange( const AMin : Int64; const AMax : Int64; const AMinTime : TDateTime; const AMaxTime : TDateTime );
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
procedure TOWInt64TimeRangedSourcePin.SetValue( const AValue : Int64 );
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
procedure TOWInt64TimeRangedSourcePin.SetMinTime( const AValue : TDateTime );
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
procedure TOWInt64TimeRangedSourcePin.SetMaxTime( const AValue : TDateTime );
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
function TOWInt64TimeRangedSourcePin.TimeNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterf             : IOWDateTimeStream;
  AMiliSecondsPeriod  : Int64;

begin
  Result := [];
  if( TInterface.IfSupports<IOWDateTimeStream>( AHandler, AInterf )) then
    begin
    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        if( FMax = FMin ) then
          AMiliSecondsPeriod := 0

        else
          AMiliSecondsPeriod := Round( MSecsPerDay * ( FMaxTime - FMinTime ) * ( FValue - FMin ) / ( FMax - FMin ) );

        var ATimeValue := IncMilliSecond( FMinTime, AMiliSecondsPeriod );
        AInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<TDateTime>.Create( ATimeValue ), AState );
        Exit;
        end;

    AInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );
    end;
    
end;
//---------------------------------------------------------------------------
function TOWInt64TimeRangedSourcePin.TimeRangedNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterf             : IOWDateTimeRangedStream;
  AMiliSecondsPeriod  : Int64;

begin
  Result := [];
  if( TInterface.IfSupports<IOWDateTimeRangedStream>( AHandler, AInterf )) then
    begin
    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        if( FMax = FMin ) then
          AMiliSecondsPeriod := 0

        else
          AMiliSecondsPeriod := Round( MSecsPerDay * ( FMaxTime - FMinTime ) * ( FValue - FMin ) / ( FMax - FMin ) );

        var ATimeValue := IncMilliSecond( FMinTime, AMiliSecondsPeriod );
        AInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedValueRangeOperation<TDateTime>.Create( ATimeValue, FMinTime, FMaxTime ), AState );
        Exit;
        end;

    AInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );
    end;
    
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWInt64TimeRangedStatePin.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDataChange : TOWInt64DateTimeValueRangeChangeEvent; const AOnRangeChange : TOWInt64DateTimeRangeChangeEvent = NIL; const AOnDisconnect : TOWPinEvent = NIL; const AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited Create( AOnCreated, AOwnerLock, 0, 0, 0, NIL, NIL, AOnDisconnect, AOnPinDispatchEvent );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
  AddType( IOWDateTimeStream, TimeNotification, True );
  AddType( IOWDateTimeRangedStream, TimeRangedNotification, True );
end;
//---------------------------------------------------------------------------
function TOWInt64TimeRangedStatePin.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( nsNewLink in AState ) then
    if( not UpdateOnConnect()) then
      Exit;

  if( AOperation.IsType( TOWTypedSuppliedValueRangeOperation<Int64> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<Int64>( AOperation.GetInstance() ).Value ) then
      begin
      FMin := TOWTypedSuppliedValueRangeOperation<Int64>( AOperation.GetInstance() ).Min;
      FMax := TOWTypedSuppliedValueRangeOperation<Int64>( AOperation.GetInstance() ).Max;
      FValue := TOWTypedSuppliedValueRangeOperation<Int64>( AOperation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, FMinTime, FMaxTime, True, nsNewLink in AState );

      end;
    end
    
  else if( AOperation.IsType( TOWTypedSuppliedRangeOperation<Int64> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<Int64>( AOperation.GetInstance() ).Value ) then
      begin
      FMin := TOWTypedSuppliedRangeOperation<Int64>( AOperation.GetInstance() ).Min;
      FMax := TOWTypedSuppliedRangeOperation<Int64>( AOperation.GetInstance() ).Max;
      if( Assigned( FOnRangeChange )) then
        FOnRangeChange( Self, FMin, FMax, FMinTime, FMaxTime, nsNewLink in AState );

      end;
    end

  else if( AOperation.IsType( TOWTypedSuppliedOperation<Int64> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<Int64>( AOperation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<Int64>( AOperation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, FMinTime, FMaxTime, False, nsNewLink in AState );

      end;
    end

  else if( not TryCustomDispatch( ADataTypeID, AOperation, AState, Result )) then
    begin
    if( AOperation.IsType( TOWClearContentOperation )) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, FMinTime, FMaxTime, False, nsNewLink in AState );

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
procedure TOWInt64TimeRangedStatePin.SubmitValueRange( const AValue : Int64; const AMin : Int64; const AMax : Int64; const AMinTime : TDateTime; const AMaxTime : TDateTime );
var
  AMiliSecondsPeriod  : Int64;
  AWriteLock          : ILockSection;

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

  var ATimeValue := IncMilliSecond( FMinTime, AMiliSecondsPeriod );
  Notify( TOWTypedSuppliedValueRangeOperation<TDateTime>.Create( ATimeValue, FMinTime, FMaxTime ));
end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedStatePin.SubmitValue( const AValue : Int64 );
var
  AMiliSecondsPeriod  : Int64;
  AWriteLock          : ILockSection;

begin
  AWriteLock := WriteLock();
  FValue := AValue;
  Notify( TOWTypedSuppliedOperation<Int64>.Create( FValue ));
  if( FMax = FMin ) then
    AMiliSecondsPeriod := 0

  else
    AMiliSecondsPeriod := Round( MSecsPerDay * ( FMaxTime - FMinTime ) * ( FValue - FMin ) / ( FMax - FMin ) );

  var ATimeValue := IncMilliSecond( FMinTime, AMiliSecondsPeriod );
  Notify( TOWTypedSuppliedOperation<TDateTime>.Create( ATimeValue ));
end;
//---------------------------------------------------------------------------
procedure TOWInt64TimeRangedStatePin.SubmitRange( const AMin : Int64; const AMax : Int64; const AMinTime : TDateTime; const AMaxTime : TDateTime );
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
procedure TOWInt64TimeRangedStatePin.SetValue( const AValue : Int64 );
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
procedure TOWInt64TimeRangedStatePin.SetMinTime( const AValue : TDateTime );
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
procedure TOWInt64TimeRangedStatePin.SetMaxTime( const AValue : TDateTime );
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
function TOWInt64TimeRangedStatePin.TimeNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterf             : IOWDateTimeStream;
  AMiliSecondsPeriod  : Int64;

begin
  Result := [];
  if( TInterface.IfSupports<IOWDateTimeStream>( AHandler, AInterf )) then
    begin
    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        if( FMax = FMin ) then
          AMiliSecondsPeriod := 0

        else
          AMiliSecondsPeriod := Round( MSecsPerDay * ( FMaxTime - FMinTime ) * ( FValue - FMin ) / ( FMax - FMin ) );

        var ATimeValue : TDateTime := IncMilliSecond( FMinTime, AMiliSecondsPeriod );
        AInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<TDateTime>.Create( ATimeValue ), AState );
        Exit;
        end;

    AInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );
    end;
    
end;
//---------------------------------------------------------------------------
function TOWInt64TimeRangedStatePin.TimeRangedNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterf             : IOWDateTimeRangedStream;
  AMiliSecondsPeriod  : Int64;

begin
  Result := [];
  if( nsNewLink in AState ) then
    if( not UpdateOnConnect()) then
      Exit;

  if( TInterface.IfSupports<IOWDateTimeRangedStream>( AHandler, AInterf )) then
    begin
    if( nsNewLink in AState ) then
      begin
      if( FMax = FMin ) then
        AMiliSecondsPeriod := 0

      else
        AMiliSecondsPeriod := Round( MSecsPerDay * ( FMaxTime - FMinTime ) * ( FValue - FMin ) / ( FMax - FMin ) );

      var ATimeValue := IncMilliSecond( FMinTime, AMiliSecondsPeriod );
      AInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedValueRangeOperation<TDateTime>.Create( ATimeValue, FMinTime, FMaxTime ), AState );
      Exit;
      end;

    AInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWBoolClockSinkPin.CreateClock( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; AOnDataChange : TOWDataChangeEvent<Boolean>; AOnClock : TProc; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited Create( AOnCreated, AOwnerLock, AOnDataChange, AOnPinDispatchEvent );
  FOnClock := AOnClock;
end;
//---------------------------------------------------------------------------
function TOWBoolClockSinkPin.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
begin
  Result := [];
  if( nsNewLink in AState ) then
    if( not UpdateOnConnect()) then
      Exit;

  if( ( not ( IsEqualGUID( ADataTypeID, IOWBoolStream ))) and ( AOperation.IsType( TOWClockOperation ))) then
    begin
    if( Assigned( FOnClock )) then
      begin
      FOnClock();
      Exit( [] );
      end;

    FValue := not FValue;
    if( Assigned( FOnDataChange )) then
      FOnDataChange( Self, FValue, nsNewLink in AState );

    FValue := not FValue;
    if( Assigned( FOnDataChange )) then
      FOnDataChange( Self, FValue, nsNewLink in AState );

    end

  else
    Result := inherited DispatchDataImpl( AOtherPin, ADataTypeID, AOperation, AState );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStringListSourcePin.CreateEx( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOnCreated, AOwnerLock, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
constructor TOWStringListSourcePin.CreateConnect( const AOnCreated : TProc<TOWPin>; AOnConnect : TOWPinEvent );
begin
  inherited Create( AOnCreated, NIL, NIL );
  FOnConnect := AOnConnect;
end;
//---------------------------------------------------------------------------
function TOWStringListSourcePin.Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterf     : IOWStringListStream;
  AWriteLock  : ILockSection;

begin
  Result := [];
  if( TInterface.IfSupports<IOWStringListStream>( AHandler,AInterf )) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      var AHandled := True;
      AWriteLock := FOwnerLock.WriteLock();
      Result := FPinNotificationEvent( AOtherPin, AInterf, ADataTypeID, AOperation, AState, AHandled );
      if( AHandled ) then
        Exit;

      end;

{
    if( nsNewLink in AState ) then
      begin
      AInterf.DispatchDataImpl( ADataTypeID, TOWSuppliedStringListOperation.Create( Value ), AState );
      Exit;
      end;
}
    AInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );
    end;

  Result := inherited;
end;
//---------------------------------------------------------------------------
procedure TOWStringListSourcePin.NewConnection( const ASinkPin : TOWBasicPin );
begin
  inherited;
  if( Assigned( FOnConnect )) then
    FOnConnect( ASinkPin );

end;
//---------------------------------------------------------------------------
procedure TOWStringListSourcePin.Send( const AValue : IStringArrayList );
begin
  Notify( TOWSuppliedStringListOperation.Create( AValue ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWStringListSinkPin.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( nsNewLink in AState ) then
    if( not UpdateOnConnect()) then
      Exit;

  if( AOperation.IsType( TOWSuppliedStringListOperation )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<String>( AOperation.GetInstance() ).Value ) then
      begin
//      FValue := TOWTypedSuppliedOperation<String>( AOperation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, TOWSuppliedStringListOperation( AOperation.GetInstance() ).Value, nsNewLink in AState );

      end;
    end

  else if( not TryCustomDispatch( ADataTypeID, AOperation, AState, Result )) then
    begin
    if( AOperation.IsType( TOWClearContentOperation )) then
      begin
//      FValue := '';
      if( Assigned( FOnDataChange )) then
        begin
        var AStrings : IStringArrayList := TStringArrayList.Create();
        FOnDataChange( Self, AStrings, nsNewLink in AState );
        end;
      end;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWStringListMultiSinkPin.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( nsNewLink in AState ) then
    if( not UpdateOnConnect()) then
      Exit;

  if( AOperation.IsType( TOWSuppliedStringListOperation )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<String>( AOperation.GetInstance() ).Value ) then
      begin
//      FValue := TOWSuppliedStringListOperation( AOperation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, TOWSuppliedStringListOperation( AOperation.GetInstance() ).Value, nsNewLink in AState );

      end;
    end

  else
    TryCustomDispatch( ADataTypeID, AOperation, AState, Result );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStringListStatePin.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDataChange : TOWDataChangeEvent<IStringArrayList>; const AOnGetDataEvent : TOWStringListGetDataEvent = NIL; const AOnDisconnect : TOWPinEvent = NIL; const AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited Create( AOnCreated, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;
  FOnGetDataEvent := AOnGetDataEvent;

  FCustomDispatchData := TypeInfo().AccessAttributes.GetAll<TOWCustomDispatchDataAttribute>().ToArray();
end;
//---------------------------------------------------------------------------
function TOWStringListStatePin.DispatchData( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;  stdcall;
begin
  for var AItem in FCustomDispatchData do
    if( AItem.DispatchData( Self, AOtherPin, ADataTypeID, AOperation, AState, Result )) then
      Exit;

  Result := DispatchDataImpl( AOtherPin, ADataTypeID, AOperation, AState );
end;
//---------------------------------------------------------------------------
function TOWStringListStatePin.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( nsNewLink in AState ) then
    if( not UpdateOnConnect()) then
      Exit;

  if( AOperation.IsType( TOWSuppliedStringListOperation )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<String>( AOperation.GetInstance() ).Value ) then
      begin
//      FValue := TOWSuppliedStringListOperation( AOperation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, TOWSuppliedStringListOperation( AOperation.GetInstance() ).Value, nsNewLink in AState );

      end;
    end

  else if( not TryCustomDispatch( ADataTypeID, AOperation, AState, Result )) then
    begin
    if( AOperation.IsType( TOWClearContentOperation )) then
      begin
//      FValue := '';
      if( Assigned( FOnDataChange )) then
        begin
        var AStrings : IStringArrayList := TStringArrayList.Create();
        FOnDataChange( Self, AStrings, nsNewLink in AState );
        end;
      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWStringListStatePin.Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterf     : IOWStringListStream;
  AWriteLock  : ILockSection;

begin
//  if( AOperation.IsType( TOWSuppliedStringListOperation )) then
//    FValue := TOWSuppliedStringListOperation( AOperation.GetInstance() ).Value;

  Result := [];
  if( TInterface.IfSupports<IOWStringListStream>( AHandler, AInterf )) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      var AHandled := True;
      AWriteLock := FOwnerLock.WriteLock();
      Result := FPinNotificationEvent( AOtherPin, AInterf, ADataTypeID, AOperation, AState, AHandled );
      if( AHandled ) then
        Exit;

      end;

    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        if( Assigned( FOnGetDataEvent )) then
          begin
          var AStrings : IStringArrayList := TStringArrayList.Create();
          FOnGetDataEvent( Self, AStrings );
          AInterf.DispatchData( AOtherPin, ADataTypeID, TOWSuppliedStringListOperation.Create( AStrings ), AState );
          end;

        Exit;
        end;

    AInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );
    end;

  Result := inherited;
end;
//---------------------------------------------------------------------------
{
procedure TOWStringListStatePin.SetValue( const AValue : String );
begin
  if( FValue <> AValue ) then
    Send( AValue );

end;
}
//---------------------------------------------------------------------------
procedure TOWStringListStatePin.Send( AValue : IStringArrayList );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FValue := AValue;
  Notify( TOWSuppliedStringListOperation.Create( AValue ));
end;
//---------------------------------------------------------------------------
procedure TOWStringListStatePin.SetValue( AValue : IStringArrayList );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if( not FValue.Query().Equals( AValue )) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWCardinalSourcePin.Send( const AValue : Cardinal );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FValue := AValue;
  Notify( TOWTypedSuppliedOperation<Cardinal>.Create( FValue ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDisconnect : TOWPinEvent = NIL; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited;
  AddType( GetTypeData(System.TypeInfo(T_Interface))^.Guid, IntNotification, True );
  AddType( GetTypeData(System.TypeInfo(T_Interface_Ranged))^.Guid, IntRangedNotification, True );

  FComparer := TComparer<T_Data>.Default;
end;
//---------------------------------------------------------------------------
class function TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>.CreateGeneric( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; AOnDisconnect : TOWPinEvent = NIL; APinNotificationEvent : TOWBasicPinNotificationEvent = NIL ) : TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>;
begin
  Result := Create( AOnCreated, AOwnerLock, AOnDisconnect, APinNotificationEvent );
end;
//---------------------------------------------------------------------------
procedure TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>.SubmitValueRange( const AValue : T_Data; const AMin : T_Data; const AMax : T_Data );
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
procedure TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>.SubmitRange( const AMin : T_Data; const AMax : T_Data );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FMin := AMin;
  FMax := AMax;
  Notify( TOWTypedSuppliedRangeOperation<T_Data>.Create( AMin, AMax ));
end;
//---------------------------------------------------------------------------
procedure TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>.SubmitValue( const AValue : T_Data );
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
procedure TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>.SetMin( const AValue : T_Data );
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
procedure TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>.SetMax( const AValue : T_Data );
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
procedure TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>.SetValue( const AValue : T_Data );
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
function TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>.IntNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  Interf : IOWBasicStream;

begin
  Result := [];
  if( Supports( AHandler, GetTypeData(System.TypeInfo(T_Interface))^.Guid, Interf )) then
    begin
    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        Interf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<T_Data>.Create( FValue ), AState );
        Exit;
        end;

    Interf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );
    end;

end;
//---------------------------------------------------------------------------
function TOWTypedRangedSourcePin<T_Interface, T_Interface_Ranged, T_Data>.IntRangedNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterf : IOWBasicStream;

begin
  Result := [];
  if( Supports( AHandler, GetTypeData(System.TypeInfo(T_Interface_Ranged))^.Guid, AInterf )) then
    begin
    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        AInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedValueRangeOperation<T_Data>.Create( FValue, FMin, FMax ), AState );
        Exit;
        end;

    AInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWFloatIntSourcePin.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDisconnect : TOWPinEvent = NIL; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
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
function TOWFloatIntSourcePin.FloatNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterf : IOWFloatStream;

begin
  Result := [];
  if( TInterface.IfSupports<IOWFloatStream>( AHandler, AInterf )) then
    begin
    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        AInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<Single>.Create( Value ), AState );
        Exit;
        end;

    AInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );
    end;

end;
//---------------------------------------------------------------------------
function TOWFloatIntSourcePin.IntegerNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterf : IOWIntegerStream;

begin
  Result := [];
  if( TInterface.IfSupports<IOWIntegerStream>( AHandler, AInterf )) then
    begin
    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        AInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<Integer>.Create( Round( Value )), AState );
        Exit;
        end;

    if( AOperation.IsType( TOWSuppliedOperation )) then
      Exit( AInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<Integer>.Create( Round( FValue ) ), AState ));

    Exit( AInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState ));
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWFloatIntStatePin.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDataChange : TOWDataChangeEvent<Single>; const AOnDisconnect : TOWPinEvent = NIL; const AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited Create( AOnCreated, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent );
  FOnDataChange := AOnDataChange;

  FCustomDispatchData := TypeInfo().AccessAttributes.GetAll<TOWCustomDispatchDataAttribute>().ToArray();
end;
//---------------------------------------------------------------------------
function TOWFloatIntStatePin.DispatchData( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;  stdcall;
begin
  for var AItem in FCustomDispatchData do
    if( AItem.DispatchData( Self, AOtherPin, ADataTypeID, AOperation, AState, Result )) then
      Exit;

  Result := DispatchDataImpl( AOtherPin, ADataTypeID, AOperation, AState );
end;
//---------------------------------------------------------------------------
function TOWFloatIntStatePin.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( nsNewLink in AState ) then
    if( not UpdateOnConnect()) then
      Exit;

  if( AOperation.IsType( TOWTypedSuppliedOperation<Integer> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<Integer>( AOperation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<Integer>( AOperation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in AState );

      end;
    end

  else if( AOperation.IsType( TOWTypedSuppliedOperation<Single> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<Single>( AOperation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<Single>( AOperation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in AState );

      end;
    end

  else if( not TryCustomDispatch( ADataTypeID, AOperation, AState, Result )) then
    begin
    if( AOperation.IsType( TOWClearContentOperation )) then
      begin
      FValue := 0;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, nsNewLink in AState );

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
function TOWFloatIntStatePin.Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AFloatInterf  : IOWFloatStream;
  AIntInterf    : IOWIntegerStream;

begin
  Result := [];
  if( TInterface.IfSupports<IOWFloatStream>( AHandler, AFloatInterf )) then
    begin
    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        AFloatInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<Single>.Create( Value ), AState );
        Exit;
        end;

    if( AOperation.IsType( TOWSuppliedMulticastOperation )) then
      Exit( AFloatInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<Single>.Create( FValue ), AState ));

    Exit( AFloatInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState ));
    end

  else if( TInterface.IfSupports<IOWIntegerStream>( AHandler, AIntInterf )) then
    begin
    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        AIntInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<Integer>.Create( Round( Value )), AState );
        Exit;
        end;

    if( AOperation.IsType( TOWSuppliedMulticastOperation )) then
      Exit( AIntInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<Integer>.Create( Round( FValue ) ), AState ));

    Exit( AIntInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState ));
    end;

  Result := inherited;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWDateTimeSinkPin.IsSupportedDataType( const AOperation : IOWNotifyOperation ) : Boolean; stdcall;
begin
  Result := AOperation.IsType( TOWTypedSuppliedOperation<TDateTime> ) or AOperation.IsType( TOWTypedSuppliedOperation<TDate> ) or AOperation.IsType( TOWTypedSuppliedOperation<TTime> );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWBasicFormatConverter.DoDispatch( ASender : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState; var Handled : Boolean ) : TOWNotifyResult;
begin
  if( not ( AOperation.IsType( TOWSuppliedOperation ))) then
    FOutputPin.Notify( AOperation )

  else
    Handled := False;

end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
procedure TOWBasicTypedFormatConverter<T_OutStream, T_OutData, T_OutputPin>.Send( const AOutData : T_OutData );
begin
  T_OutputPin( FOutputPin ).Send( AOutData );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
constructor TOWTypedFormatConverter<T_OutStream, T_InData, T_OutData, T_InputPin, T_OutputPin>.Create();
begin
  inherited CreateEx( T_InputPin.CreateGeneric( TOWPin.PinOwnerSetter<TOWSinkPin>( FInputPin, Self, Self ), FLock, SinkOperationEvent, DoDispatch ), T_OutputPin.CreateGeneric( TOWPin.PinOwnerSetter<TOWSourcePin>( FOutputPin, Self, Self ), FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWTypedFormatConverter<T_OutStream, T_InData, T_OutData, T_InputPin, T_OutputPin>.SinkOperationEvent( ASender : TOWPin; const AValue : T_InData; AOnConnect : Boolean );
begin
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
constructor TOWTypedFromRangedFormatConverter<T_OutStream, T_InData, T_OutData, T_InputPin, T_OutputPin>.Create();
begin
  inherited CreateEx( T_InputPin.CreateGeneric( TOWPin.PinOwnerSetter<TOWSinkPin>( FInputPin, Self, Self ), FLock, SinkOperationEvent, NIL, DoDispatch ), T_OutputPin.CreateGeneric( TOWPin.PinOwnerSetter<TOWSourcePin>( FOutputPin, Self, Self ), FLock, NIL ) );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
constructor TOWTypedFromToRangedFormatConverter<T_OutStream, T_OutRangedStream, T_InData, T_OutData, T_InputPin, T_OutputPin>.Create();
begin
  inherited CreateEx( T_InputPin.CreateGeneric( TOWPin.PinOwnerSetter<TOWSinkPin>( FInputPin, Self, Self ), FLock, SinkOperationEvent, NIL, DoDispatch ), T_OutputPin.CreateGeneric( TOWPin.PinOwnerSetter<TOWSourcePin>( FOutputPin, Self, Self ), FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWTypedFromToRangedFormatConverter<T_OutStream, T_OutRangedStream, T_InData, T_OutData, T_InputPin, T_OutputPin>.Send( const AOutData : T_OutData );
begin
  T_OutputPin( FOutputPin ).SubmitValue( AOutData );
end;
//------------------------------------------------------------------------------
procedure TOWTypedFromToRangedFormatConverter<T_OutStream, T_OutRangedStream, T_InData, T_OutData, T_InputPin, T_OutputPin>.SendValueRange( const AValue, AMin, AMax : T_OutData );
begin
  T_OutputPin( FOutputPin ).SubmitValueRange( AValue, AMin, AMax );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWBoolStream, IOWIntegerStream )]
  TOWBoolToIntFormatConverter = class( TOWTypedFormatConverter<IOWIntegerStream, Boolean, Integer, TOWBoolSinkPin, TOWIntegerSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Boolean; AOnConnect : Boolean ); override;

  end;
//------------------------------------------------------------------------------
procedure TOWBoolToIntFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Boolean; AOnConnect : Boolean );
begin
  if( AValue ) then
    Send( 1 )

  else
    Send( 0 );

end;
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWIntegerStream, IOWRealStream )]
  TOWIntToRealFormatConverter = class( TOWTypedFormatConverter<IOWRealStream, Integer, Real, TOWIntegerSinkPin, TOWRealSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Integer; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWIntToRealFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Integer; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWIntegerStream, IOWFloatStream )]
  TOWIntToFloatFormatConverter = class( TOWTypedFormatConverter<IOWFloatStream, Integer, Single, TOWIntegerSinkPin, TOWFloatSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Integer; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWIntToFloatFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Integer; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWIntegerStream, IOWCardinalStream )]
  TOWIntToCardinalFormatConverter = class( TOWTypedFormatConverter<IOWCardinalStream, Integer, Cardinal, TOWIntegerSinkPin, TOWCardinalSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Integer; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWIntToCardinalFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Integer; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWInt64Stream, IOWCardinalStream )]
  TOWInt64ToCardinalFormatConverter = class( TOWTypedFormatConverter<IOWCardinalStream, Int64, Cardinal, TOWInt64SinkPin, TOWCardinalSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Int64; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWInt64ToCardinalFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Int64; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWIntegerStream, IOWUInt64Stream )]
  TOWIntegerToUInt64FormatConverter = class( TOWTypedFormatConverter<IOWUInt64Stream, Integer, UInt64, TOWIntegerSinkPin, TOWUInt64SourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Integer; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWIntegerToUInt64FormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Integer; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWUInt64Stream, IOWInt64Stream )]
  TOWUInt64ToInt64FormatConverter = class( TOWTypedFormatConverter<IOWInt64Stream, UInt64, Int64, TOWUInt64SinkPin, TOWInt64SourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : UInt64; AOnConnect : Boolean ); override;

  end;
//------------------------------------------------------------------------------
procedure TOWUInt64ToInt64FormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : UInt64; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWIntegerStream, IOWInt64Stream )]
  TOWIntegerToInt64FormatConverter = class( TOWTypedFormatConverter<IOWInt64Stream, Integer, Int64, TOWIntegerSinkPin, TOWInt64SourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Integer; AOnConnect : Boolean ); override;

  end;
//------------------------------------------------------------------------------
procedure TOWIntegerToInt64FormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Integer; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWUInt64Stream, IOWCardinalStream )]
  TOWUInt64ToCardinalFormatConverter = class( TOWTypedFormatConverter<IOWCardinalStream, UInt64, Cardinal, TOWUInt64SinkPin, TOWCardinalSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : UInt64; AOnConnect : Boolean ); override;

  end;
//------------------------------------------------------------------------------
procedure TOWUInt64ToCardinalFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : UInt64; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWInt64Stream, IOWUInt64Stream )]
  TOWInt64ToUInt64FormatConverter = class( TOWTypedFormatConverter<IOWUInt64Stream, Int64, UInt64, TOWInt64SinkPin, TOWUInt64SourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Int64; AOnConnect : Boolean ); override;

  end;
//------------------------------------------------------------------------------
procedure TOWInt64ToUInt64FormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Int64; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWInt64Stream, IOWIntegerStream )]
  TOWInt64ToIntegerFormatConverter = class( TOWTypedFormatConverter<IOWIntegerStream, Int64, Integer, TOWInt64SinkPin, TOWIntegerSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Int64; AOnConnect : Boolean ); override;

  end;
//------------------------------------------------------------------------------
procedure TOWInt64ToIntegerFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Int64; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWCardinalStream, IOWUInt64Stream )]
  TOWCardinalToUInt64FormatConverter = class( TOWTypedFormatConverter<IOWUInt64Stream, Cardinal, UInt64, TOWCardinalSinkPin, TOWUInt64SourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Cardinal; AOnConnect : Boolean ); override;

  end;
//------------------------------------------------------------------------------
procedure TOWCardinalToUInt64FormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Cardinal; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWIntegerStream, IOWStringStream )]
  TOWIntToStringFormatConverter = class( TOWTypedFormatConverter<IOWStringStream, Integer, String, TOWIntegerSinkPin, TOWStringSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Integer; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWIntToStringFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Integer; AOnConnect : Boolean );
begin
  Send( AValue.ToString());
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWCardinalStream, IOWRealStream )]
  TOWCardinalToRealFormatConverter = class( TOWTypedFormatConverter<IOWRealStream, Cardinal, Real, TOWCardinalSinkPin, TOWRealSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Cardinal; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWCardinalToRealFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Cardinal; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWCardinalStream, IOWFloatStream )]
  TOWCardinalToFloatFormatConverter = class( TOWTypedFormatConverter<IOWFloatStream, Cardinal, Single, TOWCardinalSinkPin, TOWFloatSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Cardinal; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWCardinalToFloatFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Cardinal; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWCardinalStream, IOWIntegerStream )]
  TOWCardinalToIntegerFormatConverter = class( TOWTypedFormatConverter<IOWIntegerStream, Cardinal, Integer, TOWCardinalSinkPin, TOWIntegerSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Cardinal; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWCardinalToIntegerFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Cardinal; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWCardinalStream, IOWInt64Stream )]
  TOWCardinalToInt64FormatConverter = class( TOWTypedFormatConverter<IOWInt64Stream, Cardinal, Int64, TOWCardinalSinkPin, TOWInt64SourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Cardinal; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWCardinalToInt64FormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Cardinal; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWUInt64Stream, IOWIntegerStream )]
  TOWUInt64ToIntegerFormatConverter = class( TOWTypedFormatConverter<IOWIntegerStream, UInt64, Integer, TOWUInt64SinkPin, TOWIntegerSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : UInt64; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWUInt64ToIntegerFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : UInt64; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWCardinalStream, IOWStringStream )]
  TOWCardinalToStringFormatConverter = class( TOWTypedFormatConverter<IOWStringStream, Cardinal, String, TOWCardinalSinkPin, TOWStringSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Cardinal; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWCardinalToStringFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Cardinal; AOnConnect : Boolean );
begin
  Send( AValue.ToString());
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWFloatStream, IOWRealStream )]
  TOWFloatToRealFormatConverter = class( TOWTypedFormatConverter<IOWRealStream, Single, Real, TOWFloatSinkPin, TOWRealSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Single; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWFloatToRealFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Single; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWByteStream, IOWIntegerStream )]
  TOWByteToIntegerFormatConverter = class( TOWTypedFormatConverter<IOWIntegerStream, Byte, Integer, TOWByteSinkPin, TOWIntegerSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Byte; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWByteToIntegerFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Byte; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWFloatStream, IOWStringStream )]
  TOWFloatToStringFormatConverter = class( TOWTypedFormatConverter<IOWStringStream, Single, String, TOWFloatSinkPin, TOWStringSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Single; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWFloatToStringFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Single; AOnConnect : Boolean );
begin
  Send( FloatToStr( AValue ));
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWRealStream, IOWStringStream )]
  TOWRealToStringFormatConverter = class( TOWTypedFormatConverter<IOWStringStream, Real, String, TOWRealSinkPin, TOWStringSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Real; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWRealToStringFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Real; AOnConnect : Boolean );
begin
  Send( FloatToStr( AValue ));
end;
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWRealStream, IOWRealComplexStream )]
  TOWRealToRealComplexFormatConverter = class( TOWTypedFormatConverter<IOWRealComplexStream, Real, TComplex, TOWRealSinkPin, TOWComplexSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Real; AOnConnect : Boolean ); override;

  end;
//------------------------------------------------------------------------------
procedure TOWRealToRealComplexFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Real; AOnConnect : Boolean );
begin
  Send( TComplex.Create( AValue, 0 ));
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWInt64Stream, IOWRealStream )]
  TOWInt64ToRealFormatConverter = class( TOWTypedFormatConverter<IOWRealStream, Int64, Real, TOWInt64SinkPin, TOWRealSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Int64; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWInt64ToRealFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Int64; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWInt64Stream, IOWFloatStream )]
  TOWInt64ToFloatFormatConverter = class( TOWTypedFormatConverter<IOWFloatStream, Int64, Single, TOWInt64SinkPin, TOWFloatSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Int64; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWInt64ToFloatFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Int64; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWInt64Stream, IOWStringStream )]
  TOWInt64ToStringFormatConverter = class( TOWTypedFormatConverter<IOWStringStream, Int64, String, TOWInt64SinkPin, TOWStringSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Int64; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWInt64ToStringFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Int64; AOnConnect : Boolean );
begin
  Send( AValue.ToString());
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWUInt64Stream, IOWRealStream )]
  TOWUInt64ToRealFormatConverter = class( TOWTypedFormatConverter<IOWRealStream, UInt64, Real, TOWUInt64SinkPin, TOWRealSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : UInt64; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWUInt64ToRealFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : UInt64; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWUInt64Stream, IOWFloatStream )]
  TOWUInt64ToFloatFormatConverter = class( TOWTypedFormatConverter<IOWFloatStream, UInt64, Single, TOWUInt64SinkPin, TOWFloatSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : UInt64; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWUInt64ToFloatFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : UInt64; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWUInt64Stream, IOWStringStream )]
  TOWUInt64ToStringFormatConverter = class( TOWTypedFormatConverter<IOWStringStream, UInt64, String, TOWUInt64SinkPin, TOWStringSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : UInt64; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWUInt64ToStringFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : UInt64; AOnConnect : Boolean );
begin
  Send( AValue.ToString());
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWBoolStream, IOWStringStream )]
  TOWBoolToStringFormatConverter = class( TOWTypedFormatConverter<IOWStringStream, Boolean, String, TOWBoolSinkPin, TOWStringSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Boolean; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWBoolToStringFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Boolean; AOnConnect : Boolean );
const
  Values : array [Boolean] of String =
    (
      'False',
      'True'
    );

begin
  Send( Values[ AValue ]);
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWRealComplexStream, IOWStringStream )]
  TOWRealComplexToStringFormatConverter = class( TOWTypedFormatConverter<IOWStringStream, TComplex, String, TOWComplexSinkPin, TOWStringSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : TComplex; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWRealComplexToStringFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : TComplex; AOnConnect : Boolean );
begin
  Send( FloatToStr( AValue.Real ) + ' I:' + FloatToStr( AValue.Imaginary ));
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWFloatQuaternionStream, IOWStringStream )]
  TOWFloatQuaternionToStringFormatConverter = class( TOWTypedFormatConverter<IOWStringStream, TQuaternion3D, String, TOWQuaternionSinkPin, TOWStringSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : TQuaternion3D; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWFloatQuaternionToStringFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : TQuaternion3D; AOnConnect : Boolean );
begin
  Send( 'R:' + FloatToStr( AValue.RealPart ) + ' X:' + FloatToStr( AValue.ImagPart.X ) + ' Y:' + FloatToStr( AValue.ImagPart.Y ) + ' Z:' + FloatToStr( AValue.ImagPart.Z ));
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWFloatPoint3DStream, IOWStringStream )]
  TOWFloatPoint3DToStringFormatConverter = class( TOWTypedFormatConverter<IOWStringStream, TPoint3D, String, TOWPoint3DSinkPin, TOWStringSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : TPoint3D; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWFloatPoint3DToStringFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : TPoint3D; AOnConnect : Boolean );
begin
  Send( 'X:' + FloatToStr( AValue.X ) + ' Y:' + FloatToStr( AValue.Y ) + ' Z:' + FloatToStr( AValue.Z ));
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWDateTimeStream, IOWStringStream )]
  TOWTimeToStringFormatConverter = class( TOWTypedFormatConverter<IOWStringStream, TDateTime, String, TOWDateTimeSinkPin, TOWStringSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : TDateTime; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWTimeToStringFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : TDateTime; AOnConnect : Boolean );
begin
  Send( DateTimeToStr( AValue ) );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
type
  [OWConvertDataType( IOWIntRangedStream, IOWStringStream )]
  TOWIntRangedToStringFormatConverter = class( TOWTypedFromRangedFormatConverter<IOWStringStream, Integer, String, TOWIntAndRangedSinkPin, TOWStringSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue, AMin, AMax : Integer; ARangesFilled : Boolean; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWIntRangedToStringFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue, AMin, AMax : Integer; ARangesFilled : Boolean; AOnConnect : Boolean );
begin
  Send( AValue.ToString() + ' [' + AMin.ToString() + ' - ' + AMax.ToString() + ']' );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWInt64RangedStream, IOWStringStream )]
  TOWInt64RangedToStringFormatConverter = class( TOWTypedFromRangedFormatConverter<IOWStringStream, Int64, String, TOWInt64AndRangedSinkPin, TOWStringSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue, AMin, AMax : Int64; ARangesFilled : Boolean; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWInt64RangedToStringFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue, AMin, AMax : Int64; ARangesFilled : Boolean; AOnConnect : Boolean );
begin
  Send( AValue.ToString() + ' [' + AMin.ToString() + ' - ' + AMax.ToString() + ']' );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWRealRangedStream,   IOWStringStream )]
  TOWRealRangedToStringFormatConverter = class( TOWTypedFromRangedFormatConverter<IOWStringStream, Real, String, TOWRealAndRangedSinkPin, TOWStringSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue, AMin, AMax : Real; ARangesFilled : Boolean; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWRealRangedToStringFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue, AMin, AMax : Real; ARangesFilled : Boolean; AOnConnect : Boolean );
begin
  Send( FloatToStr( AValue ) + ' [' + FloatToStr( AMin ) + ' - ' + FloatToStr( AMax ) + ']' );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWIntRangedStream, IOWRealRangedStream )]
  TOWIntToRealRangedFormatConverter = class( TOWTypedFromToRangedFormatConverter<IOWRealStream, IOWRealRangedStream, Integer, Real, TOWIntAndRangedSinkPin, TOWRealRangedSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue, AMin, AMax : Integer; ARangesFilled : Boolean; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWIntToRealRangedFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue, AMin, AMax : Integer; ARangesFilled : Boolean; AOnConnect : Boolean );
begin
  if( ARangesFilled ) then
    SendValueRange( AValue, AMin, AMax )
    
  else
    Send( AValue );
     
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWInt64RangedStream, IOWRealRangedStream )]
  TOWInt64ToRealRangedFormatConverter = class( TOWTypedFromToRangedFormatConverter<IOWRealStream, IOWRealRangedStream, Int64, Real, TOWInt64AndRangedSinkPin, TOWRealRangedSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue, AMin, AMax : Int64; ARangesFilled : Boolean; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWInt64ToRealRangedFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue, AMin, AMax : Int64; ARangesFilled : Boolean; AOnConnect : Boolean );
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
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : IArrayList<Integer>; AOnConnect : Boolean );

  public
    constructor Create(); override;

  end;
//---------------------------------------------------------------------------
constructor TOWIntToStringListFormatConverter.Create();
begin
  inherited CreateEx( TOWIntegerListSinkPin.Create( TOWPin.PinOwnerSetter<TOWSinkPin>( FInputPin, Self, Self ), FLock, SinkOperationEvent, DoDispatch ), TOWStringListSourcePin.Create( TOWPin.PinOwnerSetter<TOWSourcePin>( FOutputPin, Self, Self ), FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWIntToStringListFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : IArrayList<Integer>; AOnConnect : Boolean );
begin
  var AList : IStringArrayList := TStringArrayList.Create();
  for var AItem in AValue do
    AList.Add( AItem.ToString());

  TOWStringListSourcePin( FOutputPin ).Send( AList );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWInt64ListStream, IOWStringListStream )]
  TOWInt64ToStringListFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : IArrayList<Int64>; AOnConnect : Boolean );

  public
    constructor Create(); override;

  end;
//---------------------------------------------------------------------------
constructor TOWInt64ToStringListFormatConverter.Create();
begin
  inherited CreateEx( TOWInt64ListSinkPin.Create( TOWPin.PinOwnerSetter<TOWSinkPin>( FInputPin, Self, Self ), FLock, SinkOperationEvent, DoDispatch ), TOWStringListSourcePin.Create( TOWPin.PinOwnerSetter<TOWSourcePin>( FOutputPin, Self, Self ), FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWInt64ToStringListFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : IArrayList<Int64>; AOnConnect : Boolean );
begin
  var AList : IStringArrayList := TStringArrayList.Create();
  for var AItem in AValue do
    AList.Add( AItem.ToString());

  TOWStringListSourcePin( FOutputPin ).Send( AList );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWRealListStream, IOWStringListStream )]
  TOWRealToStringListFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : IArrayList<Real>; AOnConnect : Boolean );

  public
    constructor Create(); override;

  end;
//---------------------------------------------------------------------------
constructor TOWRealToStringListFormatConverter.Create();
begin
  inherited CreateEx( TOWRealListSinkPin.Create( TOWPin.PinOwnerSetter<TOWSinkPin>( FInputPin, Self, Self ), FLock, SinkOperationEvent, DoDispatch ), TOWStringListSourcePin.Create( TOWPin.PinOwnerSetter<TOWSourcePin>( FOutputPin, Self, Self ), FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWRealToStringListFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : IArrayList<Real>; AOnConnect : Boolean );
begin
  var AList : IStringArrayList := TStringArrayList.Create();
  for var AItem in AValue do
    AList.Add( FloatToStr( AItem ));

  TOWStringListSourcePin( FOutputPin ).Send( AList );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWFloatListStream, IOWStringListStream )]
  TOWFloatToStringListFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : IArrayList<Single>; AOnConnect : Boolean );

  public
    constructor Create(); override;

  end;
//---------------------------------------------------------------------------
constructor TOWFloatToStringListFormatConverter.Create();
begin
  inherited CreateEx( TOWFloatListSinkPin.Create( TOWPin.PinOwnerSetter<TOWSinkPin>( FInputPin, Self, Self ), FLock, SinkOperationEvent, DoDispatch ), TOWStringListSourcePin.Create( TOWPin.PinOwnerSetter<TOWSourcePin>( FOutputPin, Self, Self ), FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWFloatToStringListFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : IArrayList<Single>; AOnConnect : Boolean );
begin
  var AList : IStringArrayList := TStringArrayList.Create();
  for var AItem in AValue do
    AList.Add( FloatToStr( AItem ));

  TOWStringListSourcePin( FOutputPin ).Send( AList );
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWIntegerListStream, IOWRealListStream )]
  TOWIntToRealListFormatConverter = class( TOWBasicFormatConverter )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : IArrayList<Integer>; AOnConnect : Boolean );

  public
    constructor Create(); override;

  end;
//---------------------------------------------------------------------------
constructor TOWIntToRealListFormatConverter.Create();
begin
  inherited CreateEx( TOWIntegerListSinkPin.Create( TOWPin.PinOwnerSetter<TOWSinkPin>( FInputPin, Self, Self ), FLock, SinkOperationEvent, DoDispatch ), TOWRealListSourcePin.Create( TOWPin.PinOwnerSetter<TOWSourcePin>( FOutputPin, Self, Self ), FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWIntToRealListFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : IArrayList<Integer>; AOnConnect : Boolean );
begin
  var AList : IArrayList<Real> := TArrayList<Real>.Create();
  for var AItem in AValue do
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
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : IArrayList<Single>; AOnConnect : Boolean );

  public
    constructor Create(); override;

  end;
//---------------------------------------------------------------------------
constructor TOWFloatToRealListFormatConverter.Create();
begin
  inherited CreateEx( TOWFloatListSinkPin.Create( TOWPin.PinOwnerSetter<TOWSinkPin>( FInputPin, Self, Self ), FLock, SinkOperationEvent, DoDispatch ), TOWRealListSourcePin.Create( TOWPin.PinOwnerSetter<TOWSourcePin>( FOutputPin, Self, Self ), FLock, NIL ) );
end;
//------------------------------------------------------------------------------
procedure TOWFloatToRealListFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : IArrayList<Single>; AOnConnect : Boolean );
begin
  var AList : IArrayList<Real> := TArrayList<Real>.Create();
  for var AItem in AValue do
    AList.Add( AItem );

  TOWRealListSourcePin( FOutputPin ).Send( AList );
end;
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWColorStream, IOWAlphaColorStream )]
  TOWColorToAlphaColorFormatConverter = class( TOWTypedFormatConverter<IOWAlphaColorStream, TColor, TAlphaColor, TOWColorSinkPin, TOWAlphaColorSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : TColor; AOnConnect : Boolean ); override;

  end;
//------------------------------------------------------------------------------
procedure TOWColorToAlphaColorFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : TColor; AOnConnect : Boolean );

  function ColorToRGB( AColor : TColor ) : Longint;
  begin
  {$IFDEF MSWINDOWS}
    if( AColor < 0 ) then
      Exit( GetSysColor( AColor and $000000FF ));

  {$ENDIF}
    Result := AColor;
  end;

begin
  Send( $FF000000 or TAlphaColor( ColorToRGB( AValue )));
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWColorStream, IOWStringStream )]
  TOWColorToStringFormatConverter = class( TOWTypedFormatConverter<IOWStringStream, TColor, String, TOWColorSinkPin, TOWStringSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : TColor; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWColorToStringFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : TColor; AOnConnect : Boolean );
begin
  Send( ColorToString( AValue ) );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
type
  [OWConvertDataType( IOWAlphaColorStream, IOWStringStream )]
  TOWAlphaColorToStringFormatConverter = class( TOWTypedFormatConverter<IOWStringStream, TAlphaColor, String, TOWAlphaColorSinkPin, TOWStringSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : TAlphaColor; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWAlphaColorToStringFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : TAlphaColor; AOnConnect : Boolean );
begin
  Send( AlphaColorToString( AValue ) );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
type
  [OWConvertDataType( IOWRGBWColorStream, IOWStringStream )]
  TOWRGBWColorToStringFormatConverter = class( TOWTypedFormatConverter<IOWStringStream, TRGBWColor, String, TOWRGBWColorSinkPin, TOWStringSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : TRGBWColor; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWRGBWColorToStringFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : TRGBWColor; AOnConnect : Boolean );
begin
  Send( RGBWColorToString( AValue ) );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
type
  [OWConvertDataType( IOWRGBWAlphaColorStream, IOWStringStream )]
  TOWRGBWAlphaColorToStringFormatConverter = class( TOWTypedFormatConverter<IOWStringStream, TRGBWAlphaColor, String, TOWRGBWAlphaColorSinkPin, TOWStringSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : TRGBWAlphaColor; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWRGBWAlphaColorToStringFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : TRGBWAlphaColor; AOnConnect : Boolean );
begin
  Send( RGBWAlphaColorToString( AValue ) );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
(*
type
  [OWConvertDataType( IOWArduinoRGBWColorStream, IOWColorStream )]
  TOWRGBWColorToColorFormatConverter = class( TOWTypedFormatConverter<IOWColorStream, TRGBWColor, TColor, TOWArduinoRGBWColorSinkPin, TOWColorSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : TRGBWColor; AOnConnect : Boolean ); override;

  end;
//------------------------------------------------------------------------------
procedure TOWColorToAlphaColorFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : TColor; AOnConnect : Boolean );

  function ColorToRGB( AColor : TColor ): Longint;
  begin
  {$IFDEF MSWINDOWS}
    if( AColor < 0 ) then
      Exit( GetSysColor( AColor and $000000FF ));

  {$ENDIF}
    Result := AColor;
  end;

begin
  Send( $FF000000 or TAlphaColor( ColorToRGB( AValue )));
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
*)
type
  [OWConvertDataType( IOWColorStream, IOWRGBWColorStream )]
  TOWColorToRGBWColorFormatConverter = class( TOWTypedFormatConverter<IOWRGBWColorStream, TColor, TRGBWColor, TOWColorSinkPin, TOWRGBWColorSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : TColor; AOnConnect : Boolean ); override;

  end;
//------------------------------------------------------------------------------
procedure TOWColorToRGBWColorFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : TColor; AOnConnect : Boolean );

  function ColorToRGB( AColor : TColor ): Longint;
  begin
  {$IFDEF MSWINDOWS}
    if( AColor < 0 ) then
      Exit( GetSysColor( AColor and $000000FF ));

  {$ENDIF}
    Result := AColor;
  end;

begin
  Send( $FF000000 or TRGBWColor( ColorToRGB( AValue )));
end;
//------------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
type
  [OWConvertDataType( IOWColorStream, IOWRGBWAlphaColorStream )]
  TOWColorToRGBWAlphaColorFormatConverter = class( TOWTypedFormatConverter<IOWRGBWAlphaColorStream, TColor, TRGBWAlphaColor, TOWColorSinkPin, TOWRGBWAlphaColorSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : TColor; AOnConnect : Boolean ); override;

  end;
//------------------------------------------------------------------------------
procedure TOWColorToRGBWAlphaColorFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : TColor; AOnConnect : Boolean );
begin
  Send( $FF000000 or TRGBWAlphaColor( AValue ));
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWRGBWColorStream, IOWRGBWAlphaColorStream )]
  TOWRGBWColorToRGBWAlphaColorFormatConverter = class( TOWTypedFormatConverter<IOWRGBWAlphaColorStream, TRGBWColor, TRGBWAlphaColor, TOWRGBWColorSinkPin, TOWRGBWAlphaColorSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : TRGBWColor; AOnConnect : Boolean ); override;

  end;
//------------------------------------------------------------------------------
procedure TOWRGBWColorToRGBWAlphaColorFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : TRGBWColor; AOnConnect : Boolean );
begin
  Send( $FF000000 or TRGBWAlphaColor( AValue ));
end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
type
  [OWConvertDataType( IOWCharStream, IOWStringStream )]
  TOWCharToStringFormatConverter = class( TOWTypedFormatConverter<IOWStringStream, Char, String, TOWCharSinkPin, TOWStringSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : Char; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWCharToStringFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : Char; AOnConnect : Boolean );
begin
  Send( AValue );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
type
  [OWConvertDataType( IOWStringStream, IOWCharStream )]
  TOWStringToCharFormatConverter = class( TOWTypedFormatConverter<IOWCharStream, String, Char, TOWStringSinkPin, TOWCharSourcePin> )
  protected
    procedure SinkOperationEvent( ASender : TOWPin; const AValue : String; AOnConnect : Boolean ); override;

  end;
//---------------------------------------------------------------------------
procedure TOWStringToCharFormatConverter.SinkOperationEvent( ASender : TOWPin; const AValue : String; AOnConnect : Boolean );
begin
  for var I := 1 to AValue.Length do
    Send( AValue[ I ] );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function OWDefaultDataNotificationHandler( ASender : TOWPin; AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterf : IOWDataStream;

begin
  if( TInterface.IfSupports<IOWDataStream>( AHandler, AInterf )) then
    Exit( AInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState ));

  Result := [];
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStdComboSourcePin.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDisconnect : TOWPinEvent = NIL; const APinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
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
procedure TOWStdComboSourcePin.SetValue( const AValue : Real );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if( ( not FNotifyOnChangeOnly ) or ( FValue <> AValue )) then
    Send( AValue );

end;
//---------------------------------------------------------------------------
procedure TOWStdComboSourcePin.Send( const AValue : Real );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FValue := AValue;
  Notify( TOWTypedSuppliedOperation<Real>.Create( FValue ));
end;
//---------------------------------------------------------------------------
function TOWStdComboSourcePin.RealNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterf : IOWRealStream;

begin
  Result := [];
  if( TInterface.IfSupports<IOWRealStream>( AHandler, AInterf )) then
    begin
    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        AInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<Real>.Create( Value ), AState );
        Exit;
        end;

    AInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState )
    end;

end;
//---------------------------------------------------------------------------
function TOWStdComboSourcePin.FloatNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterf : IOWFloatStream;

begin
  Result := [];
  if( TInterface.IfSupports<IOWFloatStream>( AHandler, AInterf )) then
    begin
    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        AInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<Single>.Create( Value ), AState );
        Exit;
        end;

    if( AOperation.IsType( TOWSuppliedOperation )) then
      AInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<Single>.Create( Value ), AState )

    else
      AInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );

    end;

end;
//---------------------------------------------------------------------------
function TOWStdComboSourcePin.IntegerNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterf : IOWIntegerStream;

begin
  Result := [];
  if( TInterface.IfSupports<IOWIntegerStream>( AHandler, AInterf )) then
    begin
    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        AInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<Integer>.Create( Round( Value )), AState );
        Exit;
        end;

    if( AOperation.IsType( TOWSuppliedOperation )) then
      AInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<Integer>.Create( Round( Value )), AState )

    else
      AInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );

    end;

end;
//---------------------------------------------------------------------------
function TOWStdComboSourcePin.StringNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterf : IOWStringStream;

begin
  Result := [];
  if( TInterface.IfSupports<IOWStringStream>( AHandler, AInterf )) then
    begin
    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        AInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<String>.Create( FloatToStr( Value )), AState );
        Exit;
        end;

    if( AOperation.IsType( TOWSuppliedOperation )) then
      AInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<String>.Create( FloatToStr( Value )), AState )

    else
      AInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );
      
    end;

end;
//---------------------------------------------------------------------------
function TOWStdComboSourcePin.BoolNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterf : IOWBoolStream;

begin
  Result := [];
  if( TInterface.IfSupports<IOWBoolStream>( AHandler, AInterf )) then
    begin
    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        AInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<Boolean>.Create( Value <> 0 ), AState );
        Exit;
        end;

    if( AOperation.IsType( TOWSuppliedOperation )) then
      AInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<Boolean>.Create( Value <> 0 ), AState )

    else
      AInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );

    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWTypedRangedSinkPin<T_Data>.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnDataChange : TOWTypedValueRangeChangeEvent<T_Data>; const AOnRangeChange : TOWTypedRangeChangeEvent<T_Data> = NIL; const AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited Create( AOnCreated, AOwnerLock, AOnPinDispatchEvent );
  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;
end;
//---------------------------------------------------------------------------
class function TOWTypedRangedSinkPin<T_Data>.CreateGeneric( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; AOnDataChange : TOWTypedValueRangeChangeEvent<T_Data>; AOnRangeChange : TOWTypedRangeChangeEvent<T_Data> = NIL; AOnPinDispatchEvent : TOWPinDispatchEvent = NIL ) : TOWTypedRangedSinkPin<T_Data>;
begin
  Result := Create( AOnCreated, AOwnerLock, AOnDataChange, AOnRangeChange, AOnPinDispatchEvent );
end;
//---------------------------------------------------------------------------
function TOWTypedRangedSinkPin<T_Data>.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( nsNewLink in AState ) then
    if( not UpdateOnConnect()) then
      Exit;

  if( AOperation.IsType( TOWTypedSuppliedValueRangeOperation<T_Data> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<T_Data>( AOperation.GetInstance() ).Value ) then
      begin
      FRangePopulated := True;
      FMin := TOWTypedSuppliedValueRangeOperation<T_Data>( AOperation.GetInstance() ).Min;
      FMax := TOWTypedSuppliedValueRangeOperation<T_Data>( AOperation.GetInstance() ).Max;
      FValue := TOWTypedSuppliedValueRangeOperation<T_Data>( AOperation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, True, nsNewLink in AState );

      end;
    end

  else if( AOperation.IsType( TOWTypedSuppliedRangeOperation<T_Data> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<T_Data>( AOperation.GetInstance() ).Value ) then
      begin
      FRangePopulated := True;
      FMin := TOWTypedSuppliedRangeOperation<T_Data>( AOperation.GetInstance() ).Min;
      FMax := TOWTypedSuppliedRangeOperation<T_Data>( AOperation.GetInstance() ).Max;
      if( Assigned( FOnRangeChange )) then
        FOnRangeChange( Self, FMin, FMax, nsNewLink in AState );

      end;
    end

  else if( not TryCustomDispatch( ADataTypeID, AOperation, AState, Result )) then
    begin
    if( AOperation.IsType( TOWClearContentOperation )) then
      begin
      FValue := Default( T_Data );
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in AState );

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
function TOWTypedAndRangedSinkPin<T_Data>.TryCustomDispatch( const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState; var AResult : TOWNotifyResult ) : Boolean;
begin
  if( AOperation.IsType( TOWTypedSuppliedOperation<T_Data> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<T_Data>( AOperation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<T_Data>( AOperation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in AState );

      end;

    Exit( True );
    end;

  Result := False;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AValue : T_Data; const AMin : T_Data; const AMax : T_Data; const AOnDataChange : TOWTypedValueRangeChangeEvent<T_Data>; const AOnRangeChange : TOWTypedRangeChangeEvent<T_Data> = NIL; const AOnDisconnect : TOWPinEvent = NIL; const AOnPinDispatchEvent : TOWPinDispatchEvent = NIL );
begin
  inherited Create( AOnCreated, AOwnerLock, AOnDisconnect, AOnPinDispatchEvent );
  FMin := AMin;
  FMax := AMax;
  FValue := AValue;

  FOnRangeChange := AOnRangeChange;
  FOnDataChange := AOnDataChange;

  AddType( GetTypeData(System.TypeInfo(T_Interface))^.Guid, IntNotification, True );
  AddType( GetTypeData(System.TypeInfo(T_Interface_Ranged))^.Guid, IntRangedNotification, True );

  FComparer := TComparer<T_Data>.Default;

  FCustomDispatchData := TypeInfo().AccessAttributes.GetAll<TOWCustomDispatchDataAttribute>().ToArray();
end;
//---------------------------------------------------------------------------
function TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.DispatchData( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;  stdcall;
begin
  for var AItem in FCustomDispatchData do
    if( AItem.DispatchData( Self, AOtherPin, ADataTypeID, AOperation, AState, Result )) then
      Exit;

  Result := DispatchDataImpl( AOtherPin, ADataTypeID, AOperation, AState );
end;
//---------------------------------------------------------------------------
function TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( nsNewLink in AState ) then
    if( not UpdateOnConnect()) then
      Exit;

  if( AOperation.IsType( TOWTypedSuppliedValueRangeOperation<T_Data> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<T_Data>( AOperation.GetInstance() ).Value ) then
      begin
      FMin := TOWTypedSuppliedValueRangeOperation<T_Data>( AOperation.GetInstance() ).Min;
      FMax := TOWTypedSuppliedValueRangeOperation<T_Data>( AOperation.GetInstance() ).Max;
      FValue := TOWTypedSuppliedValueRangeOperation<T_Data>( AOperation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, True, nsNewLink in AState );

      end;
    end

  else if( AOperation.IsType( TOWTypedSuppliedRangeOperation<T_Data> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<T_Data>( AOperation.GetInstance() ).Value ) then
      begin
      FMin := TOWTypedSuppliedRangeOperation<T_Data>( AOperation.GetInstance() ).Min;
      FMax := TOWTypedSuppliedRangeOperation<T_Data>( AOperation.GetInstance() ).Max;
      if( Assigned( FOnRangeChange )) then
        FOnRangeChange( Self, FMin, FMax, nsNewLink in AState );

      end;
    end

  else if( AOperation.IsType( TOWTypedSuppliedOperation<T_Data> )) then
    begin
//    if( FValue <> TOWTypedSuppliedOperation<T_Data>( AOperation.GetInstance() ).Value ) then
      begin
      FValue := TOWTypedSuppliedOperation<T_Data>( AOperation.GetInstance() ).Value;
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in AState );

      end;
    end

  else if( not TryCustomDispatch( ADataTypeID, AOperation, AState, Result )) then
    begin
    if( AOperation.IsType( TOWClearContentOperation )) then
      begin
      FValue := Default( T_Data );
      if( Assigned( FOnDataChange )) then
        FOnDataChange( Self, FValue, FMin, FMax, False, nsNewLink in AState );

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.IntNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterf : IOWBasicStream;

begin
  Result := [];

  if( Supports( AHandler, GetTypeData(System.TypeInfo(T_Interface))^.Guid, AInterf )) then
    begin
    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        AInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedOperation<T_Data>.Create( FValue ), AState );
        Exit;
        end;

    AInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );
    end;

end;
//---------------------------------------------------------------------------
function TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.IntRangedNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterf : IOWBasicStream;

begin
  Result := [];

  if( Supports( AHandler, GetTypeData(System.TypeInfo(T_Interface_Ranged))^.Guid, AInterf )) then
    begin
    if( nsNewLink in AState ) then
      if( UpdateOnConnect()) then
        begin
        AInterf.DispatchData( AOtherPin, ADataTypeID, TOWTypedSuppliedValueRangeOperation<T_Data>.Create( FValue, FMin, FMax ), AState );
        Exit;
        end;

    AInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );
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
procedure TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.SetMin( const AValue : T_Data );
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
procedure TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.SetMax( const AValue : T_Data );
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
procedure TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.SetValue( const AValue : T_Data );
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
procedure TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.SubmitValueRange( const AValue : T_Data; const AMin : T_Data; const AMax : T_Data );
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
procedure TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.SubmitValue( const AValue : T_Data );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FValue := AValue;
  Notify( TOWTypedSuppliedOperation<T_Data>.Create( AValue ));
end;
//---------------------------------------------------------------------------
procedure TOWTypedRangedStatePin<T_Interface, T_Interface_Ranged, T_Data>.SubmitRange( const AMin : T_Data; const AMax : T_Data );
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
constructor TOWClockMultiSinkPin.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; const AOnClock : TOWClockEvent; const AOnPinNotificationEvent : TOWBasicPinNotificationEvent = NIL );
begin
  inherited Create( AOnCreated, AOwnerLock, AOnPinNotificationEvent );
  FOnClock := AOnClock;
  AddType( IOWClockStream, ClockNotification, True );
end;
//---------------------------------------------------------------------------
function TOWClockMultiSinkPin.ClockNotification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterf : IOWClockStream;

begin
  Result := [];

  if( TInterface.IfSupports<IOWClockStream>( AHandler, AInterf )) then
    AInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );

end;
//---------------------------------------------------------------------------
function TOWClockMultiSinkPin.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; stdcall;
var
  AWriteLock : ILockSection;

begin
  Result := [];

  if( nsNewLink in AState ) then
    if( not UpdateOnConnect()) then
      Exit;

  if( Assigned( FPinNotificationEvent )) then
    begin
    AWriteLock := FOwnerLock.WriteLock();
    Result := FPinNotificationEvent( Self, AOtherPin, ADataTypeID, AOperation, AState );
    end;

  if( Assigned( FOnClock )) then
//    if( not ( nsNewLink in AState )) then
    begin
    if( AOperation.IsType( TOWClockOperation )) then
      FOnClock( Self );

    end;
    
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStreamPersistSourcePin.CreateEx( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; APinNotificationEvent : TOWPinNotificationEvent );
begin
  inherited Create( AOnCreated, AOwnerLock );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
procedure TOWStreamPersistSourcePin.SubmitData( Value : TStream );
begin
  Notify( TOWSuppliedStreamPersistOperation.Create( Value ));
end;
//---------------------------------------------------------------------------
function TOWStreamPersistSourcePin.Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterfPersist  : IOWStreamPersistStream;
  AWriteLock      : ILockSection;

begin
  Result := [];
  if( TInterface.IfSupports<IOWStreamPersistStream>( AHandler, AInterfPersist )) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      var AHandled := True;
      AWriteLock := FOwnerLock.WriteLock();
      Result := FPinNotificationEvent( AOtherPin, AInterfPersist, ADataTypeID, AOperation, AState, AHandled );
      if( AHandled ) then
        Exit;

      end;

{
    if( nsNewLink in AState ) then
      begin
      AInterfPersist.DispatchDataImpl( ADataTypeID, TOWSuppliedStreamPersistOperation.Create( Value ), AState );
      Exit;
      end;
}
    AInterfPersist.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWTypedListSourcePin<T; T_Interface>.CreateEx( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; APinNotificationEvent : TOWPinNotificationEvent; AOnDisconnect : TOWPinEvent = NIL );
begin
  inherited Create( AOnCreated, AOwnerLock, AOnDisconnect );
  FPinNotificationEvent := APinNotificationEvent;
end;
//---------------------------------------------------------------------------
constructor TOWTypedListSourcePin<T; T_Interface>.CreateConnect( const AOnCreated : TProc<TOWPin>; AOnConnect : TOWPinEvent );
begin
  inherited Create( AOnCreated, NIL );
  FOnConnect := AOnConnect;
end;
//---------------------------------------------------------------------------
procedure TOWTypedListSourcePin<T; T_Interface>.Send( const AValue : IArrayList<T> );
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
function TOWTypedListSourcePin<T; T_Interface>.Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AInterf  : IOWDataStream;

begin
  Result := [];
  if( Supports( AHandler, GetTypeData(System.TypeInfo(T_Interface))^.Guid, AInterf )) then
    begin
    if( Assigned( FPinNotificationEvent )) then
      begin
      var AHandled := True;
      Result := FPinNotificationEvent( AOtherPin, AInterf, ADataTypeID, AOperation, AState, AHandled );
      if( AHandled ) then
        Exit;

      end;

{
    if( nsNewLink in AState ) then
      begin
      AInterf.DispatchDataImpl( ADataTypeID, TOWSuppliedStringListOperation.Create( Value ), AState );
      Exit;
      end;
}
    AInterf.DispatchData( AOtherPin, ADataTypeID, AOperation, AState );
    end;

  Result := inherited;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWTypedListSinkPin<T>.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( nsNewLink in AState ) then
    if( not UpdateOnConnect()) then
      Exit;

  if( AOperation.IsType( TOWTypedListSuppliedOperation<T> )) then
    begin
    if( Assigned( FOnDataChange )) then
      FOnDataChange( Self, TOWTypedListSuppliedOperation<T>( AOperation.GetInstance() ).Value, nsNewLink in AState );

    end

  else if( not TryCustomDispatch( ADataTypeID, AOperation, AState, Result )) then
    begin
    if( AOperation.IsType( TOWClearContentOperation )) then
      if( Assigned( FOnDataChange )) then
        begin
        var AInterfaceHolder : IArrayList<T> := TArrayList<T>.Create();
        FOnDataChange( Self, AInterfaceHolder, nsNewLink in AState );
        end;

    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWTypedListStatePin<T_Interface, T_Data>.DispatchDataImpl( AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; stdcall;
begin
  Result := [];

  if( nsNewLink in AState ) then
    if( not UpdateOnConnect()) then
      Exit;

  if( AOperation.IsType( TOWTypedListSuppliedOperation<T_Data> )) then
    begin
    if( Assigned( FOnDataChange )) then
      FOnDataChange( Self, TOWTypedListSuppliedOperation<T_Data>( AOperation.GetInstance() ).Value, nsNewLink in AState );

    end

  else if( not TryCustomDispatch( ADataTypeID, AOperation, AState, Result )) then
    begin
    if( AOperation.IsType( TOWClearContentOperation )) then
      if( Assigned( FOnDataChange )) then
        begin
        var AInterfaceHolder : IArrayList<T_Data> := TArrayList<T_Data>.Create();
        FOnDataChange( Self, AInterfaceHolder, nsNewLink in AState );
        end;

    end;

end;
//---------------------------------------------------------------------------
procedure TOWTypedListStatePin<T_Interface, T_Data>.Send( const AValue : IArrayList<T_Data> );
begin
  Notify( TOWTypedListSuppliedOperation<T_Data>.Create( AValue ));
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStartRateOperation.CreateObject( const ARate : Real );
begin
  inherited CreateObject();
  Rate := ARate;
end;
//---------------------------------------------------------------------------
class function TOWStartRateOperation.Create( const ARate : Real ) : IOWNotifyOperation;
begin
  Result := CreateObject( ARate );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWTypedSuppliedOperation<T>.CreateObject( const AValue : T );
begin
  inherited CreateObject( 1 );
  Value := AValue;
end;
//---------------------------------------------------------------------------
constructor TOWTypedSuppliedOperation<T>.CreateExObject( const AValue : T; ASampleCount : Integer );
begin
  inherited CreateObject( ASampleCount );
  Value := AValue;
end;
//---------------------------------------------------------------------------
class function TOWTypedSuppliedOperation<T>.Create( const AValue : T ) : IOWNotifyOperation;
begin
  Result := CreateObject( AValue );
end;
//---------------------------------------------------------------------------
class function TOWTypedSuppliedOperation<T>.CreateEx( const AValue : T; ASampleCount : Integer ) : IOWNotifyOperation;
begin
  Result := CreateExObject( AValue, ASampleCount );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWTypedSuppliedRangeOperation<T>.CreateObject( AMin : T; AMax : T );
begin
  inherited CreateObject( 1 );
  Min := AMin;
  Max := AMax;
end;
//---------------------------------------------------------------------------
class function TOWTypedSuppliedRangeOperation<T>.Create( AMin : T; AMax : T ) : IOWNotifyOperation;
begin
  Result := CreateObject( AMin, AMax );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWTypedSuppliedValueRangeOperation<T>.CreateObject( AValue : T; AMin : T; AMax : T );
begin
  inherited CreateObject( AValue );
  Min := AMin;
  Max := AMax;
end;
//---------------------------------------------------------------------------
class function TOWTypedSuppliedValueRangeOperation<T>.Create( AValue : T; AMin : T; AMax : T ) : IOWNotifyOperation;
begin
  Result := CreateObject( AValue, AMin, AMax );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSuppliedStringListOperation.CreateObject( const AValue : IStringArrayList );
begin
  inherited CreateObject( AValue.Count );
  Value := AValue;
end;
//---------------------------------------------------------------------------
class function TOWSuppliedStringListOperation.Create( const AValue : IStringArrayList ) : IOWNotifyOperation;
begin
  Result := CreateObject( AValue );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSuppliedStreamPersistOperation.CreateObject( AValue : TStream = NIL );
begin
  inherited CreateObject( 1 );
  Value := TMemoryStream.Create();
  if( AValue <> NIL ) then
    TMemoryStream( Value ).LoadFromStream( AValue );

end;
//---------------------------------------------------------------------------
destructor TOWSuppliedStreamPersistOperation.Destroy();
begin
{$IFDEF RX12_0_Up}
  Value.Free();
{$ELSE}
  Value.DisposeOf();
{$ENDIF}
  inherited;
end;
//---------------------------------------------------------------------------
class function TOWSuppliedStreamPersistOperation.Create( AValue : TStream = NIL ) : IOWNotifyOperation;
begin
  Result := CreateObject( AValue );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWPumpRequestOperation.CreateObject();
begin
  inherited;
end;
//---------------------------------------------------------------------------
constructor TOWPumpRequestOperation.CreateExObject( APump : TObject; APumpType : TOWPumpType; APumpPriority : Cardinal; const ADesiredRate : Real );
begin
  inherited CreateObject();
  Pump := APump;
  PumpType := APumpType;
  PumpPriority := APumpPriority;
  DesiredRate := ADesiredRate;
end;
//---------------------------------------------------------------------------
class function TOWPumpRequestOperation.Create() : IOWNotifyOperation;
begin
  Result := CreateObject();
end;
//---------------------------------------------------------------------------
class function TOWPumpRequestOperation.CreateEx( APump : TObject; APumpType : TOWPumpType; APumpPriority : Cardinal; const ADesiredRate : Real ) : IOWNotifyOperation;
begin
  Result := CreateExObject( APump, APumpType, APumpPriority, ADesiredRate );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStartPumpOperation.CreateObject( APump : TObject );
begin
  inherited CreateObject();
  Pump := APump;
end;
//---------------------------------------------------------------------------
class function TOWStartPumpOperation.Create( APump : TObject ) : IOWNotifyOperation;
begin
  Result := CreateObject( APump );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWMasterPumpOperation.CreateObject( APump : TObject );
begin
  inherited CreateObject();
  Pump := APump;
end;
//---------------------------------------------------------------------------
class function TOWMasterPumpOperation.Create( APump : TObject ) : IOWNotifyOperation;
begin
  Result := CreateObject( APump );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWClockNeededOperation.CreateObject( AEnabled : Boolean );
begin
  inherited CreateObject();
  Enabled := AEnabled;
end;
//---------------------------------------------------------------------------
class function TOWClockNeededOperation.Create( AEnabled : Boolean ) : IOWNotifyOperation;
begin
  Result := CreateObject( AEnabled );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWClockOperation.CreateObject( ASamples : Integer );
begin
  inherited CreateObject();
  Samples := ASamples;
end;
//---------------------------------------------------------------------------
class function TOWClockOperation.Create( ASamples : Integer ) : IOWNotifyOperation;
begin
  Result := CreateObject( ASamples );
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
constructor TOWTypedListSuppliedOperation<T>.Create( const AValue : IArrayList<T> );
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
function CreatePinListItem( AInstance : TObject; const AOnCreated : TProc<TOWPin>; const APinClass : IClassTypeInfo; const APinType : ITypeInfo; const ALockItem : ILockItem ) : TOWPin;
{
type
  TOWClockSourcePinClass = class of TOWClockSourcePin;
  TOWStdSinkPinClass = class of TOWStdSinkPin;
  TOWStdMultiSinkPinClass = class of TOWStdMultiSinkPin;
  TOWClockSinkPinClass = class of TOWClockSinkPin;
  TOWClockMultiSinkPinClass = class of TOWClockMultiSinkPin;
}
begin
//  if( Supports( APinClass, IDynamicTypeInfo )) then
//  var ADynamicTypeInfo : IDynamicTypeInfo;
//  if( TInterface.IfSupports<IDynamicTypeInfo>( APinClass, ADynamicTypeInfo )) then
  var AResult : TOWPin := NIL;
  TClassManagement.FromClassType( False, False, NIL, AInstance, ALockItem, APinClass, NIL,
      procedure( AObject : TObject )
      begin
        AResult := TOWPin( AObject );

        TInterface.IfSupports<IDynamicTypeInfo>( APinClass,
            procedure( const ADynamicTypeInfo : IDynamicTypeInfo )
            begin
              ADynamicTypeInfo.Populate( AInstance, NIL, AResult, NIL );
            end
          );

        AOnCreated( AResult );
      end
    ,
      NIL
    ,
      APinClass );

  Result := AResult;
{
  if( APinType.InheritsFrom( TOWClockSourcePin.ClassTypeInfo() )) then
    Exit( TOWClockSourcePinClass( APinClass.MetaclassType ).Create( AOnCreated, ALockItem.GetLock(), NIL ));

  if( APinType.InheritsFrom( TOWStdSinkPin.ClassTypeInfo() )) then
    Exit( TOWStdSinkPinClass( APinClass.MetaclassType ).Create( AOnCreated, ALockItem.GetLock(), NIL ));

  if( APinType.InheritsFrom( TOWStdMultiSinkPin.ClassTypeInfo() )) then
    Exit( TOWStdMultiSinkPinClass( APinClass.MetaclassType ).Create( AOnCreated, ALockItem.GetLock(), NIL ));

  if( APinType.InheritsFrom( TOWClockSinkPin.ClassTypeInfo() )) then
    Exit( TOWClockSinkPinClass( APinClass.MetaclassType ).Create( AOnCreated, ALockItem.GetLock(), NIL ));

  if( APinType.InheritsFrom( TOWClockMultiSinkPin.ClassTypeInfo() )) then
    Exit( TOWClockMultiSinkPinClass( APinClass.MetaclassType ).Create( AOnCreated, ALockItem.GetLock(), NIL ));

  Result := NIL;
}end;
//---------------------------------------------------------------------------
procedure InitializationSection();
var
  ASinkPinTypeInfo    : ITypeInfo; // Careful! Used in anonymous methods!
  ASourcePinTypeInfo  : ITypeInfo; // Careful! Used in anonymous methods!
//  AStatePinTypeInfo   : ITypeInfo;

begin
  ASinkPinTypeInfo := TOWBasicSinkPin.ClassTypeInfo();
  ASourcePinTypeInfo := TOWSourcePin.ClassTypeInfo();
//  AStatePinTypeInfo := TOWStatePin.ClassTypeInfo();

  OWRegisterDefaultHandler( IOWDataStream, OWDefaultDataNotificationHandler );

  OWRegisterTypeConverters(
      [
        TOWIntToFloatFormatConverter,
        TOWIntToCardinalFormatConverter,
        TOWUInt64ToInt64FormatConverter,
        TOWUInt64ToCardinalFormatConverter,
        TOWCardinalToUInt64FormatConverter,

        TOWInt64ToCardinalFormatConverter,
        TOWCardinalToInt64FormatConverter,

        TOWUInt64ToIntegerFormatConverter,
        TOWIntegerToUInt64FormatConverter,

        TOWInt64ToUInt64FormatConverter,
        TOWIntegerToInt64FormatConverter,
        TOWInt64ToIntegerFormatConverter,
        TOWIntToRealFormatConverter,
        TOWIntToStringFormatConverter,
        TOWInt64ToFloatFormatConverter,
        TOWInt64ToRealFormatConverter,
        TOWInt64ToStringFormatConverter,
        TOWCardinalToFloatFormatConverter,
        TOWCardinalToIntegerFormatConverter,
        TOWCardinalToRealFormatConverter,
        TOWCardinalToStringFormatConverter,
        TOWUInt64ToFloatFormatConverter,
        TOWUInt64ToRealFormatConverter,
        TOWUInt64ToStringFormatConverter,
        TOWFloatToRealFormatConverter,
        TOWByteToIntegerFormatConverter,
        TOWFloatToStringFormatConverter,
        TOWRealToStringFormatConverter,
        TOWRealToRealComplexFormatConverter,
        TOWIntToRealRangedFormatConverter,
        TOWInt64ToRealRangedFormatConverter,
        TOWIntRangedToStringFormatConverter,
        TOWInt64RangedToStringFormatConverter,
        TOWRealRangedToStringFormatConverter,
        TOWBoolToStringFormatConverter,
        TOWBoolToIntFormatConverter,
        TOWRealComplexToStringFormatConverter,
        TOWFloatQuaternionToStringFormatConverter,
        TOWFloatPoint3DToStringFormatConverter,
        TOWTimeToStringFormatConverter,
        TOWIntToStringListFormatConverter,
        TOWInt64ToStringListFormatConverter,
        TOWRealToStringListFormatConverter,
        TOWFloatToStringListFormatConverter,
        TOWIntToRealListFormatConverter,
        TOWFloatToRealListFormatConverter,
        TOWColorToAlphaColorFormatConverter,
        TOWColorToStringFormatConverter,
        TOWAlphaColorToStringFormatConverter,
        TOWRGBWColorToStringFormatConverter,
        TOWRGBWAlphaColorToStringFormatConverter,
//        TOWRGBWColorToColorFormatConverter,
        TOWColorToRGBWColorFormatConverter,
        TOWColorToRGBWAlphaColorFormatConverter,
        TOWRGBWColorToRGBWAlphaColorFormatConverter,
        TOWCharToStringFormatConverter,
        TOWStringToCharFormatConverter
      ]
   );

  GManagedDispatchSourcePinInit := TClassManagement.RegisterInitClassDefaults(
      TOWManagedDispatchSourcePin.ClassTypeInfo()
    ,
      procedure( const ANested : Boolean; const AOwner : TObject; const AInstance : TObject; const AClass : IClassTypeInfo; const AMember : IValueMemberInfo; const AOnCreated : TProc<TObject>; const APostProcessList : IArrayList<TProc>; const ALockItem : ILockItem )
      type
        TOWDispatchSourcePinClass = class of TOWManagedDispatchSourcePin;

      begin
        TClassManagement.CreateMenagedObject( TOWSourcePin, AOwner, AInstance, AMember,
            procedure( AComponent : TComponent )
            begin
              TOWDispatchSourcePinClass( AClass.MetaclassType ).Create(
                  TOWPin.PinCustomOwnerSetter(
                      procedure( APin : TOWPin )
                      begin
                        AOnCreated( APin );
                      end
                    ,
                      AComponent, TPersistent( AInstance )
                    )
                ,
                  ALockItem.GetLock(), NIL );

            end
          ,
            procedure( const APath : IPropertyElements; const AName : String )
            begin
              TOWDispatchSourcePinClass( AClass.MetaclassType ).Create(
                  TOWPin.PinCustomPathSetter(
                      procedure( APin : TOWPin )
                      begin
                        AOnCreated( APin );
                      end
                    ,
                      APath, AName
                    )
                ,
                  ALockItem.GetLock(), NIL );

            end
          );

      end
    );

  GManagedStdStatePinInit := TClassManagement.RegisterInitClassDefaults(
      TOWStdStatePin.ClassTypeInfo()
    ,
      procedure( const ANested : Boolean; const AOwner : TObject; const AInstance : TObject; const AClass : IClassTypeInfo; const AMember : IValueMemberInfo; const AOnCreated : TProc<TObject>; const APostProcessList : IArrayList<TProc>; const ALockItem : ILockItem )
      type
        TOWStdStatePinClass = class of TOWStdStatePin;

      begin
        TClassManagement.CreateMenagedObject( TOWStdStatePin, AOwner, AInstance, AMember,
            procedure( AComponent : TComponent )
            begin
              TOWStdStatePinClass( AClass.MetaclassType ).Create(
                  TOWPin.PinCustomOwnerSetter(
                      procedure( APin : TOWPin )
                      begin
                        AOnCreated( APin );
                      end
                    ,
                      AComponent, TPersistent( AInstance )
                    )
                ,
                  ALockItem.GetLock(), NIL, NIL );

            end
          ,
            procedure( const APath : IPropertyElements; const AName : String )
            begin
              TOWStdStatePinClass( AClass.MetaclassType ).Create(
                  TOWPin.PinCustomPathSetter(
                      procedure( APin : TOWPin )
                      begin
                        AOnCreated( APin );
                      end
                    ,
                      APath, AName
                    )
                ,
                  ALockItem.GetLock(), NIL, NIL );

            end
          );

      end
    );

  GManagedStdSinkPinInit := TClassManagement.RegisterInitClassDefaults( TOWStdSinkPin.ClassTypeInfo(),
      procedure( const ANested : Boolean; const AOwner : TObject; const AInstance : TObject; const AClass : IClassTypeInfo; const AMember : IValueMemberInfo; const AOnCreated : TProc<TObject>; const APostProcessList : IArrayList<TProc>; const ALockItem : ILockItem )
      type
        TOWStdSinkPinClass = class of TOWStdSinkPin;

      begin
        TClassManagement.CreateMenagedObject( TOWStdSinkPin, AOwner, AInstance, AMember,
            procedure( AComponent : TComponent )
            begin
              TOWStdSinkPinClass( AClass.MetaclassType ).Create(
                  TOWPin.PinCustomOwnerSetter(
                      procedure( APin : TOWPin )
                      begin
                        AOnCreated( APin );
                      end
                    ,
                      AComponent, TPersistent( AInstance )
                    )
                ,
                  ALockItem.GetLock(), NIL );

            end
          ,
            procedure( const APath : IPropertyElements; const AName : String )
            begin
              TOWStdSinkPinClass( AClass.MetaclassType ).Create(
                  TOWPin.PinCustomPathSetter(
                      procedure( APin : TOWPin )
                      begin
                        AOnCreated( APin );
                      end
                    ,
                      APath, AName
                    )
                ,
                  ALockItem.GetLock(), NIL );

            end
          );

      end
    );

  GManagedStdMultiSinkPinInit := TClassManagement.RegisterInitClassDefaults( TOWStdMultiSinkPin.ClassTypeInfo(),
      procedure( const ANested : Boolean; const AOwner : TObject; const AInstance : TObject; const AClass : IClassTypeInfo; const AMember : IValueMemberInfo; const AOnCreated : TProc<TObject>; const APostProcessList : IArrayList<TProc>; const ALockItem : ILockItem )
      type
        TOWStdMultiSinkPinClass = class of TOWStdMultiSinkPin;

      begin
        TClassManagement.CreateMenagedObject( TOWStdMultiSinkPin, AOwner, AInstance, AMember,
            procedure( AComponent : TComponent )
            begin
              TOWStdMultiSinkPinClass( AClass.MetaclassType ).Create(
                  TOWPin.PinCustomOwnerSetter(
                      procedure( APin : TOWPin )
                      begin
                        AOnCreated( APin );
                      end
                    ,
                      AComponent, TPersistent( AInstance )
                    )
                ,
                  ALockItem.GetLock(), NIL );

            end
          ,
            procedure( const APath : IPropertyElements; const AName : String )
            begin
              TOWStdMultiSinkPinClass( AClass.MetaclassType ).Create(
                  TOWPin.PinCustomPathSetter(
                      procedure( APin : TOWPin )
                      begin
                        AOnCreated( APin );
                      end
                    ,
                      APath, AName
                    )
                ,
                  ALockItem.GetLock(), NIL );

            end
          );

      end
    );

  GManagedClockSinkPinDefault := TClassManagement.RegisterInitClassDefaults(
      TOWClockSinkPin.ClassTypeInfo()
    ,
      procedure( const ANested : Boolean; const AOwner : TObject; const AInstance : TObject; const AClass : IClassTypeInfo; const AMember : IValueMemberInfo; const AOnCreated : TProc<TObject>; const APostProcessList : IArrayList<TProc>; const ALockItem : ILockItem )
      type
        TOWClockSinkPinClass = class of TOWClockSinkPin;

      begin
        TClassManagement.CreateMenagedObject( TOWClockSinkPin, AOwner, AInstance, AMember,
            procedure( AComponent : TComponent )
            begin
              TOWClockSinkPinClass( AClass.MetaclassType ).Create(
                  TOWPin.PinCustomOwnerSetter(
                      procedure( APin : TOWPin )
                      begin
                        AOnCreated( APin );
                      end
                    ,
                      AComponent, TPersistent( AInstance )
                    )
                ,
                  ALockItem.GetLock(), NIL );

            end
          ,
            procedure( const APath : IPropertyElements; const AName : String )
            begin
              TOWClockSinkPinClass( AClass.MetaclassType ).Create(
                  TOWPin.PinCustomPathSetter(
                      procedure( APin : TOWPin )
                      begin
                        AOnCreated( APin );
                      end
                    ,
                      APath, AName
                    )
                ,
                  ALockItem.GetLock(), NIL );

            end
          );

      end
    );

  GManagedClockMultiSinkPinDefault := TClassManagement.RegisterInitClassDefaults(
      TOWClockMultiSinkPin.ClassTypeInfo()
    ,
      procedure( const ANested : Boolean; const AOwner : TObject; const AInstance : TObject; const AClass : IClassTypeInfo; const AMember : IValueMemberInfo; const AOnCreated : TProc<TObject>; const APostProcessList : IArrayList<TProc>; const ALockItem : ILockItem )
      type
        TOWClockMultiSinkPinClass = class of TOWClockMultiSinkPin;

      begin
        TClassManagement.CreateMenagedObject( TOWClockMultiSinkPin, AOwner, AInstance, AMember,
            procedure( AComponent : TComponent )
            begin
              TOWClockMultiSinkPinClass( AClass.MetaclassType ).Create(
                  TOWPin.PinCustomOwnerSetter(
                      procedure( APin : TOWPin )
                      begin
                        AOnCreated( APin );
                      end
                    ,
                      AComponent, TPersistent( AInstance )
                    )
                ,
                  ALockItem.GetLock(), NIL );

            end
          ,
            procedure( const APath : IPropertyElements; const AName : String )
            begin
              TOWClockMultiSinkPinClass( AClass.MetaclassType ).Create(
                  TOWPin.PinCustomPathSetter(
                      procedure( APin : TOWPin )
                      begin
                        AOnCreated( APin );
                      end
                    ,
                      APath, AName
                    )
                ,
                  ALockItem.GetLock(), NIL );

            end
          );

      end
    );

  GManagedPinListOwnerDefault := TClassManagement.RegisterInitClassDefaults(
      TOWPinListOwner.ClassTypeInfo()
    ,
      procedure( const ANested : Boolean; const AOwner : TObject; const AInstance : TObject; const AClass : IClassTypeInfo; const AMember : IValueMemberInfo; const AOnCreated : TProc<TObject>; const APostProcessList : IArrayList<TProc>; const ALockItem : ILockItem )
      type
        TOWPinListOwnerClass = class of TOWPinListOwner;

      var
        APinType        : ITypeInfo; // Keep here for proper capture!
        APinCategories  : TOWPinCategories;

      begin
        var AAttributes : IAttributesInfo := TAttributesInfo.CreateCopy( AMember.CustomAttributes );

        AAttributes.Append( AMember.TypeInfo.CustomAttributes );

        var AFieldInfo : IFieldInfo;
        if( TInterface.IfSupports<IFieldInfo>( AMember, AFieldInfo )) then
          for var AProperty in AInstance.TypeInfo().SingleProperties do
            begin
            var AField : IFieldInfo;
            if( AProperty.GetStorageField( AField )) then
              if( AField.Offset = AFieldInfo.Offset ) then
                begin
                AAttributes.Append( AProperty.CustomAttributes );
                AAttributes.Append( AProperty.TypeInfo.CustomAttributes );
                Break;
                end;

            end;

        for var AAttributeItem in AAttributes do
          begin
          if( AAttributeItem is OWAutoManagePinListOwnerAttribute ) then
            begin
            var AAttribute := OWAutoManagePinListOwnerAttribute( AAttributeItem );
            APinType := AAttribute.PinClass as IClassTypeInfo;
            if( APinType.InheritsFrom( ASinkPinTypeInfo )) then
              APinCategories := [ pcSink ]

            else if( APinType.InheritsFrom( ASourcePinTypeInfo )) then
              APinCategories := [ pcSource ]

            else
              APinCategories := [ pcState ];

            TClassManagement.CreateMenagedObject( TOWClockMultiSinkPin, AOwner, AInstance, AMember,
                procedure( AComponent : TComponent )
                begin
                  TOWPinListOwnerClass( AClass.MetaclassType ).CreateEx(
                      TOWPinList.PinListCustomOwnerSetter(
                          procedure( APinList : TOWPinList )
                          begin
                            AOnCreated( APinList );
                          end
                        ,
                          AComponent, TPersistent( AInstance )
                        )
                    ,
                      ALockItem.GetLock(), AAttribute.Count, APinCategories, AAttribute.Min, AAttribute.Max
                    ,
                      function( APinList : TOWPinList; const AOnCreated : TProc<TOWPin> ) : TOWPin
                      begin
                        Result := CreatePinListItem( AInstance, AOnCreated, AAttribute.PinClass as IClassTypeInfo, APinType, ALockItem );
                      end
                    ,
                      NIL
                    );
//                      AMember.Value[ AInstance ] := TOWClockMultiSinkPinClass( AClass.MetaclassType ).CreateLock( AComponent, TPersistent( AInstance ), ALockItem.GetLock(), NIL );
                end
              ,
                procedure( const APath : IPropertyElements; const AName : String )
                begin
                  TOWPinListOwnerClass( AClass.MetaclassType ).CreateEx(
                      TOWPinList.PinListCustomPathSetter(
                          procedure( APinList : TOWPinList )
                          begin
                            AOnCreated( APinList );
                          end
                        ,
                          APath, AName )
                    ,
                      ALockItem.GetLock(), AAttribute.Count, APinCategories, AAttribute.Min, AAttribute.Max
                    ,
                      function( APinList : TOWPinList; const AOnCreated : TProc<TOWPin> ) : TOWPin
                      begin
                        Result := CreatePinListItem( AInstance, AOnCreated, AAttribute.PinClass as IClassTypeInfo, APinType, ALockItem );
                      end
                    ,
                      NIL
                    );

                end
              );

          end;
        end;
      end
    );

  GManagedPinListDefault := TClassManagement.RegisterInitClassDefaults(
      TOWPinList.ClassTypeInfo()
    ,
      procedure( const ANested : Boolean; const AOwner : TObject; const AInstance : TObject; const AClass : IClassTypeInfo; const AMember : IValueMemberInfo; const AOnCreated : TProc<TObject>; const APostProcessList : IArrayList<TProc>; const ALockItem : ILockItem )
      type
        TOWPinListClass = class of TOWPinList;

      var
        APinCategories  : TOWPinCategories;
        ALocalPinList   : TOWPinList;
        APinType        : IClassTypeInfo; // Leave here for proper capture!
        AAttribute      : OWAutoManagePinListAttribute;

      begin
        if( AMember.AccessAttributes.Get<OWAutoManagePinListAttribute>( True, AAttribute )) then
          begin
          APinType := AAttribute.PinClass as IClassTypeInfo;
          if( APinType.InheritsFrom( ASinkPinTypeInfo )) then
            APinCategories := [ pcSink ]

          else if( APinType.InheritsFrom( ASourcePinTypeInfo )) then
            APinCategories := [ pcSource ]

          else
            APinCategories := [ pcState ];

          TClassManagement.CreateMenagedObject( TOWClockMultiSinkPin, AOwner, AInstance, AMember,
              procedure( AComponent : TComponent )
              begin
                ALocalPinList := TOWPinListClass( AClass.MetaclassType ).Create(
                    TOWPinList.PinListCustomOwnerSetter(
                        procedure( APinList : TOWPinList )
                        begin
                          AOnCreated( APinList );
                        end
                      ,
                        AComponent, TPersistent( AInstance )
                      )
                  ,
                    ALockItem.GetLock(), APinCategories, AAttribute.IsOwner
                  );

              end
            ,
              procedure( const APath : IPropertyElements; const AName : String )
              begin
                ALocalPinList := TOWPinListClass( AClass.MetaclassType ).Create(
                    TOWPinList.PinListCustomPathSetter(
                        procedure( APinList : TOWPinList )
                        begin
                          AOnCreated( APinList );
                        end
                      ,
                        APath, AName )
                  ,
                    ALockItem.GetLock(), APinCategories, AAttribute.IsOwner
                  );

              end
            );

          var AProc : TProc :=
              procedure()
              begin
                var AAttributes : IAttributesInfo := TAttributesInfo.CreateCopy( AMember.CustomAttributes );
                var ATypeInfo := AInstance.TypeInfo();
                var AFieldInfo : IFieldInfo;
                if( TInterface.IfSupports<IFieldInfo>( AMember, AFieldInfo )) then
                  for var AProperty in ATypeInfo.SingleProperties do
                    begin
                    var AField : IFieldInfo;
                    if( AProperty.GetStorageField( AField )) then
                      if( AField.Offset = AFieldInfo.Offset ) then
                        begin
                        AAttributes.Append( AProperty.CustomAttributes );
                        AAttributes.Append( AProperty.TypeInfo.CustomAttributes );
                        Break;
                        end;

                    end;

                for var APropAttribute in AAttributes do
                  begin
                  if( APropAttribute is OWResizePropertyAttribute ) then
                    begin
                    var AProperty : ISinglePropertyInfo;
                    if( ATypeInfo.GetSingleProperty( OWResizePropertyAttribute( APropAttribute ).Value, AProperty )) then
                      begin
                      var ACount := AProperty.Value[ AInstance ].AsOrdinal();
                      for var I : Integer := 0 to ACount - 1 do
                        CreatePinListItem( AInstance, TOWPin.PinListAddSetter( ALocalPinList ), APinType, APinType, ALockItem );

                      AProperty.AddValueChangeNotify( AInstance,
                          procedure( const AMember : IValueMemberInfo )
                          begin
                            var ACount := AMember.Value[ AInstance ].AsOrdinal();
                            while( ALocalPinList.Count > ACount ) do
                              ALocalPinList.Delete( ALocalPinList.Count - 1 );

                            if( ALocalPinList.Count < ACount ) then
                              begin
                              var APinType := AAttribute.PinClass as IClassTypeInfo;
                              while( ALocalPinList.Count < ACount ) do
                                CreatePinListItem( AInstance, TOWPin.PinListAddSetter( ALocalPinList ), APinType, APinType, ALockItem );

                              end;

                          end
                        );

                      end;

                    Break;
                    end;
                  end;

              end;

          if( APostProcessList <> NIL ) then
            APostProcessList.Add( AProc )

          else
            AProc();

          end

        else
          AMember.AccessAttributes.ForLast<AutoManageAttribute>( True,
              procedure( AAttribute : AutoManageAttribute )
              var
                APinCategories  : TOWPinCategories;

              begin
                APinCategories := [];

                var AAttributes : IAttributesInfo := TAttributesInfo.CreateCopy( AMember.CustomAttributes );

                AAttributes.Append( AMember.TypeInfo.CustomAttributes );

                var AFieldInfo : IFieldInfo;
                if( TInterface.IfSupports<IFieldInfo>( AMember, AFieldInfo )) then
                  for var AProperty in AInstance.TypeInfo().SingleProperties do
                    begin
                    var AField : IFieldInfo;
                    if( AProperty.GetStorageField( AField )) then
                      if( AField.Offset = AFieldInfo.Offset ) then
                        begin
                        AAttributes.Append( AProperty.CustomAttributes );
                        AAttributes.Append( AProperty.TypeInfo.CustomAttributes );
                        Break;
                        end;

                    end;

                for var AAttributeItem in AAttributes do
                  begin
                  if( AAttributeItem is OWPinListCategoryAttribute ) then
                    APinCategories := APinCategories + [ OWPinListCategoryAttribute( AAttributeItem ).Value ];

                  if( AAttributeItem is OWAddPinAttribute ) then
                    begin
                    var AValueTypeInfo := OWAddPinAttribute( AAttributeItem ).Value as IClassTypeInfo;
                    if( AValueTypeInfo.InheritsFrom( ASinkPinTypeInfo )) then
                      APinCategories := APinCategories + [ pcSink ]

                    else if( AValueTypeInfo.InheritsFrom( ASourcePinTypeInfo )) then
                      APinCategories := APinCategories + [ pcSource ]

                    else
                      APinCategories := APinCategories + [ pcState ];

                    end;
                  end;

                var APinList : TOWPinList := NIL;
                TClassManagement.CreateMenagedObject( TOWClockMultiSinkPin, AOwner, AInstance, AMember,
                    procedure( AComponent : TComponent )
                    begin
                      APinList := TOWPinListClass( AClass.MetaclassType ).Create(
                          TOWPinList.PinListCustomOwnerSetter(
                              procedure( APinList : TOWPinList )
                              begin
                                AOnCreated( APinList );
                              end
                            ,
                              AComponent, TPersistent( AInstance )
                            )
                        ,
                          ALockItem.GetLock(), APinCategories, True
                        );

                    end
                  ,
                    procedure( const APath : IPropertyElements; const AName : String )
                    begin
                      APinList := TOWPinListClass( AClass.MetaclassType ).Create(
                          TOWPinList.PinListCustomPathSetter(
                              procedure( APinList : TOWPinList )
                              begin
                                AOnCreated( APinList );
                              end
                            ,
                              APath, AName )
                        ,
                          ALockItem.GetLock(), APinCategories, True
                        );

                    end
                  );

                AOnCreated( APinList );

                for var AAttributeItem in AAttributes do
                  begin
                  if( AAttributeItem is OWAddPinAttribute ) then
                    begin
                    var AValueTypeInfo := OWAddPinAttribute( AAttributeItem ).Value as IClassTypeInfo;

                    if( AAttributeItem is OWAddPinsAttribute ) then
                      begin
                      for var I : Integer := OWAddPinsAttribute( AAttributeItem ).StartIndex to OWAddPinsAttribute( AAttributeItem ).StartIndex + OWAddPinsAttribute( AAttributeItem ).Count - 1 do
                        begin
                        var AName := OWAddPinAttribute( AAttributeItem ).Name;
                        var AOnCreated : TProc<TOWPin>;
                        if( AName <> '' ) then
                          AOnCreated := TOWPin.PinListAddNamedSetter( APinList, AName + I.ToString() )

                        else
                          AOnCreated := TOWPin.PinListAddSetter( APinList );

                        var AItem : TOWBasicPin;
                        if( not OWAddPinsAttribute( AAttributeItem ).CreatePin( AOnCreated, ALockItem, AItem ) ) then
                          CreatePinListItem( AInstance, AOnCreated, AValueTypeInfo, AValueTypeInfo, ALockItem );

                        end;
                      end

                    else
                      begin
                      var AOnCreated : TProc<TOWPin>;
                      var AName := OWAddPinAttribute( AAttributeItem ).Name;
                      if( AName <> '' ) then
                        AOnCreated := TOWPin.PinListAddNamedSetter( APinList, AName )

                      else
                        AOnCreated := TOWPin.PinListAddSetter( APinList );

                      var AItem : TOWBasicPin;
                      if( not OWAddPinsAttribute( AAttributeItem ).CreatePin( AOnCreated, ALockItem, AItem ) ) then
                        CreatePinListItem( AInstance, AOnCreated, AValueTypeInfo, AValueTypeInfo, ALockItem );

                      end;
                    end;
                  end;

              end
            );


      end
    );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
initialization
  InitializationSection();

finalization
  TClassManagement.UnregisterInitClassDefaults( GManagedDispatchSourcePinInit );
  TClassManagement.UnregisterInitClassDefaults( GManagedStdStatePinInit );
  TClassManagement.UnregisterInitClassDefaults( GManagedStdSinkPinInit );
  TClassManagement.UnregisterInitClassDefaults( GManagedStdMultiSinkPinInit );

  TClassManagement.UnregisterInitClassDefaults( GManagedClockSinkPinDefault );
  TClassManagement.UnregisterInitClassDefaults( GManagedClockMultiSinkPinDefault );
  TClassManagement.UnregisterInitClassDefaults( GManagedPinListOwnerDefault );
  TClassManagement.UnregisterInitClassDefaults( GManagedPinListDefault );

{$WARN SYMBOL_DEPRECATED OFF}

end.
