{*> Ver: V7.6 *********      History      ***************************\

Beta V1.0b0  04/20/2001  Released
Beta V1.0b1  04/30/2001  Upstream notification added.
                         Standartized notification / Up/Downstream
                         Component iteraction functionality added

Beta V1.0b2  04/31/2001  Improved editor.
                         Added stream type registration.

Beta V1.0b3  05/02/2001  IgnoreUpstream has been added for the sinks.
Beta V1.0b4  05/03/2001  TOWPinList* has been added.
Beta V1.0b5  05/04/2001  Remove notification has been added.
Beta V1.0b6  05/06/2001  TOWPinListOwner has been added.
Beta V1.0b7  05/07/2001  FMinPins and FMaxPins have been added to TOWPinListOwner.
                         Fixed remove notifycation on destroy.

Beta V1.0b8  05/09/2001  TOWNotificationState has been added.
Beta V1.0b9  05/11/2001  Partial Delphi 6 support has been added.
                         Improved TOWPinListPropertyEditor.
                         Pin Categories ave been added.
                         TOWNotificationResults has been adde in order to support dynamic balansing in the future.

Beta V1.1b0  06/04/2001  Multiform support. Dual link information.
                         Improved ObjectInspector refresh.
                         Various fixes.

Beta V1.2b0  06/18/2001  Dynamic order optimization.
                         Sink edit property editor.

Beta V1.2b1  06/25/2001  Some fixes in the multiform support.
Beta V1.2b2  07/11/2001  RequestConnection has been replaced by Connect
                         and now is part of TOWPin.

Beta V1.2b3  07/11/2001  Improved TOWPinList support and property editors.
Beta V1.2b5  07/19/2001  Disconnect procedure has been added.
Beta V1.2b6  08/01/2001  Minor fixes for the graphic editor support.
Beta V1.2b7  08/06/2001  Added pin add/remove/change notification for experts.
Beta V1.2b8  08/13/2001  Edded function dependency check.
V1.2         08/31/2001  Official release.
V1.3         09/04/2001  Small fix in the dependency on itself check.
V1.4         11/21/2001  IsConnectedTo is added to TOWPin IsLinkedTo is changed to IsConnectedTo.
V1.5         02/16/2002  TPinType.RemoveType and TPinType.ClearTypes have been added.
                         OWRegisterWireStream adds support for global dispatcher.
                         Restricting and renegotiating handshaking with different type of data
                         ( DataType restriction support) is finally implemented.
V1.6         02/23/2002  Delphi 6.0 Support. Some minor bug fixes.
V1.7         04/14/2002  C++ Builder 6.0 Support. Added the OWClassProperty file.
                         Uses the IsEqualGUID instead of OWEqualGUIDs.
                         GetName and GetSaveName functions have been added.
                         Some minor notification improvements.
                         Improved interform resolution mechanism.
                         Some minor improvements.
V1.8         05/09/2002  Improved editor. Improved lost pins clean up.
                         Pin list owner ship.
                         TPinType, TPinEntry, TPinTypeRestricted, TStreamTypeEntry and
                         TPinTypeEntry has been changed to
                         TOWPinStreamType, TOWPinEntry, TOWPinTypeRestricted, TOWStreamTypeEntry and
                         TOWPinTypeEntry.
                         Many names have been changed to a short version to avoid BCB linker problems.
                         OWRegisterWireStream            -> OWRegisterStream
                         OWRegisterStreamDefaultCallback -> OWRegisterDefaultHandler
                         TOWNotificationState            -> TOWNotifyState
                         TOWNotificationResults          -> TOWNotifyResult
                         TOWSubmitFunction               -> TOWSubmit
                         TOWGlobalSubmitFunction         -> TOWGlobalSubmit


V2.0b1       11/13/2002  TOWStatePins added. Improved Notify mechanism by using TOWNotifyOperation.
                         TOWPinNotifier has been changed to IOWPinNotifier
                         Improved standard pins.

V2.0b2       12/09/2002  TOWStateDispatcher is a TPersistent. Some changes in the TypeDependency.
V2.0b3       01/21/2003  State pin notification improvements.
V2.0b4       02/12/2003  Some minor overall fixes.
V2.0         04/13/2003  Official release.
V2.1         05/15/2003  Maintenance release.
V2.2         08/27/2003  Maintenance release.
V2.3         01/03/2004  Complex data type added. Some minor overall fixes.
V2.4         12/02/2004  Multithreading. Delphi 2005 support. Reduced compile warnings. Multy pump support.
V2.5         06/22/2005  Improved Multithreading. Added OperationID. Added partial support for Delphi 10
V2.6         02/22/2006  Minor improvements.
V3.0         01/04/2007  Added name change notification for Pin Lists.
                         Added Notify After Pin support.
V3.1         10/25/2007  Fixed loading from Frames.
                         Fixed support for languages other than English in PinLists.
V4.0         03/14/2009  Added Format Converters.
                         Added Lazarus support for Windows, and Linux
                         New threading lock mechanism.
                         Added debug subscription support.
V4.3         09/23/2009  Added Delphi and C++ Builder 2010 support.
V4.3.1       10/10/2009  Improved pin list editor.
V4.5         04/29/2010  TOWMultiSinkPins added.
                         Improved pin editors.
                         Fully Lazarus compatible under Windows.

V5.0         09/02/2011  Added Delphi and C++ Builder XE and XE2 support.
                         Improved Lazarus support.
                         64 bit compatible.
                         Improved threading support.
                         Added expandable editors support.
                         The maximal number of sink pins connected to a source pin can be restricted.

V5.0.1       10/01/2011  Added workaround for C++ Builder XE2 initialization bug
V5.0.2       04/14/2012  Initial MAC compatibility added. Small fixes.
V5.0.3       10/04/2012  MAC compatibilible with disabled locks.
                         Added Delphi and C++ Builder XE3 support.

V6.0         05/28/2013  Added Delphi and C++ Builder XE4 support.
                         Dropped support for Lazarus and versions older than XE2.
                         Complete redesign to utilize the latest Delphi features such as anonymous methods and attributes.
                         Improved integration with the OpenWire Editor.

V7.0         04/13/2014  Added Delphi and C++ Builder XE5, and XE6 support.
                         Added MAC and Android support.
                         Added more standard pin types.
                         Added support for auto component suggestion in OpenWire Studio.
                         Simplified locking interface.
                         Improved integration with the OpenWire Editor.

V7.5         11/13/2014  Added Delphi and C++ Builder XE7, and XE7 support.
                         Redesigned to use the new free Mitov.Runtime library.

V7.6         04/12/2015  Added Delphi and C++ Builder XE8, and XE8 support.
                         Improved OpenWire Studio integration.
                         Added suport for Visuino.
                         Added support for RAD Studio preview windows.
                         Added support for Debug pins.
                         Added Add/Remove pin notification for owner component.
                         Added support for pin grouping across sub properties.
                         Added support for supression during on connect notifications.

Legal issues: Copyright (C) 2001-2015 by Mitov Software
              mitov@mitov.com
              www.mitov.com
              www.openwire.org

              This software is provided 'as-is', without any express or
              implied warranty.  In no event will the author be held liable
              for any  damages arising from the use of this software.

              Permission is granted to anyone to use this software for any
              purpose, including commercial applications, and to alter it
              and redistribute it freely, subject to the following
              restrictions:

              1. The origin of this software must not be misrepresented,
                 you must not claim that you wrote the original software.
                 If you use this software in a product, an acknowledgment
                 in the product documentation would be appreciated but is
                 not required.

              2. Altered source versions must be plainly marked as such, and
                 must not be misrepresented as being the original software.

              3. This notice may not be removed or altered from any source
                 distribution.

Acknowledgement: Special thanks to Atanas Stoyanov for his idea of using the
                 Interfaces instead oh plain GUIDs.

TODO :
                 None.

\***************************************************************************}

{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}

{$IFDEF NEXTGEN}
  {$DEFINE USE_NEW_RTTI }
{$ENDIF}

{$DEFINE INTERFACE_USE_STDCALL }

unit OWPins;

interface

uses
  Classes, System.Types, System.TypInfo, System.SysUtils, System.Generics.Collections,
  System.Generics.Defaults, Mitov.Attributes, Mitov.Types, Mitov.Threading,
  Mitov.Containers.Common, Mitov.Containers.List, IGDIPlus, Mitov.Containers.Utils;

var PinsNeedRefresh : Boolean;

const OWNULLID : TGUID = '{00000000-0000-0000-0000-000000000000}';

type
  TOWNotifyOperation = class;
  TOWNotifyOperationClass = class of TOWNotifyOperation;
//---------------------------------------------------------------------------
  OWCoreInterfaceAttribute = class( TCustomAttribute );
//---------------------------------------------------------------------------
  OWDebugPinsAttribute = class( TCustomAttribute );
//---------------------------------------------------------------------------
  OWNameAttribute = class( TCustomAttribute )
  protected
    FValue : String;

  public
    property Value : String  read FValue;

  public
    constructor Create( AValue : String );

  end;
//---------------------------------------------------------------------------
  OWBasicDataTypeAttribute = class( TBasicGUIDAttribute );
  OWDataTypeAttribute = class( OWBasicDataTypeAttribute );
  LPOWDataTypeAttribute = class( OWBasicDataTypeAttribute );
  OWPrimaryPinAttribute = class( TCustomAttribute );
  OWSecondaryPinAttribute = class( TCustomAttribute );
  OWPinListPrimaryPinTypeAttribute = class( TBasicClassAttribute );
  OWPinGroupAttribute = class( TBasicClassAttribute );
//---------------------------------------------------------------------------
  TOWBasicDataTypeAttributeClass = class of OWBasicDataTypeAttribute;
//---------------------------------------------------------------------------
  OWConvertDataTypeAttribute = class( TCustomAttribute )
  protected
    FFromDataType : TGUID;
    FToDataType   : TGUID;

  public
    property FromDataType : TGUID read FFromDataType;
    property ToDataType   : TGUID read FToDataType;

  public
    constructor Create( AFromDataType : TGUID; AToDataType : TGUID );

  end;
//---------------------------------------------------------------------------
  [OWCoreInterface]
  IOWStream = interface
    ['{2BFF1BE1-1698-4CFA-A427-9E0801C5B357}']
  end;

//---------------------------------------------------------------------------
  TOWNotifyState  = set of ( nsNewLink, nsLastIteration );
  TOWNotifyResult = set of ( nrDataChanged );
//---------------------------------------------------------------------------
  IOWOwnedComponent = interface
    ['{26204375-2E95-4CDE-9D24-95E73E0390A1}']
    function GetOwnerProperty() : TPersistent;
    function GetIndex() : Integer;

  end;
//---------------------------------------------------------------------------
  IOWNotifyOperation = interface
    ['{AC2714E1-1E70-4C60-ABBB-EA27737CEE74}']
    function GetInstance() : TOWNotifyOperation; stdcall;
    function IsType( AClass : TOWNotifyOperationClass ) : Boolean; overload; stdcall;
    function IsType( AClasses : array of TOWNotifyOperationClass ) : Boolean; overload; stdcall;

  end;
//---------------------------------------------------------------------------
  TOWNotifyOperation = class( TInterfacedObject, IOWNotifyOperation )
  protected
    FOperationID  : Cardinal;

  public
    property OperationID  : Cardinal read FOperationID;

  public
    constructor Create();

  public
    function GetInstance() : TOWNotifyOperation; stdcall;
    function IsType( AClass : TOWNotifyOperationClass ) : Boolean; overload; virtual; stdcall;
    function IsType( AClasses : array of TOWNotifyOperationClass ) : Boolean; overload; stdcall;

  end;
//---------------------------------------------------------------------------
  TOWValueNotifyOperation<T> = class( TOWNotifyOperation )
  public
    Value : T;

  public
    constructor Create( AValue : T );

  end;
//---------------------------------------------------------------------------
type
  TOWPin = class;
  TOWBasicPin = class;
  TOWStreamPin = class;
  TOWBasicSinkPin = class;
  TOWSinkPin = class;
  TOWMultiSinkPin = class;
  TOWSourcePin = class;
  TOWStatePin = class;
  TOWBasicStateDispatcher = class;
  TOWStateDispatcher = class;
  TOWPinList = class;
  TOWPinListOwner = class;
  TOWFormatConverter = class;
  TOWFormatConverterClass = class of TOWFormatConverter;
  TOWPinProxy = class;
  TOWPinProxyClass = class of TOWPinProxy;
  TOWPinListProxyClass = class of TOWPinListProxy;
  TOWDestroyLock = class;
  TOWPinNotifyEntryList = class;
  TOWFormatConverterList = class;
  TOWSourcePinList = class;
//---------------------------------------------------------------------------
  IOWFormatConverter = interface;
//---------------------------------------------------------------------------
  IOWComponentPinNotify = interface
    ['{677031E5-49A2-4E60-A731-770249C25886}']

    procedure PinAdded( APin : TOWBasicPin );
    procedure PinRemoved( APin : TOWBasicPin );

  end;
//---------------------------------------------------------------------------
  PDataTypeID = ^TGUID;
//---------------------------------------------------------------------------
// TOWSubmit must not be Lambda!
TOWSubmit = function ( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult of object;
//---------------------------------------------------------------------------
TOWPinEvent = reference to procedure( APin : TOWBasicPin );
TOWGlobalSubmit = function ( Sender : TOWPin; Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
//---------------------------------------------------------------------------
TOWSubmitLink = TOWSubmit;
//---------------------------------------------------------------------------
TOWPinTypeEntry = class
public
  ID             : TGUID;
  SubmitFunction : TOWSubmit;

end;
//---------------------------------------------------------------------------
TOWPinStreamType = class( TObjectList<TOWPinTypeEntry> )
public
  procedure AddType( ID : TGUID; ASubmitFunction : TOWSubmit; AOverrride : Boolean; AReorder : Boolean = False );
  procedure RemoveType( ID : TGUID );

public
  constructor Create();

end;
//---------------------------------------------------------------------------
TOWPinTypeRestricted = class( TOWPinStreamType )
public
  Ordered : Boolean;

end;
//---------------------------------------------------------------------------
TOWObject = class;
//---------------------------------------------------------------------------
TOWFakeLock = class( TBasicLock )
public
  function  ReadLock() : ILockSection; override;
  function  WriteLock() : ILockSection; override;
  function  StopLock() : ILockSection; override;
  function  UnlockAll() : ILockSection; override;
  function  UnlockAllLockInOrder( AFirstLock : IBasicLock ) : ILockSection; override;

end;
//---------------------------------------------------------------------------
IOWDestroyLockSection = interface
  ['{913E5C19-E2E0-4937-8435-3A8838AE90C4}']
end;
//---------------------------------------------------------------------------
IOWDestroyLock = interface
  ['{941BEB02-70F3-4FC6-ACAA-0754D6CB8A0A}']

  function Lock() : IOWDestroyLockSection;
  function DestroyLock() : IOWDestroyLockSection;
  function DestroyUnlockLock() : IOWDestroyLockSection;
  function Instance() : TOWDestroyLock;
   
end;
//---------------------------------------------------------------------------
TOWDestroyLock = class( TInterfacedObject, IOWDestroyLock )
protected
  FLockCounter  : LongInt;
  FDestroying   : LongInt;

  [Weak] FOwner : TOWObject;
  FSection      : ICriticalSection;
  FThreadID     : DWORD;

protected
  procedure Unlock();
  procedure DestroyUnlock();
  procedure DestroyLockNum( ACount : LongInt );

public
  function  Lock() : IOWDestroyLockSection;
  function  DestroyLock() : IOWDestroyLockSection;
  function  DestroyUnlockLock() : IOWDestroyLockSection;
  function  Instance() : TOWDestroyLock;

public
  constructor Create( AOwner : TOWObject ); 

end;
//---------------------------------------------------------------------------
TOWDestroyLockSection = class( TInterfacedObject, IOWDestroyLockSection )
protected
  FLock : IOWDestroyLock;

public
  constructor Create( ALock : TOWDestroyLock );
  destructor  Destroy(); override;

end;
//---------------------------------------------------------------------------
TOWDestroyLockLockSection = class( TInterfacedObject, IOWDestroyLockSection )
protected
  [Weak] FLock : TOWDestroyLock;

public
  constructor Create( ALock : TOWDestroyLock );
  destructor  Destroy(); override;

end;
//---------------------------------------------------------------------------
TOWDestroyLockUnlockSection = class( TInterfacedObject, IOWDestroyLockSection )
protected
  [Weak] FLock  : TOWDestroyLock;
  FCount        : LongInt;

public
  constructor Create( ALock : TOWDestroyLock; ACount : LongInt );
  destructor  Destroy(); override;

end;
//---------------------------------------------------------------------------
TOWObject = class( TBasicPersistent )
protected
  [AutoManage( TLock )]
  FIntLock        : IBasicLock;

  [AutoManage( TCriticalSection )] // Needs TCriticalSection to work around Android compiler bug
  FIntLockSection : ICriticalSection;

public
  function  ReadLock()  : ILockSection; virtual;
  function  WriteLock() : ILockSection; virtual;
  function  UnlockAll() : ILockSection; virtual;

end;
//---------------------------------------------------------------------------
TOWPinTypeObject = class( TOWObject );
//---------------------------------------------------------------------------
TOWPinObject = class( TOWPinTypeObject )
protected
  procedure PinDeletedNotify( const ADeletedPin : TOWBasicPin ); virtual;
  procedure PinReplacedNotify( const AOldPin : TOWBasicPin; const ANewPin : TOWBasicPin ); virtual;
  procedure SetNotifyAfterByName( const APin : TOWPin; const AfterPinName : String ); virtual;
  
public
  function  GetAfterPinDisplayName( APin : TOWPin ) : String; virtual;

end;
//---------------------------------------------------------------------------
TOWPinType = ( ptSource, ptSink, ptMultiSink, ptState, ptDispatcher );
//---------------------------------------------------------------------------
TOWPinCategory = ( pcSource, pcSink, pcState );
//---------------------------------------------------------------------------
TOWPinCategories = set of TOWPinCategory;
//---------------------------------------------------------------------------
TOWPinEntry = class
public
  ConnectionPin     : TOWBasicPin;
  RealPin           : TOWBasicPin;
  NotifyAfterPin    : TOWBasicPin;
  ConnectedID       : TGUID;
  SubmitFunction    : TOWSubmit;
  ModificationLevel : Integer; // Indicates how often this pin is source of data modification.

public
  procedure Assign( AOther : TOWPinEntry );

end;
//---------------------------------------------------------------------------
TOWNotifyPinEntry = class;
//---------------------------------------------------------------------------
IOWNotifyPinEntry = interface
  ['{CAD98CD2-B952-4DC3-ADAB-7D1F476F07B1}']

  function  GetInstance() : TOWNotifyPinEntry;
  procedure RemoveNotifyEntry();

end;
//---------------------------------------------------------------------------
TOWNotifyPinEntry = class( TInterfacedObject, IOWNotifyPinEntry )
public
  Entry     : TOWPinEntry;
  Converter : IOWFormatConverter; // Used only to keep the converter alive during Notify
  Section   : ICriticalSection;

protected
  function  GetInstance() : TOWNotifyPinEntry;
  procedure RemoveNotifyEntry();

public
  constructor Create();
  destructor  Destroy(); override;

end;
//---------------------------------------------------------------------------
TOWPinEntryList = class( TObjectList<TOWPinEntry> )
protected
  type
    TOWEComponentsListComparer = class( TInterfacedObject, IComparer<TOWPinEntry> )
    protected
      function Compare(const Item1, Item2: TOWPinEntry): Integer;

    end;

public
  function  Add() : TOWPinEntry;

public
  function  GetItemByPin( APin : TOWBasicPin ) : TOWPinEntry;

public
  constructor Create();

end;
//---------------------------------------------------------------------------
[CreateType( TypeInfo( TOWPinNotifyEntryList ))]
IOWPinNotifyEntryList = interface( IArrayList<IOWNotifyPinEntry> )
  ['{5773999D-A0ED-4FFC-8DBF-31FED1A198B1}']

  procedure RemoveLinks();

end;
//---------------------------------------------------------------------------
TOWPinNotifyEntryList = class( TArrayList<IOWNotifyPinEntry>, IOWPinNotifyEntryList )
public
  procedure RemoveLinks();

end;
//---------------------------------------------------------------------------
TOWBasicPin = class( TOWPinObject, IOWStream )
protected
  FCurrentEditorPtr : ^TOWBasicPin;

protected
  [Weak] FOwnerPinList : TOWPinList;   // If owned by pin list.
  FLoadFormName : String;
  FDestroyLock  : IOWDestroyLock;
  FOwnerLock    : IBasicLock; // The lock of the component taht owns the pin.
  FInDesignMode : Boolean;

  FImageCached  : Boolean;
  FImage        : IGPBitmap;

protected // State support
  FDispatcher   : TOWBasicStateDispatcher;

protected
  FName           : String;
  FShortName      : String;
  FDoNotShortName : Boolean;

protected
  function  IsDebugPin() : Boolean; virtual;
  function  GetOwnerPinList() : TOWPinList; virtual;
  function  GetOwnerComponent() : TComponent; virtual;
  function  RootInDestroying() : Boolean; virtual;
  function  OwnerInLoading() : Boolean; virtual;
  procedure IntDisconnect( const OtherPin : TOWBasicPin; DesignFormClosing : Boolean ); virtual;
  procedure IntConnect( const SinkPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; const ADataType : TGUID ); virtual;
  procedure CheckRemove(); virtual;
  procedure ApplyFormName( var Ident : String );
  function  CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean; ADataType : TGUID ) : Boolean; virtual;
  procedure BeforeDisconnect(); virtual;
  procedure BeforeDisconnectFrom( const APin : TOWBasicPin ); virtual;
  function  GetNameInt() : String; virtual; abstract;
  procedure PopulateNameCache(); virtual;
  function  GetIsCached() : Boolean; virtual;
  function  MakeShortName( AName : String ) : String; virtual;
  procedure RemoveNotifyEntry( AEntry : IOWNotifyPinEntry ); virtual;
  procedure AddNotifyEntry( AEntry : IOWNotifyPinEntry ); virtual;
  procedure UnlodedPinRemoved( const APin : TOWBasicPin ); virtual;

protected
  function  GetPinType() : TOWPinType; virtual; abstract;
  function  GetConnectedAfterForPin( const OtherPin : TOWBasicPin ) : TOWBasicPin; virtual;

protected
  function  GetInputOutputImage( out AImage : IGPBitmap; AForInput : Boolean; AForOutput : Boolean ) : Boolean; virtual;

protected
  class function IntGetPNGResImageByName( HInstance : NativeInt; AName : String; out ABitmap : IGPBitmap ) : Boolean; virtual;

public
  function  GetImage( out AImage : IGPBitmap ) : Boolean; virtual;
  function  IsPreviewPin() : Boolean; virtual;

public
  function  DirectDependsOn( const OtherPin : TOWBasicPin ) : Boolean; virtual;
  function  GetConnectionID( const OtherPin : TOWBasicPin ) : TGUID; overload; virtual;
  function  GetConnectionID( const Dispatcher : TOWBasicStateDispatcher ) : TGUID; overload; virtual;
  function  GetIsRealPin() : Boolean; virtual;
  function  GetRootName() : String; virtual;
  function  GetRoot() : TComponent; virtual;
  function  GetName() : String; virtual;
  function  GetShortName() : String; virtual;
  function  GetSaveName() : String; virtual;
  function  GetPinPropertyName() : String; virtual;
  function  GetOwnerName() : String; virtual;
  function  GetFullName( IncludeRootForm : Boolean ) : String; virtual; abstract;
  function  GetFullIdentName( IncludeRootForm : Boolean ) : String; virtual; abstract;
  function  DependsOn( const OtherPin : TOWBasicPin ) : Boolean; virtual; abstract;
  // Wether or not the OtherPin is compatible with the entire data chain of already connected slots.
  function  CanConnectByType( const AType : TGUID; UseConverters : Boolean = True ) : Boolean; virtual;
  function  CanConnectTo( const OtherPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; virtual;
  function  IsCompatible( const OtherPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; virtual; abstract;
  function  IsConnected() : Boolean; virtual;
  function  IsStateConnected() : Boolean; virtual;
  function  IsConnectedTo( const OtherPin : TOWBasicPin ) : Boolean; virtual;//const;
  function  IsConnectedAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin ) : Boolean; virtual;//const;
  function  IsConnectedToState( const ADispatcher : TOWBasicStateDispatcher ) : Boolean; virtual;
  function  IsConnectedByStateTo( const OtherPin : TOWBasicPin ) : Boolean; virtual;//const;
  function  IsConnectedByStateAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin ) : Boolean; virtual;//const;
  function  IsConnectedByConverterTo( const OtherPin : TOWBasicPin ) : Boolean; virtual;//const;

  function  ConnectByState( const OtherPin : TOWBasicPin ) : Boolean; virtual;
  function  ConnectByStateAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin ) : Boolean; virtual;
  function  ConnectByStateAfterByType( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; const ADataType : TGUID ) : Boolean; virtual;
  function  Connect( const OtherPin : TOWBasicPin ) : Boolean; virtual;
  function  ConnectAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin ) : Boolean; virtual;
  function  ConnectAfterByType( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; const ADataType : TGUID ) : Boolean; virtual;
  function  ConnectByType( const OtherPin : TOWBasicPin; const ADataType : TGUID ) : Boolean; virtual;
  function  ConnectByStateByType( const OtherPin : TOWBasicPin; const ADataType : TGUID ) : Boolean; virtual;
  function  CanConnectAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; virtual;
  procedure Disconnect(); virtual;
  procedure DisconnectFrom( const OtherPin : TOWBasicPin ); virtual;
  procedure DisconnectFromState(); virtual;
  function  NotifyPin( const APin : TOWBasicPin; Operation : IOWNotifyOperation ) : TOWNotifyResult; virtual;
  function  Notify( Operation : IOWNotifyOperation ) : TOWNotifyResult; virtual;

protected
  procedure LinkToStateByName( IdentName : String ); virtual;
  procedure CheckVirtualList(); virtual;
  function  DoStateWrite() : Boolean; virtual;
  function  DoStateConverterWrite() : Boolean; virtual;
  function  DoFormWrite() : Boolean; virtual;
  procedure ReadConnectionsData( Reader : TReader ); virtual;
  procedure ReadFormName( Reader : TReader );
  procedure WriteFormName( Writer : TWriter );
  procedure ReadStateConnectionsData( Reader : TReader ); virtual;
  procedure WriteStateConnectionsData( Writer : TWriter ); virtual;
  procedure WriteListEntry( Writer : TWriter ); virtual;
  procedure ReadListEntry( Reader : TReader ); virtual;
  function  WriteNoStateListEntry( Writer : TWriter ) : Boolean; virtual;
  procedure ReadNoStateListEntry( Reader : TReader; Ident : String ); virtual;
  function  GetConnectedPinCount() : Integer; virtual;
  function  GetConnectedPin( Index : Integer ) : TOWBasicPin; virtual;
  function  GetConnectedAfterPin( Index : Integer ) : TOWBasicPin; virtual;
  function  GetDispatcherCount() : Integer; virtual;
  function  GetDispatcher( Index : Integer ) : TOWBasicStateDispatcher; virtual;
  function  GetDataTypesCount() : Integer; virtual;
  function  GetDataType( Index : Integer ) : TGUID; virtual;
  procedure SetInEditor( Value : Boolean ); virtual;
  function  CanConnectToStateInt( const ADispatcher : TOWBasicStateDispatcher; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean; ADataType : TGUID ) : Boolean; virtual;
  procedure IntStateDisconnect(); virtual;
  function  GetEditorString() : String; virtual;
  function  SetEditorString( ARoot : TComponent; const AValue: String ) : Boolean; virtual;

public
  function  IsLinkedTo( PinName : String ) : Boolean; virtual;
  procedure SetOwnerComponent( AComponent : TComponent ); virtual;
  procedure SetRootAndName( ARoot : TComponent; AName : String; AInDesignMode : Boolean ); virtual;

public // State support
  function  ConnectToState( ADispatcher : TOWBasicStateDispatcher ) : Boolean; virtual;
  function  ConnectToStateAfter( ADispatcher : TOWBasicStateDispatcher; NotifyAfterPin : TOWBasicPin ) : Boolean; virtual;
  function  CanConnectToState( const ADispatcher : TOWBasicStateDispatcher ) : Boolean;

protected
  function  CreateDispatcher( Owner : TComponent; AFromConverter : Boolean = False ) : TOWStateDispatcher; virtual;
  function  CreateNamedDispatcher( Name : String; DesignTime : Boolean; AFromConverter : Boolean = False ) : TOWStateDispatcher; virtual;

protected
  function  OwnerInDesigning( ACheckForDispatchers : Boolean ) : Boolean; virtual;
  function  FindConnectionID( const OtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean; ADataType : TGUID ) : TGUID; virtual;
  function  NotifyDispatcher( const Operation : IOWNotifyOperation; State : TOWNotifyState; const APinToNotify : TOWBasicPin ) : TOWNotifyResult; virtual;
  procedure UpdateStateValue(); virtual;

protected
  function  RequestInterface(const IID: TGUID; out Obj): HResult; virtual; stdcall;
  function _AddRef(): Integer; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};
  function _Release(): Integer; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};

public
  function QueryInterface({$IFDEF FPC_HAS_CONSTREF}constref{$ELSE}const{$ENDIF} IID: TGUID; out Obj): HResult; virtual; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};

public
  procedure AfterConstruction(); override;
  procedure BeforeDestruction(); override;

public
  constructor Create( AOwnerLock : IBasicLock );
  destructor  Destroy(); override;

public
  property OwnerPinList                           : TOWPinList              read GetOwnerPinList;   // If owned by pin list.
  property Owner                                  : TComponent              read GetOwnerComponent;
  property Name                                   : String                  read GetName;
  property ShortName                              : String                  read GetShortName;
  property ConnectedPinCount                      : Integer                 read GetConnectedPinCount;
  property ConnectedPin[ Index : Integer ]        : TOWBasicPin             read GetConnectedPin;
  property AfterPin[ Index : Integer ]            : TOWBasicPin             read GetConnectedAfterPin;
  property ConnectedDispatcherCount               : Integer                 read GetDispatcherCount;
  property ConnectedDispatcher[ Index : Integer ] : TOWBasicStateDispatcher read GetDispatcher;
  property DataTypesCount                         : Integer                 read GetDataTypesCount;
  property DataType[ Index : Integer ]            : TGUID                   read GetDataType;

end;
//---------------------------------------------------------------------------
TOWPin = class( TOWBasicPin )
protected
  [Weak] FOwner : TComponent;
  FLastRootName : String;

  [AutoManage]
  FStreamType   : TOWPinStreamType;

  FInSending    : Integer;
  FIsLoaded     : Boolean;
  FOverrideName : String;

protected // Temporary values used in case the Owner is not set in the constructor
  FRoot         : TComponent;
  FLoadName     : String;

public
  constructor Create( AOwner: TComponent );
  constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock );

public
  procedure AfterConstruction(); override;
  procedure BeforeDestruction(); override;

protected
  function Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult; virtual;

protected
  function  RootInDestroying() : Boolean; override;
  function  OwnerInLoading() : Boolean; override;
  function  OwnerInDesigning( ACheckForDispatchers : Boolean ) : Boolean; override;

protected
  procedure DefineProperties(Filer: TFiler); override;

protected // State support
  function  FindConnectionID( const OtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean; ADataType : TGUID ) : TGUID; override;

protected
  procedure AddType( ID : TGUID; AOverrride : Boolean );  overload;
  procedure AddType( ID : TGUID; ASubmitFunction : TOWSubmit; AOverrride : Boolean ); overload;

  procedure RemoveType( ID : TGUID );
  procedure ClearTypes();

public
  function  DefaultNotifyDispatcher( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;

protected
  procedure OrderStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted );

public
  function  GetConnectionID( const OtherPin : TOWBasicPin ) : TGUID; overload; override;
  function  GetConnectionName( const OtherPin : TOWBasicPin ) : String;
  function  GetPrimaryConnectionID() : TGUID; virtual;

protected
  function  GetSubmitFunctionID( const IID : TGUID ) : TOWSubmit;
  function  GetLinkNameID( const IID : TGUID ) : String;
  procedure CheckVirtualList(); override;
  function  CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean; ADataType : TGUID ) : Boolean; override;
  function  GetNameInt() : String; override;

protected
  function  GetStateSubmitID( const OtherPin : TOWBasicPin ) : TGUID;   virtual;

protected
  function  GetOwnerComponent() : TComponent; override;

public
  procedure SetOwnerComponent( AComponent : TComponent ); override;
  procedure SetRootAndName( ARoot : TComponent; AName : String; AInDesignMode : Boolean ); override;

public
  function  ReadLock()  : ILockSection; override;
  function  WriteLock() : ILockSection; override;

public
  function  GetRoot() : TComponent; override;
  function  GetRootName() : String; override;
  function  GetSaveName() : String; override;
  function  GetFullName( IncludeRootForm : Boolean ) : String; override;
  function  GetFullIdentName( IncludeRootForm : Boolean ) : String; override;
  function  GetDataTypesCount() : Integer; override;
  function  GetDataType( Index : Integer ) : TGUID; override;

protected
  function  NotifyDispatcher( const Operation : IOWNotifyOperation; State : TOWNotifyState; const APinToNotify : TOWBasicPin ) : TOWNotifyResult; override;
  
protected
  procedure PopulateTypes( AAttributeClass : TOWBasicDataTypeAttributeClass; ASubmit : TOWSubmit; AOverrride : Boolean );

public
  function  NotifyPin( const APin : TOWBasicPin; Operation : IOWNotifyOperation ) : TOWNotifyResult; override;
  function  Notify( Operation : IOWNotifyOperation ) : TOWNotifyResult; override;

public
  function  IsCompatible( const OtherPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; override;

end;
//---------------------------------------------------------------------------
IOWObjectList = interface
  procedure SetItem( Index : Integer; Value : TOWObject );
  function  GetItem( Index : Integer ) : TOWObject;
  function  GetCount() : Integer;

  function  Add( const Value : TOWObject ) : Integer;
  property  Items[ Index : Integer ] : TOWObject read GetItem write SetItem; default;
  property  Count : Integer read GetCount;

end;
//---------------------------------------------------------------------------
TOWObjectList = class( TList<TOWObject>, IOWObjectList )
protected
  FRefCount: Integer;

protected
  function QueryInterface({$IFDEF FPC_HAS_CONSTREF}constref{$ELSE}const{$ENDIF} IID: TGUID; out Obj): HResult; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};
  function _AddRef(): Integer; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};
  function _Release(): Integer; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};

protected
  function  GetCount() : Integer;
  procedure SetItem( Index : Integer; Value : TOWObject );
  function  GetItem( Index : Integer ) : TOWObject;

end;
//---------------------------------------------------------------------------
TOWObjectListList = class( TObjectList<TOWObjectList> );
//---------------------------------------------------------------------------
IOWStateDispatcherList = interface( IArrayList<TOWBasicStateDispatcher> )
  ['{08EF908F-CCEA-4F42-9CBC-5A7B861F4C24}']
end;
//---------------------------------------------------------------------------
TOWStateDispatcherList = class( TArrayList<TOWBasicStateDispatcher>, IOWStateDispatcherList );
//---------------------------------------------------------------------------
TOWStreamPin = class( TOWPin )
protected
  [AutoManage]
  FConnectionPoints : IOWPinNotifyEntryList;

  [AutoManage( TCriticalSection )] // Needs TCriticalSection to work around Android compiler bug
  FPointsSection    : ICriticalSection;

protected
  procedure DownStreamFillPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin ); virtual;
  procedure UpStreamFillPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin ); virtual;
  function  DownStreamQueryPossybleInterface( const IID: TGUID ) : HResult; virtual;
  function  UpStreamQueryPossybleInterface( const IID: TGUID ) : HResult; virtual;
  procedure RemoveNotifyEntry( AEntry : IOWNotifyPinEntry ); override;
  procedure AddNotifyEntry( AEntry : IOWNotifyPinEntry ); override;

protected
  procedure BackPopulateStreamChains( AChain : TOWObjectListList; AList : TOWObjectList ); virtual;

public
  // Fixes a misterious internal bug in the 64 bit Delphi compiler!
  function  IsConnectedByConverterTo( const OtherPin : TOWBasicPin ) : Boolean; override;

end;
//---------------------------------------------------------------------------
IOWFormatConverter = interface
  ['{F8E1AE7F-ABD3-4BC0-984D-2CC34D2D83CB}']
  function GetInstance() : TOWFormatConverter;

end;
//---------------------------------------------------------------------------
TOWFormatConverter = class( TComponent, IOWFormatConverter )
protected
  FLock      : IBasicLock;
  FRefCount  : Integer;

protected
  FInputPin  : TOWSinkPin;
  FOutputPin : TOWSourcePin;

protected
  function SourceOperationEvent( Sender : TOWBasicPin; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;

protected
  function GetInstance() : TOWFormatConverter;

protected
  function _AddRef(): Integer; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};
  function _Release(): Integer; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};

public
  procedure BeforeDestruction(); override;

public
  property InputPin  : TOWSinkPin   read FInputPin;
  property OutputPin : TOWSourcePin read FOutputPin;

protected
  constructor CreateEx( AInputPin : TOWSinkPin; AOutputPin : TOWSourcePin );

public
  constructor Create(); reintroduce; virtual;
  destructor  Destroy(); override;

end;
//---------------------------------------------------------------------------
TOWPinProxy = class( TComponent )
protected
  procedure SetPinName( AName : String ); virtual;

public
  function GetPin() : TOWPin; virtual; abstract;

end;
//---------------------------------------------------------------------------
TOWBasicPinProxy = class( TOWPinProxy )
protected
  FPin : TOWPin;

public
  function GetPin() : TOWPin; override;

public
  destructor  Destroy(); override;

end;
//---------------------------------------------------------------------------
TOWPinListProxy = class( TComponent )
protected
  procedure SetPinListName( AName : String ); virtual;

public
  function GetPinList() : TOWPinList; virtual; abstract;

public
  function CreatePinProxy( AProxyClassName : String; APinName : String ) : TOWPinProxy;

end;
//---------------------------------------------------------------------------
TOWBasicPinListProxy = class( TOWPinListProxy )
protected
  FPinList : TOWPinList;

public
  function GetPinList() : TOWPinList; override;

public
  destructor  Destroy(); override;

end;
//---------------------------------------------------------------------------
EOWException = class(Exception);
//---------------------------------------------------------------------------
[CreateType( TypeInfo( TOWFormatConverterList ))]
IOWFormatConverterList = interface( IArrayList<IOWFormatConverter> )
  ['{6789D032-B4CA-4080-A6C2-0195A6A073D6}']
end;
//---------------------------------------------------------------------------
TOWFormatConverterList = class( TArrayList<IOWFormatConverter>, IOWFormatConverterList );
//---------------------------------------------------------------------------
IOWSinkPinListCopy = interface;
//---------------------------------------------------------------------------
IOWSinkPinList = interface
  ['{76FAAE45-97EA-44B4-BB46-7D0AB29D5A9F}']

  function GetList() : IOWSinkPinListCopy;

  procedure Add( APin : TOWBasicSinkPin );
  procedure Remove( APin : TOWBasicSinkPin );

end;
//---------------------------------------------------------------------------
IOWSinkPinListCopy = interface
  ['{1BB88165-C682-490F-B8E4-FF2990AB4638}']

  function GetCount() : Integer;
  function GetItem( Index : Integer ) : TOWBasicSinkPin;

  property Count : Integer read GetCount;
  property Items[ Index : Integer ] : TOWBasicSinkPin read GetItem; default;

end;
//---------------------------------------------------------------------------
TOWSinkPinList = class( TInterfacedObject, IOWSinkPinList )
protected
  FList         : ILinkedList<TOWBasicSinkPin>;
  [Weak] FOwner : TOWSourcePin;
  FSection      : ICriticalSection;

public
  procedure Add( APin : TOWBasicSinkPin ); virtual;
  procedure Remove( APin : TOWBasicSinkPin ); virtual;

public
  function  GetList() : IOWSinkPinListCopy;

public
  constructor Create( AOwner : TOWSourcePin );

end;
//---------------------------------------------------------------------------
TOWFunctionSinkPinList = class( TOWSinkPinList );
//---------------------------------------------------------------------------
TOWDataTypeSinkPinList = class( TOWSinkPinList )
public
  procedure Add( APin : TOWBasicSinkPin ); override;
  procedure Remove( APin : TOWBasicSinkPin ); override;

end;
//---------------------------------------------------------------------------
TOWSourcePin = class( TOWStreamPin )
protected
  FInputOwnerLock   : IBasicLock; // The input side lock of the component taht owns the pin.

  [AutoManage]
  FSinkPins         : TOWPinEntryList;

  [AutoManage]
  FFormatConverters : IOWFormatConverterList;

  FFunctionSources  : IOWSinkPinList;
  FDataTypeSources  : IOWSinkPinList;
  FInDependOn       : Boolean;
  FInDisconnect     : Boolean;
  FInEditor         : Boolean;
  FMaxConnections   : Integer;

protected
  procedure IntConnect( const SinkPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; const ADataType : TGUID ); override;
  procedure IntDisconnect( const OtherPin : TOWBasicPin; DesignFormClosing : Boolean ); override;
  procedure PinDeletedNotify( const ADeletedPin : TOWBasicPin ); override;
  procedure PinReplacedNotify( const AOldPin : TOWBasicPin; const ANewPin : TOWBasicPin ); override;
  procedure UnlodedPinRemoved( const APin : TOWBasicPin ); override;
  function  GetPinType() : TOWPinType; override;
  function  GetConnectedAfterForPin( const OtherPin : TOWBasicPin ) : TOWBasicPin; override;
  function  GetConnectedPinCount() : Integer; override;
  function  GetConnectedPin( Index : Integer ) : TOWBasicPin; override;
  function  GetEditorString() : String; override;
  function  SetEditorString( ARoot : TComponent; const AValue: String ) : Boolean; override;
  procedure SetInEditor( AValue : Boolean ); override;

public
  function  GetImage( out AImage : IGPBitmap ) : Boolean; override;

public
  function  IsLinkedTo( PinName : String ) : Boolean; override;

protected
  function  GetSinkCount() : Integer;                           virtual; // const;
  function  GetSink( Index : Integer ) : TOWBasicPin;           virtual;

  function  GetConverterCount() : Integer;
  function  GetConverter( Index : Integer ) : IOWFormatConverter;
  
//  procedure SinkChangedData( Index : Integer );
  procedure ReorderChangedData();

protected
  function  RequestInterface(const IID: TGUID; out Obj): HResult; override; stdcall;

protected
  function  GetLinkStr( Item : Integer ) : String;

protected
  function  CheckDownStreamInterfaces( const OtherPin : TOWBasicPin; UseConverters : Boolean ) : Boolean; virtual;
  procedure DownStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
  procedure UpStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
  procedure DownStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
  procedure UpStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
  procedure DownStreamFillPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin ); override;
  procedure UpStreamFillPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin ); override;

  function  DownStreamQueryPossybleInterface( const IID: TGUID ) : HResult; override;
  function  UpStreamQueryPossybleInterface( const IID: TGUID ) : HResult; override;
  function  DownStreamBackQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult;
  function  UpStreamBackQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult;
  function  DownStreamForthQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult;
  function  UpStreamForthQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult;

  function  DownStreamFindConnectionID( const OtherPin : TOWBasicPin; UseConverters : Boolean; RequestConverters : Boolean; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; ADataType : TGUID ) : TGUID;

//  procedure ChainReconnect( const DownIID: TGUID; const UpIID: TGUID );
  procedure BackChainReconnect( const DownIID: TGUID; const UpIID: TGUID );
  procedure ForthChainReconnect( const DownIID: TGUID; const UpIID: TGUID );

protected
  procedure BackPopulateStreamChains( AChain : TOWObjectListList; AList : TOWObjectList ); override;

protected
  procedure NewConnection( const ASinkPin : TOWBasicPin; ASubmitFunctionIn : TOWSubmitLink ); overload; virtual;
  procedure NewConnection( const ASinkPin : TOWBasicPin ); overload; virtual;

protected
  procedure ReadConnectionsData( Reader : TReader ); override;
  procedure WriteConnectionsData( Writer : TWriter ); virtual;
  function  WriteNoStateListEntry( Writer : TWriter ) : Boolean; override;
  procedure ReadNoStateListEntry( Reader : TReader; Ident : String ); override;

  function  DoFormWrite() : Boolean; override;
  function  DoWrite() : Boolean; virtual;

  procedure DefineProperties(Filer: TFiler); override;

protected
  procedure SetNotifyAfterByName( const APin : TOWPin; const AfterPinName : String ); override;

protected
  function  TryLinkTo( Root : TComponent; SinkIdent : String; SinkName : String; ReadIdentAfter : String; SaveForm : Boolean ) : Boolean;

protected
  procedure TryLinkToList( Root : TComponent; SinkIdents : TStringList; SinkNames : TStringList );
//  procedure DisconnectFromPinName( OtherPinName : String );
  function  IntConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin; ADataType : TGUID ) : Boolean; virtual;
  function  CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean; ADataType : TGUID ) : Boolean; override;
  procedure IntDisconnectFrom( OtherPin : TOWBasicPin );

protected
  procedure UpdateStateValue(); override;

public
  function  CanConnectByType( const AType : TGUID; UseConverters : Boolean = True ) : Boolean; override;

public
  function  GetConnectionID( const OtherPin : TOWBasicPin ) : TGUID; overload; override;
  function  GetPrimaryConnectionID() : TGUID; override;

public
  function  GetAfterPinDisplayName( APin : TOWPin ) : String; override;

public
  function  ConnectAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin ) : Boolean; override;
  function  CanConnectAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; override;
  procedure Disconnect(); override;
  procedure DisconnectFrom( const OtherPin : TOWBasicPin ); override;

  function  IsCompatible( const OtherPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; override;
  function  DependsOn( const OtherPin : TOWBasicPin ) : Boolean; override;
  function  DirectDependsOn( const OtherPin : TOWBasicPin ) : Boolean; override;
  function  IsConnected() : Boolean; override;

  function  IsConnectedTo( const OtherPin : TOWBasicPin ) : Boolean; override; //const;
  function  IsConnectedAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin ) : Boolean; override;
  function  IsConnectedByConverterTo( const OtherPin : TOWBasicPin ) : Boolean; override; //const;

public
  function  NotifyPin( const APin : TOWBasicPin; Operation : IOWNotifyOperation ) : TOWNotifyResult; override;
  function  Notify( Operation : IOWNotifyOperation ) : TOWNotifyResult; override;

public
  constructor Create( AOwner: TComponent; AMaxConnections : Integer = -1 );
  constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; AMaxConnections : Integer = -1 );
  destructor  Destroy(); override;

public
  property SinkCount : Integer read GetSinkCount;
  property Sinks[ Index : Integer  ] : TOWBasicPin read GetSink; default;

  property ConverterCount : Integer read GetConverterCount;
  property Converters[ Index : Integer  ] : IOWFormatConverter read GetConverter;

  // Describes the functions sources for the output within the component.
  property FunctionSources : IOWSinkPinList read FFunctionSources;

  // Describes the data type sources for the output within the component( The output should be of the same type as them ).
  property DataTypeSources : IOWSinkPinList read FDataTypeSources;

end;

//---------------------------------------------------------------------------
[CreateType( TypeInfo( TOWSourcePinList ))]
IOWSourcePinList = interface( ILinkedList<TOWSourcePin> )
  ['{C3F75C80-3C8C-4D83-BC9F-D9CDA671D971}']
end;
//---------------------------------------------------------------------------
TOWSourcePinList = class( TLinkedList<TOWSourcePin>, IOWSourcePinList );
//---------------------------------------------------------------------------
TOWBasicSinkPin = class( TOWStreamPin )
protected
  [AutoManage]
  FDataTypeDependants : IOWSourcePinList;

  FIgnoreUpstream     : Boolean;

protected
  procedure DownStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
  procedure DownStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin ); virtual; abstract;
  procedure UpStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
  procedure UpStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin ); virtual; abstract;
  function  DownStreamForthQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult;
  function  UpStreamForthQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult;
  function  UpStreamBackQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult; virtual; abstract;
  function  DownStreamBackQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult; virtual; abstract;
  procedure BackChainReconnect( const DownIID: TGUID; const UpIID: TGUID ); virtual; abstract;
  procedure ForthChainReconnect( const DownIID: TGUID; const UpIID: TGUID ); virtual; abstract;
  function  UpStreamFindConnectionID( const OtherPin : TOWSourcePin; PreferedID : TGUID ) : TGUID;
  procedure ChainReconnect( const DownIID: TGUID; const UpIID: TGUID ); virtual;
  function  CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean; ADataType : TGUID ) : Boolean; override;
  function  CheckUpStreamInterfaces( const OtherPin : TOWSourcePin; UseConverters : Boolean ) : Boolean; virtual;

  function  HasToIgnoreUpstream() : Boolean;

protected
  procedure IntAddDataTypeDependance( DataTypeDependancePin : TOWSourcePin );
  procedure IntRemoveDataTypeDependance( DataTypeDependancePin : TOWSourcePin );
  function  GetUpStreamLinkName() : String; virtual; abstract;
  function  GetDownStreamLinkName() : String; virtual; abstract;

public
  function  GetImage( out AImage : IGPBitmap ) : Boolean; override;

public
  function  IsCompatible( const OtherPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; override;
  function  CanConnectByType( const AType : TGUID; UseConverters : Boolean = True ) : Boolean; override;

public
  procedure BeforeDestruction(); override;

public
  property IgnoreUpstream     : Boolean read FIgnoreUpstream write FIgnoreUpstream;
  property DownStreamLinkName : String read GetDownStreamLinkName;
  property UpStreamLinkName   : String read GetUpStreamLinkName;

end;
//---------------------------------------------------------------------------
TOWMultiSinkPin = class( TOWBasicSinkPin )
protected
  [AutoManage]
  FSourcePins       : TOWPinEntryList;

  [AutoManage]
  FFormatConverters : IOWFormatConverterList;

  FInDisconnect     : Boolean;

protected
  function  GetSourceCount() : Integer; virtual;
  function  GetSource( Index : Integer ) : TOWBasicPin; virtual;

  function  GetConverterCount() : Integer;
  function  GetConverter( Index : Integer ) : IOWFormatConverter;

  function  GetPinType() : TOWPinType; override;

protected
  function  TryLinkTo( Root : TComponent; SourceIdent : String; SourceName : String; ReadIdentAfter : String; SaveForm : Boolean ) : Boolean;
  function  GetEditorString() : String; override;
  function  SetEditorString( ARoot : TComponent; const AValue: String ) : Boolean; override;

protected
  procedure IntConnect( const ASourcePin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; const ADataType : TGUID ); override;
  function  IntConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin; ADataType : TGUID ) : Boolean; virtual;
  procedure IntDisconnect( const OtherPin : TOWBasicPin; DesignFormClosing : Boolean ); override;
  procedure IntDisconnectFrom( OtherPin : TOWBasicPin );
  procedure ReorderChangedData();
  procedure PinReplacedNotify( const AOldPin : TOWBasicPin; const ANewPin : TOWBasicPin ); override;
  procedure UnlodedPinRemoved( const APin : TOWBasicPin ); override;
  procedure BackChainReconnect( const DownIID: TGUID; const UpIID: TGUID ); override;
  procedure ForthChainReconnect( const DownIID: TGUID; const UpIID: TGUID ); override;
  function  GetUpStreamLinkName() : String; override;
  function  GetDownStreamLinkName() : String; override;

protected
  procedure DownStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin ); override;
  procedure UpStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin ); override;
  function  UpStreamBackQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult; override;
  function  DownStreamBackQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult; override;

public
  function  IsLinkedTo( PinName : String ) : Boolean; override;

public
  function  GetConnectedPinCount() : Integer; override;
  function  GetConnectedPin( Index : Integer ) : TOWBasicPin; override;
  
public
  function  ConnectAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin ) : Boolean; override;
  function  CanConnectAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; override;
  procedure Disconnect(); override;
  procedure DisconnectFrom( const OtherPin : TOWBasicPin ); override;
  function  DependsOn( const OtherPin : TOWBasicPin ) : Boolean; override;
  function  DirectDependsOn( const OtherPin : TOWBasicPin ) : Boolean; override;
  function  IsConnected() : Boolean; override;
  function  IsConnectedTo( const OtherPin : TOWBasicPin ) : Boolean; override; //const;
  function  IsConnectedByConverterTo( const OtherPin : TOWBasicPin ) : Boolean; override; //const;

  procedure Assign(Source: TPersistent); override;
  
protected
  function  DoFormWrite() : Boolean; override;
  function  DoWrite() : Boolean; virtual;
  
  procedure DefineProperties(Filer: TFiler); override;

  // TODO: Write state converters data.
  procedure ReadConnectionsData( Reader : TReader ); override;
  procedure WriteConnectionsData( Writer : TWriter ); virtual;
  function  WriteNoStateListEntry( Writer : TWriter ) : Boolean; override;
  procedure ReadNoStateListEntry( Reader : TReader; Ident : String ); override;

public
  function  NotifyPin( const APin : TOWBasicPin; Operation : IOWNotifyOperation ) : TOWNotifyResult; override;
  function  Notify( Operation : IOWNotifyOperation ) : TOWNotifyResult; override;

protected
  function  GetLinkStr( Item : Integer ) : String;
  
public
  destructor  Destroy(); override;

public
  property SourceCount : Integer read GetSourceCount;
  property Sources[ Index : Integer  ] : TOWBasicPin read GetSource; default;

  property ConverterCount : Integer read GetConverterCount;
  property Converters[ Index : Integer  ] : IOWFormatConverter read GetConverter;

end;
//---------------------------------------------------------------------------
TOWSinkPin = class( TOWBasicSinkPin )
protected
  FConnectionSourcePin  : TOWBasicPin;
  FRealSourcePin        : TOWBasicPin;
  FIntRealSourcePin     : TOWBasicPin;
  FSubmitFunction       : TOWSubmit;
  FConnectedID          : TGUID;

  FInConnect            : Boolean;

protected
  procedure PinDeletedNotify( const ADeletedPin : TOWBasicPin ); override;
  function  GetPinType() : TOWPinType; override;
  function  GetConnectedAfterForPin( const OtherPin : TOWBasicPin ) : TOWBasicPin; override;
  function  GetConnectedPinCount() : Integer; override;
  function  GetConnectedPin( Index : Integer ) : TOWBasicPin; override;

public
//  function  TryLinkTo( Root : TComponent; Soutce : String; SoutceName : String; TryLater : Boolean; SaveForm : Boolean ) : Boolean;
  function  TryLinkTo( Root : TComponent; Soutce : String; SoutceName : String; SaveForm : Boolean ) : Boolean;

protected
  function  RequestInterface(const IID: TGUID; out Obj): HResult; override; stdcall;

protected
  procedure DownStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin ); override;
  procedure UpStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin ); override;
  procedure DownStreamFillPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin ); override;
  procedure UpStreamFillPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin ); override;

  function  DownStreamQueryPossybleInterface( const IID: TGUID ) : HResult; override;
  function  UpStreamQueryPossybleInterface( const IID: TGUID ) : HResult; override;
  function  DownStreamBackQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult; override;
  function  UpStreamBackQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult; override;

  procedure BackChainReconnect( const DownIID: TGUID; const UpIID: TGUID ); override;
  procedure ForthChainReconnect( const DownIID: TGUID; const UpIID: TGUID ); override;

protected
  procedure BackPopulateStreamChains( AChain : TOWObjectListList; AList : TOWObjectList ); override;
  
protected
  function  GetConnectedID() : PDataTypeID;
  
protected
  procedure SetSourcePin( SourcePin : TOWBasicPin );
  function  GetSourcePin() : TOWBasicPin; virtual;
  function  GetFormatConverter() : IOWFormatConverter;

  function  GetUpStreamLinkName() : String; override;
  function  GetDownStreamLinkName() : String; override;
  function  GetUpStreamID() : TGUID;
  function  GetDownStreamID() : TGUID;

  function  WriteNoStateListEntry( Writer : TWriter ) : Boolean; override;
  procedure ReadNoStateListEntry( Reader : TReader; Ident : String ); override;
  procedure ReadConnectionsData( Reader : TReader ); override;
  procedure WriteConnectionsData( Writer : TWriter ); virtual;
  procedure ReadStateConverterConnectionsData( Reader : TReader ); virtual;
  procedure WriteStateConverterConnectionsData( Writer : TWriter ); virtual;
  function  DoStateConverterWrite() : Boolean; override;

  function  DoFormWrite() : Boolean; override;
  function  DoWrite() : Boolean; virtual;

  procedure DefineProperties(Filer: TFiler); override;

  procedure IntDisconnect( const OtherPin : TOWBasicPin; DesignFormClosing : Boolean ); override;
  function  CanConnectToStateInt( const ADispatcher : TOWBasicStateDispatcher; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean; ADataType : TGUID ) : Boolean; override;
  procedure IntStateDisconnect(); override;
  function  GetEditorString() : String; override;
  function  SetEditorString( ARoot : TComponent; const AValue: String ) : Boolean; override;

public
  function  IsLinkedTo( PinName : String ) : Boolean; override;
  
protected
  function  GetLinkStr() : String;

protected
  procedure UpdateStateValue(); override;
  procedure SetDataTypeFor( const AOtherPin : TOWSourcePin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; ADataType : TGUID ); virtual;
  procedure IntConnectSourcePin( const OtherPin : TOWSourcePin; const NotifyAfterPin : TOWBasicPin; const ADataType : TGUID ); virtual;

public
  function  Notify( Operation : IOWNotifyOperation ) : TOWNotifyResult; override;

public
  function  GetConnectionID( const OtherPin : TOWBasicPin ) : TGUID; overload; override;
  function  GetPrimaryConnectionID() : TGUID; override;

public
  function  ConnectAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin ) : Boolean; override;
  function  ConnectAfterByType( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; const ADataType : TGUID ) : Boolean; override;
  function  ConnectByStateAfterByType( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; const ADataType : TGUID ) : Boolean; override;
  function  CanConnectAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; override;
  procedure Disconnect(); override;
  procedure DisconnectFrom( const OtherPin : TOWBasicPin ); override;

  function  DependsOn( const OtherPin : TOWBasicPin ) : Boolean; override;
  function  DirectDependsOn( const OtherPin : TOWBasicPin ) : Boolean; override;
  function  IsConnected() : Boolean; override;
  function  IsConnectedTo( const OtherPin : TOWBasicPin ) : Boolean; override; //const;
  function  IsConnectedByConverterTo( const OtherPin : TOWBasicPin ) : Boolean; override; //const;
  function  ConnectToStateAfter( ADispatcher : TOWBasicStateDispatcher; NotifyAfterPin : TOWBasicPin ) : Boolean; override;

  procedure Assign(Source: TPersistent); override;

public
  destructor  Destroy(); override;

public
  property SourcePin        : TOWBasicPin         read GetSourcePin write SetSourcePin;
  property FormatConverter  : IOWFormatConverter  read GetFormatConverter;

  property DownStreamID     : TGUID read GetDownStreamID;
  property UpStreamID       : TGUID read GetUpStreamID;

end;
//---------------------------------------------------------------------------
TOWStatePin = class( TOWPin )
protected
  FInConnect  : Boolean;

protected
  procedure UpdateStateValue(); override;
  function  CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean; ADataType : TGUID ) : Boolean; override;
  
public
  function  IsCompatible( const OtherPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; override;

public
  function  TryLinkTo( Root : TComponent; SinkName : String ) : Boolean;

protected
  function  GetPinType() : TOWPinType; override;

protected
  function  GetLinkStr( StatePin : TOWPin ) : String;
  function  GetEditorString() : String; override;
  function  SetEditorString( ARoot : TComponent; const AValue: String ) : Boolean; override;

public
  function  GetImage( out AImage : IGPBitmap ) : Boolean; override;

public
  function  GetConnectionID( const OtherPin : TOWBasicPin ) : TGUID; overload; override;
  function  DependsOn( const OtherPin : TOWBasicPin ) : Boolean; override;
  function  DirectDependsOn( const OtherPin : TOWBasicPin ) : Boolean; override;

public
  function  ConnectToStateAfter( ADispatcher : TOWBasicStateDispatcher; NotifyAfterPin : TOWBasicPin ) : Boolean; override;

protected
  function  GetPinCount() : Integer;            virtual; // const;
  function  GetPin( Index : Integer ) : TOWBasicPin; virtual;

public
  property  PinCount : Integer read GetPinCount;
  property  Pins [ Index : Integer  ] : TOWBasicPin read GetPin; default;

end;
//---------------------------------------------------------------------------
// Internal storage class
TOWDispatcherPinStorage = class
protected
  ConnectionPin : TOWBasicPin;
  RealPin       : TOWBasicPin;
  AfterPin      : TOWBasicPin;

end;
//---------------------------------------------------------------------------
// Internal storage class
TOWDispatcherPinStorageList = class( TObjectList<TOWDispatcherPinStorage> );
//---------------------------------------------------------------------------
TOWBasicStateDispatcher = class( TOWPinObject )
protected
  [AutoManage]
  FFormatConverters : IOWFormatConverterList;

protected
  function  GetOwnerComponent() : TComponent; virtual;
  function  GetName() : String; virtual; abstract;
  procedure SetName( AValue : String ); virtual; abstract;
  function  GetPinCount() : Integer; virtual; abstract; // const;
  function  GetPin( Index : Integer ) : TOWBasicPin; virtual; abstract;
  function  GetConnectionPin( Index : Integer ) : TOWBasicPin; virtual; abstract;
  function  GetAfterPin( Index : Integer ) : TOWBasicPin; virtual; abstract;
  function  GetConnectedAfterForPin( OtherPin : TOWBasicPin ) : TOWBasicPin; virtual; abstract;

protected
  procedure NewConnection( const APin : TOWPin ); virtual;

public
  function  IsPreviewDispatcher() : Boolean;

public
  procedure AddPin( AConnectionPin : TOWBasicPin; ARealPin : TOWBasicPin ); virtual; abstract;
  procedure AddPinAfter( AConnectionPin : TOWBasicPin; ARealPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ); virtual; abstract;
  procedure RemovePin( APin : TOWBasicPin ); virtual; abstract;
  function  IsConnectedTo( APin : TOWBasicPin ) : Boolean; virtual; abstract;
  procedure DisconnectAll(); virtual; abstract;
  function  CanConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; virtual; abstract;

public
  property PinCount : Integer read GetPinCount;
  property Pins[ Index : Integer ] : TOWBasicPin read GetPin; default;
  property ConnectionPins[ Index : Integer ] : TOWBasicPin read GetConnectionPin;
  property AfterPins[ Index : Integer ] : TOWBasicPin read GetAfterPin;

published
  property Name : String read GetName write SetName;

end;
//---------------------------------------------------------------------------
TOWStateDispatcher = class( TOWBasicStateDispatcher )
protected
  FName           : String;
  FPins           : TOWDispatcherPinStorageList;
  FSavedForms     : ILinkedList<TComponent>;

  FCountSaved     : Integer;
  FFromConverter  : Boolean;

public
  procedure AfterConstruction(); override;
  procedure BeforeDestruction(); override;

public
  constructor CreateNamed( Name : String; DesignTime : Boolean; AFromConverter : Boolean = False );
  constructor Create( OwnerForm : TComponent; AFromConverter : Boolean = False );
  destructor  Destroy(); override;

public
  function  ConnectedToForm( OwnerComponent : TComponent ) : Boolean;

protected
  procedure SetNotifyAfterByName( const APin : TOWPin; const AfterPinName : String ); override;

protected
  function  GetName() : String; override;
  procedure SetName( AValue : String ); override;
  function  GetPinCount() : Integer; override; // const;
  function  GetPin( Index : Integer ) : TOWBasicPin; override;
  function  GetConnectionPin( Index : Integer ) : TOWBasicPin; override;
  function  GetAfterPin( Index : Integer ) : TOWBasicPin; override;
  function  GetConnectedAfterForPin( OtherPin : TOWBasicPin ) : TOWBasicPin; override;

protected
  procedure NewConnection( const APin : TOWPin ); override;
  procedure PinDeletedNotify( const ADeletedPin : TOWBasicPin ); override;

public
  procedure AddPin( AConnectionPin : TOWBasicPin; ARealPin : TOWBasicPin ); override;
  procedure AddPinAfter( AConnectionPin : TOWBasicPin; ARealPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ); override;
  procedure RemovePin( APin : TOWBasicPin ); override;
  function  IsConnectedTo( APin : TOWBasicPin ) : Boolean; override;
  procedure DisconnectAll(); override;
  function  CanConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; override;

public
  function  IsCrosForm() : Boolean;

protected
  procedure ResetFormsSave();
  procedure AddFormSaved( AOwnerComponent : TComponent );
  function  IsFormSaved( AOwnerComponent : TComponent ) : Boolean;

public
  class function GetByName( Name : String; DesignTime : Boolean ) : TOWStateDispatcher;
  class function GetByNameCreate( APin : TOWBasicPin; Name : String; DesignTime : Boolean ) : TOWStateDispatcher;
  class function GetUniqueName( OwnerForm : TComponent; APrefix : String ) : String;
  class function IsUniqueName( Name : String; DesignTime : Boolean ) : Boolean;

public
  function GetAfterPinDisplayName( APin : TOWPin ) : String; override;

end;
//---------------------------------------------------------------------------
TOWBasicPinList = class( TOWPinTypeObject )
protected
  function  GetCount() : Integer; virtual; abstract;
  procedure SetCount( ACount : Integer ); virtual; abstract;
  function  GetPin( Item : Integer ) : TOWBasicPin; virtual; abstract;
  procedure SetPin( Item : Integer; Pin : TOWBasicPin ); virtual; abstract;
  function  GetName( Item : Integer ) : String; virtual; abstract;
  procedure SetName( Item : Integer; Name : String ); virtual; abstract;
  function  GetPinListOwner() : TComponent; virtual; abstract;
  function  GetListName() : String; virtual; abstract;
  function  GetPinCategories() : TOWPinCategories; virtual; abstract;

public
  function  IsPreviewPinList() : Boolean;

public
  procedure Notify( Operation : IOWNotifyOperation );

public
  function  GetEnumerator() : IEnumerator<TOWBasicPin>;
  function  GetReverseEnumerator() : IEnumerator<TOWBasicPin>;
  function  GetReverse() : IReverseEnumeratorHost<TOWBasicPin>;
  function  Find( ACompareFunc : TFunc<TOWBasicPin, Boolean> ) : TOWBasicPin; overload;
  function  Find( ACompareFunc : TFunc<TOWBasicPin, Boolean>; out ARes : TOWBasicPin ) : Boolean; overload;
  function  Query( AReverse : Boolean = False ) : IContainerQuery<TOWBasicPinList, IArrayList<TOWBasicPin>, TOWBasicPin>;

public
  destructor  Destroy(); override;

public
  property Pins[ Item : Integer ] : TOWBasicPin read GetPin write SetPin; default;
  property Names[ Item : Integer ] : String read GetName write SetName;

public
  property Name           : String read GetListName;
  property Owner          : TComponent read GetPinListOwner;
  property PinCategories  : TOWPinCategories  read GetPinCategories;

published
  property Count : Integer read GetCount write SetCount stored False;

end;
//---------------------------------------------------------------------------
TOWPinList = class( TOWBasicPinList )
protected
  [Weak] FOwner       : TComponent;
  FOwnerLock          : IBasicLock; // The lock of the component taht owns the pin.
  FPinsList           : TStringList;
  FOverrideName       : String;

protected
  FPinsOwner          : Boolean;

protected
  FLastIndicatedCount : Integer;
  FUnloadedCount      : Integer;
  FLoadFormName       : String;
  FInUnload           : Boolean;
  FPinCategories      : TOWPinCategories;

public
  constructor Create( AOwner : TComponent; APinCategories : TOWPinCategories; IsPinsOwner : Boolean );
  constructor CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; APinCategories : TOWPinCategories; IsPinsOwner : Boolean );
  destructor  Destroy(); override;

public
  procedure AfterConstruction(); override;
  procedure BeforeDestruction(); override;

public
  function  ReadLock()  : ILockSection; override;
  function  WriteLock() : ILockSection; override;

protected
  function  GetCount() : Integer; override;
  procedure SetCount( ACount : Integer ); override;
  function  GetPin( Item : Integer ) : TOWBasicPin; override;
  procedure SetPin( Item : Integer; Pin : TOWBasicPin ); override;
  function  GetName( Item : Integer ) : String; override;
  procedure SetName( Item : Integer; Name : String ); override;
  function  GetStoredName( Item : Integer ) : String;
  function  GetPinCategories() : TOWPinCategories; override;

  function  GetListName() : String; override;
  function  GetListNameInt( SaveValue : Boolean ) : String;
  procedure CleanUnloaded();
  function  GetRoot() : TComponent;
  procedure ApplyFormName( var Ident : String );

  function  GetPinListOwner() : TComponent; override;

protected
  procedure ReadPinsOwner( Reader : TReader );
  procedure ReadConnectionsData( Reader : TReader ); virtual;
  procedure WriteConnectionsData( Writer : TWriter ); virtual;

  procedure ReadFormName( Reader : TReader );
  procedure WriteFormName( Writer : TWriter );

  function  DoWrite() : Boolean; virtual;

  procedure DefineProperties(Filer: TFiler); override;

  procedure ConnectPin( CurrentPinIndex : Integer; AType : TOWPinType; AToType : TOWPinType; Ident : String; IdentName : String );

public
  procedure Add( Item : TOWBasicPin );
  procedure AddNamed( Item : TOWBasicPin; Name : String ); virtual;
  procedure Insert( Index : Integer; Item : TOWBasicPin );
  procedure InsertNamed( Index : Integer; Item : TOWBasicPin; Name : String );
  procedure Remove( Item : TOWBasicPin );
  procedure Delete( Index : Integer );
  procedure Swap( Index1 : Integer; Index2 : Integer );
  function  IndexOf( Item : TOWBasicPin ) : Integer;

  procedure Clear();
  procedure Disconnect();

public
  procedure SetPinName( Pin : TOWPin; Name : String );

public
  property  StoredNames[ Item : Integer ] : String read GetStoredName;

public
  property  PinsOwner : Boolean read FPinsOwner write FPinsOwner;

end;
//---------------------------------------------------------------------------
TOWPinCreateFunction = reference to function ( APinListOwner : TOWPinList ) : TOWPin;
TOWPinDestroyFunction = reference to procedure ( APinListOwner : TOWPinList; APin : TOWBasicPin );
//---------------------------------------------------------------------------
TOWPinListOwner = class( TOWPinList )
protected
  FPinCreateFunction  : TOWPinCreateFunction;
  FPinDestroyFunction : TOWPinDestroyFunction;
  FPinAddedFunction   : TOWPinEvent;

  FMinPins      : Integer;
  FMaxPins      : Integer;
  FDefaultCount : Integer;

protected
  function  GetCountStored() : Boolean;
  procedure SetCount( ACount : Integer ); override;
  procedure ReadConnectionsData( Reader : TReader ); override;
//  function  DoWrite() : Boolean; override;

public
  class function DelegatePinDestroy( ALamda : TProc ) : TOWPinDestroyFunction;

public
  procedure AddNamed( Item : TOWBasicPin; Name : String ); override;

public
  procedure BeforeDestruction(); override;

public
  constructor Create( AOwner : TComponent; ADefaultCount : Integer; APinCategories : TOWPinCategories; APinCreateFunction : TOWPinCreateFunction; APinDestroyFunction : TOWPinDestroyFunction = NIL; APinAddedFunction : TOWPinEvent = NIL );
  constructor CreateEx( AOwner : TComponent; ADefaultCount : Integer; APinCategories : TOWPinCategories; AMinPins : Integer; AMaxPins : Integer; APinCreateFunction : TOWPinCreateFunction; APinDestroyFunction : TOWPinDestroyFunction = NIL; APinAddedFunction : TOWPinEvent = NIL );
  constructor CreateLock( AOwner : TComponent; AOwnerLock : IBasicLock; ADefaultCount : Integer; APinCategories : TOWPinCategories; APinCreateFunction : TOWPinCreateFunction; APinDestroyFunction : TOWPinDestroyFunction = NIL; APinAddedFunction : TOWPinEvent = NIL );
  constructor CreateLockEx( AOwner : TComponent; AOwnerLock : IBasicLock; ADefaultCount : Integer; APinCategories : TOWPinCategories; AMinPins : Integer; AMaxPins : Integer; APinCreateFunction : TOWPinCreateFunction; APinDestroyFunction : TOWPinDestroyFunction = NIL; APinAddedFunction : TOWPinEvent = NIL );
                           
published
  property Count stored GetCountStored;

end;
//---------------------------------------------------------------------------
type TOWPinValueFilters = set of ( pvoFullList, pvoSaveValue, pvoExcludeDirectDependency );
//---------------------------------------------------------------------------
procedure OWRegisterStream( AStreamType : PTypeInfo; Name : String ); overload;
procedure OWRegisterStream( AStreamType : PTypeInfo ); overload;
procedure OWRegisterStreams( AStreamTypes : array of PTypeInfo );
procedure OWRegisterDefaultHandler( AStreamTypeID : TGUID; SendFunction : TOWGlobalSubmit );
//---------------------------------------------------------------------------
function  OWValueToString( APin : TOWBasicPin; Linking : String; AddRoot : Boolean; SaveValue : Boolean ) : String;
function  OWGetPinsValueList( List : TStrings; StreamPin : TOWPin; Link : String; ValueFilters : TOWPinValueFilters ) : Boolean;
function  OWGetPinsValueListSingle( List : TStrings; OwnerComponent : TComponent;  APin : TOWPin; Link : String; RootName : String; ValueFilters : TOWPinValueFilters ) : Boolean;
function  OWGetPinsValueListSingleRoot( List : TStrings; OwnerComponent : TComponent;  APin : TOWPin; Link : String; RootName : String; ValueFilters : TOWPinValueFilters ) : Boolean;
function  OWGetMainOwnerComponent( Component : TComponent ) : TComponent;
function  OWGetStreamTypeFromID( AStreamTypeID : TGUID ) : String;
function  OWGetDebugStreamTypeFromID( AStreamTypeID : TGUID ) : String;
function  OWGetAllLinked() : Boolean;
function  OWGetClassPropertiesOfType( AClass : TObject; AType : TClass; AStrings : TStrings; SaveValue : Boolean ) : Boolean;
procedure OWClearPendingLinks();
function  OWGetClassPropertyNameForPropertyObject( AObject : TObject; PinObject : TObject; SaveValue : Boolean ) : String;
function  OWIsDescendantOf( PropertyObject : TObject; AType : TClass ) : Boolean;
function  OWGetInjectedObject( AClass : TObject; PinObject : TObject; SaveValue : Boolean; var ResultName : String ) : Boolean;
function  OWGetInjectedClassPropertiesOfType( AClass : TObject; AType : TClass; AStrings : TStrings; SaveValue : Boolean ) : Boolean;
//---------------------------------------------------------------------------
procedure OWRegisterPinProxyClass( AClass : TOWPinProxyClass );
function  OWCreatePinProxy( AProxyClassName : String; APinName : String ) : TOWPinProxy;
//---------------------------------------------------------------------------
procedure OWRegisterPinListProxyClass( AClass : TOWPinListProxyClass );
function  OWCreatePinListProxy( AProxyClassName : String; APinName : String ) : TOWPinListProxy;
//---------------------------------------------------------------------------
type TOWGetInjectedObjectFunc = function( AClass : TObject; PinObject : TObject; SaveValue : Boolean; var ResultName : String ) : Boolean;
var GOWGetInjectedObjectFunc : TOWGetInjectedObjectFunc = NIL;
//---------------------------------------------------------------------------
type TOWGetInjectedClassPropertiesOfType = function( AClass : TObject; AType : TClass; AStrings : TStrings; SaveValue : Boolean ) : Boolean;
var GOWGetInjectedClassPropertiesOfTypeFunc : TOWGetInjectedClassPropertiesOfType = NIL;
//---------------------------------------------------------------------------
function  OWDispatchers( DesignTime : Boolean ) : IOWStateDispatcherList;
//---------------------------------------------------------------------------
type IOWPinNotifier = interface
  ['{EEFCD8A1-9AD8-4326-97BF-F537E5EAF366}']
  procedure AddPin( APin : TOWBasicPin );
  procedure RemovePin( APin : TOWBasicPin; DesignFormClosing : Boolean );
  procedure ChangePin( APin : TOWBasicPin );
    
  procedure Connected( AObject1 : TOWObject; AObject2 : TOWObject );
  procedure Disconnecting( AObject1 : TOWObject; AObject2 : TOWObject; AFromConnect : Boolean );
  procedure Disconnected( AObject1 : TOWObject; AFromConnect : Boolean );

  procedure AddPinList( APinList : TOWBasicPinList );
  procedure RemovePinList( APinList : TOWBasicPinList );
  procedure ChangePinList( APinList : TOWBasicPinList );

  procedure PinListPinAdded( APinList : TOWBasicPinList; APin : TOWBasicPin; Index : Integer );
  procedure PinListPinRemoved( APinList : TOWBasicPinList; APin : TOWBasicPin; Index : Integer );
  procedure PinListPinsSwapped( APinList : TOWBasicPinList; APin1 : TOWBasicPin; Index1 : Integer; APin2 : TOWBasicPin; Index2 : Integer );

  procedure AddDispatcher( ADispatcher : TOWBasicStateDispatcher );
  procedure RemoveDispatcher( ADispatcher : TOWBasicStateDispatcher; DesignFormClosing : Boolean );
  procedure ChangeDispatcher( ADispatcher : TOWBasicStateDispatcher );

  procedure NestedComponentRegistered( AClass : TPersistentClass );
  procedure ComponentOwnerChanged( AComponent : TComponent );
  procedure ComponentIndexChanged( AComponent : TComponent; AIndex : Integer );

  procedure CollectionItemAdded( ACollection : TPersistent; AItem : TPersistent );
  procedure CollectionItemRemoved( ACollection : TPersistent; AItem : TPersistent );
  procedure CollectionOrderChanged( ACollection : TPersistent; AItem1 : TPersistent; AItem2 : TPersistent );
  procedure CollectionItemMoved( ACollection : TPersistent; AItem : TPersistent; AFromIndex, AToIndex : Integer );

end;
//---------------------------------------------------------------------------
type
  IOWStreamInfoExtention = interface
    ['{A4E3AC9E-29CE-4F0D-B270-05A356339310}']

    function GetExtentionId() : TGUID;
    function IsInModule( HInstance : NativeInt ) : Boolean;

  end;
//---------------------------------------------------------------------------
  TOWStreamInfoExtention = class( TInterfacedObject, IOWStreamInfoExtention )
  protected
    FExtentionId : TGUID;

  public
    function GetExtentionId() : TGUID;
    function IsInModule( HInstance : NativeInt ) : Boolean; virtual;

  public
    constructor Create( AExtentionId : TGUID );

  end;
//---------------------------------------------------------------------------
procedure OWRegisterStreamExtention( AStreamTypeID : TGUID; AExtention : IOWStreamInfoExtention );
function  OWGetStreamExtentionFromID( AStreamTypeID : TGUID; AExtentionID : TGUID; out AExtention : IOWStreamInfoExtention ) : Boolean;
function  OWGetStreamIsCoreInterface( AStreamTypeID : TGUID ) : Boolean;
//---------------------------------------------------------------------------
procedure OWAddPinNotifier( ANotifyItem : IOWPinNotifier );
procedure OWRemovePinNotifier( ANotifyItem : IOWPinNotifier );

procedure OWGlobalLock();
procedure OWGlobalUnlock();

function  OWGetPinCount() : Integer;
function  OWGetPin( Index : Integer ) : TOWBasicPin;

function  OWGetPinListCount() : Integer;
function  OWGetPinList( Index : Integer ) : TOWBasicPinList;

procedure OWSetIgnoreDesignMode( AIgnore : Boolean );
procedure OWSetIgnorePinChangeNotifications( AIgnore : Boolean );

// State pins support.
function  OWGetDispatcherCount() : Integer;
function  OWGetDispatcher( Index : Integer ) : TOWBasicStateDispatcher;

procedure OWInitGlobals();

const
  GOWDISCONNECTED = '(Disconnected)';

implementation

{$T-}

uses
{$IFDEF MSWINDOWS}
  Winapi.Windows,
{$ELSE}
  SyncObjs,
{$ENDIF}
  System.Math, System.Rtti, System.StrUtils, Mitov.ClassManagement, Mitov.Elements,
  Mitov.TypeInfo, Mitov.Utils, Mitov.Design.Components, Mitov.Containers.Dictionary,
  OpenWire.TypeConverters;

type PGUID = ^TGUID;
//---------------------------------------------------------------------------
type TOWSinkPinListCopy = class( TInterfacedObject, IOWSinkPinListCopy )
protected
  FList : IArrayList<TOWBasicSinkPin>;

protected
  function GetCount() : Integer;
  function GetItem( Index : Integer ) : TOWBasicSinkPin;

public
  constructor Create( AOwner : TOWSinkPinList );

end;
//---------------------------------------------------------------------------
{$IFDEF MSWINDOWS}
type TInterlocked = class
public
  class function Increment(var Target: Integer): Integer; stdcall; inline;
  class function Decrement(var Target: Integer): Integer; stdcall; inline;
  class function Add(var Target: Integer; Increment: Integer): Integer; stdcall; inline;
  class function Exchange(var Target: Integer; Value: Integer): Integer; stdcall; inline;

end;
{$ENDIF}
//---------------------------------------------------------------------------
{$IFNDEF MSWINDOWS}
function Succeeded(Status: HRESULT): Boolean;
begin
  Result := Status and HRESULT($80000000) = 0;
end;
{$ENDIF}
//---------------------------------------------------------------------------
{$IFDEF MSWINDOWS}
class function TInterlocked.Increment(var Target: Integer): Integer; stdcall;
begin
  Result := InterlockedIncrement( Target );
end;
//---------------------------------------------------------------------------
class function TInterlocked.Decrement(var Target: Integer): Integer; stdcall;
begin
  Result := InterlockedDecrement( Target );
end;
//---------------------------------------------------------------------------
class function TInterlocked.Add(var Target: Integer; Increment: Integer): Integer; stdcall;
begin
  Result := InterlockedExchangeAdd( Target, Increment );
end;
//---------------------------------------------------------------------------
class function TInterlocked.Exchange(var Target: Integer; Value: Integer): Integer; stdcall;
begin
  Result := InterlockedExchange( Target, Value );
end;
{$ENDIF}
//---------------------------------------------------------------------------
function GOWIsStringValueType( AValue : TValueType ) : Boolean;
begin
  Result := AValue in [vaString, vaUTF8String, vaLString, vaWString];
end;
//---------------------------------------------------------------------------
type
  TOWPinListBasic = class( TObjectList<TOWBasicPin> )
  public
    function  Add( APin : TOWBasicPin ): Integer;
    function  RemoveNoList( APin : TOWBasicPin ) : Boolean;

  public
    function GetByIdentName( ARoot : TComponent; APinName : String ) : TOWBasicPin;
    function GetByDisplayName( ARoot : TComponent; APinName : String ) : TOWBasicPin;

  end;
//---------------------------------------------------------------------------
  TOWInternalPinList = class( TOWPinListBasic )
  public
    function GetByNameCreate( ARoot : TComponent; AType : TOWPinType; APinIdentName : String; APinDisplayName : String; ACreatedFrom : String ) : TOWBasicPin;

  end;
//---------------------------------------------------------------------------
  TOWUnloadedPin = class( TOWBasicPin )
  protected
    FDisplayName    : String;
    FIdentName      : String;
    [Weak] FRoot    : TComponent;
    FType           : TOWPinType;
    FDesignTime     : Boolean;
    FConnectedPins  : TOWPinEntryList;
    FCreatedFrom    : String;
    FOwnedByList    : Boolean;
    FInRemoveCount  : Integer;
    FInEditor       : Boolean;

  public
    function  IsCompatible( const OtherPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; override;
    function  ConnectAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin ) : Boolean; override;
    procedure Disconnect(); override;
    function  DependsOn( const OtherPin : TOWBasicPin ) : Boolean; override;
    function  IsConnected() : Boolean; override;
    function  IsConnectedTo( const OtherPin : TOWBasicPin ) : Boolean; override; //const;

  protected
    function  OwnerInDesigning( ACheckForDispatchers : Boolean ) : Boolean; override;
    function  FindConnectionID( const OtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean; ADataType : TGUID ) : TGUID; override;
    function  NotifyDispatcher( const Operation : IOWNotifyOperation; State : TOWNotifyState; const APinToNotify : TOWBasicPin ) : TOWNotifyResult; override;
    procedure PinDeletedNotify( const ADeletedPin : TOWBasicPin ); override;
    procedure IntDisconnect( const OtherPin : TOWBasicPin; DesignFormClosing : Boolean ); override;
    procedure IntConnect( const SinkPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; const ADataType : TGUID ); override;
    function  GetPinType() : TOWPinType; override;
    procedure CheckRemove(); override;
    procedure PinReplacedNotify( const AOldPin : TOWBasicPin; const ANewPin : TOWBasicPin ); override;
    procedure SetInEditor( Value : Boolean ); override;
    function  CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean; ADataType : TGUID ) : Boolean; override;
    function  GetNameInt() : String; override;

  public
    function  GetRoot() : TComponent; override;
    function  GetFullName( IncludeRootForm : Boolean ) : String; override;
    function  GetFullIdentName( AIncludeRootForm : Boolean ) : String; override;

  public
    procedure PopulatePinAndDestroy( APin : TOWBasicPin );

  public
    constructor Create( ARoot : TComponent; AType : TOWPinType; APinIdentName : String; APinDisplayName : String; ACreatedFrom : String );
    destructor  Destroy(); override;

  end;
//---------------------------------------------------------------------------
  TOWStreamTypeEntry = class;
//---------------------------------------------------------------------------
  IOWStreamTypeEntry = interface
    ['{DA43E118-219E-46B2-AB16-D51A6CEC22F9}']

    function GetInstance() : TOWStreamTypeEntry;

  end;
//---------------------------------------------------------------------------
  TOWStreamTypeEntry = class( TInterfacedObject, IOWStreamTypeEntry )
  protected
    function GetInstance() : TOWStreamTypeEntry;

  public
    ID              : TGUID;
    Name            : String;
    InterfaceName   : String;
    Extentions      : IDictionary<TGUID, IOWStreamInfoExtention>;
    SendFunction    : TOWGlobalSubmit;

    HInstance       : NativeInt;

//    TypeInfo        : PTypeInfo;

    IsCoreInterface : Boolean;

  public
    constructor Create( AID : TGUID );

  end;
//---------------------------------------------------------------------------
var
  GOWPins                   : TOWInternalPinList;
  GOWPinLists               : IArrayList<TOWBasicPinList>;
  GOWUnloadedPins           : TOWPinListBasic;

  GOWStreamTypes            : IDictionary<TGUID, IOWStreamTypeEntry>;

  GOWNotifyList             : ILinkedList<IOWPinNotifier>;
  GOWNotifySection          : ICriticalSection;

  GOWOperationID            : LongInt;

var
  GLoaded                     : Boolean;

var
  __OWCountLockObjects        : Integer = 0;

var // State pins support
  GDesignDispatchers          : IOWStateDispatcherList;
  GRunDispatchers             : IOWStateDispatcherList;
  GIgnoreDesignMode           : Boolean;
  GIgnoreChangeNotifications  : Boolean;
  GlobalStorageSection        : ICriticalSection;

//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure OWAddPinNotifier( ANotifyItem : IOWPinNotifier );
begin
  GOWNotifySection.Enter();
  try
    if( GOWNotifyList <> NIL ) then
      GOWNotifyList.Add( ANotifyItem );

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWRemovePinNotifier( ANotifyItem : IOWPinNotifier );
begin
  GOWNotifySection.Access.Execute(
      procedure()
      begin
        try
          if( GOWNotifyList <> NIL ) then
            GOWNotifyList.RemoveAll( ANotifyItem );

        except
          end;
      end
    );

end;
//---------------------------------------------------------------------------
procedure OWNotifyAddPin( APin : TOWBasicPin );
begin
  GOWNotifySection.Access.Execute(
      procedure()
      begin
        try
          if( not GIgnoreChangeNotifications ) then
            if( GOWNotifyList <> NIL ) then
              GOWNotifyList.Query().ForEach(
                  procedure( AItem : IOWPinNotifier )
                  begin
                    try
                      AItem.AddPin( APin );

                    except;
                      end;

                  end
                );

        except
          end;

      end
    );

end;
//---------------------------------------------------------------------------
procedure OWNotifyRemovePin( APin : TOWBasicPin; DesignFormClosing : Boolean );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        GOWNotifyList.Query().ForEach(
            procedure( AItem : IOWPinNotifier )
            begin
              try
                AItem.RemovePin( APin, DesignFormClosing );

              except;
                end;

            end
          );

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyChangePin( APin : TOWBasicPin );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        GOWNotifyList.Query().ForEach(
            procedure( AItem : IOWPinNotifier )
            begin
              try
                AItem.ChangePin( APin );

              except;
                end;

            end
          );

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyConnected( AObject1 : TOWObject; AObject2 : TOWObject );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        GOWNotifyList.Query().ForEach(
            procedure( AItem : IOWPinNotifier )
            begin
              try
                AItem.Connected( AObject1, AObject2 );

              except;
                end;

            end
          );

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyDisconnecting( AObject1 : TOWObject; AObject2 : TOWObject; AFromConnect : Boolean );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        GOWNotifyList.Query().ForEach(
            procedure( AItem : IOWPinNotifier )
            begin
              try
                AItem.Disconnecting( AObject1, AObject2, AFromConnect );

              except;
                end;

            end
          );

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyDisconnected( AObject1 : TOWObject; AFromConnect : Boolean );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        GOWNotifyList.Query().ForEach(
            procedure( AItem : IOWPinNotifier )
            begin
              try
                AItem.Disconnected( AObject1, AFromConnect );

              except;
                end;

            end
          );

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyAddDispatcher( ADispatcher : TOWStateDispatcher );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        GOWNotifyList.Query().ForEach(
            procedure( AItem : IOWPinNotifier )
            begin
              try
                AItem.AddDispatcher( ADispatcher );

              except;
                end;

            end
          );

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyRemoveDispatcher( ADispatcher : TOWStateDispatcher; DesignFormClosing : Boolean );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        GOWNotifyList.Query().ForEach(
            procedure( AItem : IOWPinNotifier )
            begin
              try
                AItem.RemoveDispatcher( ADispatcher, DesignFormClosing );

              except;
                end;

            end
          );

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyChangeDispatcher( ADispatcher : TOWStateDispatcher );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        GOWNotifyList.Query().ForEach(
            procedure( AItem : IOWPinNotifier )
            begin
              try
                AItem.ChangeDispatcher( ADispatcher );

              except;
                end;

            end
          );

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyAddPinList( APinList : TOWPinList );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        GOWNotifyList.Query().ForEach(
            procedure( AItem : IOWPinNotifier )
            begin
              try
                AItem.AddPinList( APinList );

              except;
                end;

            end
          );

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyRemovePinList( APinList : TOWPinList );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        GOWNotifyList.Query().ForEach(
            procedure( AItem : IOWPinNotifier )
            begin
              try
                AItem.RemovePinList( APinList );

              except;
                end;

            end
          );

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyChangePinList( APinList : TOWPinList );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        GOWNotifyList.Query().ForEach(
            procedure( AItem : IOWPinNotifier )
            begin
              try
                AItem.ChangePinList( APinList );

              except;
                end;

            end
          );

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyPinListPinAdded( APinList : TOWPinList; APin : TOWBasicPin; Index : Integer );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        GOWNotifyList.Query().ForEach(
            procedure( AItem : IOWPinNotifier )
            begin
              try
                AItem.PinListPinAdded( APinList, APin, Index );

              except;
                end;

            end
          );

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyPinListPinRemoved( APinList : TOWPinList; APin : TOWBasicPin; Index : Integer );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        GOWNotifyList.Query().ForEach(
            procedure( AItem : IOWPinNotifier )
            begin
              try
                AItem.PinListPinRemoved( APinList, APin, Index );

              except;
                end;

            end
          );

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyPinListPinsSwapped( APinList : TOWPinList; APin1 : TOWBasicPin; Index1 : Integer; APin2 : TOWBasicPin; Index2 : Integer );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        GOWNotifyList.Query().ForEach(
            procedure( AItem : IOWPinNotifier )
            begin
              try
                AItem.PinListPinsSwapped( APinList, APin1, Index1, APin2, Index2 );

              except;
                end;

            end
          );

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
function _OWGetEntry( ID : TGUID ) : TOWStreamTypeEntry;
begin
  Result := GOWStreamTypes.GetOrAddValue( ID,
      function() : IOWStreamTypeEntry
      begin
        Result := TOWStreamTypeEntry.Create( ID );
      end

    ).GetInstance();

end;
//---------------------------------------------------------------------------
procedure OWRegisterStream( AStreamType : PTypeInfo; Name : String ); overload;
var
  AEntry : TOWStreamTypeEntry;

begin
  AEntry := _OWGetEntry( AStreamType.TypeData.Guid );
  AEntry.Name := Name;
//  AEntry.TypeInfo := AStreamType;
{$IFDEF NEXTGEN}
  AEntry.InterfaceName := TRttiInfo.GetType( AStreamType ).Name;
{$ELSE NEXTGEN}
  AEntry.InterfaceName := String( AStreamType.Name );
{$ENDIF NEXTGEN}
  AEntry.HInstance := FindHInstance( AStreamType );
end;
//---------------------------------------------------------------------------
procedure OWRegisterStream( AStreamType : PTypeInfo );
var
  AType : IInterfaceTypeInfo;

begin
  OWInitGlobals();
  AType := TRttiInfo.GetType( AStreamType ) as IInterfaceTypeInfo;
  AType.AccessAttributes.GetAll<OWNameAttribute>.Query().ForEach(
      procedure( AAttribute : OWNameAttribute )
      begin
        OWRegisterStream( AType.Handle, AAttribute.Value );
      end
    );

  while( AType <> NIL ) do
    begin
    AType.AccessAttributes.GetAll<OWCoreInterfaceAttribute>( False ).Query().ForEach(
        procedure( AAttribute : OWCoreInterfaceAttribute )
        var
          AEntry : TOWStreamTypeEntry;

        begin
          AEntry := _OWGetEntry( AType.GUID );
          AEntry.IsCoreInterface := True;
        end
      );

    AType := AType.BaseType as IInterfaceTypeInfo;
    end;

end;
//---------------------------------------------------------------------------
procedure OWRegisterStreams( AStreamTypes : array of PTypeInfo );
var
  AStreamType : PTypeInfo;

begin
  for AStreamType in AStreamTypes do
    OWRegisterStream( AStreamType );

end;
//---------------------------------------------------------------------------
procedure OWRegisterStreamExtention( AStreamTypeID : TGUID; AExtention : IOWStreamInfoExtention );
begin
  _OWGetEntry( AStreamTypeID ).Extentions[ AExtention.GetExtentionId() ] := AExtention;
end;
//---------------------------------------------------------------------------
function OWGetStreamIsCoreInterface( AStreamTypeID : TGUID ) : Boolean;
var
  AEntry  : IOWStreamTypeEntry;

begin
  if( GOWStreamTypes.GetValue( AStreamTypeID, AEntry )) then
    Exit( AEntry.GetInstance().IsCoreInterface );

  Exit( False );
end;
//---------------------------------------------------------------------------
function OWGetStreamExtentionFromID( AStreamTypeID : TGUID; AExtentionID : TGUID; out AExtention : IOWStreamInfoExtention ) : Boolean;
var
  AEntry  : IOWStreamTypeEntry;

begin
  if( GOWStreamTypes.GetValue( AStreamTypeID, AEntry )) then
    if( AEntry.GetInstance().Extentions.GetValue( AExtentionID, AExtention )) then
      Exit( True );

  AExtention := NIL;
  Result := False;
end;
//---------------------------------------------------------------------------
procedure OWRegisterDefaultHandler( AStreamTypeID : TGUID; SendFunction : TOWGlobalSubmit );
begin
  _OWGetEntry( AStreamTypeID ).SendFunction := SendFunction;
end;
//---------------------------------------------------------------------------
procedure OWRegisterPinProxyClass( AClass : TOWPinProxyClass );
begin
  Classes.RegisterClass( AClass );
end;
//---------------------------------------------------------------------------
function OWCreatePinProxy( AProxyClassName : String; APinName : String ) : TOWPinProxy;
var
  AClass : TOWPinProxyClass;

begin
  AClass := TOWPinProxyClass( Classes.GetClass( AProxyClassName ));
  Result := TOWPinProxy( AClass.Create( NIL ));
  Result.SetPinName( APinName );
end;
//---------------------------------------------------------------------------
procedure OWRegisterPinListProxyClass( AClass : TOWPinListProxyClass );
begin
  Classes.RegisterClass( AClass );
end;
//---------------------------------------------------------------------------
function OWCreatePinListProxy( AProxyClassName : String; APinName : String ) : TOWPinListProxy;
var
  AClass : TOWPinListProxyClass;

begin
  AClass := TOWPinListProxyClass( Classes.GetClass( AProxyClassName ));
  Result := TOWPinListProxy( AClass.Create( NIL ));
  Result.SetPinListName( APinName );
end;
//---------------------------------------------------------------------------
function OWGetStreamTypeFromID( AStreamTypeID : TGUID ) : String;
var
  AEntry : IOWStreamTypeEntry;

begin
  if( GOWStreamTypes.GetValue( AStreamTypeID, AEntry )) then
    Exit( AEntry.GetInstance().Name );

  Result := GUIDToString( AStreamTypeID );
end;
//---------------------------------------------------------------------------
function OWGetDebugStreamTypeFromID( AStreamTypeID : TGUID ) : String;
var
  AEntry : IOWStreamTypeEntry;

begin
  if( GOWStreamTypes.GetValue( AStreamTypeID, AEntry )) then
    Exit( AEntry.GetInstance().InterfaceName + '(' + AEntry.GetInstance().Name + ')' );

  Result := GUIDToString( AStreamTypeID );
end;
//---------------------------------------------------------------------------
function OWInheritsFromClassName( AClass : TClass; AName : String ) : Boolean;
begin
  if( AClass.ClassNameIs( AName )) then
    Exit( True );

  AClass := AClass.ClassParent();

  if( AClass = NIL ) then
    Result := False

  else
    Result := OWInheritsFromClassName( AClass, AName );

end;
//---------------------------------------------------------------------------
function OWGetMainOwnerComponent( Component : TComponent ) : TComponent;
begin
  if( Component = NIL ) then
    Exit( NIL );

  if( Component.Owner = NIL ) then
    Exit( Component );

  if( OWInheritsFromClassName( Component.Owner.ClassType(), 'TApplication' )) then
    Exit( Component );
    
  if( Component is TDataModule ) then
    Exit( Component );

  if( OWInheritsFromClassName( Component.ClassType(), 'TCustomForm' )) then
    Exit( Component );

  if( OWInheritsFromClassName( Component.ClassType(), 'TFrame' )) then
    Exit( Component );

  Result := OWGetMainOwnerComponent( Component.Owner );
end;

//---------------------------------------------------------------------------
function OWGetAllLinked() : Boolean;
begin
  GlobalStorageSection.Enter();
  try
    Result := ( GOWUnloadedPins.Count = 0 );
  except
    Result := True;
    end;

  GlobalStorageSection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWClearPendingLinks();
var
  APinList : TOWPinList;

begin
  GlobalStorageSection.Enter();
  try
    while( GOWUnloadedPins.Count > 0 ) do
      try
        APinList := GOWUnloadedPins[ GOWUnloadedPins.Count - 1 ].FOwnerPinList;
        if( APinList <> NIL ) then
          APinList.FUnloadedCount := 0;

        GOWUnloadedPins.Delete( GOWUnloadedPins.Count - 1 );
      except
        end;

  except
    end;

  GlobalStorageSection.Leave();
end;
//---------------------------------------------------------------------------
function OWGetFormName( PinName : String ) : String;
var
  Position : Integer;
  SubNode  : String;
  
begin
  Position := Pos( '.', PinName );
  if( Position > 0 ) then
    begin
    Result := PinName;
    SubNode := Result;
    Delete( SubNode, 1, Position );
    Position := Pos( '.', SubNode );
    if( Position > 0 ) then
      begin
      Delete( SubNode, 1, Position );
      Position := Pos( '_Pin', Result );
      if( Position = 0 ) then
        Delete( Result, Position, 100000 )

      else
        begin
        Position := Pos( '.', SubNode );
        if( Position > 0 ) then
          Delete( Result, Position, 100000 )

        else
          Result := '';
          
        end;
      end

    else
      Result := '';

    end

  else
    Result := '';

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWObject.ReadLock()  : ILockSection;
begin
  Result := TSimpleReadLockSection.Create( FIntLock );
end;
//---------------------------------------------------------------------------
function TOWObject.WriteLock() : ILockSection;
begin
  Result := TSimpleWriteLockSection.Create( FIntLock );
end;
//---------------------------------------------------------------------------
function TOWObject.UnlockAll() : ILockSection;
begin
  Result := TSimpleUnlockSection.Create( FIntLock, NIL );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWFakeLock.ReadLock() : ILockSection;
begin
  Result := TLockSection.Create();
end;
//---------------------------------------------------------------------------
function TOWFakeLock.WriteLock() : ILockSection;
begin
end;
//---------------------------------------------------------------------------
function TOWFakeLock.StopLock() : ILockSection;
begin
end;
//---------------------------------------------------------------------------
function TOWFakeLock.UnlockAll() : ILockSection;
begin
end;
//---------------------------------------------------------------------------
function TOWFakeLock.UnlockAllLockInOrder( AFirstLock : IBasicLock ) : ILockSection;
begin
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWDestroyLock.Create( AOwner : TOWObject );
begin
  inherited Create();
  FSection := Mitov.Threading.TCriticalSection.Create();
  FOwner := AOwner;
end;
//---------------------------------------------------------------------------
function TOWDestroyLock.Lock() : IOWDestroyLockSection;
begin
  FSection.Enter();
  try
    TInterlocked.Increment( FLockCounter );
    if( TInterlocked.Add( FDestroying, 0 ) <> 0 ) then
      if( FThreadID <> TBasicThread.GetCurrentThreadId()) then
        begin
        TInterlocked.Decrement( FLockCounter );
        Exit( NIL );
        end;

    Result := TOWDestroyLockSection.Create( Self );

  finally
    FSection.Leave();
    end;

end;
//---------------------------------------------------------------------------
function TOWDestroyLock.DestroyLock() : IOWDestroyLockSection;
var
  AUnlockSection  : ILockSection;

begin
  TInterlocked.Increment( FDestroying );
  AUnlockSection := FOwner.UnlockAll();
  while( TInterlocked.Add( FLockCounter, 0 ) <> 0 ) do
    Sleep( 0 );

  AUnlockSection := NIL;
  FSection.Enter();
  try
    FThreadID := TBasicThread.GetCurrentThreadId();
    Result := TOWDestroyLockLockSection.Create( Self );
  finally
    FSection.Leave();
    end;

end;
//---------------------------------------------------------------------------
function TOWDestroyLock.DestroyUnlockLock() : IOWDestroyLockSection;
var
  ACount : LongInt;

begin
  ACount := TInterlocked.Exchange( FDestroying, 0 );
  Result := TOWDestroyLockUnlockSection.Create( Self, ACount );
//  FUnlockSection := FOwner.UnlockAll();
end;
//---------------------------------------------------------------------------
function TOWDestroyLock.Instance() : TOWDestroyLock;
begin
  Result := Self;
end;
//---------------------------------------------------------------------------
procedure TOWDestroyLock.Unlock();
begin
  TInterlocked.Decrement( FLockCounter );
end;
//---------------------------------------------------------------------------
procedure TOWDestroyLock.DestroyUnlock();
begin
  FSection.Enter();
  try
    TInterlocked.Decrement( FDestroying );
    if( FDestroying = 0 ) then
      FThreadID := 0;

//    FUnlockSection := NIL;
  finally
    FSection.Leave();
    end;

end;
//---------------------------------------------------------------------------
procedure TOWDestroyLock.DestroyLockNum( ACount : LongInt );
begin
  TInterlocked.Add( FDestroying, ACount );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWDestroyLockSection.Create( ALock : TOWDestroyLock );
begin
  inherited Create();
  FLock := ALock;
end;
//---------------------------------------------------------------------------
destructor TOWDestroyLockSection.Destroy();
begin
  FLock.Instance().Unlock();
  inherited;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWDestroyLockLockSection.Create( ALock : TOWDestroyLock );
begin
  inherited Create();
  FLock := ALock;
end;
//---------------------------------------------------------------------------
destructor TOWDestroyLockLockSection.Destroy();
begin
  FLock.Instance().DestroyUnlock();
  inherited;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWDestroyLockUnlockSection.Create( ALock : TOWDestroyLock; ACount : LongInt );
begin
  inherited Create();
  FLock := ALock;
  FCount := ACount;
end;
//---------------------------------------------------------------------------
destructor TOWDestroyLockUnlockSection.Destroy();
begin
  FLock.Instance().DestroyLockNum( FCount );
//  FLock.Instance().FUnlockSection := NIL;
  inherited;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWPinObject.PinDeletedNotify( const ADeletedPin : TOWBasicPin );
begin
end;
//---------------------------------------------------------------------------
procedure TOWPinObject.PinReplacedNotify( const AOldPin : TOWBasicPin; const ANewPin : TOWBasicPin );
begin
end;
//---------------------------------------------------------------------------
procedure TOWPinObject.SetNotifyAfterByName( const APin : TOWPin; const AfterPinName : String );
begin
end;
//---------------------------------------------------------------------------
function TOWPinObject.GetAfterPinDisplayName( APin : TOWPin ) : String;
begin
  Result := '';
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWBasicPin.Create( AOwnerLock : IBasicLock );
begin
  inherited Create();

  if( AOwnerLock = NIL ) then
    FOwnerLock := TOWFakeLock.Create()

  else
    FOwnerLock := AOwnerLock;

  FDestroyLock := TOWDestroyLock.Create( Self );
  GlobalStorageSection.Access.Execute(
      procedure()
      begin
        GOWPins.Add( Self );
      end
    );

end;
//---------------------------------------------------------------------------
destructor TOWBasicPin.Destroy();
var
  ADestroyLock : IOWDestroyLockSection;

begin
  ADestroyLock := FDestroyLock.DestroyLock();
  if( FCurrentEditorPtr <> NIL )then
    FCurrentEditorPtr^ := NIL;

  inherited;
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.AfterConstruction();
var
  AWriteLock : ILockSection;

begin
  inherited;
//  Log( 'NEW    : ' + IntToHex( Integer( Self ), 8 ) + ' - ' + GetFullName( True ) );

  AWriteLock := WriteLock();

  OWNotifyAddPin( Self );
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.BeforeDestruction();
var
  ADesignFormClosing  : Boolean;
  AWriteLock          : ILockSection;
  ADestroyLock        : IOWDestroyLockSection;

begin
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();
  Disconnect();
  ADesignFormClosing := False;
  if( OwnerInDesigning( False ) ) then
    if( RootInDestroying() ) then
      ADesignFormClosing := True;

  ADestroyLock := NIL;
  AWriteLock := NIL;
  AWriteLock := UnlockAll(); // Unlock the pin before getting GlobalStorageSection

  OWNotifyRemovePin( Self, ADesignFormClosing );

  GlobalStorageSection.Access.Execute(
      procedure()
      var
        I : Integer;

      begin
        GOWPins.Remove( Self );
        for I := GOWPins.Count - 1 downto 0 do
          try
            if( I < GOWPins.Count ) then
              GOWPins[ I ].PinDeletedNotify( Self );

          except
            end;

      end
    );

  if( FOwnerPinList <> NIL ) then
    FOwnerPinList.Remove( Self );

  inherited;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.QueryInterface({$IFDEF FPC_HAS_CONSTREF}constref{$ELSE}const{$ENDIF} IID: TGUID; out Obj): HResult; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};
begin
  if( GetInterface( IID, Obj )) then
    Result := S_OK

  else
    Result := E_NOINTERFACE;

end;
//---------------------------------------------------------------------------
function TOWBasicPin.RequestInterface(const IID: TGUID; out Obj): HResult; stdcall;
begin
  Result := QueryInterface( IID, Obj );
end;
//---------------------------------------------------------------------------
function TOWBasicPin._AddRef(): Integer; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};
begin
  _AddRef := 1;
end;
//---------------------------------------------------------------------------
function TOWBasicPin._Release(): Integer; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};
begin
  _Release := 1;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetRootName() : String;
var
  Position : Integer;

begin
  Result := GetFullIdentName( True );
  Position := Pos( '.', Result );
  if( Position <> 0 ) then
    Delete( Result, Position, 20000 )

  else
    Result := '';

end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetOwnerName() : String;
var
  Position : Integer;

begin
  Result := GetFullIdentName( True );
  Position := Pos( '.', Result );
  if( Position <> 0 ) then
    begin
    Delete( Result, 1, Position );
    Position := LastDelimiter( '.', Result );
    if( Position <> 0 ) then
      Delete( Result, Position, 20000 );
      
    end

  else
    Result := '';

end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetIsCached() : Boolean;
begin
  if( FOwnerPinList <> NIL ) then
    Result := False

  else
    begin
    Result := ( ( FName <> '' ) and ( FShortName <> '' ) );
    if( Result ) then
      Result := ( Pos( '[', FName ) <= 0 );

    end;

end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.PopulateNameCache();
var
  APos          : Integer;
  APinListName  : String;

begin
  if( GetIsCached() ) then
    Exit;

  FName := GetNameInt();
  FShortName := FName;

  if( FOwnerPinList <> NIL ) then
    begin
    APinListName := FOwnerPinList.Name;
    if( Pos( APinListName, FShortName ) = 1 ) then
      Delete( FShortName, 1, Length( APinListName ) + 1 );

    end

  else
    begin
    APos := LastDelimiter( '.', FShortName );
    if( APos > 0 ) then
      Delete( FShortName, 1, APos );

    end;

  FShortName := MakeShortName( FShortName );
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.RemoveNotifyEntry( AEntry : IOWNotifyPinEntry );
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.AddNotifyEntry( AEntry : IOWNotifyPinEntry );
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.UnlodedPinRemoved( const APin : TOWBasicPin );
begin
end;
//---------------------------------------------------------------------------
function TOWBasicPin.MakeShortName( AName : String ) : String;

  function EndsWith( const AText : String; const ASubString : String ) : Boolean;
  begin
    Result := ( RightStr( AText, Length( ASubString )) = ASubString );
  end;

begin
  Result := AName;
  if( FDoNotShortName ) then
    Exit;

  if( EndsWith( Result, 'Pin' )) then
    Delete( Result, Length( Result ) - 2, 3 );

  if( EndsWith( Result, 'Output' )) then
    begin
    if( Result = 'Output' ) then
      Result := 'Out'

    else
      Delete( Result, Length( Result ) - 5, 6 )

    end

  else if( EndsWith( Result, 'Input' )) then
    begin
    if( Result = 'Input' ) then
      Result := 'In'

    else
      Delete( Result, Length( Result ) - 4, 5 );

    end;

end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetName() : String;
begin
  PopulateNameCache();
  Result := FName;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetShortName() : String;
begin
  PopulateNameCache();
  Result := FShortName;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetSaveName() : String;
begin
  Result := GetName();
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetPinPropertyName() : String;
var
  APosition : Integer;

begin
  Result := GetFullName( False );
  APosition := Pos( '.', Result );
  if( APosition <> 0 ) then
    Delete( Result, 1, APosition );

end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetRoot() : TComponent;
begin
  Result := GetOwnerComponent();
  if( Result <> NIL ) then
    Result := OWGetMainOwnerComponent( Result );
    
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetConnectedAfterForPin( const OtherPin : TOWBasicPin ) : TOWBasicPin;
begin
  if( FDispatcher <> NIL ) then
    Result := FDispatcher.GetConnectedAfterForPin( OtherPin )

  else
    Result := NIL;
    
end;
//---------------------------------------------------------------------------
class function TOWBasicPin.IntGetPNGResImageByName( HInstance : NativeInt; AName : String; out ABitmap : IGPBitmap ) : Boolean;
begin
  Result := GetPNGResImageByName( HInstance, AName, ABitmap );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetInputOutputImage( out AImage : IGPBitmap; AForInput : Boolean; AForOutput : Boolean ) : Boolean;
var
  AEntry      : IOWStreamTypeEntry;
  AIntfTable  : PInterfaceTable;
  AClass      : TClass;
  I           : Integer;

begin
  // Try to get connection type image
  if( ConnectedPinCount > 0 ) then
    begin
    if( AForOutput ) then
      if( GOWStreamTypes.GetValue( GetConnectionID( ConnectedPin[ 0 ] ), AEntry )) then
        if( IntGetPNGResImageByName( AEntry.GetInstance().HInstance, UpperCase( AEntry.GetInstance().InterfaceName ), FImage )) then
          begin
          AImage := FImage;
          Exit( True );
          end;

    if( AForInput ) then
      if( GOWStreamTypes.GetValue( ConnectedPin[ 0 ].GetConnectionID( Self ), AEntry )) then
        if( IntGetPNGResImageByName( AEntry.GetInstance().HInstance, UpperCase( AEntry.GetInstance().InterfaceName ), FImage )) then
          begin
          AImage := FImage;
          Exit( True );
          end;

    Exit( False );
    end;

  // Try to get the first type image
  if( AForOutput ) then
    if( DataTypesCount > 0 ) then
      if( GOWStreamTypes.GetValue( DataType[ DataTypesCount - 1 ], AEntry )) then
        if( IntGetPNGResImageByName( AEntry.GetInstance().HInstance, UpperCase( AEntry.GetInstance().InterfaceName ), FImage )) then
          begin
          AImage := FImage;
          Exit( True );
          end;

  // Try to get the first interface type image
  if( AForInput ) then
    begin
    AClass := ClassType();
    while( AClass <> NIL ) do
      begin
      AIntfTable := AClass.GetInterfaceTable();
      if( AIntfTable <> NIL ) then
        for I := 0 to AIntfTable.EntryCount - 1 do
          begin
          if( GOWStreamTypes.GetValue( AIntfTable.Entries[ 0 ].IID, AEntry )) then
            begin
            if( IntGetPNGResImageByName( AEntry.GetInstance().HInstance, UpperCase( AEntry.GetInstance().InterfaceName ), FImage )) then
              begin
              AImage := FImage;
              Exit( True );
              end;

            Exit( False );
            end;
          end;

      AClass := AClass.ClassParent;
      end;
    end;

  Exit( False );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetImage( out AImage : IGPBitmap ) : Boolean;
begin
  if( FImageCached ) then
    begin
    AImage := FImage;
    Exit( AImage <> NIL );
    end;

  FImageCached := True;
  if( IntGetPNGResImageByName( NativeInt( FindClassHInstance( ClassType() )), UpperCase( ClassName() ), FImage )) then
    begin
    AImage := FImage;
    Exit( True );
    end;

  Exit( False );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetIsRealPin() : Boolean;
begin
  Result := ( Self is TOWPin );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.DirectDependsOn( const OtherPin : TOWBasicPin ) : Boolean;
begin
  Result := DependsOn( OtherPin );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetConnectionID( const OtherPin : TOWBasicPin ) : TGUID;
begin
  Result := OWNULLID;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetConnectionID( const Dispatcher : TOWBasicStateDispatcher ) : TGUID;
var
  AOtherPin : TOWBasicPin;
  I         : Integer;

begin
  if( Dispatcher <> NIL ) then
    for I := 0 to Dispatcher.PinCount - 1 do
      begin
      AOtherPin := Dispatcher[ I ];
      if( AOtherPin <> Self ) then
        if( CanConnectTo( AOtherPin )) then
          Exit( GetConnectionID( AOtherPin ))

        else if( AOtherPin.CanConnectTo( Self )) then
          Exit( AOtherPin.GetConnectionID( Self ));

      end;

  Result := OWNULLID;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsDebugPin() : Boolean;
var
  ARoot : TComponent;

begin
  ARoot := GetRoot();
  if( ARoot = NIL ) then
    Exit( True );

  if( ARoot.TypeInfo().HasCustomAttribute( OWDebugPinsAttribute )) then
    Exit( True );

  if( IsPreviewPin()) then
    Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsPreviewPin() : Boolean;
var
  AComponent  : TComponent;
  ARoot       : TComponent;

begin
  AComponent := GetOwnerComponent();
  if( AComponent = NIL ) then
    Exit( False );

  if( not( csDesigning in AComponent.ComponentState )) then
    Exit( False );

  ARoot := OWGetMainOwnerComponent( AComponent );
  if( OWInheritsFromClassName( ARoot.ClassType(), 'TPreviewForm' )) then
    Exit( True );

  if( ARoot.Name = 'Root' ) then
    if( ARoot.ClassName().StartsWith( ARoot.ClassParent().ClassName() + '_' )) then
      Exit( True );

  Exit( False );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetOwnerPinList() : TOWPinList;
begin
  Result := FOwnerPinList;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetOwnerComponent() : TComponent;
begin
  Result := NIL;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.RootInDestroying() : Boolean;
begin
  Result := False;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.OwnerInLoading() : Boolean;
begin
  Result := True;
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.IntDisconnect( const OtherPin : TOWBasicPin; DesignFormClosing : Boolean );
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.IntConnect( const SinkPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; const ADataType : TGUID );
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.CheckRemove();
begin
end;
//---------------------------------------------------------------------------
function TOWBasicPin.CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean; ADataType : TGUID ) : Boolean;
begin
  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.BeforeDisconnect();
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.BeforeDisconnectFrom( const APin : TOWBasicPin );
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.ApplyFormName( var Ident : String );
begin
  if( FLoadFormName <> '' ) then
    if( Pos( FLoadFormName + '.', Ident ) = 1 ) then
      begin
      Delete( Ident, 1, Length( FLoadFormName ));
      Ident := GetRootName() + Ident;
      end;
     
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.SetOwnerComponent( AComponent : TComponent );
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.SetRootAndName( ARoot : TComponent; AName : String; AInDesignMode : Boolean );
begin
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsLinkedTo( PinName : String ) : Boolean;
var
  I : Integer;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( FDispatcher = NIL ) then
    Exit( False );

  for I := 0 to FDispatcher.PinCount - 1 do
    if( FDispatcher.Pins[ I ].GetFullName( True ) = PinName ) then
      Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.ConnectToState( ADispatcher : TOWBasicStateDispatcher ) : Boolean;
begin
  Result := ConnectToStateAfter( ADispatcher, NIL );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.ConnectToStateAfter( ADispatcher : TOWBasicStateDispatcher; NotifyAfterPin : TOWBasicPin ) : Boolean;
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();

  if( ADispatcher = FDispatcher ) then
    Exit( False );

  if( FDispatcher <> NIL ) then
    Disconnect();

  if( ADispatcher = NIL ) then
    Exit( False );

  if( not CanConnectToState( ADispatcher )) then
    Exit( False );

  ADispatcher.AddPinAfter( Self, Self, NotifyAfterPin );
  FDispatcher := ADispatcher;
  UpdateStateValue();

  OWNotifyConnected( Self, ADispatcher );
  OWNotifyChangePin( Self );

  Result := True;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.CanConnectToState( const ADispatcher : TOWBasicStateDispatcher ) : Boolean;
var
  AConverter : IOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;

begin
  Result := CanConnectToStateInt( ADispatcher, AConverter, AConverterClass, True, OWNULLID );
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.IntStateDisconnect();
begin
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetEditorString() : String;
begin
  if( FDispatcher = NIL ) then
    Result := GOWDISCONNECTED

  else if( FDispatcher.PinCount = 2 ) then
    begin
    if( FDispatcher.Pins[ 0 ].GetFullIdentName( True ) = GetSaveName() ) then
      Result := FDispatcher.Pins[ 1 ].GetFullName( True )

    else
      Result := FDispatcher.Pins[ 0 ].GetFullName( True );

    end

  else
    Result := FDispatcher.Name;

end;
//---------------------------------------------------------------------------
function TOWBasicPin.SetEditorString( ARoot : TComponent; const AValue: String ) : Boolean;
begin
  Result := False;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.CanConnectToStateInt( const ADispatcher : TOWBasicStateDispatcher; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean; ADataType : TGUID ) : Boolean;
var
  I         : Integer;
  AReadLock : ILockSection;

begin
  if( ADispatcher = NIL ) then
    Exit( False );

  AReadLock := ReadLock();
  if( ADispatcher = FDispatcher ) then
    Exit( True );

  for I := 0 to ADispatcher.PinCount - 1 do
    if( not CanConnectToInt( ADispatcher[ I ], AConverter, AConverterClass, UseConverters, ADataType )) then
//    CanConnectTo( ADispatcher[ I ], UseConverters )) then
      Exit( False );

  Result := True;
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.UpdateStateValue();
begin
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsConnected() : Boolean;
begin
  Result := IsStateConnected();
end;
//---------------------------------------------------------------------------
function TOWBasicPin.CanConnectByType( const AType : TGUID; UseConverters : Boolean = True ) : Boolean;
begin
  Result := True;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.CanConnectTo( const OtherPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean;
var
  AConverter      : IOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  
begin
  Result := CanConnectToInt( OtherPin, AConverter, AConverterClass, UseConverters, OWNULLID );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsStateConnected() : Boolean;
begin
  Result := ( FDispatcher <> NIL );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsConnectedTo( const OtherPin : TOWBasicPin ) : Boolean;
begin
  Result := IsConnectedByStateTo( OtherPin );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsConnectedAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin ) : Boolean;
begin
  Result := IsConnectedByStateAfter( OtherPin, NotifyAfterPin );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsConnectedToState( const ADispatcher : TOWBasicStateDispatcher ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  Result := ( ADispatcher = FDispatcher );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsConnectedByStateTo( const OtherPin : TOWBasicPin ) : Boolean;
var
  AReadLock : ILockSection;
  I         : Integer;

begin
  AReadLock := ReadLock();

  if( FDispatcher <> NIL ) then
    for I := 0 to FDispatcher.GetPinCount() - 1 do
      if( FDispatcher.Pins[ I ] = OtherPin ) then
        Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsConnectedByStateAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin ) : Boolean;
var
  AReadLock : ILockSection;
  I         : Integer;

begin
  AReadLock := ReadLock();

  if( FDispatcher <> NIL ) then
    for I := 0 to FDispatcher.PinCount - 1 do
      if( ( FDispatcher.Pins[ I ] = OtherPin ) and ( FDispatcher.AfterPins[ I ] = NotifyAfterPin ) ) then
        Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsConnectedByConverterTo( const OtherPin : TOWBasicPin ) : Boolean;
begin
  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.SetInEditor( Value : Boolean );
begin
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetConnectedPinCount() : Integer;
begin
  Result := 0;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetConnectedPin( Index : Integer ) : TOWBasicPin;
begin
  Result := NIL;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetConnectedAfterPin( Index : Integer ) : TOWBasicPin;
begin
  Result := GetConnectedAfterForPin( GetConnectedPin( Index ));
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetDispatcherCount() : Integer;
begin
  if( FDispatcher <> NIL ) then 
    Result := 1

  else
    Result := 0;
    
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetDispatcher( Index : Integer ) : TOWBasicStateDispatcher;
begin
  Result := FDispatcher;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetDataTypesCount() : Integer;
begin
  Result := 0;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetDataType( Index : Integer ) : TGUID;
begin
  Result := OWNULLID;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.ConnectByState( const OtherPin : TOWBasicPin ) : Boolean;
begin
  Result := ConnectByStateAfter( OtherPin, NIL );
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.ConnectByStateByType( const OtherPin : TOWBasicPin; const ADataType : TGUID ) : Boolean;
begin
  Result := ConnectByStateAfterByType( OtherPin, NIL, ADataType );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.Connect( const OtherPin : TOWBasicPin ) : Boolean;
begin
  Result := ConnectAfter( OtherPin, NIL );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.ConnectByType( const OtherPin : TOWBasicPin; const ADataType : TGUID ) : Boolean;
begin
  Result := ConnectAfterByType( OtherPin, NIL, ADataType );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.ConnectAfterByType( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; const ADataType : TGUID ) : Boolean;
begin
  if( OtherPin = Self ) then
    Exit( False );

  FImageCached := False;
  Result := ConnectByStateAfterByType( OtherPin, NotifyAfterPin, ADataType );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.ConnectAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin ) : Boolean;
begin
  if( OtherPin = Self ) then
    Exit( False );

  FImageCached := False;
  Result := ConnectByStateAfter( OtherPin, NotifyAfterPin );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.CanConnectAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; UseConverters : Boolean ) : Boolean;
begin
  if( NotifyAfterPin = NIL ) then
    Result := CanConnectTo( OtherPin, UseConverters )

  else if( FDispatcher <> NIL ) then
    Result := FDispatcher.CanConnectAfter( OtherPin, NotifyAfterPin, UseConverters )

  else
    Result := False;
    
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.Disconnect();
var
  AWriteLock    : ILockSection;
  ADestroyLock  : IOWDestroyLockSection;
  I             : Integer;
  AWasConnected : Boolean;

begin
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();

  FImageCached := False;
  AWasConnected := ( FDispatcher <> NIL );
  if( AWasConnected ) then
    OWNotifyDisconnecting( Self, FDispatcher, False );

  if( FDispatcher <> NIL ) then
    begin
    for I := 0 to FDispatcher.PinCount - 1 do
      if( FDispatcher[ I ] <> Self ) then
        begin
        BeforeDisconnectFrom( FDispatcher[ I ] );
        FDispatcher[ I ].BeforeDisconnectFrom( Self );
        end;

    FDispatcher.RemovePin( Self );
    end;

  FDispatcher := NIL;

  if( AWasConnected ) then
    OWNotifyDisconnected( Self, False );

  AWriteLock := NIL;

  OWNotifyChangePin( Self );
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.DisconnectFrom( const OtherPin : TOWBasicPin );
var
  AWriteLock    : ILockSection;
  ADestroyLock  : IOWDestroyLockSection;

begin
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();

  OWNotifyDisconnecting( Self, FDispatcher, False );

  if( FDispatcher <> NIL ) then
    FDispatcher.RemovePin( OtherPin );

  FDispatcher := NIL;

  OWNotifyDisconnected( Self, False );

  AWriteLock := NIL;

  OWNotifyChangePin( Self );
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.DisconnectFromState();
var
  AWriteLock    : ILockSection;
  ADestroyLock  : IOWDestroyLockSection;

begin
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();

  OWNotifyDisconnecting( Self, FDispatcher, False );

  FDispatcher.RemovePin( Self );
  FDispatcher := NIL;

  OWNotifyDisconnected( Self, False );

  AWriteLock := NIL;

  OWNotifyChangePin( Self );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.NotifyPin( const APin : TOWBasicPin; Operation : IOWNotifyOperation ) : TOWNotifyResult;
begin
  Result := [];
end;
//---------------------------------------------------------------------------
function TOWBasicPin.Notify( Operation : IOWNotifyOperation ) : TOWNotifyResult;
begin
  Result := [];
end;
//---------------------------------------------------------------------------
function TOWBasicPin.DoStateWrite() : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  Result := ( FDispatcher <> NIL ) and ( not DoStateConverterWrite());
end;
//---------------------------------------------------------------------------
function TOWBasicPin.DoStateConverterWrite() : Boolean;
begin
  Result := False;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.DoFormWrite() : Boolean;
begin
  Result := DoStateWrite();
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.CheckVirtualList();
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.ReadConnectionsData( Reader : TReader );
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.LinkToStateByName( IdentName : String );
var
  AWriteLock  : ILockSection;
  ADispatcher : TOWStateDispatcher;
  
begin
  AWriteLock := WriteLock();
  if( IsPreviewPin() ) then
    Exit;

  ADispatcher := TOWStateDispatcher.GetByNameCreate( Self, IdentName, OwnerInDesigning( True ) );
  ConnectToState( ADispatcher );
//  FDispatcher.AddPin( Self, Self );
//  OWNotifyConnected( Self, FDispatcher );
//  UpdateStateValue();
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.ReadFormName( Reader : TReader );
begin
  FLoadFormName := Reader.ReadIdent();
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.WriteFormName( Writer : TWriter );
begin
  Writer.WriteIdent( GetRootName() );
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.ReadStateConnectionsData( Reader : TReader );
var
  ReadIdent       : String;
  ReadName        : String;
  AfterReadIdent  : String;
  AfterReadName   : String;
  AWriteLock      : ILockSection;

begin
  AWriteLock := WriteLock();
  CheckVirtualList();

  if( Reader.NextValue() = vaList ) then
    begin
    Reader.ReadListBegin();
    ReadName := Reader.ReadString();
    LinkToStateByName( ReadName );

    while( not Reader.EndOfList ) do
      begin
      AfterReadIdent := '';
      AfterReadName := '';
      ReadName := '';
      if( Reader.NextValue() = vaList ) then
        begin
        Reader.ReadListBegin();
        ReadIdent := Reader.ReadIdent();
        if( Reader.NextValue() = vaIdent ) then
          AfterReadIdent := Reader.ReadIdent(); 

      if( GOWIsStringValueType( Reader.NextValue() ) ) then
          ReadName := Reader.ReadString();

      if( GOWIsStringValueType( Reader.NextValue() ) ) then
          AfterReadName := Reader.ReadString();
          
        Reader.ReadListEnd();
        end

      else
        ReadName := Reader.ReadIdent();
        
      end;
      
    Reader.ReadListEnd();
    end

  else
    begin
    ReadName := Reader.ReadString();
    LinkToStateByName( ReadName );
    end;

  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.WriteStateConnectionsData( Writer : TWriter );
var
  I             : Integer;
  Ident         : String;
  IdentName     : String;

  PinRootName   : String;
  ThePinOwner   : TComponent;
  IsSaved       : Boolean;
  ExternalLink  : Boolean;
  AReadLock     : ILockSection;

begin
  AReadLock := ReadLock();

  if( FDispatcher = NIL ) then
    Exit;
    
  IsSaved := False;
  PinRootName := GetRootName();
  ThePinOwner := GetRoot();
  if( TOWStateDispatcher( FDispatcher ).FCountSaved = 0 ) then
    TOWStateDispatcher( FDispatcher ).ResetFormsSave(); // It's the first pin to save.

  if( ( ThePinOwner = NIL ) or ( not TOWStateDispatcher( FDispatcher ).IsFormSaved( ThePinOwner ))) then
    begin
    if( TOWStateDispatcher( FDispatcher ).IsCrosForm()) then
      begin
      Writer.WriteListBegin();
      Writer.WriteString( FDispatcher.Name );
      IsSaved := True;
      for I := 0 to FDispatcher.PinCount - 1 do
        begin
        if( FDispatcher.Pins[ I ] = NIL ) then
          ExternalLink := True

        else if( PinRootName <> FDispatcher.Pins[ I ].GetRootName() ) then
          ExternalLink := True

        else
          ExternalLink := False;

        if( ExternalLink ) then
          begin
          Ident := FDispatcher.Pins[ I ].GetFullIdentName( True );
          if( Ident = FDispatcher.Pins[ I ].GetFullName( True ) ) then
            Writer.WriteIdent( Ident )

          else
            begin
            IdentName := FDispatcher.Pins[ I ].GetFullName( True );
            Writer.WriteListBegin();
            Writer.WriteIdent( Ident );
            Writer.WriteString( IdentName );
            Writer.WriteListEnd();
            end;

          end;
        end;

      Writer.WriteListEnd();
      end;
    end;

//  if( FDispatcher[ FDispatcher.PinCount - 1 ] = Self ) then
  if( TOWStateDispatcher( FDispatcher ).FCountSaved = FDispatcher.PinCount ) then
    TOWStateDispatcher( FDispatcher ).ResetFormsSave() // It's the last pin. We are done with saving.

  else
    TOWStateDispatcher( FDispatcher ).AddFormSaved( ThePinOwner );

  if( not IsSaved ) then
    Writer.WriteString( FDispatcher.Name );

end;
//---------------------------------------------------------------------------
function TOWBasicPin.WriteNoStateListEntry( Writer : TWriter ) : Boolean;
begin
  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.ReadNoStateListEntry( Reader : TReader; Ident : String );
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.WriteListEntry( Writer : TWriter );
begin
  if( DoStateWrite() ) then
    begin
    // Write all the pin connections under the State indicator !
    Writer.WriteIdent( 'State' );
    Writer.WriteListBegin();
    WriteStateConnectionsData( Writer );
    WriteNoStateListEntry( Writer );
    Writer.WriteListEnd();
    end

  else if( not WriteNoStateListEntry( Writer ) ) then
    Writer.WriteIdent( 'nil' );

end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.ReadListEntry( Reader : TReader );
var
  Ident : String;
  AOldIgnoreDesignMode : Boolean;

begin
  AOldIgnoreDesignMode := GIgnoreDesignMode;
  GIgnoreDesignMode := True;
  if( Reader.NextValue() = vaList ) then
    ReadNoStateListEntry( Reader, '' )

  else if( not ( Reader.NextValue() in [ vaIdent, vaNil ] )) then
    ReadNoStateListEntry( Reader, '' )

  else
    begin
    Ident := Reader.ReadIdent();
    if( Ident = 'nil' ) then
      begin
      GIgnoreDesignMode := AOldIgnoreDesignMode;
      Exit;
      end;

    if( Ident = 'State' ) then
      begin
      Reader.ReadListBegin();
      ReadStateConnectionsData( Reader );
      if( Reader.NextValue() = vaList ) then
        ReadNoStateListEntry( Reader, '' )

      else if( Reader.NextValue() = vaIdent ) then
        begin
        Ident := Reader.ReadIdent();
        ReadNoStateListEntry( Reader, Ident );
        end;

      Reader.ReadListEnd();
      end

    else
      ReadNoStateListEntry( Reader, Ident );

    end;

  GIgnoreDesignMode := AOldIgnoreDesignMode;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.ConnectByStateAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin ) : Boolean;
begin
  Result := ConnectByStateAfterByType( OtherPin, NotifyAfterPin, OWNULLID );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.ConnectByStateAfterByType( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; const ADataType : TGUID ) : Boolean;
var
  AConverter      : IOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  AWriteLock      : ILockSection;

begin
  Result := False;
  AConverterClass := NIL;
  AConverter := NIL;
  AWriteLock := WriteLock();

  FImageCached := False;

  if( IsConnectedTo( OtherPin )) then
    begin
    if( not OwnerInLoading() ) then
      Exit;

    if( not CanConnectToInt( OtherPin, AConverter, AConverterClass, True, ADataType )) then
      Exit;

    if( OtherPin is TOWStatePin ) then
      DisconnectFromState();

    end;

  if( not CanConnectToInt( OtherPin, AConverter, AConverterClass, True, ADataType ) ) then // ???????
    Exit;

  if( FDispatcher <> NIL ) then
    begin
    if(( AConverter <> NIL ) or ( AConverterClass <> NIL )) then
      begin
      if( AConverterClass <> NIL ) then
        begin
        AConverter := AConverterClass.Create();
        FDispatcher.FFormatConverters.Add( AConverter );
        end;
        
      AConverter.GetInstance().FOutputPin.ConnectAfter( OtherPin, NotifyAfterPin );
      AConverter.GetInstance().FInputPin.FDispatcher := FDispatcher;
      FDispatcher.AddPin( AConverter.GetInstance().FInputPin, OtherPin );
//      PEntry.ConnectionPin := AConverter.FInputPin;
      AConverter.GetInstance().FInputPin.FConnectionSourcePin := Self; // AConverter.FOutputPin;
      TOWSinkPin( OtherPin ).FRealSourcePin := Self;
      TOWSinkPin( OtherPin ).FIntRealSourcePin := Self;
//      TOWSinkPin( AConverter.FInputPin ).FConnectionSourcePin := AConverter.FOutputPin;
      OtherPin.FDispatcher := FDispatcher;
      OWNotifyConnected( OtherPin, FDispatcher );
      OWNotifyChangePin( OtherPin );
      Result := True;
      end
      
    else
      Result := OtherPin.ConnectToState( FDispatcher );
      
    UpdateStateValue();
    OWNotifyChangePin( Self );
    end

  else if( OtherPin.FDispatcher <> NIL ) then
    begin
    Result := ConnectToState( OtherPin.FDispatcher );
    UpdateStateValue();
    OWNotifyChangePin( Self );
    end

  else
    begin
    FDispatcher := CreateDispatcher( GetRoot(), GetOwnerComponent() is TOWFormatConverter );

    FDispatcher.AddPin( Self, Self );
    if( AConverterClass <> NIL ) then
      begin
      AConverter := AConverterClass.Create();
      FDispatcher.FFormatConverters.Add( AConverter );
      end;

    if( AConverter <> NIL ) then
      begin
      AConverter.GetInstance().FOutputPin.ConnectAfterByType( OtherPin, NotifyAfterPin, ADataType );
      AConverter.GetInstance().FInputPin.FDispatcher := FDispatcher;
      FDispatcher.AddPin( AConverter.GetInstance().FInputPin, OtherPin );
//      PEntry.ConnectionPin := AConverter.FInputPin;
      AConverter.GetInstance().FInputPin.FConnectionSourcePin := Self; // AConverter.FOutputPin;
      TOWSinkPin( OtherPin ).FRealSourcePin := Self;
      TOWSinkPin( OtherPin ).FIntRealSourcePin := Self;
//      TOWSinkPin( AConverter.FInputPin ).FConnectionSourcePin := AConverter.FOutputPin;
      OtherPin.FDispatcher := FDispatcher;
      end

    else
      begin
      OtherPin.FDispatcher := FDispatcher;
      FDispatcher.AddPin( OtherPin, OtherPin );
      end;

//    OWNotifyAddDispatcher( FDispatcher );
    UpdateStateValue();
    OWNotifyConnected( OtherPin, FDispatcher );
    OWNotifyConnected( Self, FDispatcher );
    OWNotifyChangePin( OtherPin );
    OWNotifyChangePin( Self );
    Result := True;
    end;

end;
//---------------------------------------------------------------------------
function TOWBasicPin.CreateDispatcher( Owner : TComponent; AFromConverter : Boolean ) : TOWStateDispatcher;
begin
  Result := TOWStateDispatcher.Create( Owner, AFromConverter );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.CreateNamedDispatcher( Name : String; DesignTime : Boolean; AFromConverter : Boolean ) : TOWStateDispatcher;
begin
  Result := TOWStateDispatcher.CreateNamed( Name, DesignTime, AFromConverter );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.OwnerInDesigning( ACheckForDispatchers : Boolean ) : Boolean;
begin
  Result := FInDesignMode;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.FindConnectionID( const OtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean; ADataType : TGUID ) : TGUID;
begin
  Result := OWNULLID;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.NotifyDispatcher( const Operation : IOWNotifyOperation; State : TOWNotifyState; const APinToNotify : TOWBasicPin ) : TOWNotifyResult;
begin
  Result := [];
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWPin.Create( AOwner: TComponent );
var
  AWriteLock : ILockSection;
  
begin
  inherited Create( NIL );
  AWriteLock := WriteLock();
  FOwner := AOwner;
  PinsNeedRefresh := True;
  FInSending := 0;
  GetRootName();
  PopulateTypes( OWDataTypeAttribute, Notification, False );
end;
//---------------------------------------------------------------------------
constructor TOWPin.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock );
var
  AWriteLock : ILockSection;

begin
  inherited Create( AOwnerLock );
  AWriteLock := WriteLock();

  FOwner := AOwner;
  PinsNeedRefresh := True;
  FInSending := 0;
  GetRootName();
  PopulateTypes( OWDataTypeAttribute, Notification, False );
end;
//---------------------------------------------------------------------------
procedure TOWPin.AfterConstruction();
begin
  inherited;
  TInterface.IfSupports<IOWComponentPinNotify>( FOwner,
      procedure( AIntf : IOWComponentPinNotify )
      begin
        AIntf.PinAdded( Self );
      end
    );

end;
//---------------------------------------------------------------------------
procedure TOWPin.BeforeDestruction();
begin
  TInterface.IfSupports<IOWComponentPinNotify>( FOwner,
      procedure( AIntf : IOWComponentPinNotify )
      begin
        AIntf.PinRemoved( Self );
      end
    );

  inherited;
end;
//---------------------------------------------------------------------------
procedure TOWPin.PopulateTypes( AAttributeClass : TOWBasicDataTypeAttributeClass; ASubmit : TOWSubmit; AOverrride : Boolean );
begin
  ClassType().TypeInfo.AccessAttributes.GetAll<OWBasicDataTypeAttribute>.Query().ForEach(
      procedure( AAttribute : OWBasicDataTypeAttribute )
      begin
        if( AAttribute is AAttributeClass ) then
          AddType( AAttribute.Value, ASubmit, AOverrride );

      end
    );

end;
//---------------------------------------------------------------------------
function TOWPin.RootInDestroying() : Boolean;
var
  AWriteLock : ILockSection;
  
begin
  AWriteLock := WriteLock();

  if( GetRoot() <> NIL ) then
    Result := ( csDestroying in GetRoot().ComponentState )

  else
    Result := False;

end;
//---------------------------------------------------------------------------
function TOWPin.Notification( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
begin
  Result := [];
end;
//---------------------------------------------------------------------------
function TOWPin.OwnerInLoading() : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  
  if( FOwner <> NIL ) then
    Result := ( csLoading in FOwner.ComponentState )

  else
    Result := False;

end;
//---------------------------------------------------------------------------
function TOWPin.OwnerInDesigning( ACheckForDispatchers : Boolean ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( GIgnoreDesignMode ) then
    if( not ACheckForDispatchers ) then
      Exit( False );

  if( FOwner <> NIL ) then
    Exit( csDesigning in FOwner.ComponentState );

  Result := FInDesignMode;
end;
//---------------------------------------------------------------------------
function TOWPin.GetNameInt() : String;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( FOverrideName <> '' ) then
    Exit( FOverrideName );

  Result := OWValueToString( Self, '.', False, False );
  Delete( Result, 1, Pos( '.', Result ) );
end;
//---------------------------------------------------------------------------
procedure TOWPin.SetOwnerComponent( AComponent : TComponent );
var
  AWriteLock  : ILockSection;
  I           : Integer;
  J           : Integer;
  AFound      : Boolean;

begin
  AWriteLock := WriteLock();
  if( FOwner = AComponent ) then
    Exit;

  OWNotifyRemovePin( Self, False );

  FOwner := AComponent;
  if( FOwner <> NIL ) then
    begin
    FRoot := NIL;
    FLoadName := '';
    end;

  if( AComponent <> NIL ) then
    if( csDesigning in AComponent.ComponentState ) then
      for I := 0 to ConnectedDispatcherCount - 1 do
        if( GRunDispatchers.Query().Contains( ConnectedDispatcher[ I ] ) ) then
          begin
          AFound := False;
          for J := GDesignDispatchers.Count - 1 downto 0 do
            if( GDesignDispatchers[ J ].Name = ConnectedDispatcher[ I ].Name ) then
              begin
              ConnectToState( GDesignDispatchers[ J ] );
              AFound := True;
              Break;
              end;

          if( not AFound ) then
            begin
            GRunDispatchers.RemoveOne( ConnectedDispatcher[ I ] );
            GDesignDispatchers.Add( ConnectedDispatcher[ I ] )
            end;
          end;

//  GetRootName();
  OWNotifyAddPin( Self );
end;
//---------------------------------------------------------------------------
procedure TOWPin.SetRootAndName( ARoot : TComponent; AName : String; AInDesignMode : Boolean );
begin
  FRoot := ARoot;
  FLoadName := AName;
  FInDesignMode := AInDesignMode;
end;
//---------------------------------------------------------------------------
function TOWPin.GetOwnerComponent() : TComponent;
begin
  Result := FOwner;
end;
//---------------------------------------------------------------------------
function TOWPin.GetFullName( IncludeRootForm : Boolean ) : String;
begin
  Result := OWValueToString( Self, '.', IncludeRootForm, False );
end;
//---------------------------------------------------------------------------
function TOWPin.GetFullIdentName( IncludeRootForm : Boolean ) : String;
begin
  Result := OWValueToString( Self, '.', IncludeRootForm, True );
end;
//---------------------------------------------------------------------------
function TOWPin.GetDataTypesCount() : Integer;
begin
  Result := FStreamType.Count;
end;
//---------------------------------------------------------------------------
function TOWPin.GetDataType( Index : Integer ) : TGUID;
begin
  Result := FStreamType[ Index ].ID;
end;
//---------------------------------------------------------------------------
function TOWPin.GetSaveName() : String;
var
  AReadLock : ILockSection;
  
begin
  AReadLock := ReadLock();

  Result := OWValueToString( Self, '.', False, True );
  Delete( Result, 1, Pos( '.', Result ) );
end;
//---------------------------------------------------------------------------
function TOWPin.GetRoot() : TComponent;
begin
  if( FRoot <> NIL ) then
    Result := FRoot

  else
    Result := inherited GetRoot();

end;
//---------------------------------------------------------------------------
function TOWPin.GetRootName() : String;
var
  ARoot : TComponent;

begin
  if( FRoot <> NIL ) then
    begin
    FLastRootName := FRoot.Name;
    Result := FLastRootName;
    end

  else if( Owner <> NIL ) then
    begin
    if( Owner.Owner <> NIL ) then
      begin
      ARoot := GetRoot();
      if( ARoot <> NIL ) then
        FLastRootName := ARoot.Name

      end;

    Result := FLastRootName;
    end

  else
    Result := inherited GetRootName();

end;
//---------------------------------------------------------------------------
function TOWPin.ReadLock() : ILockSection;
begin
  Result := TSimpleReadLockSection.Create( FIntLock, FOwnerLock );
//  if( Result <> NIL ) then
//    if( FIntLock.Instance().FPairLock <> NIL ) then
//      FIntLock.Instance().FPairUnlock := FIntLock.Instance().FPairLock.UnlockAll();

end;
//---------------------------------------------------------------------------
function TOWPin.WriteLock() : ILockSection;
begin
  Result := TSimpleWriteLockSection.Create( FIntLock, FOwnerLock );
//  if( Result <> NIL ) then
//    if( FIntLock.Instance().FPairLock <> NIL ) then
//      FIntLock.Instance().FPairUnlock := FIntLock.Instance().FPairLock.UnlockAll();

end;
//---------------------------------------------------------------------------
function TOWPin.NotifyDispatcher( const Operation : IOWNotifyOperation; State : TOWNotifyState; const APinToNotify : TOWBasicPin ) : TOWNotifyResult;
var
  I               : Integer;
  DataTypeID      : TGUID;
  ASubmitFunction : TOWSubmit;
  ADispatcher     : TOWBasicStateDispatcher;
  APin            : TOWBasicPin;
  AReadLock       : ILockSection;
  ADestroyLock    : IOWDestroyLockSection;
  AConverter      : IOWFormatConverter;

begin
  AReadLock := ReadLock();

  Result := [];
  if( FDispatcher = NIL ) then
    Exit;

  ADispatcher := FDispatcher;
  AReadLock := NIL;
  
  for I := 0 to ADispatcher.PinCount - 1 do
    begin
    AReadLock := ADispatcher.ReadLock();
    if( I >= ADispatcher.PinCount ) then // Just in case a pin has been deleted from the dispatcher
      Break;

    if( APinToNotify <> NIL ) then
      begin
      if( APinToNotify <> ADispatcher[ I ] ) then
        Continue

      else
        State := State + [nsLastIteration];

      end

    else if( I >= ADispatcher.PinCount - 1 ) then
      State := State + [nsLastIteration];
//      State := State + []

//    else

    if( ( I = ADispatcher.PinCount - 2 ) and ( ADispatcher[ ADispatcher.PinCount - 1 ] = Self ) ) then
      State := State + [nsLastIteration];

    if( ADispatcher[ I ] <> Self ) then // Don't send to my self
      begin
      DataTypeID := GetStateSubmitID( ADispatcher.ConnectionPins[ I ] );
      ASubmitFunction := GetSubmitFunctionID( DataTypeID );
      APin := ADispatcher.ConnectionPins[ I ];
      if( APin.GetOwnerComponent() is TOWFormatConverter ) then
        APin.GetOwnerComponent().GetInterface( IOWFormatConverter, AConverter ); // Hold the converter while the notification is sent

      AReadLock := NIL;
//      AUnlock := NIL;
      ADestroyLock := FDestroyLock.Lock();
      if( ADestroyLock <> NIL ) then
        if( Assigned( ASubmitFunction )) then
          APin.FOwnerLock.ExecuteWrite(
              procedure()
              begin
                ASubmitFunction( APin, @DataTypeID, Operation, State );
              end
            );

      AReadLock := NIL;      
      end;
    end;

  AReadLock := NIL;
//  AUnlock := NIL;
////  ReorderChangedData(); { TODO: Reorder changed data }
end;
//---------------------------------------------------------------------------
function TOWPin.NotifyPin( const APin : TOWBasicPin; Operation : IOWNotifyOperation ) : TOWNotifyResult;
begin
  Result := NotifyDispatcher( Operation, [], APin );
end;
//---------------------------------------------------------------------------
function TOWPin.Notify( Operation : IOWNotifyOperation ) : TOWNotifyResult;
begin
  Result := NotifyDispatcher( Operation, [], NIL );
end;
//---------------------------------------------------------------------------
function TOWPin.GetStateSubmitID( const OtherPin : TOWBasicPin ) : TGUID;
var
  AConverter      : IOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  
begin
  Result := FindConnectionID( OtherPin, AConverter, AConverterClass, True, OWNULLID );
end;
//---------------------------------------------------------------------------
procedure TOWPin.CheckVirtualList();
var
  AUnloadedPin : TOWUnloadedPin;
  
begin
  try
    repeat
      AUnloadedPin := TOWUnloadedPin( GOWUnloadedPins.GetByIdentName( GetRoot(), GetFullName( True ) ));
      if( AUnloadedPin = NIL ) then
        AUnloadedPin := TOWUnloadedPin( GOWUnloadedPins.GetByIdentName( GetRoot(), GetFullName( False ) ));

      if( AUnloadedPin = NIL ) then
        AUnloadedPin := TOWUnloadedPin( GOWUnloadedPins.GetByIdentName( GetRoot(), GetFullIdentName( True ) ));

      if( AUnloadedPin = NIL ) then
        AUnloadedPin := TOWUnloadedPin( GOWUnloadedPins.GetByIdentName( GetRoot(), GetFullIdentName( False ) ));

      if( AUnloadedPin <> NIL ) then
        AUnloadedPin.PopulatePinAndDestroy( Self )

    until( AUnloadedPin = NIL );
    
  except
    end;
  
end;
//---------------------------------------------------------------------------
procedure TOWPin.DefineProperties(Filer: TFiler);
begin
  inherited;
  Filer.DefineProperty( 'Form', ReadFormName, WriteFormName, DoFormWrite() );
  Filer.DefineProperty( 'State', ReadStateConnectionsData, WriteStateConnectionsData, DoStateWrite());
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWStreamPin.IsConnectedByConverterTo( const OtherPin : TOWBasicPin ) : Boolean;
begin
  // Fixes a misterious internal bug in the 64 bit Delphi compiler!
  Result := inherited;
end;
//---------------------------------------------------------------------------
procedure TOWStreamPin.UpStreamFillPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  AItem     : TOWPinTypeEntry;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  for AItem in FStreamType do
    PossibleStreamTypes.AddType( AItem.ID, AItem.SubmitFunction, True );
    
end;
//---------------------------------------------------------------------------
function TOWStreamPin.DownStreamQueryPossybleInterface( const IID: TGUID ) : HResult;
begin
  Result := S_OK;
end;
//---------------------------------------------------------------------------
procedure TOWStreamPin.DownStreamFillPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
//procedure TOWPin.FillPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  AItem     : TOWPinTypeEntry;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  for AItem in FStreamType do
    PossibleStreamTypes.AddType( AItem.ID, AItem.SubmitFunction, True );

end;
//---------------------------------------------------------------------------
procedure TOWStreamPin.BackPopulateStreamChains( AChain : TOWObjectListList; AList : TOWObjectList );
begin
  AList.Add( Self )
end;
//---------------------------------------------------------------------------
function TOWStreamPin.UpStreamQueryPossybleInterface( const IID: TGUID ) : HResult;
begin
  Result := S_OK;
//  Result := DownStreamQueryPossybleInterface( IID );
end;
//---------------------------------------------------------------------------
procedure TOWStreamPin.RemoveNotifyEntry( AEntry : IOWNotifyPinEntry );
begin
  FPointsSection.Enter();
  try
    FConnectionPoints.RemoveAll( AEntry );
  except
    end;
  FPointsSection.Leave();
end;
//---------------------------------------------------------------------------
procedure TOWStreamPin.AddNotifyEntry( AEntry : IOWNotifyPinEntry );
begin
  FPointsSection.Access.Execute(
      procedure()
      begin
        FConnectionPoints.Add( AEntry );
      end
    );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWPin.OrderStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted );
var
  I         : Integer;
  AItem     : TOWPinTypeEntry;
  CalcIndex : Integer;

var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  
  if( PossibleStreamTypes.Ordered ) then
    Exit;

  CalcIndex := 0;
  for AItem in FStreamType do
    for I := 0 to PossibleStreamTypes.Count - 1 do
      if( PossibleStreamTypes[ I ].ID = AItem.ID ) then
        begin
        if( CalcIndex <> I ) then
          PossibleStreamTypes.Exchange( CalcIndex, I );

        Inc( CalcIndex );
        end;

  PossibleStreamTypes.Ordered := True;
end;
//---------------------------------------------------------------------------
procedure TOWPin.AddType( ID : TGUID; AOverrride : Boolean );
var
  AWriteLock : ILockSection;
  
begin
  AWriteLock := WriteLock();
  
  FStreamType.AddType( ID, DefaultNotifyDispatcher, AOverrride );
end;

//---------------------------------------------------------------------------
procedure TOWPin.AddType( ID : TGUID; ASubmitFunction : TOWSubmit; AOverrride : Boolean );
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();

  FStreamType.AddType( ID, ASubmitFunction, AOverrride );
end;
//---------------------------------------------------------------------------
procedure TOWPin.RemoveType( ID : TGUID );
var
  AWriteLock : ILockSection;
  
begin
  AWriteLock := WriteLock();
  
  FStreamType.RemoveType( ID );
end;
//---------------------------------------------------------------------------
procedure TOWPin.ClearTypes();
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();

  FStreamType.Clear();
end;
//---------------------------------------------------------------------------
function TOWPin.GetConnectionID( const OtherPin : TOWBasicPin ) : TGUID;
begin
  Result := GetStateSubmitID( OtherPin );
end;
//---------------------------------------------------------------------------
function TOWPin.GetConnectionName( const OtherPin : TOWBasicPin ) : String;
begin
  Result := GetLinkNameID( GetConnectionID( OtherPin ));
end;
//---------------------------------------------------------------------------
function TOWPin.GetPrimaryConnectionID() : TGUID;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  Result := OWNULLID;
  if( IsConnected() ) then
    if( FDispatcher.PinCount > 0 ) then
      Result := GetConnectionID( FDispatcher.Pins[ 0 ] );

end;
//---------------------------------------------------------------------------
function TOWPin.DefaultNotifyDispatcher( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  AEntry        : IOWStreamTypeEntry;
  ADataTypeGUID : PGUID;
  AReadLock     : ILockSection;
  ASubmit       : TOWGlobalSubmit;

begin
  AReadLock := ReadLock();

  ADataTypeGUID := PGUID( DataTypeID );

  if( GOWStreamTypes.GetValue( ADataTypeGUID^, AEntry )) then
    if( Assigned( AEntry.GetInstance().SendFunction )) then
      begin
      ASubmit := AEntry.GetInstance().SendFunction;
      AReadLock := NIL;
      Exit( ASubmit( Self, Handler, DataTypeID, Operation, State ));
      end;

  Result := [];
end;
//---------------------------------------------------------------------------
function TOWPin.GetSubmitFunctionID( const IID : TGUID ) : TOWSubmit;
var
  AItem     : TOWPinTypeEntry;
  AReadLock : ILockSection;

begin
  Result := NIL;
  if( IID <> OWNULLID ) then
    begin
    AReadLock := ReadLock();
    for AItem in FStreamType do
      if( AItem.ID = IID ) then
        begin
        Result := AItem.SubmitFunction;
        if( not Assigned( Result )) then
          Result := DefaultNotifyDispatcher;

        Exit;
        end;

    end;

end;
//---------------------------------------------------------------------------
function TOWPin.GetLinkNameID( const IID : TGUID ) : String;
begin
  Result := '';
  if( IID <> OWNULLID ) then
    Result := OWGetStreamTypeFromID( IID );

end;
//---------------------------------------------------------------------------
function TOWPin.CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean; ADataType : TGUID ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := False;
  if( not( FOwner is TOWFormatConverter ) and not( OtherPin.Owner is TOWFormatConverter )) then
    begin 
    if( OtherPin.OwnerInDesigning( False ) and ( not OwnerInDesigning( False ))) then
      Exit;

    if( ( not ( OtherPin.OwnerInDesigning( False ) )) and OwnerInDesigning( False ) ) then
      Exit;
      
    end;

  if( OtherPin is TOWStatePin ) then
    Result := not IsEqualGUID( FindConnectionID( OtherPin, AConverter, AConverterClass, UseConverters, ADataType ), OWNULLID )

  else if( OtherPin is TOWUnloadedPin ) then
    Result := OtherPin.CanConnectTo( Self, UseConverters )

  else if( FOwner = NIL ) then
    Result := True

  else if( csLoading in FOwner.ComponentState ) then
    Result := True;

//  Result := IsCompatible( OtherPin );
end;
//---------------------------------------------------------------------------
function TOWPin.IsCompatible( const OtherPin : TOWBasicPin; UseConverters : Boolean ) : Boolean;
var
  AConverter      : IOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  AStatePin       : TOWStatePin;
  AReadLock       : ILockSection;

begin
  AReadLock := ReadLock();

  if( not ( OtherPin is TOWStatePin )) then
    Exit( False );

  AStatePin := TOWStatePin( OtherPin );

  Result := not IsEqualGUID( FindConnectionID( AStatePin, AConverter, AConverterClass, UseConverters, OWNULLID ), OWNULLID );
  if( Result ) then
    Exit( not IsEqualGUID( AStatePin.FindConnectionID( Self, AConverter, AConverterClass, UseConverters, OWNULLID ), OWNULLID ));

end;
//---------------------------------------------------------------------------
function TOWPin.FindConnectionID( const OtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean; ADataType : TGUID ) : TGUID;
var
  Unknown         : IUnknown;
  I               : Integer;
  J               : Integer;
  AReadLock       : ILockSection;
  AId             : TGUID;
  AIntfTable      : PInterfaceTable;
  AClass          : TClass;

begin
  AReadLock := ReadLock();
  for I := FStreamType.Count - 1 downto 0 do
    if( Supports( OtherPin, FStreamType[ I ].ID, Unknown )) then
      begin
      if( ADataType = OWNULLID ) then
        Exit( FStreamType[ I ].ID );

      if( FStreamType[ I ].ID = ADataType ) then
        Exit( FStreamType[ I ].ID );

      end;

  if( UseConverters ) then
    if( OtherPin.GetPinType() in [ ptSink, ptMultiSink ] ) then
      begin
      if( FDispatcher <> NIL ) then
        for I := FDispatcher.FFormatConverters.Count - 1 downto 0 do
          begin
          AId := FDispatcher.FFormatConverters[ I ].GetInstance().FOutputPin.DownStreamFindConnectionID( OtherPin, False, False, AConverter, AConverterClass, ADataType );
          if( AId <> OWNULLID ) then
            if( Supports( OtherPin, AId, Unknown )) then
              begin
              AConverter := FDispatcher.FFormatConverters[ I ].GetInstance();
              Exit( AId );
              end;

          end;

      for J := FStreamType.Count - 1 downto 0 do
        if(( ADataType = OWNULLID ) or ( FStreamType[ J ].ID = ADataType )) then
          begin
          AClass := OtherPin.ClassType();
          while( AClass <> NIL ) do
            begin
            AIntfTable := AClass.GetInterfaceTable();
            if( AIntfTable <> NIL ) then
              for I := 0 to AIntfTable.EntryCount - 1 do
                if( OWGetConverter( FStreamType[ J ].ID, AIntfTable.Entries[ I ].IID, AConverterClass )) then
                  Exit( FStreamType[ J ].ID );

            AClass := AClass.ClassParent;
            end;
          end;

      end;

  Result := OWNULLID;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSourcePin.Create( AOwner: TComponent; AMaxConnections : Integer );
var
  AWriteLock : ILockSection;

begin
  inherited Create( AOwner );
  AWriteLock := WriteLock();
  FMaxConnections := AMaxConnections;
  FInDependOn := False;
  FFunctionSources := TOWFunctionSinkPinList.Create( Self );
  FDataTypeSources := TOWDataTypeSinkPinList.Create( Self );
end;
//---------------------------------------------------------------------------
constructor TOWSourcePin.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; AInputOwnerLock : IBasicLock; AMaxConnections : Integer );
var
  AWriteLock : ILockSection;

begin
  inherited CreateLock( AOwner, AOwnerLock );
  FInputOwnerLock := AInputOwnerLock;
  AWriteLock := WriteLock();
  FMaxConnections := AMaxConnections;
  FInDependOn := False;
  FFunctionSources := TOWFunctionSinkPinList.Create( Self );
  FDataTypeSources := TOWDataTypeSinkPinList.Create( Self );
end;
//---------------------------------------------------------------------------
destructor TOWSourcePin.Destroy();
var
  ADestroyLock : IOWDestroyLockSection;
  AWriteLock   : ILockSection;

begin
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();
  Disconnect();

  FDataTypeSources := NIL;
  FFunctionSources := NIL;

  ADestroyLock := NIL;
  AWriteLock := NIL;
  inherited;
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.ReadConnectionsData( Reader : TReader );
var
  ReadIdent       : String;
  ReadIdentAfter  : String;
  ReadName        : String;
  AWriteLock      : ILockSection;
  ABasePin        : TOWBasicPin;
  ABasePinAfter   : TOWBasicPin;

begin
  AWriteLock := WriteLock();
  CheckVirtualList();
  
  Reader.ReadListBegin();
  while not Reader.EndOfList do
    begin
    ReadIdentAfter := '';
    ABasePinAfter := NIL;
    if( Reader.NextValue() = vaList ) then
      begin
      Reader.ReadListBegin();
      ReadIdent := Reader.ReadIdent();
      if( Reader.NextValue() = vaIdent ) then
        begin
        ReadIdentAfter := Reader.ReadIdent();
        if( not IsPreviewPin() ) then
          begin
          ApplyFormName( ReadIdentAfter );
          ABasePinAfter := GOWPins.GetByNameCreate( GetRoot(), ptSink, ReadIdentAfter, ReadIdentAfter, GetFullName( True ) );
          end;
        end;

      ReadName := ReadIdent;
      if( GOWIsStringValueType( Reader.NextValue() ) ) then
        ReadName := Reader.ReadString();
       
//      TryLinkTo( Reader.Root, ReadIdent, ReadName, ReadIdentAfter, True );

      Reader.ReadListEnd();
      end

    else
      begin
      ReadIdent := Reader.ReadIdent();
      ReadName := ReadIdent; 
//      TryLinkTo( Reader.Root, ReadIdent, ReadIdent, '', True );
      end;

    if( not IsPreviewPin() ) then
      begin
      ApplyFormName( ReadIdent );
      ApplyFormName( ReadName );
      ABasePin := GOWPins.GetByNameCreate( GetRoot(), ptSink, ReadIdent, ReadName, GetFullName( True ) );
      IntConnectAfter( ABasePin, ABasePinAfter, OWNULLID );
      end;
    end;

  Reader.ReadListEnd();

  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.TryLinkToList( Root : TComponent; SinkIdents : TStringList; SinkNames : TStringList );
var
  I : Integer;
  
begin
  for I := 0 to SinkNames.Count - 1 do
    TryLinkTo( Root, SinkIdents.Strings[ I ], SinkNames.Strings[ I ], '', True );
  
end;
//---------------------------------------------------------------------------
function TOWSourcePin.TryLinkTo( Root : TComponent; SinkIdent : String; SinkName : String; ReadIdentAfter : String; SaveForm : Boolean ) : Boolean;
var
  Values          : TStringList;
  APin            : TOWBasicPin;
  I               : Integer;
  RootName        : String;
  MyRoot          : TComponent;
  PinValueFilters : TOWPinValueFilters;

  AWriteLock      : ILockSection;

begin
  if( SaveForm ) then
    PinValueFilters := [ pvoFullList, pvoSaveValue ]

  else
    PinValueFilters := [ pvoFullList ];

  Result := True;
  if( SinkIdent = '' ) then
    begin
    if( not SaveForm ) then
      Disconnect();

    Exit;
    end;

  AWriteLock := WriteLock();

  Result := False;

  Values := TStringList.Create();
  try
    MyRoot := GetRoot();
    if( ( MyRoot <> Root ) and ( Root <> NIL )) then
      begin
      RootName := Root.Name;
      if( not OWGetPinsValueListSingle( Values, Root, Self, '.', RootName, PinValueFilters )) then
        Result := True;

      end

    else
      if( not OWGetPinsValueList( Values, Self, '.', PinValueFilters )) then
        Result := True;

    for I := 0 to Values.Count - 1 do
      begin
      if( Values.Strings[ I ] = SinkIdent ) then
        begin
        APin := TOWBasicPin( Values.Objects[ i ] );
        Connect( APin );
        Result := True;
        Break;
        end;

      end;

  finally
    Values.Free();

  end;

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.SetNotifyAfterByName( const APin : TOWPin; const AfterPinName : String );
var
  AAfterPin  : TOWBasicPin;
  AEntry     : TOWPinEntry;
  
begin
  AAfterPin := NIL;
  for AEntry in FSinkPins do
    if( ( AEntry.RealPin.GetFullName( False ) = AfterPinName ) or ( AEntry.RealPin.GetFullName( True ) = AfterPinName )) then
      begin
      AAfterPin := AEntry.RealPin;
      Break;
      end;

  if( AAfterPin <> NIL ) then
    for AEntry in FSinkPins do
      if( AEntry.RealPin = APin ) then
        begin
        AEntry.NotifyAfterPin := AAfterPin;
        Break;
        end;

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.WriteConnectionsData( Writer : TWriter );
var
  I          : Integer;
  Ident      : String;
  IdentAfter : String;
  IdentName  : String;
  AReadLock  : ILockSection;

begin
  AReadLock := ReadLock();
  Writer.WriteListBegin();
  for I := 0 to SinkCount - 1 do
    begin
    if( Sinks[ I ].IsDebugPin()) then
      Continue;

    Ident := Sinks[ I ].GetFullIdentName( True ); // GetLinkStr( I, True );
    IdentName := Sinks[ I ].GetFullName( True ); // GetLinkStr( I, False );
    if( Ident = IdentName ) then
      begin
      if( FSinkPins[ I ].NotifyAfterPin <> NIL ) then
        begin
        IdentAfter := FSinkPins[ I ].NotifyAfterPin.GetFullIdentName( True ); // GetLinkAfterStr( I );

        Writer.WriteListBegin();
        Writer.WriteIdent( Ident );
        Writer.WriteIdent( IdentAfter );
        Writer.WriteListEnd();
        end

      else
        Writer.WriteIdent( Ident );

      end

    else
      begin
      Writer.WriteListBegin();
      if( FSinkPins[ I ].NotifyAfterPin <> NIL ) then
        begin
        IdentAfter := FSinkPins[ I ].NotifyAfterPin.GetFullIdentName( True ); // GetLinkAfterStr( I );
//        IdentAfter := GetLinkAfterStr( I );

//        Writer.WriteListBegin();
        Writer.WriteIdent( Ident );
        Writer.WriteIdent( IdentAfter );
//        Writer.WriteListEnd();
        end

      else
        Writer.WriteIdent( Ident );

      Writer.WriteString( IdentName );
      Writer.WriteListEnd();
      end;

    end;

  Writer.WriteListEnd();
end;
//---------------------------------------------------------------------------
function TOWSourcePin.DoWrite() : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := ( GetSinkCount() > 0 );
end;
//---------------------------------------------------------------------------
function TOWSourcePin.DoFormWrite() : Boolean;
begin
  Result := (( inherited DoFormWrite() ) or DoWrite() );
end;
//---------------------------------------------------------------------------
function TOWSourcePin.WriteNoStateListEntry( Writer : TWriter ) : Boolean;
begin
  Result := DoWrite(); 
  if( Result ) then
    begin
    Writer.WriteIdent( 'Sinks' );
    WriteConnectionsData( Writer );
    end;
    
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.ReadNoStateListEntry( Reader : TReader; Ident : String );
begin
//  if( Ident = 'Sinks' ) then
  ReadConnectionsData( Reader );
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.DefineProperties(Filer: TFiler);
begin
  inherited;
  Filer.DefineProperty( 'SinkPins', ReadConnectionsData, WriteConnectionsData, DoWrite());
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetLinkStr( Item : Integer ) : String;
var
  AddRoot   : Boolean;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  AddRoot := False;
  if( SinkCount > 0 ) then
    AddRoot := Sinks[ Item ].GetRoot() <> GetRoot();

//  Result := Sinks[ Item ].GetFullName( ( AddRoot ) or (( Sinks[ Item ].Owner = NIL ) or ( Sinks[ Item ].Owner.Owner = NIL )) );
  Result := Sinks[ Item ].GetFullName( AddRoot );
{
  if(( AddRoot ) and ( Sinks[ Item ].Owner.Owner = NIL )) then
    Result := Sinks[ Item ].GetRootName() + '.' + OWValueToString( Sinks[ Item ], '.', False, False )

  else
    Result := OWValueToString( Sinks[ Item ], '.', AddRoot, SaveFormat );
}
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.IntConnect( const SinkPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; const ADataType : TGUID );
var
  PEntry : TOWPinEntry;
  AWriteLock : ILockSection;
  AConverterClass : TOWFormatConverterClass;
  AConverter : IOWFormatConverter;

begin
  AWriteLock := WriteLock();

  if( FMaxConnections > 0 ) then
    if( SinkCount >= FMaxConnections ) then
      if( not IsConnectedTo( SinkPin )) then
        DisconnectFrom( Sinks[ 0 ] );

  PEntry := FSinkPins.Add();
  PEntry.RealPin := SinkPin; 
  PEntry.NotifyAfterPin := NotifyAfterPin;
  PEntry.ConnectionPin := NIL;
  AConverter := NIL;
  PEntry.ConnectedID := DownStreamFindConnectionID( SinkPin, True, True, AConverter, AConverterClass, ADataType );
  PEntry.ModificationLevel := 0;
  PEntry.SubmitFunction := NIL;
  if( AConverterClass <> NIL ) then
    begin
    AConverter := AConverterClass.Create();
    FFormatConverters.Add( AConverter );
    end;

  if( AConverter <> NIL ) then
    begin
    PEntry.ConnectionPin := AConverter.GetInstance().FInputPin;
    AConverter.GetInstance().FOutputPin.ConnectAfter( SinkPin, NotifyAfterPin );
    TOWSinkPin( SinkPin ).FConnectionSourcePin := AConverter.GetInstance().FOutputPin;
    end

  else
    PEntry.ConnectionPin := SinkPin;

  PEntry.SubmitFunction := GetSubmitFunctionID( PEntry.ConnectedID );
  PEntry.ModificationLevel := 0;
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.IntDisconnect( const OtherPin : TOWBasicPin; DesignFormClosing : Boolean );
var
  Index         : Integer;
  I             : Integer;
  PEntry        : TOWPinEntry;
  LinkIdent     : String;
  LinkIdentName : String;
  ADestroyLock  : IOWDestroyLockSection;
  AWriteLock    : ILockSection;
  ATmpPin       : TOWUnloadedPin;

begin
  if( FInDisconnect ) then
    Exit;

  ADestroyLock := FDestroyLock.DestroyLock();
  AWriteLock := WriteLock();
  FInDisconnect := True;
  FImageCached := False;

  if( DesignFormClosing ) then
    if( not RootInDestroying()) then
      begin
      LinkIdent := OtherPin.GetFullIdentName( True ); //GetLinkStr( Index, True ); //OWValueToString( FSourcePin, '.', True, True );
      LinkIdentName := OtherPin.GetFullName( True ); // GetLinkStr( Index, False );
      ATmpPin := TOWUnloadedPin.Create( GetRoot(), ptSink, LinkIdent, LinkIdentName, GetFullName( True ) );
      Connect( ATmpPin );
      end;

  FInDisconnect := False;

  for Index := GetSinkCount() - 1 downto 0 do
    begin
    PEntry := FSinkPins[ Index ];
    if( PEntry.RealPin = OtherPin ) then
      begin
      if( PEntry.RealPin <> PEntry.ConnectionPin ) then
        for I := FFormatConverters.Count - 1 downto 0 do
          begin
          FFormatConverters[ I ].GetInstance().FOutputPin.IntDisconnect( OtherPin, False );
          if( not FFormatConverters[ I ].GetInstance().FOutputPin.IsConnected() ) then
            FFormatConverters.Delete( I );

          end;

//      ANotifyAfterPin := PEntry.NotifyAfterPin;
//      Dispose( PEntry );
      FSinkPins.Delete( Index );

      AWriteLock := NIL;
      ADestroyLock := NIL;
      OWNotifyChangePin( Self );
      OtherPin.CheckRemove();
      Exit;
      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.NotifyPin( const APin : TOWBasicPin; Operation : IOWNotifyOperation ) : TOWNotifyResult;
var
  I             : Integer;
  J             : Integer;
  State         : TOWNotifyState;
  Status        : TOWNotifyResult;
  DataTypeID    : TGUID;
  ALock         : ILockSection;
  ASinkPin      : TOWBasicPin;
  ARealSinkPin  : TOWBasicPin;

  ASinksList    : IOWPinNotifyEntryList;
  ASinksCount   : Integer;
  ASinkEntry    : TOWPinEntry;
  AInUnlock     : ILockSection;
  AUnlock       : ILockSection;
  ADestroyLock  : IOWDestroyLockSection;
  AEntry        : IOWNotifyPinEntry;
  ANotifyEntry  : TOWNotifyPinEntry;

begin
  if( FInputOwnerLock <> NIL ) then
    begin
    AInUnlock := FInputOwnerLock.UnlockAll();
    AUnlock := FOwnerLock.UnlockAllLockInOrder( FInputOwnerLock );
    end

  else
    AUnlock := FOwnerLock.UnlockAll();


  ALock := ReadLock();

  ASinksCount := FSinkPins.Count;

  ASinksList := TOWPinNotifyEntryList.Create();
  try
    for ASinkEntry in FSinkPins do
      begin
      ANotifyEntry := TOWNotifyPinEntry.Create();
      AEntry := ANotifyEntry;
      ANotifyEntry.Section.Access.Execute(
          procedure()
          begin
            ANotifyEntry.Entry.Assign( ASinkEntry );
            if( ASinkEntry.ConnectionPin.GetOwnerComponent() is TOWFormatConverter ) then
              ASinkEntry.ConnectionPin.GetOwnerComponent().GetInterface( IOWFormatConverter, ANotifyEntry.Converter ); // Hold the converter in existance while we iterate.

            ANotifyEntry.Entry.ConnectionPin.AddNotifyEntry( AEntry );
            ASinksList.Add( AEntry );
          end
        );

      end;

    for I := ASinksCount - 1 downto 0 do
      begin
      ANotifyEntry := ASinksList[ I ].GetInstance();
      if( Assigned( ANotifyEntry.Entry.SubmitFunction )) then
        if( ANotifyEntry.Entry.ConnectionPin <> ANotifyEntry.Entry.RealPin ) then
          for J := I - 1 downto 0 do
            if( ANotifyEntry.Entry.ConnectionPin = ASinksList[ J ].GetInstance().Entry.ConnectionPin ) then
              ANotifyEntry.Entry.SubmitFunction := NIL;

      end;


    try
      if( FInSending > 200 ) then
        begin
        ALock := NIL;
        raise EOWException.Create( 'The pin depends on itself. Please protect with functional dependency.' );
        end;

      Inc( FInSending );
      Result := inherited Notify( Operation );

      for I := 0 to ASinksCount - 1 do
        begin
        if( I < ASinksCount - 1 ) then
          State := []

        else
          State := [nsLastIteration];

        ANotifyEntry := ASinksList[ I ].GetInstance();
        ANotifyEntry.Section.Enter();
        try
          ASinkEntry := ASinksList[ I ].GetInstance().Entry;

          DataTypeID := ASinkEntry.ConnectedID;
          ASinkPin := ASinkEntry.ConnectionPin;
          ARealSinkPin := ASinkEntry.RealPin;
          if(( APin = NIL ) or ( APin = ARealSinkPin )) then
            begin
            if( Assigned( ASinkEntry.SubmitFunction )) then
              begin
                try
                  ALock := NIL;
                  ADestroyLock := FDestroyLock.Lock();
                  if( ADestroyLock <> NIL ) then
                    begin
    //                  AUnlock := FOwnerLock.UnlockAllLockInOrder( FInputOwnerLock );

                    Status := ASinkEntry.SubmitFunction( ASinkPin, @DataTypeID, Operation, State );
    //                AUnlock := NIL;
                    end;

                finally
                  ALock := ReadLock();

                end;
              end;

            if( nrDataChanged in Status ) then
              if( ASinkEntry.ModificationLevel < 10000 ) then
                Inc( ASinkEntry.ModificationLevel, 4 );

          end;

        except
          end;

        ANotifyEntry.Section.Leave();
        end;

    finally
      AInUnlock := NIL;
      AUnlock := NIL;
      ALock := WriteLock();
      if( not FInDisconnect ) then
        ReorderChangedData();

      Dec( FInSending );

      ALock := NIL;
      AUnlock := UnlockAll();
      for AEntry in ASinksList do
        AEntry.GetInstance().Converter := NIL;

      AUnlock := NIL;
    end;

  finally
    for AEntry in ASinksList do
      AEntry.RemoveNotifyEntry();

    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.Notify( Operation : IOWNotifyOperation ) : TOWNotifyResult;
begin
  Result := NotifyPin( NIL, Operation );
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetSinkCount() : Integer; // const;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock(); 
  Result := FSinkPins.Count;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetSink( Index : Integer ) : TOWBasicPin;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FSinkPins[ Index ].RealPin;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetConverterCount() : Integer;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FFormatConverters.Count;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetConverter( Index : Integer ) : IOWFormatConverter;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FFormatConverters[ Index ];
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.ReorderChangedData();
var
  PEntry1    : TOWPinEntry;
  I, J       : Integer;
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();

  for PEntry1 in FSinkPins do
    if( PEntry1.ModificationLevel > 0 ) then
      Dec( PEntry1.ModificationLevel );

  FSinkPins.Sort();

  for I := 0 to FSinkPins.Count - 1 do
    begin
    PEntry1 := FSinkPins[ I ];
    if( PEntry1.NotifyAfterPin <> NIL ) then
      for J := 0 to FSinkPins.Count - 1 do
        if( PEntry1.NotifyAfterPin = FSinkPins[ J ].RealPin ) then
          if( I < J ) then
            FSinkPins.Move( I, J );

    end;
    
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.DownStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  I                 : Integer;
  AReadLock         : ILockSection;
  ADataTypeSources  : IOWSinkPinListCopy;
  AEntry            : TOWPinEntry;

begin
  AReadLock := ReadLock();

  if( ForPin = Self ) then
    begin
    for AEntry in FSinkPins do
      if( AEntry.ConnectionPin is TOWBasicSinkPin ) then
        TOWBasicSinkPin( AEntry.ConnectionPin ).DownStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

    Exit;
    end;

  ADataTypeSources := FDataTypeSources.GetList();
  if( ADataTypeSources.Count > 0 ) then
    begin
    for I := 0 to ADataTypeSources.Count - 1 do
      ADataTypeSources[ I ].DownStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

    end

  else
    begin
    if( not PossibleStreamTypes.Ordered ) then
      OrderStreamTypes( PossibleStreamTypes );

    DownStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );
    end;
    
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.UpStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  I                 : Integer;
  AReadLock         : ILockSection;
  ADataTypeSources  : IOWSinkPinListCopy;
  AEntry            : TOWPinEntry;

begin
  AReadLock := ReadLock();
  
  if( ForPin = Self ) then
    begin
    for AEntry in FSinkPins do
      if( AEntry.ConnectionPin is TOWBasicSinkPin ) then
        TOWBasicSinkPin( AEntry.ConnectionPin ).UpStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

    Exit;
    end;

  ADataTypeSources := FDataTypeSources.GetList();
  if( ADataTypeSources.Count > 0 ) then
    begin
    for I := 0 to ADataTypeSources.Count - 1 do
      ADataTypeSources[ I ].UpStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

    end

  else
    begin
//    if( not PossibleStreamTypes.Ordered ) then
//      OrderStreamTypes( PossibleStreamTypes );

    UpStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );
    end;
    
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.DownStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  I           : Integer;
  EntryFound  : Boolean;
  AReadLock   : ILockSection;
  AEntry      : TOWPinEntry;
  AItem       : TOWPinTypeEntry;

begin
  AReadLock := ReadLock();

  if( ForPin = Self ) then
    Exit;

  I := 0;
  while( I < PossibleStreamTypes.Count ) do
    begin
    EntryFound := False;
    for AItem in FStreamType do
      if( AItem.ID = PossibleStreamTypes[ I ].ID ) then
        begin
        EntryFound := True;
        Break;
        end;

    if( EntryFound ) then
      Inc( I )

    else
      PossibleStreamTypes.RemoveType( PossibleStreamTypes[ I ].ID );

    end;

  for AEntry in FSinkPins do
    if( AEntry.ConnectionPin is TOWBasicSinkPin ) then
      TOWBasicSinkPin( AEntry.ConnectionPin ).DownStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.UpStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  I         : Integer;
  Unknown   : IUnknown;
  AReadLock : ILockSection;
  AEntry    : TOWPinEntry;

begin
  AReadLock := ReadLock();

  if( ForPin = Self ) then
    Exit;

  I := 0;
  
  while( I < PossibleStreamTypes.Count ) do
    begin
    if( Supports( Self, PossibleStreamTypes[ I ].ID, Unknown )) then
      Inc( I )

    else
      PossibleStreamTypes.RemoveType( PossibleStreamTypes[ I ].ID );

    end;

  for AEntry in FSinkPins do
    if( AEntry.ConnectionPin is TOWBasicSinkPin ) then
      TOWBasicSinkPin( AEntry.ConnectionPin ).UpStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );
    
end;
//---------------------------------------------------------------------------
function TOWSourcePin.DownStreamQueryPossybleInterface( const IID: TGUID ) : HResult;
var
  I                 : Integer;
  AReadLock         : ILockSection;
  ADataTypeSources  : IOWSinkPinListCopy;

begin
  AReadLock := ReadLock();

  Result := inherited DownStreamQueryPossybleInterface( IID );

  if( Result = S_OK ) then
    begin
    ADataTypeSources := FDataTypeSources.GetList();
    for I := 0 to ADataTypeSources.Count - 1 do
      begin
      Result := ADataTypeSources[ I ].DownStreamForthQueryPossybleInterface( IID, Self );
      if( Result <> S_OK ) then
        Exit;

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.UpStreamQueryPossybleInterface( const IID: TGUID ) : HResult;
var
  I                 : Integer;
  AReadLock         : ILockSection;
  ADataTypeSources  : IOWSinkPinListCopy;

begin
  AReadLock := ReadLock();

  Result := inherited UpStreamQueryPossybleInterface( IID );

  ADataTypeSources := FDataTypeSources.GetList();
  for I := 0 to ADataTypeSources.Count - 1 do
    begin
    Result := ADataTypeSources[ I ].UpStreamForthQueryPossybleInterface( IID, Self );
    if( Result <> S_OK ) then
      Exit;

    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.UpStreamBackQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult;
var
  I                 : Integer;
  AReadLock         : ILockSection;
  ADataTypeSources  : IOWSinkPinListCopy;
  AEntry            : TOWPinEntry;

begin
  AReadLock := ReadLock();

  Result := S_OK;

  if( ForPin = Self ) then
    begin
    for AEntry in FSinkPins do
      begin
      if( AEntry.ConnectionPin is TOWBasicSinkPin ) then
        Result := TOWBasicSinkPin( AEntry.ConnectionPin ).UpStreamForthQueryPossybleInterface( IID, ForPin );
        
      if( Result <> S_OK ) then
        Break;

      end;

    Exit;
    end;

  ADataTypeSources := FDataTypeSources.GetList();
  if( ADataTypeSources.Count > 0 ) then
    begin
    for I := 0 to ADataTypeSources.Count - 1 do
      begin
      Result := ADataTypeSources[ I ].UpStreamBackQueryPossybleInterface( IID, ForPin );
      if( Result <> S_OK ) then
        Break;

      end;
    end

  else
    Result := UpStreamForthQueryPossybleInterface( IID, ForPin );

end;
//---------------------------------------------------------------------------
function TOWSourcePin.DownStreamBackQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult;
var
  I                 : Integer;
  AReadLock         : ILockSection;
  ADataTypeSources  : IOWSinkPinListCopy;
  AEntry            : TOWPinEntry;

begin
  AReadLock := ReadLock();

  Result := S_OK;
  if( ForPin = Self ) then
    begin
    for AEntry in FSinkPins do
      begin
      if( AEntry.ConnectionPin is TOWBasicSinkPin ) then
        Result := TOWBasicSinkPin( AEntry.ConnectionPin ).DownStreamForthQueryPossybleInterface( IID, ForPin );
        
      if( Result <> S_OK ) then
        Break;

      end;

    Exit;
    end;

  ADataTypeSources := FDataTypeSources.GetList();
  if( ADataTypeSources.Count > 0 ) then
    begin
    for I := 0 to ADataTypeSources.Count - 1 do
      begin
      Result := ADataTypeSources[ I ].DownStreamBackQueryPossybleInterface( IID, ForPin );
      if( Result <> S_OK ) then
        Break;

      end;

    end

  else
    Result := DownStreamForthQueryPossybleInterface( IID, ForPin );

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.BackChainReconnect( const DownIID: TGUID; const UpIID: TGUID );
var
  I                 : Integer;
  AWriteLock        : ILockSection;
  ADataTypeSources  : IOWSinkPinListCopy;

begin
  AWriteLock := WriteLock();

  ADataTypeSources := FDataTypeSources.GetList();
  if( ADataTypeSources.Count > 0 ) then
    begin
    for I := 0 to ADataTypeSources.Count - 1 do
      ADataTypeSources[ I ].BackChainReconnect( DownIID, UpIID );

    end

  else
    ForthChainReconnect( DownIID, UpIID );

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.ForthChainReconnect( const DownIID: TGUID; const UpIID: TGUID );
var
  AWriteLock : ILockSection;
  AEntry     : TOWPinEntry;

  procedure ChangeConnectionType();
  var
    AConverterClass : TOWFormatConverterClass;
    AConverter      : IOWFormatConverter;

  begin
    if( AEntry.ConnectedID <> DownIID ) then
      begin
      AEntry.ConnectedID := DownStreamFindConnectionID( AEntry.RealPin, True, False, AConverter, AConverterClass, OWNULLID );
      AEntry.SubmitFunction := GetSubmitFunctionID( AEntry.ConnectedID );
      NewConnection( AEntry.RealPin, TOWSubmitLink( AEntry.SubmitFunction ));
      end;

  end;

begin
  AWriteLock := WriteLock();

  for AEntry in FSinkPins do
    begin
    ChangeConnectionType();
    if( AEntry.ConnectionPin is TOWBasicSinkPin ) then
      TOWBasicSinkPin( AEntry.ConnectionPin ).ForthChainReconnect( DownIID, UpIID );
      
    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.CanConnectByType( const AType : TGUID; UseConverters : Boolean = True ) : Boolean;
var
  APossibleStreamTypes  : TOWPinTypeRestricted;
  J                     : Integer;
  AItem                 : TOWPinTypeEntry;

begin
  APossibleStreamTypes := TOWPinTypeRestricted.Create();
  try
    DownStreamFillPossibleStreamTypes( APossibleStreamTypes, Self );

    for AItem in APossibleStreamTypes do
      if( AItem.ID = AType ) then
        Exit( True );

    if( UseConverters ) then
      for J := APossibleStreamTypes.Count - 1 downto 0 do
        if( OWCanConvert( APossibleStreamTypes[ J ].ID, AType )) then
          Exit( True );

    Result := False;
  finally
    APossibleStreamTypes.Free();
    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.DownStreamFindConnectionID( const OtherPin : TOWBasicPin; UseConverters : Boolean; RequestConverters : Boolean; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; ADataType : TGUID ) : TGUID;
var
  PossibleStreamTypes : TOWPinTypeRestricted;
  I                   : Integer;
  J                   : Integer;
  Unknown             : IUnknown;
  AId                 : TGUID;
  AReadLock           : ILockSection;
  AIntfTable          : PInterfaceTable;
  AClass              : TClass;
  AInputID            : TGUID;

begin
  AReadLock := ReadLock();

  Result := OWNULLID;
  AConverterClass := NIL;
  AConverter := NIL;
  if( OtherPin <> NIL ) then
    begin
    PossibleStreamTypes := TOWPinTypeRestricted.Create();
    try
      DownStreamFillPossibleStreamTypes( PossibleStreamTypes, Self );

      for I := PossibleStreamTypes.Count - 1 downto 0 do
        if( Succeeded( OtherPin.QueryInterface( PossibleStreamTypes[ I ].ID, Unknown ))) then
          Exit( PossibleStreamTypes[ I ].ID );

      if( UseConverters ) then
        begin
        for I := FFormatConverters.Count - 1 downto 0 do
          begin
          AId := FFormatConverters[ I ].GetInstance().FOutputPin.DownStreamFindConnectionID( OtherPin, False, False, AConverter, AConverterClass, ADataType );
          if( AId <> OWNULLID ) then
            if( Succeeded( OtherPin.QueryInterface( AId, Unknown ))) then
              begin
              Result := DownStreamFindConnectionID( FFormatConverters[ I ].GetInstance().FInputPin, False, False, AConverter, AConverterClass, ADataType );
              AConverter := FFormatConverters[ I ];
              Exit;
              end;

          end;


        if( RequestConverters ) then
          for J := PossibleStreamTypes.Count - 1 downto 0 do
            begin
            AInputID := PossibleStreamTypes[ J ].ID;
            AClass := OtherPin.ClassType();
            while( AClass <> NIL ) do
              begin
              AIntfTable := AClass.GetInterfaceTable();
              if( AIntfTable <> NIL ) then
                for I := 0 to AIntfTable.EntryCount - 1 do
                  if( OWGetConverter( AInputID, AIntfTable.Entries[ I ].IID, AConverterClass )) then
                    Exit( AInputID );

              AClass := AClass.ClassParent;
              end;
            end;

        end;

    finally
      PossibleStreamTypes.Free();
      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.UpStreamForthQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult;
var
  AEntry    : TOWPinEntry;
  Unknown   : IUnknown;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( ForPin = Self ) then
    Exit( S_OK );

  Result := inherited RequestInterface( IID, Unknown );
  if( Result <> S_OK ) then
    Exit;

  for AEntry in FSinkPins do
    begin
    if( AEntry.ConnectionPin is TOWBasicSinkPin ) then
      Result := TOWBasicSinkPin( AEntry.ConnectionPin ).UpStreamForthQueryPossybleInterface( IID, ForPin );

    if( Result <> S_OK ) then
      Exit;

    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.DownStreamForthQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult;
var
  EntryFound  : Boolean;
  AReadLock   : ILockSection;
  AEntry      : TOWPinEntry;
  AItem       : TOWPinTypeEntry;

begin
  AReadLock := ReadLock();
  
  Result := S_OK;
  if( ForPin = Self ) then
    Exit;

  EntryFound := False;
  
  for AItem in FStreamType do
    if( IID = AItem.ID ) then
      begin
      EntryFound := True;
      Break;
      end;

  if( not EntryFound ) then
    Exit( E_NOINTERFACE );

  for AEntry in FSinkPins do
    begin
    if( AEntry.ConnectionPin is TOWBasicSinkPin ) then
      Result := TOWBasicSinkPin( AEntry.ConnectionPin ).DownStreamForthQueryPossybleInterface( IID, ForPin );
      
    if( Result <> S_OK ) then
      Exit;

    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.RequestInterface(const IID: TGUID; out Obj): HResult;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  Result := inherited RequestInterface( IID, Obj );
  if( Result = S_OK ) then
    Result := UpStreamQueryPossybleInterface( IID );

end;

//---------------------------------------------------------------------------
procedure TOWSourcePin.DownStreamFillPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  I                 : Integer;
  AReadLock         : ILockSection;
  ADataTypeSources  : IOWSinkPinListCopy;

begin
  AReadLock := ReadLock();

  inherited DownStreamFillPossibleStreamTypes( PossibleStreamTypes, ForPin );

  ADataTypeSources := FDataTypeSources.GetList();
  for I := 0 to ADataTypeSources.Count - 1 do
    ADataTypeSources[ I ].DownStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.UpStreamFillPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  I                 : Integer;
  AReadLock         : ILockSection;
  ADataTypeSources  : IOWSinkPinListCopy;

begin
  AReadLock := ReadLock();
  inherited UpStreamFillPossibleStreamTypes( PossibleStreamTypes, ForPin );

  ADataTypeSources := FDataTypeSources.GetList();
  for I := 0 to ADataTypeSources.Count - 1 do
    ADataTypeSources[ I ].UpStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.PinDeletedNotify( const ADeletedPin : TOWBasicPin );
var
  I           : Integer;
  AWriteLock  : ILockSection;
  AEntry      : TOWPinEntry;

begin
  AWriteLock := WriteLock();

  inherited;
  if( ADeletedPin is TOWBasicSinkPin ) then
    begin
    FFunctionSources.Remove( TOWBasicSinkPin( ADeletedPin ) );
    FDataTypeSources.Remove( TOWBasicSinkPin( ADeletedPin ) );
    end;

  for I := SinkCount - 1 downto 0 do
    if( Sinks[ I ] = ADeletedPin ) then
      IntDisconnect( Sinks[ I ], False ); 
    
  for AEntry in FSinkPins do
    if( AEntry.NotifyAfterPin = ADeletedPin ) then
      AEntry.NotifyAfterPin := NIL;
  
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.PinReplacedNotify( const AOldPin : TOWBasicPin; const ANewPin : TOWBasicPin );
var
  AEntry      : TOWPinEntry;
  AWriteLock  : ILockSection;
  
begin
  AWriteLock := WriteLock();
  for AEntry in FSinkPins do
    if( AEntry.NotifyAfterPin = AOldPin ) then
      AEntry.NotifyAfterPin := ANewPin;
       
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.UnlodedPinRemoved( const APin : TOWBasicPin );
var
  I : Integer;

begin
  for I := FSinkPins.Count - 1 downto 0 do
    if( FSinkPins[ I ].RealPin = APin ) then
      FSinkPins.Delete( I );

end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetPinType() : TOWPinType;
begin
  Result := ptSource;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetConnectedPinCount() : Integer;
begin
  Result := SinkCount;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetConnectedPin( Index : Integer ) : TOWBasicPin;
begin
  Result := Sinks[ Index ];
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetEditorString() : String;
var
  LinksCount : Integer;
  
begin
  LinksCount := SinkCount;
  if( LinksCount = 0 ) then
    Result := inherited GetEditorString()

  else
    begin
    if( LinksCount = 1 ) then
      begin
      if( FDispatcher = NIL ) then
        begin
        if( SinkCount = 1 ) then
          Result := GetLinkStr( 0 )

        else
          Result := '( ' + IntToStr( LinksCount + FDispatcher.PinCount - 1 ) + ' Links )';

        end

      else
        Result := '( ' + IntToStr( LinksCount + FDispatcher.PinCount - 1 ) + ' Links )';

      end

    else
      if( FDispatcher = NIL ) then
        Result := '( ' + IntToStr( LinksCount ) + ' Links )'

      else
        Result := '( ' + IntToStr( LinksCount + FDispatcher.PinCount - 1 ) + ' Links )';

    end;
      
end;
//---------------------------------------------------------------------------
function TOWSourcePin.SetEditorString( ARoot : TComponent; const AValue: String ) : Boolean;
begin
  Result := TryLinkTo( ARoot, AValue, AValue, '', False );
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.SetInEditor( AValue : Boolean );
begin
  FInEditor := AValue;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetConnectedAfterForPin( const OtherPin : TOWBasicPin ) : TOWBasicPin;
var
  PEntry : TOWPinEntry;

begin
  PEntry := FSinkPins.GetItemByPin( OtherPin );
  if( PEntry <> NIL ) then
    Result := PEntry.NotifyAfterPin

  else
    Result := NIL;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.ConnectAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin ) : Boolean;
begin
  if( OtherPin = Self ) then
    Exit( False );

  FImageCached := False;
  if( OtherPin <> NIL ) then
    if( not CanConnectAfter( OtherPin, NotifyAfterPin ) ) then
      Exit( False );

  Result := IntConnectAfter( OtherPin, NotifyAfterPin, OWNULLID );
end;
//---------------------------------------------------------------------------
function TOWSourcePin.IntConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin; ADataType : TGUID ) : Boolean;
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  Result := False;
  FImageCached := False;

  if( OtherPin <> NIL ) then
    if( ( OtherPin is TOWBasicSinkPin ) or ( OtherPin is TOWStatePin ) or ( OtherPin is TOWUnloadedPin )) then
      begin
      if( FMaxConnections > 0 ) then
        if( SinkCount >= FMaxConnections ) then
          if( not IsConnectedTo( OtherPin )) then
            DisconnectFrom( Sinks[ 0 ] );

      Result := OtherPin.ConnectAfter( Self, NotifyAfterPin );
      end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.CanConnectAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; UseConverters : Boolean ) : Boolean;
var
  AEntry    : TOWPinEntry;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := inherited CanConnectAfter( OtherPin, NotifyAfterPin, UseConverters );
  if( Result ) then
    Exit;
    
  if( OtherPin = NotifyAfterPin ) then
    Exit;

  if( ( not Result ) and ( OwnerInLoading() or FInEditor ) ) then
    Result := True

  else
    begin
    for AEntry in FSinkPins do
      if( AEntry.RealPin = NotifyAfterPin ) then
        begin
        if( AEntry.NotifyAfterPin <> NIL ) then
          Result := CanConnectAfter( OtherPin, AEntry.NotifyAfterPin, UseConverters )

        else
          Result := True;

        Break;
        end;

    end;

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.NewConnection( const ASinkPin : TOWBasicPin );
var
  PEntry      : TOWPinEntry;
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();

  PEntry := FSinkPins.GetItemByPin( ASinkPin );
  NewConnection( PEntry.ConnectionPin, TOWSubmitLink( PEntry.SubmitFunction ));
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.BackPopulateStreamChains( AChain : TOWObjectListList; AList : TOWObjectList );
var
  I                 : Integer;
  ASubList          : TOWObjectList;
  AFunctionSources  : IOWSinkPinListCopy;

begin
  AList.Add( Self );
  AFunctionSources := FFunctionSources.GetList();
  for I := 0 to AFunctionSources.Count - 1 do
    begin
    if( I = 0 ) then
      ASubList := AList
       
    else
      begin
      ASubList := TOWObjectList.Create();
      AChain.Add( ASubList );
      end;

    AFunctionSources[ I ].BackPopulateStreamChains( AChain, ASubList );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.NewConnection( const ASinkPin : TOWBasicPin; ASubmitFunctionIn : TOWSubmitLink );
//var SinkRoot : TComponent;
var
  DataTypeID : TGUID;
  AWriteLock : ILockSection;
  ASelfUnlockLock : ILockSection;
  ASubmitFunction : TOWSubmit;
  AConverterClass : TOWFormatConverterClass;
  AConverter : IOWFormatConverter;
  ADestroyLock : IOWDestroyLockSection;

begin
  if( not Assigned( ASubmitFunctionIn )) then
    Exit;

  ASubmitFunction := TOWSubmit( ASubmitFunctionIn );
  AWriteLock := WriteLock();
  if( FInSending > 10 ) then
    raise EOWException.Create( 'The pin depends on itself. Please protect with functional dependency.' );

  Inc( FInSending );
  DataTypeID := DownStreamFindConnectionID( ASinkPin, True, False, AConverter, AConverterClass, OWNULLID );
  AWriteLock := NIL;
  ASelfUnlockLock := UnlockAll();

  ADestroyLock := FDestroyLock.Lock();
  if( ADestroyLock <> NIL ) then
    if( Assigned( ASubmitFunction ) ) then
      begin
      FOwnerLock.ExecuteUnlockAllLockInOrder( FInputOwnerLock,
          procedure()
          begin
            ASubmitFunction( ASinkPin, @DataTypeID, TOWNotifyOperation.Create(), [ nsNewLink, nsLastIteration ] );
          end
        );

      end;

  ASelfUnlockLock := NIL;
  
  AWriteLock := NIL;
//  AUnlock := NIL;

//    AUnlock := FOwnerLock.UnlockAllLockInOrder( FInputOwnerLock );

  AWriteLock := WriteLock();
  OWNotifyChangePin( Self );
  Dec( FInSending );
end;
//---------------------------------------------------------------------------
function TOWSourcePin.IsCompatible( const OtherPin : TOWBasicPin; UseConverters : Boolean ) : Boolean;
var
  SinkPin         : TOWBasicSinkPin;
  StatePin        : TOWStatePin;
  AConverter      : IOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  AReadLock       : ILockSection;

begin
  AReadLock := ReadLock();
  Result := False;

  if( OtherPin is TOWBasicSinkPin ) then
    begin
    SinkPin := TOWBasicSinkPin( OtherPin );
    Result := SinkPin.IsCompatible( Self, UseConverters );
    end
    
  else if( OtherPin is TOWStatePin ) then
    begin
    StatePin := TOWStatePin( OtherPin );

    Result := not IsEqualGUID( FindConnectionID( StatePin, AConverter, AConverterClass, UseConverters, OWNULLID ), OWNULLID );
//    if( Result ) then
//      Result := not IsEqualGUID( StatePin.FindConnectionID( Self ), OWNULLID );;

    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean; ADataType : TGUID ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( not( FOwner is TOWFormatConverter )) then
    begin 
    if( ( OtherPin.OwnerInDesigning( False ) ) and ( not OwnerInDesigning( False ) )) then
      Exit( False );

    if( ( not ( OtherPin.OwnerInDesigning( False ) )) and OwnerInDesigning( False ) ) then
      Exit( False );

    end;

  if( inherited CanConnectToInt( OtherPin, AConverter, AConverterClass, UseConverters, ADataType )) then
    Exit( True );
    
  if( OtherPin <> NIL ) then
    if( OtherPin <> Self ) then
      if( OtherPin is TOWBasicSinkPin ) then
        Exit( OtherPin.CanConnectTo( Self, UseConverters ));

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.IsConnected() : Boolean;
begin
  Result := ( FSinkPins.Count > 0 ) or inherited IsConnected();
end;
//---------------------------------------------------------------------------
function TOWSourcePin.DirectDependsOn( const OtherPin : TOWBasicPin ) : Boolean;
var
  I                 : Integer;
  AReadLock         : ILockSection;
  AFunctionSources  : IOWSinkPinListCopy;

begin
  AReadLock := ReadLock();
  if( FInDependOn ) then
    Exit( False );

  FInDependOn := True;
  if( OtherPin <> NIL ) then
    begin
    AFunctionSources := FFunctionSources.GetList();
    for I := 0 to AFunctionSources.Count - 1 do
      if( AFunctionSources[ I ] = OtherPin ) then
        begin
        FInDependOn := False;
        Exit( True );
        end;

    end;

  FInDependOn := False;
  Result := False;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.DependsOn( const OtherPin : TOWBasicPin ) : Boolean;
var
  I                 : Integer;
  AReadLock         : ILockSection;
  AFunctionSources  : IOWSinkPinListCopy;

begin
  AReadLock := ReadLock();
  
  if( FInDependOn ) then
    Exit( False );

  FInDependOn := True;
  if( OtherPin <> NIL ) then
    begin
    AFunctionSources := FFunctionSources.GetList();
    for I := 0 to AFunctionSources.Count - 1 do
      if( AFunctionSources[ I ] = OtherPin ) then
        begin
        FInDependOn := False;
        Exit( True );
        end;

    for I := 0 to AFunctionSources.Count - 1 do
      if( AFunctionSources[ I ].DependsOn( OtherPin ) ) then
        begin
        FInDependOn := False;
        Exit( True );
        end;

    end;

  FInDependOn := False;
  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.UpdateStateValue();
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( FDispatcher <> NIL ) then
    NotifyDispatcher( TOWNotifyOperation.Create(), [nsNewLink], NIL );
    
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetAfterPinDisplayName( APin : TOWPin ) : String;
var
  AEntry  : TOWPinEntry;

begin
  Result := '';
  for AEntry in FSinkPins do
    if( AEntry.RealPin = APin ) then
      begin
      if( AEntry.NotifyAfterPin <> NIL ) then
        Exit( AEntry.NotifyAfterPin.GetFullName( GetRoot() <> APin.GetRoot() ));

      Exit;
      end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetConnectionID( const OtherPin : TOWBasicPin ) : TGUID;
var
  PEntry    : TOWPinEntry;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  PEntry := FSinkPins.GetItemByPin( OtherPin );
  if( PEntry <> NIL ) then
    Result := PEntry.ConnectedID

  else
    Result := inherited;
    
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetPrimaryConnectionID() : TGUID;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( GetSinkCount() > 0 ) then
    Result := FSinkPins[ 0 ].ConnectedID

  else
    Result := inherited;
   
end;
//---------------------------------------------------------------------------
function TOWSourcePin.IsConnectedTo( const OtherPin : TOWBasicPin ) : Boolean; //const;
var
  I         : Integer;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  
  for I := 0 to GetSinkCount() - 1 do
    if( OtherPin = GetSink( I ) ) then
      Exit( True );

  Result := inherited;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.IsConnectedAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin ) : Boolean;
var
  I         : Integer;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  
  for I := 0 to GetSinkCount() - 1 do
    if( ( OtherPin = GetSink( I ) ) and ( FSinkPins[ I ].NotifyAfterPin = NotifyAfterPin ) ) then
      Exit( True );

  Result := inherited;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.IsConnectedByConverterTo( const OtherPin : TOWBasicPin ) : Boolean;
var
  I         : Integer;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( inherited ) then
    Exit( True );

  // Fixes 64 bit compiler bug! // Do not change to Exit(  )
  Result := False;
  if( IsConnectedTo( OtherPin )) then
    for I := FFormatConverters.Count - 1 downto 0 do
      if( FFormatConverters[ I ].GetInstance().OutputPin.IsConnectedTo( OtherPin )) then
        Result := True;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.CheckDownStreamInterfaces( const OtherPin : TOWBasicPin; UseConverters : Boolean ) : Boolean;
var
  AConverterClass : TOWFormatConverterClass;
  AConverter      : IOWFormatConverter;
  
begin
  Result := not IsEqualGUID( DownStreamFindConnectionID( OtherPin, UseConverters, True, AConverter, AConverterClass, OWNULLID ), OWNULLID );
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetImage( out AImage : IGPBitmap ) : Boolean;
var
  AWasCached : Boolean;

begin
  AWasCached := FImageCached;
  if( inherited ) then
    Exit( True );

  if( AWasCached ) then
    Exit( False );

  Result := GetInputOutputImage( AImage, False, True );
end;
//---------------------------------------------------------------------------
function TOWSourcePin.IsLinkedTo( PinName : String ) : Boolean;
var
  I         : Integer;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  
  for I := 0 to GetSinkCount() - 1 do
    begin
    if( PinName = Sinks[ I ].GetFullName( True )) then // GetLinkStr( I, False )) then
      Exit( True );

    if( Sinks[ I ].GetRootName() = GetRootName() ) then
      if( PinName = Sinks[ I ].GetFullName( False )) then
        Exit( True );

    end;

  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.Disconnect();
var
  ADestroyLock : IOWDestroyLockSection;
  AWriteLock   : ILockSection;

  I            : Integer;

begin
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();
  FImageCached := False;
  BeforeDisconnect();
  inherited Disconnect();
  for I := GetSinkCount() - 1 downto 0 do
    begin
    BeforeDisconnectFrom( GetSink( I ) );
    GetSink( I ).BeforeDisconnect();
    IntDisconnectFrom( GetSink( I ) );
    end;

  FSinkPins.Clear();
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.IntDisconnectFrom( OtherPin : TOWBasicPin );
var
  DesignFormClosing : Boolean;

begin
  DesignFormClosing := False;
  FImageCached := False;
  if( OwnerInDesigning( False ) ) then
    if( RootInDestroying() ) then
      DesignFormClosing := True;

  OWNotifyDisconnecting( Self, OtherPin, False );
  IntDisconnect( OtherPin, DesignFormClosing );
  OtherPin.IntDisconnect( Self, DesignFormClosing );
  OtherPin.CheckRemove();
  OWNotifyDisconnected( Self, False );
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.DisconnectFrom( const OtherPin : TOWBasicPin );
var
  ADestroyLock : IOWDestroyLockSection;
  AWriteLock   : ILockSection;

begin
  BeforeDisconnect();
  FImageCached := False;
  BeforeDisconnectFrom( OtherPin );
  if( not IsConnectedTo( OtherPin ) ) then
    inherited DisconnectFrom( OtherPin )

  else
    begin
    AWriteLock := WriteLock();
    ADestroyLock := FDestroyLock.DestroyLock();
    IntDisconnectFrom( OtherPin );
    end;
    
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWBasicSinkPin.BeforeDestruction();
begin
  FPointsSection.Access.Execute(
      procedure()
      begin
        FConnectionPoints.RemoveLinks();
      end
    );

  inherited;
end;
//---------------------------------------------------------------------------
function TOWBasicSinkPin.GetImage( out AImage : IGPBitmap ) : Boolean;
var
  AWasCached : Boolean;

begin
  AWasCached := FImageCached;
  if( inherited ) then
    Exit( True );

  if( AWasCached ) then
    Exit( False );

  try
    Result := GetInputOutputImage( AImage, True, False );
  except
    Result := False;
    end;

end;
//---------------------------------------------------------------------------
function TOWBasicSinkPin.IsCompatible( const OtherPin : TOWBasicPin; UseConverters : Boolean ) : Boolean;
var
  SourcePin       : TOWSourcePin;
  StatePin        : TOWStatePin;
  AConverter      : IOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  AReadLock       : ILockSection;

begin
  if( OtherPin = NIL ) then
    Exit( True );

  Result := False;

  AReadLock := ReadLock();
  if( OtherPin is TOWSourcePin ) then
    begin
    SourcePin := TOWSourcePin( OtherPin );

    Result := SourcePin.CheckDownStreamInterfaces( Self, UseConverters );

    if( Result and not IgnoreUpstream ) then
      Result := CheckUpStreamInterfaces( SourcePin, UseConverters );

    end

  else if( OtherPin is TOWStatePin ) then
    begin
    StatePin := TOWStatePin( OtherPin );
    Result := not IsEqualGUID( StatePin.FindConnectionID( Self, AConverter, AConverterClass, UseConverters, OWNULLID ), OWNULLID );
    end;

end;
//---------------------------------------------------------------------------
function TOWBasicSinkPin.HasToIgnoreUpstream() : Boolean;
var
  AReadLock : ILockSection;
  
begin
  AReadLock := ReadLock();
  Result := FIgnoreUpstream;
  if( not Result ) then
    Result := ( FStreamType.Count = 0 );

end;
//---------------------------------------------------------------------------
procedure TOWBasicSinkPin.DownStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  I         : Integer;
  Unknown   : IUnknown;
  ATypeDep  : TOWSourcePin;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( ForPin = Self ) then
    Exit;

  I := 0;
  while( I < PossibleStreamTypes.Count ) do
    begin
    if( Supports( Self, PossibleStreamTypes[ I ].ID, Unknown )) then
      Inc( I )

    else
      PossibleStreamTypes.RemoveType( PossibleStreamTypes[ I ].ID );

    end;

  for ATypeDep in FDataTypeDependants do
    ATypeDep.DownStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

end;
//---------------------------------------------------------------------------
procedure TOWBasicSinkPin.UpStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  I           : Integer;
  EntryFound  : Boolean;
  AReadLock   : ILockSection;
  ATypeDep    : TOWSourcePin;
  AItem       : TOWPinTypeEntry;

begin
  AReadLock := ReadLock();
  if( HasToIgnoreUpstream() ) then
    Exit;

  if( ForPin = Self ) then
    Exit;

  I := 0;
  while( I < PossibleStreamTypes.Count ) do
    begin
    EntryFound := False;
    for AItem in FStreamType do
      if( AItem.ID = PossibleStreamTypes[ I ].ID ) then
        begin
        EntryFound := True;
        Break;
        end;

    if( EntryFound ) then
      Inc( I )

    else
      PossibleStreamTypes.RemoveType( PossibleStreamTypes[ I ].ID );

    end;

  for ATypeDep in FDataTypeDependants do
    ATypeDep.UpStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

end;
//---------------------------------------------------------------------------
function TOWBasicSinkPin.UpStreamForthQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult;
var
  AItem       : TOWPinTypeEntry;
  EntryFound  : Boolean;
  AReadLock   : ILockSection;
  ATypeDep    : TOWSourcePin;

begin
  AReadLock := ReadLock();
  if( ForPin = Self ) then
    Exit( S_OK );

  EntryFound := False;
  for AItem in FStreamType do
    if( IID = AItem.ID ) then
      begin
      EntryFound := True;
      Break;
      end;

  if( not EntryFound ) then
    Exit( E_NOINTERFACE );

  for ATypeDep in FDataTypeDependants do
    begin
    Result := ATypeDep.UpStreamForthQueryPossybleInterface( IID, ForPin );
    if( Result <> S_OK ) then
      Exit;

    end;

  Result := S_OK;
end;
//---------------------------------------------------------------------------
function TOWBasicSinkPin.DownStreamForthQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult;
var
  ATypeDep  : TOWSourcePin;
  Unknown   : IUnknown;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( ForPin = Self ) then
    Exit( S_OK );

  Result := inherited RequestInterface( IID, Unknown );
  if( Result <> S_OK ) then
    Exit;

  for ATypeDep in FDataTypeDependants do
    begin
    Result := ATypeDep.DownStreamForthQueryPossybleInterface( IID, ForPin );
    if( Result <> S_OK ) then
      Exit;

    end;

end;
//---------------------------------------------------------------------------
procedure TOWBasicSinkPin.IntAddDataTypeDependance( DataTypeDependancePin : TOWSourcePin );
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  FDataTypeDependants.Add( DataTypeDependancePin );
end;
//---------------------------------------------------------------------------
procedure TOWBasicSinkPin.IntRemoveDataTypeDependance( DataTypeDependancePin : TOWSourcePin );
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  FDataTypeDependants.RemoveOne( DataTypeDependancePin );
end;
//---------------------------------------------------------------------------
function TOWBasicSinkPin.CanConnectByType( const AType : TGUID; UseConverters : Boolean = True ) : Boolean;
var
  PossibleStreamTypes : TOWPinTypeRestricted;
  I                   : Integer;
  J                   : Integer;
  AClass              : TClass;
  AIntfTable          : PInterfaceTable;
  AItem               : TOWPinTypeEntry;

begin
  PossibleStreamTypes := TOWPinTypeRestricted.Create();
  try
//  UpStreamFillPossibleStreamTypes( PossibleStreamTypes, Self );
    AClass := ClassType();
    while( AClass <> NIL ) do
      begin
      AIntfTable := AClass.GetInterfaceTable();
      if( AIntfTable <> NIL ) then
        for I := 0 to AIntfTable.EntryCount - 1 do
          PossibleStreamTypes.AddType( AIntfTable.Entries[ I ].IID, NIL, False );

      AClass := AClass.ClassParent;
      end;

    for AItem in PossibleStreamTypes do
      if( AItem.ID = AType ) then
        Exit( True );

    if( UseConverters ) then
      for J := PossibleStreamTypes.Count - 1 downto 0 do
        if( OWCanConvert( AType, PossibleStreamTypes[ J ].ID )) then
          Exit( True );

  Result := False;
  finally
    PossibleStreamTypes.Free();
    end;

end;
//---------------------------------------------------------------------------
function TOWBasicSinkPin.UpStreamFindConnectionID( const OtherPin : TOWSourcePin; PreferedID : TGUID ) : TGUID;
var
  APossibleStreamTypes  : TOWPinTypeRestricted;
  I                     : Integer;
  Unknown               : IUnknown;
  AReadLock             : ILockSection;
  
begin
  AReadLock := ReadLock();
  Result := OWNULLID;
  if( OtherPin <> NIL ) then
    begin
    APossibleStreamTypes := TOWPinTypeRestricted.Create();

    OtherPin.UpStreamFillPossibleStreamTypes( APossibleStreamTypes, Self );

    for I := APossibleStreamTypes.Count - 1 downto 0 do
      if( Supports( OtherPin, APossibleStreamTypes[ I ].ID, Unknown )) then
        begin
        if( APossibleStreamTypes[ I ].ID = PreferedID ) then
          begin
          Result := APossibleStreamTypes[ I ].ID;
          APossibleStreamTypes.Free();
          Exit;
          end;

        if( Result = OWNULLID ) then
          Result := APossibleStreamTypes[ I ].ID;

        end;

    APossibleStreamTypes.Free();
    end;

end;
//---------------------------------------------------------------------------
procedure TOWBasicSinkPin.ChainReconnect( const DownIID: TGUID; const UpIID: TGUID );
begin
  FImageCached := False;
  BackChainReconnect( DownIID, UpIID );
end;
//---------------------------------------------------------------------------
function TOWBasicSinkPin.CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean; ADataType : TGUID ) : Boolean;
var
  AReadLock : ILockSection;

begin
  if( not( FOwner is TOWFormatConverter ) and not( OtherPin.Owner is TOWFormatConverter )) then
    begin
    if( ( OtherPin.OwnerInDesigning( False ) ) and ( not OwnerInDesigning( False ) )) then
      Exit( False );

    if( ( not( OtherPin.OwnerInDesigning( False ) ) and OwnerInDesigning( False ))) then
      Exit( False );

    end;

  AReadLock := ReadLock();
  Result := inherited CanConnectToInt( OtherPin, AConverter, AConverterClass, UseConverters, ADataType );
  if( Result ) then
    Exit;

  if( OtherPin = NIL ) then
    Exit;

  if( OtherPin = Self ) then
    Exit;

  if( IsCompatible( OtherPin, UseConverters )) then
    Result := not OtherPin.DependsOn( Self );

end;
//---------------------------------------------------------------------------
function TOWBasicSinkPin.CheckUpStreamInterfaces( const OtherPin : TOWSourcePin; UseConverters : Boolean ) : Boolean;
var
  AReadLock : ILockSection;
  AConverterClass : TOWFormatConverterClass;
  AConverter : IOWFormatConverter;
  
begin
  AReadLock := ReadLock();
  if( HasToIgnoreUpstream() ) then
    Result := True

  else
    Result := not IsEqualGUID( UpStreamFindConnectionID( OtherPin, OtherPin.DownStreamFindConnectionID( Self, UseConverters, False, AConverter, AConverterClass, OWNULLID ) ), OWNULLID );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
destructor TOWMultiSinkPin.Destroy();
var
  ADestroyLock : IOWDestroyLockSection;
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();
  Disconnect();

  ADestroyLock := NIL;
  AWriteLock := NIL;
  inherited;
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.GetSourceCount() : Integer; // const;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FSourcePins.Count;
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.GetSource( Index : Integer ) : TOWBasicPin;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FSourcePins[ Index ].RealPin;
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.GetConverterCount() : Integer;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FFormatConverters.Count;
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.GetConverter( Index : Integer ) : IOWFormatConverter;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FFormatConverters[ Index ];
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.GetPinType() : TOWPinType;
begin
  Result := ptMultiSink;
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.GetLinkStr( Item : Integer ) : String;
var
  AddRoot : Boolean;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  AddRoot := False;
  if( SourceCount > 0 ) then
    AddRoot := Sources[ Item ].GetRoot() <> GetRoot();

//  Result := Sinks[ Item ].GetFullName( ( AddRoot ) or (( Sinks[ Item ].Owner = NIL ) or ( Sinks[ Item ].Owner.Owner = NIL )) );
  Result := Sources[ Item ].GetFullName( AddRoot );
{
  if(( AddRoot ) and ( Sinks[ Item ].Owner.Owner = NIL )) then
    Result := Sinks[ Item ].GetRootName() + '.' + OWValueToString( Sinks[ Item ], '.', False, False )

  else
    Result := OWValueToString( Sinks[ Item ], '.', AddRoot, SaveFormat );
}
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.TryLinkTo( Root : TComponent; SourceIdent : String; SourceName : String; ReadIdentAfter : String; SaveForm : Boolean ) : Boolean;
var
  Values          : TStringList;
  SourcePin       : TOWBasicPin;
  I               : Integer;
  RootName        : String;
  MyRoot          : TComponent;
  PinValueFilters : TOWPinValueFilters;

  AWriteLock      : ILockSection;

begin
  if( SaveForm ) then
    PinValueFilters := [ pvoFullList, pvoSaveValue ]

  else
    PinValueFilters := [ pvoFullList ];

  if( SourceIdent = '' ) then
    begin
    if( not SaveForm ) then
      Disconnect();

//    CheckLinks();
    Exit( True );
    end;

  AWriteLock := WriteLock();

  Result := False;

  Values := TStringList.Create();
  try
    MyRoot := GetRoot();
    if( ( MyRoot <> Root ) and ( Root <> NIL )) then
      begin
      RootName := Root.Name;
      if( not OWGetPinsValueListSingle( Values, Root, Self, '.', RootName, PinValueFilters )) then
        Result := True;

      end

    else
      if( not OWGetPinsValueList( Values, Self, '.', PinValueFilters )) then
        Result := True;

    for I := 0 to Values.Count - 1 do
      begin
      if( Values.Strings[ I ] = SourceIdent ) then
        begin
        SourcePin := TOWBasicPin( Values.Objects[ i ] );
        Connect( SourcePin );
        Result := True;
        Break;
        end;

      end;

//    CheckLinks();
  finally
    Values.Free();

  end;

end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.GetEditorString() : String;
var
  LinksCount : Integer;
  
begin
  LinksCount := SourceCount;
  if( LinksCount = 0 ) then
    Result := inherited GetEditorString()

  else
    begin
    if( LinksCount = 1 ) then
      begin
      if( FDispatcher = NIL ) then
        begin
        if( SourceCount = 1 ) then
          Result := GetLinkStr( 0 )

        else
          Result := '( ' + IntToStr( LinksCount + FDispatcher.PinCount - 1 ) + ' Links )';

        end

      else
        Result := '( ' + IntToStr( LinksCount + FDispatcher.PinCount - 1 ) + ' Links )';

      end

    else
      if( FDispatcher = NIL ) then
        Result := '( ' + IntToStr( LinksCount ) + ' Links )'

      else
        Result := '( ' + IntToStr( LinksCount + FDispatcher.PinCount - 1 ) + ' Links )';

    end;

end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.SetEditorString( ARoot : TComponent; const AValue: String ) : Boolean;
begin
  Result := TryLinkTo( ARoot, AValue, AValue, '', False );
end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.DownStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  I           : Integer;
  AReadLock   : ILockSection;
  AProcessed  : Boolean;
  ATypeDep    : TOWSourcePin;

begin
  AReadLock := ReadLock();
  if( ForPin = Self ) then
    begin
    for ATypeDep in FDataTypeDependants do
      ATypeDep.DownStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

    Exit;
    end;

  AProcessed := False;
  for I := 0 to SourceCount do
    if( Sources[ I ] is TOWSourcePin ) then
      begin
      TOWSourcePin( Sources[ I ] ).DownStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );
      AProcessed := True;
      end;

  if( not AProcessed ) then
    begin
    if( not PossibleStreamTypes.Ordered ) then
      OrderStreamTypes( PossibleStreamTypes );

    DownStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.UpStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  I           : Integer;
  AReadLock   : ILockSection;
  AProcessed  : Boolean;
  ATypeDep    : TOWSourcePin;

begin
  AReadLock := ReadLock();
  if( ForPin = Self ) then
    begin
    for ATypeDep in FDataTypeDependants do
      ATypeDep.UpStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

    Exit;
    end;

  if( HasToIgnoreUpstream() ) then
    Exit;

  AProcessed := False;
  for I := 0 to SourceCount do
    if( Sources[ I ] is TOWSourcePin ) then
      begin
      TOWSourcePin( Sources[ I ] ).UpStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );
      AProcessed := True;
      end;

  if( not AProcessed ) then
    begin
//    if( not PossibleStreamTypes.Ordered ) then
//      OrderStreamTypes( PossibleStreamTypes );

    UpStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );
    end;

end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.UpStreamBackQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult;
var
  I           : Integer;
  AReadLock   : ILockSection;
  AProcessed  : Boolean;
  ATypeDep    : TOWSourcePin;

begin
  AReadLock := ReadLock();
  Result := S_OK;

  if( ForPin = Self ) then
    begin
    for ATypeDep in FDataTypeDependants do
      begin
      Result := ATypeDep.UpStreamForthQueryPossybleInterface( IID, ForPin );
      if( Result <> S_OK ) then
        Break;

      end;

    Exit;
    end;

  AProcessed := False;
  for I := 0 to SourceCount do
    if( Sources[ I ] is TOWSourcePin ) then
      begin
      Result := TOWSourcePin( Sources[ I ] ).UpStreamBackQueryPossybleInterface( IID, ForPin );
      AProcessed := True;
      end;

  if( not AProcessed ) then
    Result := UpStreamForthQueryPossybleInterface( IID, ForPin );

end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.DownStreamBackQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult;
var
  I           : Integer;
  AReadLock   : ILockSection;
  AProcessed  : Boolean;
  ATypeDep    : TOWSourcePin;

begin
  AReadLock := ReadLock();
  Result := S_OK;

  if( ForPin = Self ) then
    begin
    for ATypeDep in FDataTypeDependants do
      begin
      Result := ATypeDep.DownStreamForthQueryPossybleInterface( IID, ForPin );
      if( Result <> S_OK ) then
        Break;

      end;

    Exit;
    end;

  AProcessed := False;
  for I := 0 to SourceCount do
    if( Sources[ I ] is TOWSourcePin ) then
      begin
      Result := TOWSourcePin( Sources[ I ] ).DownStreamBackQueryPossybleInterface( IID, ForPin );
      AProcessed := True;
      end;

  if( not AProcessed ) then
    Result := DownStreamForthQueryPossybleInterface( IID, ForPin );

end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.IsLinkedTo( PinName : String ) : Boolean;
var
  I     : Integer;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  for I := 0 to GetSourceCount() - 1 do
    begin
    if( PinName = Sources[ I ].GetFullName( True )) then // GetLinkStr( I, False )) then
      Exit( True );

    if( Sources[ I ].GetRootName() = GetRootName() ) then
      if( PinName = Sources[ I ].GetFullName( False )) then
        Exit( True );

    end;

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.GetConnectedPinCount() : Integer;
begin
  Result := SourceCount;
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.GetConnectedPin( Index : Integer ) : TOWBasicPin;
begin
  Result := Sources[ Index ];
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.ConnectAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin ) : Boolean;
begin
  if( OtherPin = Self ) then
    Exit( False );

  FImageCached := False;
  if( OtherPin <> NIL ) then
    begin
    Result := CanConnectAfter( OtherPin, NotifyAfterPin );
    if( not Result ) then
      Exit;

    end;

  Result := IntConnectAfter( OtherPin, NotifyAfterPin, OWNULLID );
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.CanConnectAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; UseConverters : Boolean ) : Boolean;
begin
  if( OtherPin = NIL ) then
    Result := True

  else
    Result := OtherPin.CanConnectAfter( Self, NotifyAfterPin, UseConverters );

end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.IntConnect( const ASourcePin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; const ADataType : TGUID );
var
  PEntry : TOWPinEntry;
  AWriteLock : ILockSection;
  AConverterClass : TOWFormatConverterClass;
  AConverter : IOWFormatConverter;
  DataTypeID : TGUID;
  ADownStreamID   : TGUID;

begin
  AWriteLock := WriteLock();

  PEntry := FSourcePins.Add();
  PEntry.RealPin := ASourcePin;
  PEntry.NotifyAfterPin := NIL; // Only SourcePins use NotifyAfterPin;
  PEntry.ConnectionPin := NIL;
  AConverter := NIL;
  if( ASourcePin is TOWSourcePin ) then
    begin
    DataTypeID := TOWSourcePin( ASourcePin ).DownStreamFindConnectionID( Self, True, False, AConverter, AConverterClass, ADataType );
    PEntry.ConnectedID := UpStreamFindConnectionID( TOWSourcePin( ASourcePin ), DataTypeID );
//  PEntry.ConnectedID := UpStreamFindConnectionID( TOWSourcePin( ASourcePin ), TOWSourcePin( ASourcePin ).GetConnectionID( Self ) ); //  UpStreamFindConnectionID( TOWSourcePin( ASourcePin ), True, True, AConverter, AConverterClass );

    ADownStreamID := TOWSourcePin( ASourcePin ).DownStreamFindConnectionID( Self, True, False, AConverter, AConverterClass, ADataType );
    ChainReconnect( ADownStreamID, PEntry.ConnectedID );
    end;
  
  PEntry.ModificationLevel := 0;
  PEntry.SubmitFunction := NIL;
{
  if( AConverterClass <> NIL ) then
    begin
    AConverter := AConverterClass.Create();
    FFormatConverters.Add( AConverter );
    end;
}
{
  if( AConverter <> NIL ) then
    begin
    PEntry.ConnectionPin := AConverter.FInputPin;
    AConverter.FOutputPin.ConnectAfter( SourcePin, NotifyAfterPin );
    TOWSourcePin( SourcePin ).FConnectionSourcePin := AConverter.FOutputPin;
    end

  else
    PEntry.ConnectionPin := SinkPin;
}
  PEntry.SubmitFunction := GetSubmitFunctionID( PEntry.ConnectedID );
  PEntry.ModificationLevel := 0;

{
  if( Owner <> NIL ) then
    RootName := OWGetMainOwnerComponent( Owner ).Name

  else
    RootName := '';
}
////  SinkPin.FDownStreamLinkName := GetLinkNameID( PEntry.ConnectedID );

//  SinkPins.Add( PEntry );
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.IntConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin; ADataType : TGUID ) : Boolean;
var
  DataTypeID      : TGUID;
  AWriteLock      : ILockSection;
  ASourcePin      : TOWBasicPin;
  AConverterClass : TOWFormatConverterClass;
  AConverter      : IOWFormatConverter;
  ADownStreamID   : TGUID;
  ARealSourcePin  : TOWBasicPin;
  PEntry          : TOWPinEntry;

begin
  if( OtherPin = NIL ) then
    Exit( False );

  FImageCached := False;
  ARealSourcePin := NIL;
  AWriteLock := WriteLock();
  for PEntry in FSourcePins do
    begin
    if( OtherPin = PEntry.RealPin ) then
      begin
      ARealSourcePin := PEntry.RealPin;
      Break;
      end;

    if( OtherPin = PEntry.ConnectionPin ) then
      Exit( True );

    end;

  if( ARealSourcePin <> NIL ) then
    if( OtherPin.GetConnectedAfterForPin( Self ) = NotifyAfterPin ) then
      Exit( True );

  if( CanConnectTo( OtherPin )) then
    begin
//    if( FDispatcher <> NIL ) then
//      Disconnect();
      
    if( OtherPin is TOWSourcePin ) then
      begin
      DisconnectFrom( OtherPin );
      PEntry := FSourcePins.Add();
      PEntry.ConnectionPin := OtherPin;
      PEntry.RealPin := OtherPin;
      PEntry.NotifyAfterPin := NIL; // Only the Source Pin uses AfterPin 
      AWriteLock := NIL;
      AWriteLock := OtherPin.WriteLock();
      TOWSourcePin( OtherPin ).IntConnect( Self, NotifyAfterPin, ADataType );
      AWriteLock := NIL;
      AWriteLock := WriteLock();
      PEntry.RealPin := OtherPin;
//      FRealSourcePin := TOWSourcePin( OtherPin );
//      FIntRealSourcePin := TOWSourcePin( OtherPin );

      Result := True;
      if( PEntry.RealPin is TOWSourcePin ) then
        begin
        DataTypeID := TOWSourcePin( PEntry.RealPin ).DownStreamFindConnectionID( Self, True, False, AConverter, AConverterClass, ADataType );
        PEntry.ConnectedID := UpStreamFindConnectionID( TOWSourcePin( OtherPin ), DataTypeID );
        PEntry.SubmitFunction := GetSubmitFunctionID( PEntry.ConnectedID );
        ASourcePin := PEntry.RealPin;
        AWriteLock := NIL;
        AWriteLock := ASourcePin.WriteLock();
        TOWSourcePin( ASourcePin ).NewConnection( Self );

//      FSourcePin.NewConnection( Self, FSourcePin.GetSubmitFunctionID( DataTypeID ));
        ADownStreamID := TOWSourcePin( ASourcePin ).DownStreamFindConnectionID( Self, True, False, AConverter, AConverterClass, ADataType );
        AWriteLock := NIL;
        AWriteLock := WriteLock();
        ChainReconnect( ADownStreamID, PEntry.ConnectedID );
        end;        
      end

    else
      Result := OtherPin.ConnectAfter( Self, NotifyAfterPin );

    OWNotifyConnected( Self, OtherPin );
    OWNotifyChangePin( Self );
    Exit;
    end;

  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.Disconnect();
var
  ADestroyLock : IOWDestroyLockSection;
  AWriteLock   : ILockSection;

  I            : Integer;

begin
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();

  BeforeDisconnect();
  inherited Disconnect();
  for I := SourceCount - 1 downto 0 do
    begin
    BeforeDisconnectFrom( Sources[ I ] );
    Sources[ I ].BeforeDisconnect();
    DisconnectFrom( Sources[ I ] );
    end;

  FSourcePins.Clear();
end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.IntDisconnectFrom( OtherPin : TOWBasicPin );
var
  DesignFormClosing : Boolean;
//  OldInDisconnect : Boolean;
  
begin
  FImageCached := False;
  DesignFormClosing := False;
  if( OwnerInDesigning( False ) ) then
    if( RootInDestroying() ) then
      DesignFormClosing := True;

  OWNotifyDisconnecting( Self, OtherPin, False );
//  OldInDisconnect := FInDisconnect;
//  FInDisconnect := True;
  IntDisconnect( OtherPin, DesignFormClosing );
//  FInDisconnect := OldInDisconnect;
  OtherPin.IntDisconnect( Self, DesignFormClosing );
  OtherPin.CheckRemove();
  OWNotifyDisconnected( Self, False );
end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.DisconnectFrom( const OtherPin : TOWBasicPin );
var
  ADestroyLock  : IOWDestroyLockSection;
  AWriteLock    : ILockSection;

begin
  FImageCached := False;
  if( not IsConnectedTo( OtherPin ) ) then
    inherited DisconnectFrom( OtherPin )

  else
    begin
    AWriteLock := WriteLock();
    ADestroyLock := FDestroyLock.DestroyLock();
    IntDisconnectFrom( OtherPin );
    end;
    
end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.IntDisconnect( const OtherPin : TOWBasicPin; DesignFormClosing : Boolean );
var
  Index         : Integer;
  I             : Integer;
  PEntry        : TOWPinEntry;
  LinkIdent     : String;
  LinkIdentName : String;
  ADestroyLock  : IOWDestroyLockSection;
  AWriteLock    : ILockSection;
  ATmpPin       : TOWUnloadedPin;

begin
  if( FInDisconnect ) then
    Exit;

  FImageCached := False;
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();
  FInDisconnect := True;

  if( DesignFormClosing ) then
    if( not RootInDestroying()) then
      begin
      LinkIdent := OtherPin.GetFullIdentName( True ); //GetLinkStr( Index, True ); //OWValueToString( FSourcePin, '.', True, True );
      LinkIdentName := OtherPin.GetFullName( True ); // GetLinkStr( Index, False );
      ATmpPin := TOWUnloadedPin.Create( GetRoot(), ptSink, LinkIdent, LinkIdentName, GetFullName( True ) );
      Connect( ATmpPin );
      end;

  FInDisconnect := False;

  for Index := SourceCount - 1 downto 0 do
    begin
    PEntry := FSourcePins[ Index ];
    if( PEntry.RealPin = OtherPin ) then
      begin
      if( PEntry.RealPin <> PEntry.ConnectionPin ) then
        begin
        for I := FFormatConverters.Count - 1 downto 0 do
          begin
          FFormatConverters[ I ].GetInstance().FOutputPin.IntDisconnect( OtherPin, False );
          if( not FFormatConverters[ I ].GetInstance().FOutputPin.IsConnected() ) then
            FFormatConverters.Delete( I );
            
          end;
        end; 
//      ANotifyAfterPin := PEntry.NotifyAfterPin;
//      Dispose( PEntry );
      FSourcePins.Delete( Index );

      ADestroyLock := NIL;
      AWriteLock := NIL;
      OWNotifyChangePin( Self );
      OtherPin.CheckRemove();
      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.DependsOn( const OtherPin : TOWBasicPin ) : Boolean;
var
  AReadLock : ILockSection;
  AEntry    : TOWPinEntry;

begin
  AReadLock := ReadLock();

  for AEntry in FSourcePins do
    begin
    if( OtherPin = AEntry.RealPin ) then
      Exit( True );

    if( AEntry.RealPin.DependsOn( OtherPin ) ) then
      Exit( True );

    end;

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.DirectDependsOn( const OtherPin : TOWBasicPin ) : Boolean;
var
  AReadLock : ILockSection;
  AEntry    : TOWPinEntry;

begin
  AReadLock := ReadLock();
  
  for AEntry in FSourcePins do
    if( AEntry.RealPin.DirectDependsOn( OtherPin ) ) then
      Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.IsConnected() : Boolean;
begin
  Result := ( FSourcePins.Count > 0 ) or inherited IsConnected();
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.IsConnectedTo( const OtherPin : TOWBasicPin ) : Boolean; //const;
var
  I         : Integer;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  
  for I := 0 to SourceCount - 1 do
    if( OtherPin = Sources[ I ] ) then
      Exit( True );

  Result := inherited IsConnectedTo( OtherPin );
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.IsConnectedByConverterTo( const OtherPin : TOWBasicPin ) : Boolean;
var
  I         : Integer;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  
  Result := inherited IsConnectedByConverterTo( OtherPin );
  if( Result ) then
    Exit;
    
  if( IsConnectedTo( OtherPin )) then
    for I := FFormatConverters.Count - 1 downto 0 do
      if( FFormatConverters[ I ].GetInstance().OutputPin.IsConnectedTo( OtherPin )) then
        Exit( True );
    
end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.Assign(Source: TPersistent);
var
  OtherPin : TOWMultiSinkPin;
  I        : Integer;

begin
  if( Source = NIL ) then
    Connect( NIL )

  else
    begin
    OtherPin := Source as TOWMultiSinkPin;
    if( OtherPin <> NIL ) then
      begin
      for I := 0 to OtherPin.SourceCount - 1 do
        Connect( OtherPin.Sources[ I ] );
        
      end
      
    else
      inherited;
      
    end;
    
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.Notify( Operation : IOWNotifyOperation ) : TOWNotifyResult;
begin
  Result := NotifyPin( NIL, Operation );
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.NotifyPin( const APin : TOWBasicPin; Operation : IOWNotifyOperation ) : TOWNotifyResult;
var
  I               : Integer;
  J               : Integer;
  State           : TOWNotifyState;
  Status          : TOWNotifyResult;
  DataTypeID      : TGUID;
  ALock           : ILockSection;
  ASourcePin      : TOWBasicPin;
  ARealSourcePin  : TOWBasicPin;
  ASourcesList    : IOWPinNotifyEntryList;
  ASourcesCount   : Integer;
  Entry           : TOWPinEntry;
  ADestroyLock    : IOWDestroyLockSection;
  AEntry          : IOWNotifyPinEntry;
  ANotifyEntry    : TOWNotifyPinEntry;
  ASourceEntry    : TOWPinEntry;

begin
  ALock := ReadLock();

  ASourcesCount := FSourcePins.Count;
//  SetLength( ASourcesList, ASourcesCount );

  ASourcesList := TOWPinNotifyEntryList.Create();
  try
    for ASourceEntry in FSourcePins do
      begin
      ANotifyEntry := TOWNotifyPinEntry.Create();
      AEntry := ANotifyEntry;
      ANotifyEntry.Section.Access.Execute(
          procedure()
          begin
            ANotifyEntry.Entry.Assign( ASourceEntry );
            if( ASourceEntry.ConnectionPin.GetOwnerComponent() is TOWFormatConverter ) then
              ASourceEntry.ConnectionPin.GetOwnerComponent().GetInterface( IOWFormatConverter, ANotifyEntry.Converter ); // Hold the converter in existance while we iterate.

            ANotifyEntry.Entry.ConnectionPin.AddNotifyEntry( AEntry );
          end
        );

      ASourcesList.Add( AEntry );
      end;

    for I := ASourcesCount - 1 downto 0 do
      begin
      ANotifyEntry := ASourcesList[ I ].GetInstance();
      if( Assigned( ANotifyEntry.Entry.SubmitFunction )) then
        if( ANotifyEntry.Entry.ConnectionPin <> ANotifyEntry.Entry.RealPin ) then
          for J := I - 1 downto 0 do
            if( ANotifyEntry.Entry.ConnectionPin = ASourcesList[ J ].GetInstance().Entry.ConnectionPin ) then
              ANotifyEntry.Entry.SubmitFunction := NIL;

      end;

    try
      if( FInSending > 200 ) then
        begin
        ALock := NIL;
        raise EOWException.Create( 'The pin depends on itself. Please protect with functional dependency.' );
        end;

      Inc( FInSending );
      Result := inherited Notify( Operation );

      for I := 0 to ASourcesCount - 1 do
        begin
        if( I < ASourcesCount - 1 ) then
          State := []

        else
          State := [nsLastIteration];

        ANotifyEntry := ASourcesList[ I ].GetInstance();
        Entry := ANotifyEntry.Entry;
        ANotifyEntry.Section.Enter();
        try
          DataTypeID := Entry.ConnectedID;
          ASourcePin := Entry.ConnectionPin;
          ARealSourcePin := Entry.RealPin;
          if(( APin = NIL ) or ( APin = ARealSourcePin )) then
            begin
            if( Assigned( Entry.SubmitFunction )) then
              begin
                try
                  ALock := NIL;
                  ADestroyLock := FDestroyLock.Lock();
                  if( ADestroyLock <> NIL ) then
                    begin
                    FOwnerLock.ExecuteUnlockAll(
                        procedure()
                        begin
                          Status := TOWSubmit( Entry.SubmitFunction )( ASourcePin, @DataTypeID, Operation, State );
                        end
                      );

                    end;

                finally
                  ALock := ReadLock();
                end;
              end;

            if( nrDataChanged in Status ) then
              begin
              if( Entry.ModificationLevel < 10000 ) then
                Inc( Entry.ModificationLevel, 4 );

              end;
        //      SinkChangedData( I );

            end;
         except
           end;

        ANotifyEntry.Section.Leave();
        end;


    finally
      ALock := WriteLock();
      if( not FInDisconnect ) then
        ReorderChangedData();

      Dec( FInSending );
    end;

  finally
    for AEntry in ASourcesList do
      AEntry.RemoveNotifyEntry();

    end;

end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.ReorderChangedData();
var
  PEntry1    : TOWPinEntry;
  I, J       : Integer;
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();

  for PEntry1 in FSourcePins do
    if( PEntry1.ModificationLevel > 0 ) then
      Dec( PEntry1.ModificationLevel );

  FSourcePins.Sort();

  for I := 0 to FSourcePins.Count - 1 do
    begin
    PEntry1 := FSourcePins[ I ];
    if( PEntry1.NotifyAfterPin <> NIL ) then
      for J := 0 to FSourcePins.Count - 1 do
        if( PEntry1.NotifyAfterPin = FSourcePins[ J ].RealPin ) then
          if( I < J ) then
            FSourcePins.Move( I, J );

    end;

end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.PinReplacedNotify( const AOldPin : TOWBasicPin; const ANewPin : TOWBasicPin );
var
  AEntry      : TOWPinEntry;
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  for AEntry in FSourcePins do
    if( AEntry.NotifyAfterPin = AOldPin ) then
      AEntry.NotifyAfterPin := ANewPin;

end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.UnlodedPinRemoved( const APin : TOWBasicPin );
var
  I : Integer;

begin
  for I := FSourcePins.Count - 1 downto 0 do
    if( FSourcePins[ I ].RealPin = APin ) then
      FSourcePins.Delete( I );

end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.BackChainReconnect( const DownIID: TGUID; const UpIID: TGUID );
var
  AWriteLock : ILockSection;
  AEntry : TOWPinEntry;
  AFound : Boolean;

begin
  AWriteLock := WriteLock();

  AFound := False;
  for AEntry in FSourcePins do
    if( AEntry.ConnectionPin is TOWSourcePin ) then
      begin
      TOWSourcePin( AEntry.ConnectionPin ).BackChainReconnect( DownIID, UpIID );
      AFound := True;
      end;

  if( not AFound ) then
    ForthChainReconnect( DownIID, UpIID );
    
end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.ForthChainReconnect( const DownIID: TGUID; const UpIID: TGUID );
var
  AEntry : TOWPinEntry;
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  for AEntry in FSourcePins do
    if( AEntry.ConnectionPin is TOWSourcePin ) then
      begin
      AEntry.ConnectedID := UpStreamFindConnectionID( TOWSourcePin( AEntry.ConnectionPin ), AEntry.ConnectionPin.GetConnectionID( Self ) );
      AEntry.SubmitFunction := GetSubmitFunctionID( AEntry.ConnectedID );
      end;

end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.GetUpStreamLinkName() : String;
var
  AConverter      : IOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  AReadLock       : ILockSection;
  AEntry          : TOWPinEntry;

begin
  AReadLock := ReadLock();

  Result := '';
  if( not IsConnected () ) then
    Exit;

  if( FDispatcher <> NIL ) then
    if( FDispatcher.PinCount > 1 ) then
      begin
      if( FDispatcher[ 0 ] = Self ) then
        Result := GetLinkNameID( FindConnectionID( FDispatcher[ 1 ], AConverter, AConverterClass, True, OWNULLID ))

      else
        Result := GetLinkNameID( FindConnectionID( FDispatcher[ 0 ], AConverter, AConverterClass, True, OWNULLID ));

      end;

  for AEntry in FSourcePins do
    begin
    if( Result <> '' ) then
      begin
      if( Result <> GetLinkNameID( AEntry.ConnectedID )) then
        Exit( 'Multiple...' );

      end
      
    else
      Result := GetLinkNameID( AEntry.ConnectedID );
      
    end;

end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.GetDownStreamLinkName() : String;
var
  AConverter      : IOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  DownStreamID    : TGUID;
  AEntry          : TOWPinEntry;
  AReadLock       : ILockSection;
  
begin
  AReadLock := ReadLock();

  Result := '';
  if( not IsConnected () ) then
    Exit;

  if( FDispatcher <> NIL ) then
    begin
    if( FDispatcher.PinCount > 1 ) then
      begin
      if( FDispatcher[ 0 ] = Self ) then
        Result := GetLinkNameID( FindConnectionID( FDispatcher[ 1 ], AConverter, AConverterClass, True, OWNULLID ))

      else
        Result := GetLinkNameID( FindConnectionID( FDispatcher[ 0 ], AConverter, AConverterClass, True, OWNULLID ));

      end;
    end;

  for AEntry in FSourcePins do
    begin
    DownStreamID := AEntry.RealPin.GetConnectionID( Self );

    if( Result <> '' ) then
      begin
      if( Result <> GetLinkNameID( DownStreamID )) then 
        Exit( 'Multiple...' );

      end

    else
      Result := GetLinkNameID( DownStreamID );
      
    end;
   
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.DoWrite() : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := ( SourceCount > 0 ) and not ( DoStateWrite() or DoStateConverterWrite() );
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.DoFormWrite() : Boolean;
begin
  Result := (( inherited DoFormWrite() ) or DoWrite() );
end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.DefineProperties(Filer: TFiler);
begin
  inherited;
  Filer.DefineProperty( 'SourcePin', ReadConnectionsData, WriteConnectionsData, DoWrite());
//  Filer.DefineProperty( 'StateConverter', ReadStateConverterConnectionsData, WriteStateConverterConnectionsData, DoStateConverterWrite());
end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.ReadConnectionsData( Reader : TReader );
var
  ReadIdent       : String;
  ReadIdentAfter  : String;
  ReadName        : String;
  AWriteLock      : ILockSection;
  ABasePin        : TOWBasicPin;
  ABasePinAfter   : TOWBasicPin;

begin
  AWriteLock := WriteLock();
  CheckVirtualList();
  
  Reader.ReadListBegin();
  while not Reader.EndOfList do
    begin
    ReadIdentAfter := '';
    ABasePinAfter := NIL;
    if( Reader.NextValue() = vaList ) then
      begin
      Reader.ReadListBegin();
      ReadIdent := Reader.ReadIdent();
      if( Reader.NextValue() = vaIdent ) then
        begin
        ReadIdentAfter := Reader.ReadIdent();
        if( not IsPreviewPin() ) then
          begin
          ApplyFormName( ReadIdentAfter );
          ABasePinAfter := GOWPins.GetByNameCreate( GetRoot(), ptSink, ReadIdentAfter, ReadIdentAfter, GetFullName( True ) );
          end;
        end;

      ReadName := ReadIdent;
      if( GOWIsStringValueType( Reader.NextValue() ) ) then
        ReadName := Reader.ReadString();
       
//      TryLinkTo( Reader.Root, ReadIdent, ReadName, ReadIdentAfter, True );

      Reader.ReadListEnd();
      end

    else
      begin
      ReadIdent := Reader.ReadIdent();
      ReadName := ReadIdent; 
//      TryLinkTo( Reader.Root, ReadIdent, ReadIdent, '', True );
      end;

    if( not IsPreviewPin() ) then
      begin
      ApplyFormName( ReadIdent );
      ApplyFormName( ReadName );
      ABasePin := GOWPins.GetByNameCreate( GetRoot(), ptSink, ReadIdent, ReadName, GetFullName( True ) );
      IntConnectAfter( ABasePin, ABasePinAfter, OWNULLID );
      end;
    end;

  Reader.ReadListEnd();
//  CheckLinks();

  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.WriteConnectionsData( Writer : TWriter );
var
  I          : Integer;
  Ident      : String;
  IdentAfter : String;
  IdentName  : String;
  AReadLock  : ILockSection;

begin
  // TODO: Write state converters data.
  AReadLock := ReadLock();
  Writer.WriteListBegin();
  try
    for I := 0 to SourceCount - 1 do
      begin
      if( Sources[ I ].IsDebugPin()) then
        Continue;

      Ident := Sources[ I ].GetFullIdentName( True ); // GetLinkStr( I, True );
      IdentName := Sources[ I ].GetFullName( True ); // GetLinkStr( I, False );
      if( Ident = IdentName ) then
        begin
        if( FSourcePins[ I ].NotifyAfterPin <> NIL ) then
          begin
          IdentAfter := FSourcePins[ I ].NotifyAfterPin.GetFullIdentName( True ); // GetLinkAfterStr( I );

          Writer.WriteListBegin();
          Writer.WriteIdent( Ident );
          Writer.WriteIdent( IdentAfter );
          Writer.WriteListEnd();
          end

        else
          Writer.WriteIdent( Ident );

        end

      else
        begin
        Writer.WriteListBegin();
        if( FSourcePins[ I ].NotifyAfterPin <> NIL ) then
          begin
          IdentAfter := FSourcePins[ I ].NotifyAfterPin.GetFullIdentName( True ); // GetLinkAfterStr( I );
  //        IdentAfter := GetLinkAfterStr( I );

  //        Writer.WriteListBegin();
          Writer.WriteIdent( Ident );
          Writer.WriteIdent( IdentAfter );
  //        Writer.WriteListEnd();
          end

        else
          Writer.WriteIdent( Ident );

        Writer.WriteString( IdentName );
        Writer.WriteListEnd();
        end;

      end;

  except
    end;

  Writer.WriteListEnd();
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.WriteNoStateListEntry( Writer : TWriter ) : Boolean;
begin
  Result := DoWrite();
  if( Result ) then
    begin
    Writer.WriteIdent( 'Sources' );
    WriteConnectionsData( Writer );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.ReadNoStateListEntry( Reader : TReader; Ident : String );
begin
  ReadConnectionsData( Reader );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
destructor TOWSinkPin.Destroy();
var
  ADestroyLock : IOWDestroyLockSection;
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();

  Connect( NIL );
  AWriteLock := NIL;

  ADestroyLock := NIL;
  AWriteLock := NIL;
  inherited;
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.PinDeletedNotify( const ADeletedPin : TOWBasicPin );
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  inherited;
  FDataTypeDependants.RemoveOne( TOWSourcePin( ADeletedPin ));
  if( ADeletedPin = FRealSourcePin ) then
    Disconnect();
     
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetPinType() : TOWPinType;
begin
  Result := ptSink;
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetConnectedPinCount() : Integer;
begin
  if( FIntRealSourcePin <> NIL ) then
    Result := 1

  else
    Result := 0;
    
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetConnectedPin( Index : Integer ) : TOWBasicPin;
begin
  Result := FIntRealSourcePin;
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetConnectedAfterForPin( const OtherPin : TOWBasicPin ) : TOWBasicPin;
begin
  if( FIntRealSourcePin <> NIL ) then
    if( OtherPin = FIntRealSourcePin ) then
      Exit( FIntRealSourcePin.GetConnectedAfterForPin( Self ));

  Result := inherited GetConnectedAfterForPin( OtherPin );
end;
//---------------------------------------------------------------------------
function TOWSinkPin.Notify( Operation : IOWNotifyOperation ) : TOWNotifyResult;
var
  ADestroyLock    : IOWDestroyLockSection;
  AReadLock1      : ILockSection;
  AReadLock       : ILockSection;
  ASourcePin      : TOWBasicPin;
//  ASubmitFunction : TOWSubmit;
  AConnectedID    : TGUID;
  AUnlock         : ILockSection;
  AConverter      : IOWFormatConverter;
  AEntry          : IOWNotifyPinEntry;
  ANotifyEntry    : TOWNotifyPinEntry;

begin
  Result := [];

  AReadLock1 := FOwnerLock.ReadLock();
  if( AReadLock1 = NIL ) then
     Exit;

  AReadLock := ReadLock();
  if( AReadLock = NIL ) then
    Exit;
    
  if( ( SourcePin <> NIL ) and ( Assigned(FSubmitFunction) ) ) then
    begin
    ASourcePin := SourcePin;
    ANotifyEntry := TOWNotifyPinEntry.Create();
    AEntry := ANotifyEntry;
    ANotifyEntry.Section.Access.Execute(
        procedure()
        begin
          ANotifyEntry.Entry.SubmitFunction := FSubmitFunction;
          ANotifyEntry.Entry.ConnectionPin := FRealSourcePin;
//          ASubmitFunction := FSubmitFunction;
          AConnectedID := FConnectedID;
          if( SourcePin.GetOwnerComponent() is TOWFormatConverter ) then
            SourcePin.GetOwnerComponent().GetInterface( IOWFormatConverter, AConverter ); // Hold the converter while the notification is sent

          ANotifyEntry.Entry.ConnectionPin.AddNotifyEntry( AEntry );
        end
      );

    AReadLock := NIL;
    try
      ADestroyLock := FDestroyLock.Lock();
      if( ADestroyLock <> NIL ) then
        begin
        AUnlock := FOwnerLock.UnlockAll();

        ANotifyEntry.Section.Enter();
        try
          Result := ANotifyEntry.Entry.SubmitFunction( ASourcePin, @AConnectedID, Operation, [nsLastIteration] );
        except
          end;

        ANotifyEntry.Section.Leave();

        AUnlock := NIL;
        end;

    finally
      ANotifyEntry.RemoveNotifyEntry();
      end;

    AReadLock := NIL;
    end;

  AReadLock := NIL;
//  AUnlock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.IntDisconnect( const OtherPin : TOWBasicPin; DesignFormClosing : Boolean );
var
  ADestroyLock     : IOWDestroyLockSection;
  AWriteLock       : ILockSection;
  ALinkStorage     : String;
  ALinkStorageName : String;
  ATmpPin          : TOWUnloadedPin;

begin
  AWriteLock := WriteLock();
  FImageCached := False;
  ADestroyLock := FDestroyLock.DestroyLock();
  if( DesignFormClosing ) then
    if( FRealSourcePin <> NIL ) then
      begin
      if( not ( RootInDestroying() )) then
        begin
        ALinkStorage := FRealSourcePin.GetFullIdentName( True ); // GetLinkStr( True ); //OWValueToString( FSourcePin, '.', True, True );
        ALinkStorageName := FRealSourcePin.GetFullName( True ); // GetLinkStr( False );
        ATmpPin := TOWUnloadedPin.Create( GetRoot(), ptSource, ALinkStorage, ALinkStorageName, GetFullName( True ) );
        FRealSourcePin.CheckRemove();
        FRealSourcePin := NIL;
        FIntRealSourcePin := NIL;
        FConnectionSourcePin := NIL;
        ATmpPin.Connect( Self );
        OWNotifyChangePin( Self );
        Exit;
        end;
      end;

  FRealSourcePin := NIL;
  FIntRealSourcePin := NIL;
  FConnectionSourcePin := NIL;
end;
//---------------------------------------------------------------------------
function TOWSinkPin.ConnectByStateAfterByType( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; const ADataType : TGUID ) : Boolean;
begin
  if( OtherPin is TOWBasicSinkPin ) then
    Exit( False );

  FImageCached := False;
  if( OtherPin = NIL ) then
    begin
    Disconnect();
    Exit( True );
    end;

// This creates problems with converters!
//  if( csLoading in FOwner.ComponentState ) then
//    Exit( inherited );

  Result := OtherPin.ConnectByStateAfterByType( Self, NotifyAfterPin, ADataType );
end;
//---------------------------------------------------------------------------
function TOWSinkPin.CanConnectAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; UseConverters : Boolean ) : Boolean;
begin
  if( OtherPin = NIL ) then
    Result := True

  else
    Result := OtherPin.CanConnectAfter( Self, NotifyAfterPin, UseConverters );

end;
//---------------------------------------------------------------------------
function TOWSinkPin.ConnectAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin ) : Boolean;
begin
  Result := ConnectAfterByType( OtherPin, NotifyAfterPin, OWNULLID );
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.SetDataTypeFor( const AOtherPin : TOWSourcePin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; ADataType : TGUID );
var
  ADataTypeID : TGUID;

begin
  ADataTypeID := TOWSourcePin( FRealSourcePin ).DownStreamFindConnectionID( Self, True, False, AConverter, AConverterClass, ADataType );
  FConnectedID := UpStreamFindConnectionID( AOtherPin, ADataTypeID );
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.IntConnectSourcePin( const OtherPin : TOWSourcePin; const NotifyAfterPin : TOWBasicPin; const ADataType : TGUID );
begin
  OtherPin.IntConnect( Self, NotifyAfterPin, ADataType );
end;
//---------------------------------------------------------------------------
function TOWSinkPin.ConnectAfterByType( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; const ADataType : TGUID ) : Boolean;
var
  DesignFormClosing : Boolean;
  AWriteLock        : ILockSection;
  ASourcePin        : TOWBasicPin;
  AConverterClass   : TOWFormatConverterClass;
  AConverter        : IOWFormatConverter;
  ADownStreamID     : TGUID;
  AFromConnect      : Boolean;

begin
  if( OtherPin = Self ) then
    Exit( False );

  FImageCached := False;
  ASourcePin := NIL;
  AWriteLock := WriteLock();
  if( OtherPin = FRealSourcePin ) then
    begin
    if( OtherPin = NIL ) then
      Exit( True );

    if( OtherPin.GetConnectedAfterForPin( Self ) = NotifyAfterPin ) then
      Exit( True );

    end;

  if( OtherPin <> NIL ) then
    if( OtherPin = FConnectionSourcePin ) then
      Exit( True );
    
  if( OtherPin = NIL ) then
    begin
    DesignFormClosing := False;
    if( OwnerInDesigning( False ) ) then
      if( RootInDestroying() ) then
        DesignFormClosing := True;

    if( FRealSourcePin <> NIL ) then
      begin
      ASourcePin := FRealSourcePin; 
      AWriteLock := NIL;
      AWriteLock := ASourcePin.WriteLock();
      ASourcePin.IntDisconnect(Self, DesignFormClosing);
      AWriteLock := NIL;
      AWriteLock := WriteLock();
      AFromConnect := ( OtherPin <> NIL );
      OWNotifyDisconnecting( Self, FRealSourcePin, AFromConnect );
      FRealSourcePin := NIL;
      FIntRealSourcePin := NIL;
      FConnectionSourcePin := NIL;
      OWNotifyDisconnected( Self, AFromConnect );
      end;

//    ASourcePin := FSourcePin;
    FSubmitFunction := NIL;

    OWNotifyChangePin( Self );

    AWriteLock := NIL;
    
    if( ASourcePin <> NIL ) then
      ASourcePin.CheckRemove();

    Exit( True );
    end;

  if( OtherPin is TOWStatePin ) then
    Exit( OtherPin.ConnectByType( Self, ADataType ) );

  if( CanConnectTo( OtherPin )) then
    begin
    if( FDispatcher <> NIL ) then
      Disconnect();
      
    if( FRealSourcePin <> NIL ) then
      begin
      DesignFormClosing := False;
      if( OwnerInDesigning( False ) ) then
        if( RootInDestroying() ) then
          DesignFormClosing := True;

      ASourcePin := FRealSourcePin;
      AWriteLock := NIL;
      AWriteLock := ASourcePin.WriteLock();
      ASourcePin.IntDisconnect(Self, DesignFormClosing);
      AFromConnect := ( OtherPin <> NIL );
      OWNotifyDisconnecting( Self, ASourcePin, AFromConnect );
      ASourcePin.CheckRemove();
      AWriteLock := NIL;
      AWriteLock := WriteLock();
      
//      ASourcePin := FSourcePin;
      FRealSourcePin := NIL;
      FIntRealSourcePin := NIL;
      FConnectionSourcePin := NIL;

      FSubmitFunction := NIL;
      OWNotifyDisconnected( Self, AFromConnect );
      end;

    if( OtherPin is TOWSourcePin ) then
      begin
      FConnectionSourcePin := TOWSourcePin( OtherPin );
      FIntRealSourcePin := TOWSourcePin( OtherPin );
      AWriteLock := NIL;
      AWriteLock := OtherPin.WriteLock();
      IntConnectSourcePin( TOWSourcePin( OtherPin ), NotifyAfterPin, ADataType );
      AWriteLock := NIL;
      AWriteLock := WriteLock();
      FRealSourcePin := TOWSourcePin( OtherPin );
      FIntRealSourcePin := TOWSourcePin( OtherPin );

      Result := True;
      if( FRealSourcePin is TOWSourcePin ) then
        begin
        SetDataTypeFor( TOWSourcePin( OtherPin ), AConverter, AConverterClass, ADataType );
        FSubmitFunction := GetSubmitFunctionID( FConnectedID );
        ASourcePin := FRealSourcePin;
        AWriteLock := NIL;
        AWriteLock := ASourcePin.WriteLock();
        TOWSourcePin( ASourcePin ).NewConnection( Self );

//      FSourcePin.NewConnection( Self, FSourcePin.GetSubmitFunctionID( DataTypeID ));
        ADownStreamID := TOWSourcePin( ASourcePin ).DownStreamFindConnectionID( Self, True, False, AConverter, AConverterClass, ADataType );
        AWriteLock := NIL;
        AWriteLock := WriteLock();
        ChainReconnect( ADownStreamID, FConnectedID );
        end;

      IntConnect( OtherPin, NotifyAfterPin, ADataType );
      end

    else
      Result := OtherPin.ConnectAfter( Self, NotifyAfterPin );

    OWNotifyConnected( Self, OtherPin );
    OWNotifyChangePin( Self );
    Exit;
    end;

  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.BackChainReconnect( const DownIID: TGUID; const UpIID: TGUID );
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();

  if(( FConnectionSourcePin <> NIL ) and ( FConnectionSourcePin is TOWSourcePin )) then
    TOWSourcePin( FConnectionSourcePin ).BackChainReconnect( DownIID, UpIID )

  else
    ForthChainReconnect( DownIID, UpIID );

end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.ForthChainReconnect( const DownIID: TGUID; const UpIID: TGUID );
var
  ATypeDep    : TOWSourcePin;
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if(( FConnectionSourcePin <> NIL ) and ( FConnectionSourcePin is TOWSourcePin )) then
    begin
    FConnectedID := UpStreamFindConnectionID( TOWSourcePin( FConnectionSourcePin ), FConnectionSourcePin.GetConnectionID( Self ) );
    FSubmitFunction := GetSubmitFunctionID( FConnectedID );
    end;
    
  for ATypeDep in FDataTypeDependants do
    ATypeDep.ForthChainReconnect( DownIID, UpIID );

end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.BackPopulateStreamChains( AChain : TOWObjectListList; AList : TOWObjectList );
begin
  AList.Add( Self );
  if(( FConnectionSourcePin <> NIL ) and ( FConnectionSourcePin is TOWSourcePin )) then
    TOWSourcePin( FConnectionSourcePin ).BackPopulateStreamChains( AChain, AList );
  
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetConnectedID() : PDataTypeID;
begin
  Result := @FConnectedID;
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.Disconnect();
var
  ADestroyLock        : IOWDestroyLockSection;
  ASourceDestroyLock  : IOWDestroyLockSection;
  AWriteLock          : ILockSection;
  ASourceWriteLock    : ILockSection;
  AUnlockLock         : ILockSection;

begin
  BeforeDisconnect();
  FImageCached := False;
  if( FRealSourcePin <> NIL ) then
    begin
    BeforeDisconnectFrom( FRealSourcePin );
    FRealSourcePin.BeforeDisconnect();
    if( not ( FRealSourcePin is TOWUnloadedPin )) then
      if( not ( FRealSourcePin.Owner is TOWFormatConverter )) then
        begin
        ASourceDestroyLock := FRealSourcePin.FDestroyLock.DestroyLock();
        ASourceWriteLock := FRealSourcePin.WriteLock();
        end;

    end;

  AUnlockLock := FOwnerLock.UnlockAll();

  ADestroyLock := FDestroyLock.DestroyLock();
  AWriteLock := TSimpleStopLockSection.Create( FIntLock );//WriteLock();
  inherited Disconnect();
  Connect( NIL );

  ADestroyLock := NIL;
  AUnlockLock := NIL;
  AWriteLock := NIL;
  ASourceDestroyLock := NIL;
  ASourceWriteLock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.DisconnectFrom( const OtherPin : TOWBasicPin );
begin
  FImageCached := False;
  if( IsConnectedTo( OtherPin )) then
    Disconnect()

  else
    inherited DisconnectFrom( OtherPin );
    
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.IntStateDisconnect();
begin
  if( FRealSourcePin <> NIL ) then
    begin
    FRealSourcePin.IntDisconnect( Self, False );
    OWNotifyDisconnecting( Self, FRealSourcePin, False );
    IntDisconnect( FRealSourcePin, False );
    if( FRealSourcePin <> NIL ) then
      FRealSourcePin.CheckRemove();

    OWNotifyDisconnected( Self, False );
    end;

end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetEditorString() : String;
begin
  if( SourcePin <> NIL ) then
    Result := GetLinkStr()

  else
    Result := inherited GetEditorString();

end;
//---------------------------------------------------------------------------
function TOWSinkPin.SetEditorString( ARoot : TComponent; const AValue: String ) : Boolean;
var
  ADispatcher : TOWStateDispatcher;

begin
  Result := IsConnected();
  if( ( AValue = '' ) or ( AValue = GOWDISCONNECTED ) ) then
    begin
    Disconnect();
    Exit;
    end;
    
  if( IsPreviewPin() ) then
    Exit;

  if( TryLinkTo( ARoot, AValue, AValue, False )) then
    Exit( True );

  ADispatcher := TOWStateDispatcher.GetByName( AValue, True );
  if( ConnectToState( ADispatcher )) then
    Result := True;

end;
//---------------------------------------------------------------------------
function TOWSinkPin.ConnectToStateAfter( ADispatcher : TOWBasicStateDispatcher; NotifyAfterPin : TOWBasicPin ) : Boolean;
var
  I : Integer;
  AWriteLock : ILockSection;
  AStateName : String;
  AOtherPin  : TOWBasicPin;

begin
  AWriteLock := WriteLock();

  Result := False;
  if( ADispatcher = FDispatcher ) then
    Exit;

  if( FDispatcher <> NIL ) then
    Disconnect();

  if( ADispatcher = NIL ) then
    Exit;
    
  IntStateDisconnect();
  if( not FInConnect ) then
    begin
    FInConnect := True;
    if( ADispatcher.PinCount = 0 ) then
      begin
      FDispatcher := ADispatcher;
      FDispatcher.AddPin( Self, Self );
      end

    else if( ADispatcher.PinCount = 1 ) then
      begin
      AStateName := ADispatcher.Name;
      AOtherPin  := ADispatcher[ 0 ];
      if( AOtherPin is TOWBasicSinkPin ) then
        begin
        FDispatcher := ADispatcher;
        FDispatcher.AddPin( Self, Self );
        end

      else
        begin
        ADispatcher.DisconnectAll();
        Result := ConnectByStateAfter( AOtherPin, NotifyAfterPin );
        end;

      ADispatcher := FDispatcher;
      end

    else
      for I := 0 to ADispatcher.PinCount - 1 do
        if( ConnectByStateAfter( ADispatcher[ I ], NotifyAfterPin )) then
          begin
          Result := True;
          Break;
          end;
          
    FInConnect := False;
    end

  else
    Result := inherited ConnectToStateAfter( ADispatcher, NotifyAfterPin );
    
  UpdateStateValue();

  if( ADispatcher <> NIL ) then
    OWNotifyConnected( Self, ADispatcher );

end;
//---------------------------------------------------------------------------
function TOWSinkPin.CanConnectToStateInt( const ADispatcher : TOWBasicStateDispatcher; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean; ADataType : TGUID ) : Boolean;
var
  I : Integer;
  AReadLock : ILockSection;

begin
  if( ADispatcher = NIL ) then
    Exit( False );

  AReadLock := ReadLock();
  if( ADispatcher = FDispatcher ) then
    Exit( True );

  for I := 0 to ADispatcher.PinCount - 1 do
    if( not( ADispatcher[ I ] is TOWBasicSinkPin )) then
      if( not CanConnectToInt( ADispatcher[ I ], AConverter, AConverterClass, UseConverters, ADataType )) then
//      if( not CanConnectTo( ADispatcher[ I ] )) then
        Exit( False );

  Result := True;
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetPrimaryConnectionID() : TGUID;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FConnectedID;
  if( Result = OWNULLID ) then
    Result := inherited GetPrimaryConnectionID();

end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetConnectionID( const OtherPin : TOWBasicPin ) : TGUID;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FConnectedID;
end;
//---------------------------------------------------------------------------
function TOWSinkPin.IsConnectedTo( const OtherPin : TOWBasicPin ) : Boolean; //const;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  
  Result := ( FIntRealSourcePin = OtherPin );
  if( not Result ) then
    Result := inherited IsConnectedTo( OtherPin );
    
end;
//---------------------------------------------------------------------------
function TOWSinkPin.IsConnectedByConverterTo( const OtherPin : TOWBasicPin ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := False;
  if( FIntRealSourcePin = OtherPin ) then
    Result := ( FIntRealSourcePin <> FConnectionSourcePin )

  else if( not Result ) then
    Result := inherited IsConnectedByConverterTo( OtherPin );
    
end;
//---------------------------------------------------------------------------
function TOWSinkPin.IsConnected() : Boolean;
begin
  Result := ( FIntRealSourcePin <> NIL ) or inherited IsConnected();
end;
//---------------------------------------------------------------------------
function TOWSinkPin.DirectDependsOn( const OtherPin : TOWBasicPin ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  
{
  if( OtherPin = FRealSourcePin ) then
    Exit( True );
}
  if( FIntRealSourcePin = NIL ) then
    Exit( False );

  Result := FIntRealSourcePin.DirectDependsOn( OtherPin );
end;
//---------------------------------------------------------------------------
function TOWSinkPin.DependsOn( const OtherPin : TOWBasicPin ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( OtherPin = FIntRealSourcePin ) then
    Exit( True );

  if( FIntRealSourcePin = NIL ) then
    Exit( False );

  Result := FIntRealSourcePin.DependsOn( OtherPin );
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.Assign(Source: TPersistent);
var
  OtherPin : TOWSinkPin;

begin
  if( Source = NIL ) then
    Connect( NIL )

  else
    begin
    OtherPin := Source as TOWSinkPin;
    if( OtherPin <> NIL ) then
      Connect( OtherPin.SourcePin )

    else
      inherited;
      
    end;
    
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.DownStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  ATypeDep  : TOWSourcePin;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( ForPin = Self ) then
    begin
    for ATypeDep in FDataTypeDependants do
      ATypeDep.DownStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

    Exit;
    end;

  if(( FRealSourcePin <> NIL ) and ( FRealSourcePin is TOWSourcePin )) then
    TOWSourcePin( FRealSourcePin ).DownStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin )

  else
    begin
    if( not PossibleStreamTypes.Ordered ) then
      OrderStreamTypes( PossibleStreamTypes );

    DownStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.UpStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  ATypeDep  : TOWSourcePin;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( ForPin = Self ) then
    begin
    for ATypeDep in FDataTypeDependants do
      ATypeDep.UpStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

    Exit;
    end;

  if( HasToIgnoreUpstream() ) then
    Exit;

  if(( FRealSourcePin <> NIL ) and ( FRealSourcePin is TOWSourcePin )) then
    TOWSourcePin( FRealSourcePin ).UpStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin )

  else
    begin
//    if( not PossibleStreamTypes.Ordered ) then
//      OrderStreamTypes( PossibleStreamTypes );
      
    UpStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );
    end;

end;
//---------------------------------------------------------------------------
function TOWSinkPin.RequestInterface(const IID: TGUID; out Obj) : HResult;
var
  AReadLock : ILockSection;
  
begin
  AReadLock := ReadLock();
  Result := inherited RequestInterface( IID, Obj );
  if( Result = S_OK ) then
    Result := DownStreamQueryPossybleInterface( IID );

end;

//---------------------------------------------------------------------------
function TOWSinkPin.UpStreamBackQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult;
var
  ATypeDep  : TOWSourcePin;
  AReadLock : ILockSection;
  
begin
  AReadLock := ReadLock();
  Result := S_OK;

  if( ForPin = Self ) then
    begin
    for ATypeDep in FDataTypeDependants do
      begin
      Result := ATypeDep.UpStreamForthQueryPossybleInterface( IID, ForPin );
      if( Result <> S_OK ) then
        Break;
        
      end;
      
    Exit;
    end;

  if(( FRealSourcePin <> NIL ) and ( FRealSourcePin is TOWSourcePin )) then
    Result := TOWSourcePin( FRealSourcePin ).UpStreamBackQueryPossybleInterface( IID, ForPin )

  else
    Result := UpStreamForthQueryPossybleInterface( IID, ForPin );

end;
//---------------------------------------------------------------------------
function TOWSinkPin.DownStreamBackQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult;
var
  ATypeDep  : TOWSourcePin;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := S_OK;

  if( ForPin = Self ) then
    begin
    for ATypeDep in FDataTypeDependants do
      begin
      Result := ATypeDep.DownStreamForthQueryPossybleInterface( IID, ForPin );
      if( Result <> S_OK ) then
        Break;
        
      end;
      
    Exit;
    end;

  if(( FRealSourcePin <> NIL ) and ( FRealSourcePin is TOWSourcePin )) then
    Result := TOWSourcePin( FRealSourcePin ).DownStreamBackQueryPossybleInterface( IID, ForPin )

  else
    Result := DownStreamForthQueryPossybleInterface( IID, ForPin );

end;
//---------------------------------------------------------------------------
function TOWSinkPin.DownStreamQueryPossybleInterface( const IID: TGUID ) : HResult;
var
  ATypeDep  : TOWSourcePin;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := inherited DownStreamQueryPossybleInterface( IID );
  if( Result = S_OK ) then
    for ATypeDep in FDataTypeDependants do
      begin
      Result := ATypeDep.DownStreamBackQueryPossybleInterface( IID, Self );
      if( Result <> S_OK ) then
        Exit;

      end;

end;
//---------------------------------------------------------------------------
function TOWSinkPin.UpStreamQueryPossybleInterface( const IID: TGUID ) : HResult;
var
  ATypeDep  : TOWSourcePin;
  AReadLock : ILockSection;
  
begin
  AReadLock := ReadLock();
  Result := inherited UpStreamQueryPossybleInterface( IID );

  for ATypeDep in FDataTypeDependants do
    begin
    Result := ATypeDep.UpStreamBackQueryPossybleInterface( IID, Self );
    if( Result <> S_OK ) then
      Exit;

    end;

end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.DownStreamFillPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  ATypeDep  : TOWSourcePin;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  inherited DownStreamFillPossibleStreamTypes( PossibleStreamTypes, ForPin );
  for ATypeDep in FDataTypeDependants do
    ATypeDep.DownStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.UpStreamFillPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  ATypeDep  : TOWSourcePin;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  inherited UpStreamFillPossibleStreamTypes( PossibleStreamTypes, ForPin );
  if( HasToIgnoreUpstream() ) then
    Exit;

  for ATypeDep in FDataTypeDependants do
    ATypeDep.UpStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.SetSourcePin( SourcePin : TOWBasicPin );
begin
  Connect( SourcePin );
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetSourcePin() : TOWBasicPin;
var
  AReadLock : ILockSection;
  
begin
  AReadLock := ReadLock();
  Result := FIntRealSourcePin;
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetFormatConverter() : IOWFormatConverter;
var
  AReadLock : ILockSection;
  
begin
  AReadLock := ReadLock();

  Result := NIL;
  
  if( FRealSourcePin <> FConnectionSourcePin ) then
    if( FConnectionSourcePin <> NIL ) then 
      FConnectionSourcePin.Owner.GetInterface( IOWFormatConverter, Result );

end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetUpStreamLinkName() : String;
var
  AConverter : IOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  AReadLock : ILockSection;
  
begin
  AReadLock := ReadLock();
  
  if( FRealSourcePin <> NIL ) then
    Result := GetLinkNameID( FConnectedID )

  else if( FDispatcher <> NIL ) then
    begin
    if( FDispatcher.PinCount > 1 ) then
      begin
      if( FDispatcher[ 0 ] = Self ) then
        Result := GetLinkNameID( FindConnectionID( FDispatcher[ 1 ], AConverter, AConverterClass, True, OWNULLID ))

      else
        Result := GetLinkNameID( FindConnectionID( FDispatcher[ 0 ], AConverter, AConverterClass, True, OWNULLID ));

      end

    else
      Result := '';
      
    end
    
  else
    Result := '';

end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetDownStreamLinkName() : String;
var
  AConverter      : IOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  DownStreamID    : TGUID;
  AReadLock       : ILockSection;
  
begin
  AReadLock := ReadLock();
  
  if( FRealSourcePin <> NIL ) then
    begin
    DownStreamID := FRealSourcePin.GetConnectionID( Self );
    Result := GetLinkNameID( DownStreamID );
    end

  else if( FDispatcher <> NIL ) then
    begin
    if( FDispatcher.PinCount > 1 ) then
      begin
      if( FDispatcher[ 0 ] = Self ) then
        Result := GetLinkNameID( FindConnectionID( FDispatcher[ 1 ], AConverter, AConverterClass, True, OWNULLID ))

      else
        Result := GetLinkNameID( FindConnectionID( FDispatcher[ 0 ], AConverter, AConverterClass, True, OWNULLID ));

      end

    else
      Result := '';
      
    end
    
  else
    Result := '';
    
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetUpStreamID() : TGUID;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( IsConnected() ) then
    Result := FConnectedID

  else
    Result := OWNULLID;
    
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetDownStreamID() : TGUID;
var
  AConverter : IOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  I               : Integer;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( FRealSourcePin <> NIL ) then
    Result := FRealSourcePin.GetConnectionID( Self )

  else if( FDispatcher <> NIL ) then
    begin
    if( FDispatcher.PinCount > 1 ) then
      begin
      for I := 0 to FDispatcher.PinCount - 1 do
        if( FDispatcher.Pins[ I ] is TOWStatePin ) then
          begin
          Result := FDispatcher.Pins[ I ].FindConnectionID( Self, AConverter, AConverterClass, True, OWNULLID );
          Break;
          end;
{
      if( FDispatcher[ 0 ] = Self ) then
        Result := FindConnectionID( FDispatcher.ConnectionPins[ 1 ], AConverter, AConverterClass, True )

      else
        Result := FDispatcher.Pins[ 0 ].FindConnectionID( Self, AConverter, AConverterClass, True );
}
//        Result := FindConnectionID( FDispatcher.ConnectionPins[ 0 ], AConverter, AConverterClass, True );

      end

    else
      Result := OWNULLID;
      
    end

  else
    Result := OWNULLID;

  if( Result = OWNULLID ) then
    if( FConnectionSourcePin <> NIL ) then 
      Result := FConnectionSourcePin.FindConnectionID( Self, AConverter, AConverterClass, True, OWNULLID );

end;
//---------------------------------------------------------------------------
function TOWSinkPin.DoStateConverterWrite() : Boolean;
begin
  Result := ( FDispatcher <> NIL ) and ( FConnectionSourcePin <> NIL ); 
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.ReadStateConverterConnectionsData( Reader : TReader );
var
  AReadIdent      : String;
  AReadDispName   : String;
  AReadName       : String;
  AAfterReadIdent : String;
  AAfterReadName  : String;
  AWriteLock      : ILockSection;
  AString         : String;
  AGuidFrom       : TGUID;
  AGuidTo         : TGUID;
  AConverterClass : TOWFormatConverterClass;
  AConverter      : IOWFormatConverter;

begin
  AWriteLock := WriteLock();
  CheckVirtualList();

  Reader.ReadListBegin();
  if( Reader.NextValue() = vaList ) then
    begin
    Reader.ReadListBegin();
    AReadDispName := Reader.ReadString();

    while not Reader.EndOfList do
      begin
      AAfterReadIdent := '';
      AAfterReadName := '';
      AReadName := '';
      if( Reader.NextValue() = vaList ) then
        begin
        Reader.ReadListBegin();
        AReadIdent := Reader.ReadIdent();
        if( Reader.NextValue() = vaIdent ) then
          AAfterReadIdent := Reader.ReadIdent();

        if( GOWIsStringValueType( Reader.NextValue() ) ) then
          AReadName := Reader.ReadString();

        if( GOWIsStringValueType( Reader.NextValue() ) ) then
          AAfterReadName := Reader.ReadString();
          
        Reader.ReadListEnd();
        end

      else
        AReadName := Reader.ReadIdent();
        
      end;
      
    Reader.ReadListEnd();
    end

  else
    AReadDispName := Reader.ReadString();

  AString := Reader.ReadString();
  AGuidFrom := StringToGUID( AString );
  AString := Reader.ReadString();
  AGuidTo := StringToGUID( AString );

  if( OWGetConverter( AGuidFrom, AGuidTo, AConverterClass )) then
    begin
    AConverter := AConverterClass.Create();
    AConverter.GetInstance().FOutputPin.ConnectAfter( Self, NIL );
    FDispatcher := TOWStateDispatcher.GetByNameCreate( Self, AReadDispName, OwnerInDesigning( False ) );

    AConverter.GetInstance().FInputPin.FDispatcher := FDispatcher;
    FDispatcher.AddPin( AConverter.GetInstance().FInputPin, Self );
    FDispatcher.FFormatConverters.Add( AConverter );
    end;

  OWNotifyConnected( Self, FDispatcher );
  OWNotifyChangePin( Self );
  UpdateStateValue();
  
  Reader.ReadListEnd();
  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.WriteStateConverterConnectionsData( Writer : TWriter );
var
  I             : Integer;
  Ident         : String;
  IdentName     : String;

  PinRootName   : String;
  ThePinOwner   : TComponent;
  IsSaved       : Boolean;
  ExternalLink  : Boolean;
  AReadLock     : ILockSection;
  AConverter    : IOWFormatConverter;
  AGuidFrom     : TGUID;
  AGuidTo       : TGUID;

begin
  AReadLock := ReadLock();

  if( FDispatcher = NIL ) then
    Exit;
    
  IsSaved := False;
  PinRootName := GetRootName();
  ThePinOwner := GetRoot();
  if( TOWStateDispatcher( FDispatcher ).FCountSaved = 0 ) then
    TOWStateDispatcher( FDispatcher ).ResetFormsSave(); // It's the first pin to save.

  Writer.WriteListBegin();
  if( ( ThePinOwner = NIL ) or ( not TOWStateDispatcher( FDispatcher ).IsFormSaved( ThePinOwner ))) then
    begin
    if( TOWStateDispatcher( FDispatcher ).IsCrosForm()) then
      begin
      Writer.WriteListBegin();
      Writer.WriteString( FDispatcher.Name );
      IsSaved := True;
      for I := 0 to FDispatcher.PinCount - 1 do
        begin
        if( FDispatcher.Pins[ I ] = NIL ) then
          ExternalLink := True

        else if( PinRootName <> FDispatcher.Pins[ I ].GetRootName() ) then
          ExternalLink := True

        else
          ExternalLink := False;

        if( ExternalLink ) then
          begin
          Ident := FDispatcher.Pins[ I ].GetFullIdentName( True );
          if( Ident = FDispatcher.Pins[ I ].GetFullName( True ) ) then
            Writer.WriteIdent( Ident )

          else
            begin
            IdentName := FDispatcher.Pins[ I ].GetFullName( True );
            Writer.WriteListBegin();
            Writer.WriteIdent( Ident );
            Writer.WriteString( IdentName );
            Writer.WriteListEnd();
            end;
          end;
        end;

      Writer.WriteListEnd();
      end;
    end;

//  if( FDispatcher[ FDispatcher.PinCount - 1 ] = Self ) then
  if( TOWStateDispatcher( FDispatcher ).FCountSaved = FDispatcher.PinCount ) then
    TOWStateDispatcher( FDispatcher ).ResetFormsSave() // It's the last pin. We are done with saving.

  else
    TOWStateDispatcher( FDispatcher ).AddFormSaved( ThePinOwner );

  if( not IsSaved ) then
    Writer.WriteString( FDispatcher.Name );

  AConverter := FConnectionSourcePin.Owner as TOWFormatConverter;
  AGuidFrom := AConverter.GetInstance().InputPin.GetDownStreamID(); // FConnectedID;
  AGuidTo := AConverter.GetInstance().OutputPin.GetPrimaryConnectionID();
  Writer.WriteString( GUIDToString( AGuidFrom ) );
  Writer.WriteString( GUIDToString( AGuidTo ) );
//  AGuid := GetPrimaryConnectionID(); // FConnectionSourcePin.;
  Writer.WriteListEnd();
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.ReadConnectionsData( Reader : TReader );
var
  ReadName      : String;
  ReadIdent     : String;
  IdentAfter    : String;
  AWriteLock    : ILockSection;
  ABasePin      : TOWBasicPin;
  ABaseAfterPin : TOWBasicPin;

begin
  AWriteLock := WriteLock();
  CheckVirtualList();

  ABaseAfterPin := NIL;
  if( Reader.NextValue() = vaList ) then
    begin
    Reader.ReadListBegin();
    if( Reader.NextValue() = vaList ) then
      begin
      Reader.ReadListBegin();
      if( Reader.NextValue() = vaList ) then
        begin
        Reader.ReadListBegin();
        ReadIdent := Reader.ReadIdent();
        ReadName := Reader.ReadString();
        Reader.ReadListEnd();
        end

      else
        begin
        ReadIdent := Reader.ReadIdent();
        ReadName := ReadIdent;
        end;

      IdentAfter := Reader.ReadIdent();      
      if( not IsPreviewPin() ) then
        begin
        ApplyFormName( IdentAfter );
        ABaseAfterPin := GOWPins.GetByNameCreate( GetRoot(), ptSink, IdentAfter, IdentAfter, GetFullName( True ) );
        end;

      Reader.ReadListEnd();
      end

    else
      begin
      ReadIdent := Reader.ReadIdent();
      ReadName := Reader.ReadString();
      end;
      
    Reader.ReadListEnd();
    end

  else
    begin
    ReadIdent := Reader.ReadIdent();
    ReadName := ReadIdent;
    end;

  if( not IsPreviewPin() ) then
    begin
    ApplyFormName( ReadIdent );
    ApplyFormName( ReadName );
    ABasePin := GOWPins.GetByNameCreate( GetRoot(), ptSource, ReadIdent, ReadName, GetFullName( True ) );
    ConnectAfter( ABasePin, ABaseAfterPin );
    end;

  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
function TOWSinkPin.TryLinkTo( Root : TComponent; Soutce : String; SoutceName : String; SaveForm : Boolean ) : Boolean;
var
  AWriteLock : ILockSection;
  ASourcePin : TOWBasicPin;

begin
  AWriteLock := WriteLock();
  if( Soutce = 'nil' ) then
    begin
    Disconnect();
    Exit( True );
    end;
  
  if( not IsPreviewPin() ) then
    begin
    ApplyFormName( Soutce );
    ApplyFormName( SoutceName );
    ASourcePin := GOWPins.GetByNameCreate( GetRoot(), ptSource, Soutce, SoutceName, GetFullName( True ) );
    Result := Connect( ASourcePin );
    end

  else
    Exit( False );

end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.WriteConnectionsData( Writer : TWriter );
var
  Ident       : String;
  IdentName   : String;
  IdentAfter  : String;
  AReadLock   : ILockSection;
  AAfterPin   : TOWBasicPin; 

begin
  AReadLock := ReadLock();

  Ident := FRealSourcePin.GetFullIdentName( True ); // GetLinkStr( True );
  IdentName := FRealSourcePin.GetFullName( True ); // GetLinkStr( False );
  AAfterPin := FRealSourcePin.GetConnectedAfterForPin( Self );
  if( AAfterPin <> NIL ) then
    begin
    IdentAfter := AAfterPin.GetFullIdentName( True );
    Writer.WriteListBegin();
    Writer.WriteListBegin();
    if( Ident = IdentName ) then
      begin
      Writer.WriteIdent( Ident );
      Writer.WriteIdent( IdentAfter );
      end

    else
      begin
      Writer.WriteListBegin();
      Writer.WriteIdent( Ident );
      Writer.WriteString( IdentName );
      Writer.WriteListEnd();
      Writer.WriteIdent( IdentAfter );
      end;

    Writer.WriteListEnd();
    Writer.WriteListEnd();
    end
    
  else
    begin 
    if( Ident = IdentName ) then
      Writer.WriteIdent( Ident )

    else
      begin
      Writer.WriteListBegin();
      Writer.WriteIdent( Ident );
      Writer.WriteString( IdentName );
      Writer.WriteListEnd();
      end;
    end;
    
end;
//---------------------------------------------------------------------------
function TOWSinkPin.WriteNoStateListEntry( Writer : TWriter ) : Boolean;
begin
  Result := DoWrite(); 
  if( Result ) then
    WriteConnectionsData( Writer );
    
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.ReadNoStateListEntry( Reader : TReader; Ident : String );
var
  ReadName      : String;
//  IdentAfter    : String;
  AWriteLock    : ILockSection;
  ABasePin      : TOWBasicPin;
  ABaseAfterPin : TOWBasicPin;

begin
  if( Ident = '' ) then
    begin
    ReadConnectionsData( Reader );
    Exit;
    end;

  AWriteLock := WriteLock();
  CheckVirtualList();

  ABaseAfterPin := NIL;

  ReadName := Ident;

  if( not IsPreviewPin() ) then
    begin
    ApplyFormName( Ident );
    ApplyFormName( ReadName );
    ABasePin := GOWPins.GetByNameCreate( GetRoot(), ptSource, Ident, ReadName, GetFullName( True ) );
    ConnectAfter( ABasePin, ABaseAfterPin );
    end;

  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.UpdateStateValue();
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  if( FDispatcher <> NIL ) then
    FDispatcher.NewConnection( Self );
    
end;
//---------------------------------------------------------------------------
function TOWSinkPin.IsLinkedTo( PinName : String ) : Boolean;
begin
  Result := ( GetLinkStr() = PinName ); 
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetLinkStr() : String;
var
  AddRoot : Boolean;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( FRealSourcePin = NIL ) then
    Exit( '' );

  AddRoot := FRealSourcePin.GetRootName() <> GetRootName();

  Result := FRealSourcePin.GetFullIdentName( AddRoot );
end;
//---------------------------------------------------------------------------
function TOWSinkPin.DoWrite() : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := ( SourcePin <> NIL ) and not ( DoStateWrite() or DoStateConverterWrite() );
  if( Result ) then
    Result := not SourcePin.IsDebugPin();

end;
//---------------------------------------------------------------------------
function TOWSinkPin.DoFormWrite() : Boolean;
begin
  Result := (( inherited DoFormWrite() ) or DoWrite() );
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.DefineProperties(Filer: TFiler);
begin
  inherited;
  Filer.DefineProperty( 'SourcePin', ReadConnectionsData, WriteConnectionsData, DoWrite());
  Filer.DefineProperty( 'StateConverter', ReadStateConverterConnectionsData, WriteStateConverterConnectionsData, DoStateConverterWrite());
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function OWIsDescendantOf( PropertyObject : TObject; AType : TClass ) : Boolean;
var
  AncestorClass : TClass;

begin
  if( PropertyObject = NIL ) then
    Exit( False );

  if( AType = PropertyObject.ClassType() ) then
    Exit( True );

  AncestorClass := PropertyObject.ClassParent();
  while( AncestorClass <> NIL ) do
    begin
    if( AType = AncestorClass ) then
      Exit( True );

    AncestorClass := AncestorClass.ClassParent();
    end;

  Result := False;
end;
//---------------------------------------------------------------------------
function OWGetInjectedObject( AClass : TObject; PinObject : TObject; SaveValue : Boolean; var ResultName : String ) : Boolean;
begin
  if( Assigned( GOWGetInjectedObjectFunc )) then
    Result := GOWGetInjectedObjectFunc( AClass, PinObject, SaveValue, ResultName )

  else
    Result := False;

end;
//---------------------------------------------------------------------------
function OWGetInjectedClassPropertiesOfType( AClass : TObject; AType : TClass; AStrings : TStrings; SaveValue : Boolean ) : Boolean;
begin
  if( Assigned( GOWGetInjectedClassPropertiesOfTypeFunc )) then
    Result := GOWGetInjectedClassPropertiesOfTypeFunc( AClass, AType, AStrings, SaveValue )

  else
    Result := False;

end;
//---------------------------------------------------------------------------
function OWGetClassPropertyNameForPropertyObject( AObject : TObject; PinObject : TObject; SaveValue : Boolean ) : String;
var
  APropertyStack  : ILinkedList<TObject>;
  AClassType      : TClass;

{$IFDEF USE_NEW_RTTI}
  function GetClassPropertyNameForPropertyObjectPrefix( APrefix : String; AObject : TObject; PinObject : TObject; ALevel : Integer; SaveValue : Boolean ) : String;
  var
    AProperty       : ISinglePropertyInfo;
    APropertyObject : TObject;
    ADoBreak        : Boolean;
    PinIndex        : Integer;
    ACollection     : TCollection;
    J               : Integer;
    AObjectStr      : String;
    AEnumChildren   : IEnumerateChildren;
    ASubObject      : TObject;

  begin
    Result := '';

    if( AObject is TComponent )then
      if( csDestroying in TComponent( AObject ).ComponentState )then
        Exit;

    try
      for AProperty in AObject.TypeInfo().GetSingleProperties( [ mvPublished ], [ tkClass ] ) do
        begin
        APropertyObject := AProperty.GetValue( AObject ).AsObject();
        if( APropertyObject <> NIL ) then
          begin
          if( APropertyObject = PinObject ) then
            begin
            Result := APrefix + AProperty.Name;
            Break;
            end

          else if( APropertyObject is TOWPinList )then
            begin
            ADoBreak := False;
            for PinIndex := 0 to TOWPinList( APropertyObject ).Count - 1 do
              if( OWIsDescendantOf( TOWPinList( APropertyObject ).Pins[ PinIndex ], AClassType )) then
                if( TOWPinList( APropertyObject ).Pins[ PinIndex ] = PinObject ) then
                  begin
                  Result := APrefix + AProperty.Name + '.' + TOWPinList( APropertyObject ).Names[ PinIndex ];
                  ADoBreak := True;
                  Break;
                  end;

            if( ADoBreak ) then
              Break;

            end

          else if( APropertyObject is TPersistent )then
            begin
            if( not ( APropertyObject is TComponent )) then
              if( not APropertyStack.Query().Contains( APropertyObject )) then
                begin
                APropertyStack.Add( APropertyObject );
                Result := GetClassPropertyNameForPropertyObjectPrefix( APrefix + AProperty.Name + '.', APropertyObject, PinObject, ALevel + 1, SaveValue );
                if( APropertyObject is TCollection ) then
                  begin
                  ACollection := TCollection( APropertyObject );
                  for J := 0 to ACollection.Count - 1 do
                    begin
                    APropertyStack.Add( ACollection.Items[ J ] );
                    if( SaveValue ) then
                      AObjectStr := AProperty.Name + '._Item' + IntToStr( J )

                    else
                      AObjectStr := AProperty.Name + '[' + IntToStr( J ) + ']';

                    Result := GetClassPropertyNameForPropertyObjectPrefix( APrefix + AObjectStr + '.', ACollection.Items[ J ], PinObject, ALevel + 1, SaveValue );
                    if( Result <> '' ) then
                      Break;

                    end;
                  end

                else if( APropertyObject.IfSupports<IEnumerateChildren>( AEnumChildren )) then
                  begin
                  J := 0;
                  for ASubObject in AEnumChildren do
                    begin
                    APropertyStack.Add( ASubObject );
                    if( SaveValue ) then
                      AObjectStr := AProperty.Name + '._Item' + IntToStr( J )

                    else
                      AObjectStr := AProperty.Name + '[' + IntToStr( J ) + ']';

                    Result := GetClassPropertyNameForPropertyObjectPrefix( APrefix + AObjectStr + '.', ASubObject, PinObject, ALevel + 1, SaveValue );
                    if( Result <> '' ) then
                      Break;

                    Inc( J );
                    end;
                  end;

                if( Result <> '' ) then
                  Break;

                end;
              end;
            end;
          end;

    except
      Result := '';
      end;

  end;
{$ELSE}
  function GetClassPropertyNameForPropertyObjectPrefix( APrefix : String; AObject : TObject; PinObject : TObject; ALevel : Integer; SaveValue : Boolean ) : String;
  var
    PropList        : PPropList;
    ClassTypeInfo   : PTypeInfo;
    ClassTypeData   : PTypeData;
    i               : Integer;
    J               : Integer;
    TypeInfo        : TTypeInfo;
    APropertyObject : TObject;
    PinIndex        : Integer;
    DoBreak         : Boolean;
    ACollection     : TCollection;
    AObjectStr      : String;
    AEnumChildren   : IEnumerateChildren;
    ASubObject      : TObject;

  begin
    Result := '';

    if( AObject is TComponent )then
      if( csDestroying in TComponent( AObject ).ComponentState )then
        Exit;

  // This method retrieves the property names and types for the given object
  //  and adds that information to the AStrings parameter.

    ClassTypeInfo := PTypeInfo(AObject.ClassInfo());
    ClassTypeData := GetTypeData(ClassTypeInfo);

    if( ClassTypeData.PropCount <> 0 ) then
      begin
      // allocate the memory needed to hold the references to the TPropInfo
      // structures on the number of properties.
      GetMem( PropList, sizeof( PPropInfo ) * ClassTypeData.PropCount );
      try
        // fill PropList with the pointer references to the TPropInfo structures
        GetPropInfos( ClassTypeInfo, PropList);
        for i := 0 to ClassTypeData.PropCount - 1 do
          begin
          TypeInfo := PropList[i].PropType^^;
          if( TypeInfo.Kind = tkClass ) then
            begin
            APropertyObject := GetObjectProp( AObject, PropList[i]);

            if( APropertyObject <> NIL ) then
              begin
              if( APropertyObject = PinObject ) then
                begin
                Result := APrefix + String(PropList[i].Name);
                Break;
                end

              else if( APropertyObject is TOWPinList )then
                begin
                DoBreak := False;
                for PinIndex := 0 to TOWPinList( APropertyObject ).Count - 1 do
                  if( OWIsDescendantOf( TOWPinList( APropertyObject ).Pins[ PinIndex ], AClassType )) then
                    if( TOWPinList( APropertyObject ).Pins[ PinIndex ] = PinObject ) then
                      begin
                      Result := APrefix + String(PropList[i].Name) + '.' + TOWPinList( APropertyObject ).Names[ PinIndex ];
                      DoBreak := True;
                      Break;
                      end;

                if( DoBreak ) then
                  Break;

                end

              else if( APropertyObject is TPersistent )then
                begin
                if( not ( APropertyObject is TComponent )) then
                  begin
                  if( not APropertyStack.Query().Contains( APropertyObject )) then
                    begin
                    APropertyStack.Add( APropertyObject );
                    Result := GetClassPropertyNameForPropertyObjectPrefix( APrefix + String(PropList[i].Name) + '.', APropertyObject, PinObject, ALevel + 1, SaveValue );
                    if( APropertyObject is TCollection ) then
                      begin
                      ACollection := TCollection( APropertyObject );
                      for J := 0 to ACollection.Count - 1 do
                        begin
                        APropertyStack.Add( ACollection.Items[ J ] );
                        if( SaveValue ) then
                          AObjectStr := String(PropList[i].Name) + '._Item' + IntToStr( J )

                        else
                          AObjectStr := String(PropList[i].Name) + '[' + IntToStr( J ) + ']';

                        Result := GetClassPropertyNameForPropertyObjectPrefix( APrefix + AObjectStr + '.', ACollection.Items[ J ], PinObject, ALevel + 1, SaveValue );
                        if( Result <> '' ) then
                          Break;

                        end;
                      end

                    else if( APropertyObject.IfSupports<IEnumerateChildren>( AEnumChildren )) then
                      begin
                      J := 0;
                      for ASubObject in AEnumChildren do
                        begin
                        APropertyStack.Add( ASubObject );
                        if( SaveValue ) then
                          AObjectStr := String(PropList[i].Name) + '._Item' + IntToStr( J )

                        else
                          AObjectStr := String(PropList[i].Name) + '[' + IntToStr( J ) + ']';

                        Result := GetClassPropertyNameForPropertyObjectPrefix( APrefix + AObjectStr + '.', ASubObject, PinObject, ALevel + 1, SaveValue );
                        if( Result <> '' ) then
                          Break;

                        Inc( J );
                        end;
                      end;

                    if( Result <> '' ) then
                      Break;

                    end;
                  end;
                end;
              end;
            end;
          end;

      except
        Result := '';
        end;

      FreeMem( PropList );
      end;

  end;
{$ENDIF}
//---------------------------------------------------------------------------
begin
  if( OWGetInjectedObject( AObject, PinObject, SaveValue, Result )) then
    Exit;

  APropertyStack := TLinkedList<TObject>.Create();
  AClassType := PinObject.ClassType();
  Result := GetClassPropertyNameForPropertyObjectPrefix( '', AObject, PinObject, 0, SaveValue );
end;
//---------------------------------------------------------------------------
{$IFDEF USE_NEW_RTTI}
function OWGetClassPropertiesOfTypePrefix( APrefix : String; AObject : TObject; AType : TClass; AStrings : TStrings; SaveValue : Boolean; ALevel : Integer; APropertyStack : ILinkedList<TObject> ) : Boolean;
var
  AContext        : TRttiContext;
  ARTType         : TRttiType;
  AProperty       : TRttiProperty;
  APropertyObject : TObject;
  PinIndex        : Integer;
  J               : Integer;
  AEnumChildren   : IEnumerateChildren;
  ASubObject      : TObject;
  AName           : String;

begin
  Result := True;

  if( ALevel > 20 ) then
    Exit( False );

  if( AObject is TComponent )then
    if( csDestroying in TComponent( AObject ).ComponentState )then
      Exit;

  try
    ARTType := AContext.GetType( AObject.ClassType() );
    for AProperty in ARTType.GetProperties() do
      begin
      if( ( AProperty.Visibility = mvPublished ) and ( AProperty.PropertyType.TypeKind = tkClass )) then
        begin
        APropertyObject := AProperty.GetValue( AObject ).AsObject();
        if( APropertyObject <> NIL ) then
          begin
          if( OWIsDescendantOf( APropertyObject, AType )) then
            AStrings.AddObject( APrefix + AProperty.Name, APropertyObject );

          if( APropertyObject is TOWPinList )then
            begin
            for PinIndex := 0 to TOWPinList( APropertyObject ).Count - 1 do
              begin
              if( OWIsDescendantOf( TOWPinList( APropertyObject ).Pins[ PinIndex ], AType )) then
                begin
                if( SaveValue ) then
                  AStrings.AddObject( APrefix + AProperty.Name + '._Pin' + IntToStr( PinIndex ), TOWPinList( APropertyObject ).Pins[ PinIndex ] )

                else
                  AStrings.AddObject( APrefix + AProperty.Name + '.' + TOWPinList( APropertyObject ).Names[ PinIndex ], TOWPinList( APropertyObject ).Pins[ PinIndex ] );

                end;
              end;
            end

          else if( APropertyObject is TPersistent )then
            begin
            if( not ( APropertyObject is TComponent )) then
              if( not APropertyStack.Query().Contains( APropertyObject )) then
                begin
                APropertyStack.Add( APropertyObject );
                if( APropertyObject is TCollection )then
                  begin
                  for J := 0 to TCollection( APropertyObject ).Count - 1 do
                    begin
                    ASubObject := TCollection( APropertyObject ).Items[ J ];
                    AName := APrefix + AProperty.Name + '[' + IntToStr( J ) + ']';
                    APropertyStack.Add( ASubObject );
                    if( OWIsDescendantOf( ASubObject, AType )) then
                      AStrings.AddObject( AName, ASubObject );

                    if( OWGetClassPropertiesOfTypePrefix( AName + '.', ASubObject, AType, AStrings, SaveValue, ALevel + 1, APropertyStack )) then
                      Result := True;

                    end;
                  end

                else if( TInterface.IfSupports<IEnumerateChildren>( APropertyObject, AEnumChildren )) then
                  begin
                  J := 0;
                  for ASubObject in AEnumChildren do
                    begin
                    AName := APrefix + AProperty.Name + '[' + IntToStr( J ) + ']';
                    APropertyStack.Add( ASubObject );
                    if( OWIsDescendantOf( ASubObject, AType )) then
                      AStrings.AddObject( APrefix + AName, ASubObject );

                    if( OWGetClassPropertiesOfTypePrefix( AName + '.', ASubObject, AType, AStrings, SaveValue, ALevel + 1, APropertyStack )) then
                      Result := True;

                    Inc( J );
                    end;
                  end;

                if( OWGetClassPropertiesOfTypePrefix( APrefix + AProperty.Name + '.', APropertyObject, AType, AStrings, SaveValue, ALevel + 1, APropertyStack )) then
                  Result := True;

                end;

            end;
          end;
        end;
      end;

  except
    Result := False;
    end;

end;
{$ELSE}
function OWGetClassPropertiesOfTypePrefix( APrefix : String; AObject : TObject; AType : TClass; AStrings : TStrings; SaveValue : Boolean; ALevel : Integer; APropertyStack : ILinkedList<TObject> ) : Boolean;
var
  PropList        : PPropList;
  ClassTypeInfo   : PTypeInfo;
  ClassTypeData   : PTypeData;
  I               : Integer;
  J               : Integer;
  TypeInfo        : TTypeInfo;
  PinIndex        : Integer;
  APropertyObject : TObject;
  AEnumChildren   : IEnumerateChildren;
  ASubObject      : TObject;
  AName           : String;

begin
  Result := True;

  if( ALevel > 20 ) then
    Exit( False );

  if( AObject is TComponent )then
    if( csDestroying in TComponent( AObject ).ComponentState )then
      Exit;

// This method retrieves the property names and types for the given object
//  and adds that information to the AStrings parameter.

  ClassTypeInfo := PTypeInfo(AObject.ClassInfo());
  ClassTypeData := GetTypeData(ClassTypeInfo);

  if( ClassTypeData.PropCount <> 0 ) then
    begin
    // allocate the memory needed to hold the references to the TPropInfo
    // structures on the number of properties.
    GetMem( PropList, sizeof( PPropInfo ) * ClassTypeData.PropCount );
    try
      // fill PropList with the pointer references to the TPropInfo structures
      GetPropInfos( ClassTypeInfo, PropList );
      for I := 0 to ClassTypeData.PropCount - 1 do
        begin
        TypeInfo := PropList[I].PropType^^;
        if ( TypeInfo.Kind = tkClass ) then
          begin
          APropertyObject := GetObjectProp( AObject, PropList[I] );
          if( APropertyObject <> NIL ) then
            begin
            if( OWIsDescendantOf( APropertyObject, AType )) then
              AStrings.AddObject( APrefix + String(PropList[I].Name), APropertyObject );

            if( APropertyObject is TOWPinList )then
              begin
              for PinIndex := 0 to TOWPinList( APropertyObject ).Count - 1 do
                if( OWIsDescendantOf( TOWPinList( APropertyObject ).Pins[ PinIndex ], AType )) then
                  begin
                  if( SaveValue ) then
                    AStrings.AddObject( APrefix + String(PropList[I].Name) + '._Pin' + IntToStr( PinIndex ), TOWPinList( APropertyObject ).Pins[ PinIndex ] )

                  else
                    AStrings.AddObject( APrefix + String(PropList[I].Name) + '.' + TOWPinList( APropertyObject ).Names[ PinIndex ], TOWPinList( APropertyObject ).Pins[ PinIndex ] );

                  end;

              end

            else if( APropertyObject is TPersistent )then
              begin
              if( not ( APropertyObject is TComponent )) then
                if( not APropertyStack.Query().Contains( APropertyObject )) then
                  begin
                  APropertyStack.Add( APropertyObject );
                  if( APropertyObject is TCollection )then
                    begin
                    for J := 0 to TCollection( APropertyObject ).Count - 1 do
                      begin
                      ASubObject := TCollection( APropertyObject ).Items[ J ];
                      AName := APrefix + String(PropList[I].Name) + '[' + IntToStr( J ) + ']';
                      if( OWIsDescendantOf( ASubObject, AType )) then
                        AStrings.AddObject( APrefix + AName, ASubObject );

                      APropertyStack.Add( ASubObject );
                      if( OWGetClassPropertiesOfTypePrefix( AName + '.', ASubObject, AType, AStrings, SaveValue, ALevel + 1, APropertyStack )) then
                        Result := True;

                      end;
                    end

                  else if( APropertyObject.IfSupports<IEnumerateChildren>( AEnumChildren )) then
                    begin
                    J := 0;
                    for ASubObject in AEnumChildren do
                      begin
                      APropertyStack.Add( ASubObject );
                      AName := APrefix + String(PropList[I].Name) + '[' + IntToStr( J ) + ']';
                      if( OWIsDescendantOf( ASubObject, AType )) then
                        AStrings.AddObject( APrefix + AName, ASubObject );

                      if( OWGetClassPropertiesOfTypePrefix( AName + '.', ASubObject, AType, AStrings, SaveValue, ALevel + 1, APropertyStack )) then
                        Result := True;

                      Inc( J );
                      end;
                    end;

                  if( OWGetClassPropertiesOfTypePrefix( APrefix + String(PropList[I].Name) + '.', APropertyObject, AType, AStrings, SaveValue, ALevel + 1, APropertyStack )) then
                    Result := True;

                  end;

              end;
            end;
          end;
        end;
    except
      Result := False;
      end;

    FreeMem( PropList );
    end;

end;
{$ENDIF}
//---------------------------------------------------------------------------
function OWGetClassPropertiesOfType( AClass : TObject; AType : TClass; AStrings : TStrings; SaveValue : Boolean ) : Boolean;
var
  APropertyStack : ILinkedList<TObject>;

begin
  Result := OWGetInjectedClassPropertiesOfType( AClass, AType, AStrings, SaveValue );
  if( Result ) then
    Exit;

  APropertyStack := TLinkedList<TObject>.Create();
  Result := OWGetClassPropertiesOfTypePrefix( '', AClass, AType, AStrings, SaveValue, 0, APropertyStack );
end;
//---------------------------------------------------------------------------
function OWValueToString( APin : TOWBasicPin; Linking : String; AddRoot : Boolean; SaveValue : Boolean ) : String;
var
  PinIndex : Integer;
  LinkPath : String;

begin
  if( APin = NIL ) then
    Exit( '' );

  if( APin.Owner = NIL ) then
    begin
    if( APin is TOWPin ) then
      Exit( TOWPin( APin ).FLoadName );

    Exit( '(No owner)' );
    end;

  if( APin.FOwnerPinList <> NIL ) then
    begin
    LinkPath := APin.Owner.Name + '.' + OWGetClassPropertyNameForPropertyObject( APin.Owner, APin.FOwnerPinList, SaveValue );
    for PinIndex := 0 to APin.FOwnerPinList.Count - 1 do
      if( APin.FOwnerPinList.Pins[ PinIndex ] = APin ) then
        begin
        if( SaveValue ) then
          LinkPath := LinkPath + '._Pin' + IntToStr( PinIndex )

        else
          LinkPath := LinkPath + '.' + APin.FOwnerPinList.Names[ PinIndex ];

        Break;
        end;

    end

  else
    LinkPath := APin.Owner.Name + '.' + OWGetClassPropertyNameForPropertyObject( APin.Owner, APin, SaveValue );

  Result := LinkPath;
  if( AddRoot ) then
    if( APin.GetRoot() <> APin.Owner ) then
      Result := APin.GetRootName() + '.' + LinkPath;

end;
//---------------------------------------------------------------------------
function OWGetPinsValueListSingle( List : TStrings; OwnerComponent : TComponent;  APin : TOWPin; Link : String; RootName : String; ValueFilters : TOWPinValueFilters ) : Boolean;
begin
  OwnerComponent := OWGetMainOwnerComponent( OwnerComponent );
  Result := OWGetPinsValueListSingleRoot( List, OwnerComponent, APin, Link, RootName, ValueFilters );
end;
//---------------------------------------------------------------------------
function OWGetPinsValueListSingleRoot( List : TStrings; OwnerComponent : TComponent;  APin : TOWPin; Link : String; RootName : String; ValueFilters : TOWPinValueFilters ) : Boolean;
var
  IntList     : TStringList;
  i, j        : Integer;
  Component   : TComponent;
  CanConnect  : Boolean;

begin
  Result := True;
  IntList := TStringList.Create();
  for i := 0 to OwnerComponent.ComponentCount - 1 do
    begin
    Component := OwnerComponent.Components [ i ];
    IntList.Clear();
    if( not OWGetClassPropertiesOfType( Component, TOWPin, IntList, pvoSaveValue in ValueFilters )) then
      Result := False;
      
    for j := 0 to IntList.Count - 1 do
      begin
      if( TOWPin( IntList.Objects [ j ] ).Owner <> Component ) then
        Continue;
                                  
      if( pvoFullList in ValueFilters ) then
        begin
        CanConnect := APin.IsCompatible( TOWBasicPin( IntList.Objects [ j ] ));
        if( CanConnect and ( pvoExcludeDirectDependency in ValueFilters )) then
          CanConnect := not APin.DirectDependsOn( TOWBasicPin( IntList.Objects [ j ] ));
          
        end

      else
        CanConnect := APin.CanConnectTo( TOWBasicPin( IntList.Objects [ j ] ));

      if( CanConnect ) then
        if( RootName <> '' ) then
          List.AddObject( RootName + Link + Component.Name + Link + IntList.Strings [ j ], IntList.Objects [ j ] )

        else
          List.AddObject( Component.Name + Link + IntList.Strings [ j ], IntList.Objects [ j ] );
        
      end;               

    if( Component.ComponentCount <> 0 ) then
      if( not OWGetPinsValueListSingleRoot( List, Component, APin, Link, RootName, ValueFilters )) then
        Result := False;
      
    end;
                       
  IntList.Free();
end;

//---------------------------------------------------------------------------
{
type TOWModulesColection = class(TStringList)
public
  procedure GetModules( const FileName, UnitName, FormName, DesignClass: String; CoClasses: TStrings );

end;

procedure TOWModulesColection.GetModules( const FileName, UnitName, FormName, DesignClass: String; CoClasses: TStrings );
begin
  if( FormName <> '' ) then
    Add( FormName );

end;
}

function OWGetPinsValueList( List : TStrings; StreamPin : TOWPin; Link : String; ValueFilters : TOWPinValueFilters ) : Boolean;
var
  MainComponent : TComponent;
//  Forms : TOWModulesColection;
//  Form : TCustomForm;

begin
//  Forms := TOWModulesColection.Create();
//  MainComponent := GetMainOwnerComponent( StreamPin.Owner );
  
//  if( Assigned( Designer )) then
//    Designer.GetProjectModules( Forms.GetModules );
    
  MainComponent := StreamPin.GetRoot();
  Result := OWGetPinsValueListSingleRoot( List, MainComponent, StreamPin, Link, '', ValueFilters );

//  Forms.Free();
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStreamInfoExtention.Create( AExtentionId : TGUID );
begin
  inherited Create();
  FExtentionId := AExtentionId;
end;
//---------------------------------------------------------------------------
function TOWStreamInfoExtention.GetExtentionId() : TGUID;
begin
  Result := FExtentionId;
end;
//---------------------------------------------------------------------------
function TOWStreamInfoExtention.IsInModule( HInstance : NativeInt ) : Boolean;
var
  AClass : TClass;

begin
  AClass := ClassType();
  while( True ) do
    begin
    if( NativeInt( FindClassHInstance( AClass )) = HInstance ) then
      Exit( True );

    if( AClass = TOWStreamInfoExtention ) then
      Break;

    AClass := AClass.ClassParent;
    end;

  Result := False;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWPinStreamType.Create();
begin
  inherited Create( True );
end;
//---------------------------------------------------------------------------
procedure TOWPinStreamType.AddType( ID : TGUID; ASubmitFunction : TOWSubmit; AOverrride : Boolean; AReorder : Boolean = False );
var
  I     : Integer;
  AItem : TOWPinTypeEntry;

begin
  for I := 0 to Count - 1 do
    begin
    AItem := Self[ I ];
    if( AItem.ID = ID ) then
      begin
      if( not AOverrride ) then
        Exit;

      AItem.SubmitFunction := ASubmitFunction;
      if( AReorder ) then
        Exchange( I, Count - 1 );

      Exit;
      end;
    end;

  AItem := TOWPinTypeEntry.Create();
  AItem.ID := ID;
  AItem.SubmitFunction := ASubmitFunction;
  Add( AItem );
end;
//---------------------------------------------------------------------------
procedure TOWPinStreamType.RemoveType( ID : TGUID );
var
  I : Integer;

begin
  for I := 0 to Count - 1 do
    if( Self[ I ].ID = ID ) then
      begin
      Delete( I );
      Break;
      end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
destructor TOWBasicPinList.Destroy();
var
  APin : TOWBasicPin;

begin
  inherited;
  for APin in GOWUnloadedPins do
    if( APin.FOwnerPinList = Self ) then
      APin.FOwnerPinList := NIL;

end;
//---------------------------------------------------------------------------
function TOWBasicPinList.IsPreviewPinList() : Boolean;
var
  AComponent  : TComponent;
  ARoot       : TComponent;

begin
  AComponent := GetPinListOwner();
  if( AComponent = NIL ) then
    Exit( False );

  if( not( csDesigning in AComponent.ComponentState )) then
    Exit( False );

  ARoot := OWGetMainOwnerComponent( AComponent );
  if( OWInheritsFromClassName( ARoot.ClassType(), 'TPreviewForm' )) then
    Exit( True );

  if( ARoot.Name = 'Root' ) then
    if( ARoot.ClassName().StartsWith( ARoot.ClassParent().ClassName() + '_' )) then
      Exit( True );

  Exit( False );
end;
//---------------------------------------------------------------------------
procedure TOWBasicPinList.Notify( Operation : IOWNotifyOperation );
var
  APin : TOWBasicPin;

begin
  for APin in Self do
    APin.Notify( Operation );

end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetEnumerator() : IEnumerator<TOWBasicPin>;
begin
  Result := TBasicListEnumerator<TOWBasicPin>.Create( GetCount, GetPin );
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetReverseEnumerator() : IEnumerator<TOWBasicPin>;
begin
  Result := GetReverse().GetEnumerator();
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetReverse() : IReverseEnumeratorHost<TOWBasicPin>;
begin
  Result := TAutoReverseEnumeratorHost<TOWBasicPin>.Create( GetCount, GetPin );
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.Find( ACompareFunc : TFunc<TOWBasicPin, Boolean> ) : TOWBasicPin;
var
  AItem : TOWBasicPin;

begin
  for AItem in Self do
    if( ACompareFunc( AItem )) then
      Exit( AItem );

  Exit( NIL );
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.Find( ACompareFunc : TFunc<TOWBasicPin, Boolean>; out ARes : TOWBasicPin ) : Boolean;
var
  AItem : TOWBasicPin;

begin
  for AItem in Self do
    if( ACompareFunc( AItem )) then
      begin
      ARes := AItem;
      Exit( True );
      end;

  Exit( False );
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.Query( AReverse : Boolean = False ) : IContainerQuery<TOWBasicPinList, IArrayList<TOWBasicPin>, TOWBasicPin>;
begin
  if( AReverse ) then
    Result := TArrayList<TOWBasicPin>.CreateQuery<TOWBasicPinList>( Self, GetReverseEnumerator )

  else
    Result := TArrayList<TOWBasicPin>.CreateQuery<TOWBasicPinList>( Self, GetEnumerator );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWPinList.Create( AOwner : TComponent; APinCategories : TOWPinCategories; IsPinsOwner : Boolean );
var
  AWriteLock : ILockSection;

begin
  inherited Create();

  AWriteLock := WriteLock();
  FOwnerLock := TOWFakeLock.Create();

  FPinCategories := APinCategories;

  FOwner := AOwner;
  FPinsList := TStringList.Create();
  FPinsOwner := IsPinsOwner;
end;
//---------------------------------------------------------------------------
constructor TOWPinList.CreateLock( AOwner: TComponent; AOwnerLock : IBasicLock; APinCategories : TOWPinCategories; IsPinsOwner : Boolean );
var
  AWriteLock : ILockSection;

begin
  inherited Create();

  AWriteLock := WriteLock();

  FPinCategories := APinCategories;

  if( AOwnerLock = NIL ) then
    FOwnerLock := TOWFakeLock.Create()

  else
    FOwnerLock := AOwnerLock;

  FOwner := AOwner;
  FPinsList := TStringList.Create();
  FPinsOwner := IsPinsOwner;
end;
//---------------------------------------------------------------------------
destructor TOWPinList.Destroy();
var
  AWriteLock : ILockSection;

begin
//  CheckLoaded();

  AWriteLock := WriteLock();
  Clear();
  FreeAndNil( FPinsList );

  AWriteLock := NIL;
  
  inherited;
end;
//---------------------------------------------------------------------------
procedure TOWPinList.AfterConstruction();
begin
  inherited;
  GlobalStorageSection.Access.Execute(
      procedure()
      begin
        GOWPinLists.Add( Self );
      end
    );

  OWNotifyAddPinList( Self );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.BeforeDestruction();
begin
  OWNotifyRemovePinList( Self );
  GlobalStorageSection.Access.Execute(
      procedure()
      begin
        GOWPinLists.RemoveOne( Self );
      end
    );

  inherited;
end;
//---------------------------------------------------------------------------
function TOWPinList.ReadLock()  : ILockSection;
begin
  Result := TSimpleReadLockSection.Create( FIntLock, FOwnerLock );
end;
//---------------------------------------------------------------------------
function TOWPinList.WriteLock() : ILockSection;
begin
  Result := TSimpleWriteLockSection.Create( FIntLock, FOwnerLock );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.Clear();
var
  APin        : TOWBasicPin;
  AWriteLock  : ILockSection;
  I           : Integer;

begin
  AWriteLock := WriteLock();
  for APin in Self do
    if( APin.FOwnerPinList = Self ) then
      begin
      APin.FOwnerPinList := NIL;
      OWNotifyChangePin( APin );
      end;

  if( FPinsOwner ) then
    begin
    FInUnload := True;
    for APin in Self do
      APin.Free();

    FInUnload := False;
    end;

  for I := 0 to FPinsList.Count - 1 do
    GOWUnloadedPins.RemoveNoList( TOWBasicPin( FPinsList.Objects[ I ] ));

  FPinsList.Clear();

  FLastIndicatedCount := -1;

  OWNotifyChangePinList( Self );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.Disconnect();
var
  APin  : TOWBasicPin;

begin
  for APin in Self do
    APin.Disconnect();

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWPinList.CleanUnloaded();
var
  I : Integer;

begin
  if( FOwner <> NIL ) then
    if( not (( csDesigning in FOwner.ComponentState ) or ( csLoading in FOwner.ComponentState ))) then
      for I := Count - 1 downto 0 do
        if( Pins[ I ] is TOWUnloadedPin ) then
          begin
          Delete( I );
          Dec( FUnloadedCount );
          if( FUnloadedCount = 0 ) then
            Break;

          end;

end;
//---------------------------------------------------------------------------
procedure TOWPinList.ApplyFormName( var Ident : String );
begin
  if( FLoadFormName <> '' ) then
    if( Pos( FLoadFormName, Ident ) = 1 ) then
      begin
      System.Delete( Ident, 1, Length( FLoadFormName ));
      Ident := GetRoot().Name + Ident;
      end;
     
end;
//---------------------------------------------------------------------------
function TOWPinList.GetPinListOwner() : TComponent;
begin
  Result := FOwner;
end;
//---------------------------------------------------------------------------
function TOWPinList.GetRoot() : TComponent;
begin
  Result := FOwner;
  if( Result <> NIL ) then
    Result := OWGetMainOwnerComponent( Result );

end;
//---------------------------------------------------------------------------
function TOWPinList.GetCount() : Integer;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( not FInUnload ) then
    begin
    FInUnload := True;
    if( FUnloadedCount > 0 ) then
      CleanUnloaded();

    FInUnload := False;
    end;

  Result := FPinsList.Count - FUnloadedCount;
end;
//---------------------------------------------------------------------------
procedure TOWPinList.SetCount( ACount : Integer );
begin
end;
//---------------------------------------------------------------------------
function TOWPinList.GetPin( Item : Integer ) : TOWBasicPin;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( not FInUnload ) then
    begin
    FInUnload := True;
    if( FUnloadedCount > 0 ) then
      CleanUnloaded();

    FInUnload := False;
    end;

  Result := TOWPin( FPinsList.Objects[ Item ] );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.SetPin( Item : Integer; Pin : TOWBasicPin );
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  GOWUnloadedPins.RemoveNoList( TOWBasicPin( FPinsList.Objects[ Item ] ));
  FPinsList.Objects[ Item ] := Pin;
  OWNotifyChangePin( Pin );
end;
//---------------------------------------------------------------------------
function TOWPinList.GetName( Item : Integer ) : String;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( FOverrideName <> '' ) then
    Exit( FOverrideName );

  Result := FPinsList.Strings[ Item ];
  if( Result = '' )then
    Result := 'Pin [' + IntToStr( Item ) + ']';

end;
//---------------------------------------------------------------------------
procedure TOWPinList.SetPinName( Pin : TOWPin; Name : String );
var
  I           : Integer;
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  for I := 0 to Count - 1 do
    if( Pins[ I ] = Pin ) then
      begin
      Names[ I ] := Name;
      Exit;
      end;
      
end;
//---------------------------------------------------------------------------
function TOWPinList.GetStoredName( Item : Integer ) : String;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FPinsList.Strings[ Item ];
end;
//---------------------------------------------------------------------------
function TOWPinList.GetPinCategories() : TOWPinCategories;
var
  APin : TOWBasicPin;

begin
  Result := FPinCategories;
  for APin in Self do
    begin
    case( APin.GetPinType() ) of
      ptSource : Result := Result + [ pcSource ];
      ptSink, ptMultiSink : Result := Result + [ pcSink ];
      ptState : Result := Result + [ pcState ];
      end;

    end;

end;
//---------------------------------------------------------------------------
function TOWPinList.GetListName() : String;
begin
  Result := GetListNameInt( False );
end;
//---------------------------------------------------------------------------
function TOWPinList.GetListNameInt( SaveValue : Boolean ) : String;
begin
  Result := OWGetClassPropertyNameForPropertyObject( FOwner, Self, SaveValue )
end;
//---------------------------------------------------------------------------
procedure TOWPinList.SetName( Item : Integer; Name : String );
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  if( Item >= FPinsList.Count ) then
    Exit;

  if( Name = 'Pin [' + IntToStr( Item ) + ']' ) then
    Name := '';

  if( FPinsList.Strings[ Item ] <> Name ) then
    begin
    FPinsList.Strings[ Item ] := Name;
    FLastIndicatedCount := -1;
    OWNotifyChangePin( Pins[ Item ] );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWPinList.Swap( Index1 : Integer; Index2 : Integer );
var
  TmpObject   : TObject;
  TmpName     : String;
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  TmpName := FPinsList.Strings[ Index1 ];
  TmpObject := FPinsList.Objects[ Index1 ];

  OWNotifyPinListPinsSwapped( Self, TOWPin( FPinsList.Objects[ Index1 ] ), Index1, TOWPin( FPinsList.Objects[ Index2 ] ), Index2 );
  
  FPinsList.Strings[ Index1 ] := FPinsList.Strings[ Index2 ];
  FPinsList.Objects[ Index1 ] := FPinsList.Objects[ Index2 ];

  FPinsList.Strings[ Index2 ] := TmpName;
  FPinsList.Objects[ Index2 ] := TmpObject;
  OWNotifyChangePinList( Self );
end;
//---------------------------------------------------------------------------
function TOWPinList.IndexOf( Item : TOWBasicPin ) : Integer;
var
  I         : Integer;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  for I := 0 to FPinsList.Count - 1 do
    if( FPinsList.Objects[ I ] = Item )then
      Exit( I );

  Result := -1;
end;
//---------------------------------------------------------------------------
procedure TOWPinList.Add( Item : TOWBasicPin );
begin
  AddNamed( Item, '' );
  OWNotifyChangePin( Item );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.AddNamed( Item : TOWBasicPin; Name : String );
var
  AWriteLock    : ILockSection;
  I             : Integer;
  WasAdded      : Boolean;
  AUnloadedPin  : TOWUnloadedPin;

begin
  AWriteLock := WriteLock();
  WasAdded := False;
  if( Item is TOWUnloadedPin ) then
    begin
    TOWUnloadedPin( Item ).FOwnedByList := True; 
    Inc( FUnloadedCount );
    end
     
  else if( FUnloadedCount > 0 ) then
    for I := 0 to FPinsList.Count - 1 do
      begin
      if( Pins[ I ] is TOWUnloadedPin ) then
        begin
        AUnloadedPin := TOWUnloadedPin( Pins[ I ] );
        FPinsList.Strings[ I ] := Name;
        FPinsList.Objects[ I ] := Item;
        WasAdded := True;
        if( Item <> NIL ) then
          if( Item.GetOwnerComponent() = FOwner ) then
            Item.FOwnerPinList := Self;

        AUnloadedPin.PopulatePinAndDestroy( Item );

        Dec( FUnloadedCount );
        Break;
        end;
      end;

  if( not WasAdded ) then
    FPinsList.AddObject( Name, Item );
    
  if( Item <> NIL ) then
    if( Item.GetOwnerComponent() = FOwner ) then
      begin
      Item.FOwnerPinList := Self;
      Item.FName := '';
      OWNotifyChangePin( Item );
      end;

  OWNotifyChangePinList( Self );
  OWNotifyPinListPinAdded( Self, Item, FPinsList.Count - 1 );
  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWPinList.InsertNamed( Index : Integer; Item : TOWBasicPin; Name : String );
var
  AWriteLock : ILockSection;
//  I : Integer;
//  WasAdded : Boolean;
//  AUnloadedPin : TOWUnloadedPin;

begin
  AWriteLock := WriteLock();
  if( Index >= Count ) then
    begin
    AddNamed( Item, Name );
    Exit;
    end;

//  WasAdded := False;
  if( Item is TOWUnloadedPin ) then
    begin
    TOWUnloadedPin( Item ).FOwnedByList := True; 
    Inc( FUnloadedCount );
    end;

  FPinsList.InsertObject( Index, Name, Item );    
  if( Item <> NIL ) then
    if( Item.GetOwnerComponent() = FOwner ) then
      begin
      Item.FOwnerPinList := Self;
      OWNotifyChangePin( Item );
      end;

  OWNotifyChangePinList( Self );
  OWNotifyPinListPinAdded( Self, Item, FPinsList.Count - 1 );
  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWPinList.Insert( Index : Integer; Item : TOWBasicPin );
begin
  InsertNamed( Index, Item, '' );
  OWNotifyChangePin( Item );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.Delete( Index : Integer );
var
  AWriteLock  : ILockSection;
  AItem       : TOWPin;

begin
  AWriteLock := WriteLock();
  OWNotifyPinListPinRemoved( Self, TOWPin( FPinsList.Objects[ Index ] ), Index );

  AItem := TOWPin( FPinsList.Objects[ Index ] );
  if( AItem.FOwnerPinList = Self ) then
    begin
    AItem.FOwnerPinList := NIL;
    OWNotifyChangePin( AItem );
    end;

  if( FPinsOwner ) then
    AItem.Free();

  GOWUnloadedPins.RemoveNoList( TOWBasicPin( FPinsList.Objects[ Index ] ));
  FPinsList.Delete( Index );
  OWNotifyChangePinList( Self );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.Remove( Item : TOWBasicPin );
var
  I             : Integer;
  J             : Integer;
  AWriteLock    : ILockSection;
  AUnlodedPin   : TOWBasicPin;
  AIdent        : String;
  ADisplayName  : String;
  APinType      : TOWPinType;

begin
  AWriteLock := WriteLock();
  I := 0;

  while( I < FPinsList.Count ) do
    begin
    if( FPinsList.Objects[ I ] = Item )then
      begin
      OWNotifyPinListPinRemoved( Self, TOWPin( FPinsList.Objects[ I ] ), I );
      if( not FPinsOwner ) then
        if( Item.FOwnerPinList = Self ) then
          begin
          Item.FOwnerPinList := NIL;
          OWNotifyChangePin( Item );
          end;

      if( FOwner = NIL ) then
        begin
        GOWUnloadedPins.RemoveNoList( TOWBasicPin( FPinsList.Objects[ I ] ));
        FPinsList.Delete( I );
        end

      else if( csLoading in FOwner.ComponentState ) then
        begin
        AIdent := Item.GetFullIdentName( True );
        ADisplayName := Item.GetFullName( True );
        APinType := Item.GetPinType();

        AUnlodedPin := TOWUnloadedPin.Create( GetRoot(), APinType, AIdent, ADisplayName, GetListName() );
        TOWUnloadedPin( AUnlodedPin ).FOwnerPinList := Self;

        TOWUnloadedPin( AUnlodedPin ).FOwnedByList := True;
        Inc( FUnloadedCount );

        GOWUnloadedPins.RemoveNoList( TOWBasicPin( FPinsList.Objects[ I ] ));
        FPinsList.Objects[ I ] := AUnlodedPin;

        for J := 0 to Item.GetConnectedPinCount() - 1 do
          AUnlodedPin.ConnectAfter( Item.GetConnectedPin( J ), Item.GetConnectedAfterPin( J ));

        end

      else
        begin
        GOWUnloadedPins.RemoveNoList( TOWBasicPin( FPinsList.Objects[ I ] ));
        FPinsList.Delete( I );
        end;

      if( FPinsOwner ) then
        begin
        if( Item.FOwnerPinList = Self ) then
          Item.FOwnerPinList := NIL;

        if( not ( Item is TOWUnloadedPin )) then
          Item.Free();

        end;

      Break;
      end

    else
      Inc( I );

    end;

  OWNotifyChangePinList( Self );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.ConnectPin( CurrentPinIndex : Integer; AType : TOWPinType; AToType : TOWPinType; Ident : String; IdentName : String );
var
  ATmpPin   : TOWBasicPin;
  ABasePin  : TOWBasicPin;
  ATmpIdent : String;

begin
  if( FPinsList.Count > CurrentPinIndex ) then
    begin
    ATmpPin := Pins[ CurrentPinIndex ];

    if( not ATmpPin.IsPreviewPin()) then
      begin
      ABasePin := GOWUnloadedPins.GetByIdentName( GetRoot(), ATmpPin.GetFullIdentName( False ) );
      if( ABasePin = NIL ) then
        ABasePin := GOWUnloadedPins.GetByDisplayName( GetRoot(), ATmpPin.GetFullName( False ) );

      if( ABasePin <> NIL ) then
        if( ABasePin <> ATmpPin ) then
          TOWUnloadedPin( ABasePin ).PopulatePinAndDestroy( ATmpPin );

      end;
    end

  else
    begin
    ATmpPin := NIL;
    if( not IsPreviewPinList()) then
      while( FPinsList.Count <= CurrentPinIndex ) do
        begin
        ATmpIdent := GetRoot().Name + '.' + FOwner.Name + '.' + GetListNameInt( True ) + '._Pin' + IntToStr( FPinsList.Count );
        ApplyFormName( ATmpIdent );
        ATmpPin := GOWPins.GetByNameCreate( GetRoot(), AType, ATmpIdent, ATmpIdent, ATmpIdent );
        Add( ATmpPin );
        end;
      
    end;

  if( not IsPreviewPinList()) then
    begin
    ApplyFormName( Ident );
    ApplyFormName( IdentName );
    ABasePin := GOWPins.GetByNameCreate( GetRoot(), AToType, Ident, IdentName, ATmpPin.GetFullName( True ) );
    ATmpPin.Connect( ABasePin );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWPinList.ReadPinsOwner( Reader : TReader );
begin
  Reader.ReadBoolean();
end;
//---------------------------------------------------------------------------
procedure TOWPinList.ReadConnectionsData( Reader : TReader );
var
  Ident           : String;
  IdentName       : String;
  CurrentPinIndex : Integer;
  AWriteLock      : ILockSection;

begin
  AWriteLock := WriteLock();
  
  CurrentPinIndex := 0;
  Reader.ReadListBegin();
  while not Reader.EndOfList do
    begin
    if( Reader.NextValue() <> vaList ) then
      begin
      Ident := Reader.ReadIdent();
      if( Ident <> 'nil' ) then
        begin
        if( Ident = 'State' ) then
          begin
          Reader.ReadListBegin();
          if( Count > CurrentPinIndex ) then
            Pins[ CurrentPinIndex ].ReadStateConnectionsData( Reader )

          else
            begin
            while not Reader.EndOfList do
              begin
              if( Reader.NextValue = vaIdent ) then
                begin
                Ident := Reader.ReadIdent(); 
                Break;
                end;

              IdentName := Reader.ReadString();
              ConnectPin( CurrentPinIndex, ptState, ptState, Ident, IdentName );
              end;
              
            end;

          if( Ident = 'Sinks' ) then
            begin
            Reader.ReadListBegin();
            while not Reader.EndOfList do
              begin
              if( Reader.NextValue() = vaList ) then
                begin
                Reader.ReadListBegin();
                Ident := Reader.ReadIdent();
                IdentName := Reader.ReadString();
                Reader.ReadListEnd();
                end

              else
                begin
                Ident := Reader.ReadIdent();
                IdentName := Ident;
                end;

              ConnectPin( CurrentPinIndex, ptSource, ptSink, Ident, IdentName );
              end;

            Reader.ReadListEnd();
            end

          else if( Ident = 'Sources' ) then
            begin
            Reader.ReadListBegin();
            while not Reader.EndOfList do
              begin
              if( Reader.NextValue() = vaList ) then
                begin
                Reader.ReadListBegin();
                Ident := Reader.ReadIdent();
                IdentName := Reader.ReadString();
                Reader.ReadListEnd();
                end

              else
                begin
                Ident := Reader.ReadIdent();
                IdentName := Ident;
                end;

              ConnectPin( CurrentPinIndex, ptMultiSink, ptSource, Ident, IdentName );
              end;

            Reader.ReadListEnd();
            end
            
          else
            begin
            if( Ident <> 'State' ) then
              ConnectPin( CurrentPinIndex, ptSink, ptSource, Ident, Ident );
              
            end;

          Reader.ReadListEnd();
          end

        else if( Ident = 'Sinks' ) then
          begin
          Reader.ReadListBegin();
          while not Reader.EndOfList do
            begin
            if( Reader.NextValue() = vaList ) then
              begin
              Reader.ReadListBegin();
              Ident := Reader.ReadIdent();
              IdentName := Reader.ReadString();
              Reader.ReadListEnd();
              end

            else
              begin
              Ident := Reader.ReadIdent();
              IdentName := Ident;
              end;

            ConnectPin( CurrentPinIndex, ptSource, ptSink, Ident, IdentName );
            end;

          Reader.ReadListEnd();
          end

        else if( Ident = 'Sources' ) then
          begin
          Reader.ReadListBegin();
          while not Reader.EndOfList do
            begin
            if( Reader.NextValue() = vaList ) then
              begin
              Reader.ReadListBegin();
              Ident := Reader.ReadIdent();
              IdentName := Reader.ReadString();
              Reader.ReadListEnd();
              end

            else
              begin
              Ident := Reader.ReadIdent();
              IdentName := Ident;
              end;

            ConnectPin( CurrentPinIndex, ptMultiSink, ptSource, Ident, IdentName );
            end;

          Reader.ReadListEnd();
          end

        else
          ConnectPin( CurrentPinIndex, ptSink, ptSource, Ident, Ident );

        end;
      end

    else
      begin
      Reader.ReadListBegin();
      Ident := Reader.ReadIdent();
      IdentName := Reader.ReadString();
      Reader.ReadListEnd();
      ConnectPin( CurrentPinIndex, ptSink, ptSource, Ident, IdentName );
      end;

    Inc( CurrentPinIndex );
    end;

  Reader.ReadListEnd();

  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWPinList.WriteConnectionsData( Writer : TWriter );
var
  APin      : TOWBasicPin;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Writer.WriteListBegin();
  for APin in Self do
    APin.WriteListEntry( Writer );

  Writer.WriteListEnd();
end;
//---------------------------------------------------------------------------
function TOWPinList.DoWrite() : Boolean;
var
  APin      : TOWBasicPin;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  for APin in Self do
    if( APin.IsConnected() ) then
      Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWPinList.ReadFormName( Reader : TReader );
begin
  FLoadFormName := Reader.ReadIdent();
end;
//---------------------------------------------------------------------------
procedure TOWPinList.WriteFormName( Writer : TWriter );
begin
  Writer.WriteIdent( GetRoot().Name );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.DefineProperties(Filer: TFiler);
begin
  inherited;
  Filer.DefineProperty( 'Form', ReadFormName, WriteFormName, DoWrite() );
  Filer.DefineProperty( 'Pins', ReadConnectionsData, WriteConnectionsData, DoWrite());
  Filer.DefineProperty( 'PinsOwner', ReadPinsOwner, NIL, False );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWPinListOwner.Create( AOwner : TComponent; ADefaultCount : Integer; APinCategories : TOWPinCategories; APinCreateFunction : TOWPinCreateFunction; APinDestroyFunction : TOWPinDestroyFunction = NIL; APinAddedFunction : TOWPinEvent = NIL );
var
  AWriteLock : ILockSection;

begin
  inherited Create( AOwner, APinCategories, True );

  AWriteLock := WriteLock();
  FMaxPins := 100;
  FDefaultCount := ADefaultCount;

  FPinCreateFunction := APinCreateFunction;
  FPinDestroyFunction := APinDestroyFunction;
  FPinAddedFunction := APinAddedFunction;

  SetCount( FDefaultCount );
end;
//---------------------------------------------------------------------------
constructor TOWPinListOwner.CreateEx( AOwner : TComponent; ADefaultCount : Integer; APinCategories : TOWPinCategories; AMinPins : Integer; AMaxPins : Integer; APinCreateFunction : TOWPinCreateFunction; APinDestroyFunction : TOWPinDestroyFunction = NIL; APinAddedFunction : TOWPinEvent = NIL );
var
  AWriteLock : ILockSection;

begin
  inherited Create( AOwner, APinCategories, True );

  AWriteLock := WriteLock();
  FMinPins := AMinPins;

  if( FMinPins < 0 ) then
    FMinPins := 0;

  FMaxPins := AMaxPins;
  FDefaultCount := ADefaultCount;

  FPinCreateFunction  := APinCreateFunction;
  FPinDestroyFunction := APinDestroyFunction;
  FPinAddedFunction := APinAddedFunction;

  SetCount( FDefaultCount );
end;
//---------------------------------------------------------------------------
constructor TOWPinListOwner.CreateLock( AOwner : TComponent; AOwnerLock : IBasicLock; ADefaultCount : Integer; APinCategories : TOWPinCategories; APinCreateFunction : TOWPinCreateFunction; APinDestroyFunction : TOWPinDestroyFunction = NIL; APinAddedFunction : TOWPinEvent = NIL );
var
  AWriteLock : ILockSection;

begin
  inherited CreateLock( AOwner, AOwnerLock, APinCategories, True );

  AWriteLock := WriteLock();
  FMaxPins := 100;
  FDefaultCount := ADefaultCount;

  FPinCreateFunction := APinCreateFunction;
  FPinDestroyFunction := APinDestroyFunction;
  FPinAddedFunction := APinAddedFunction;

  SetCount( FDefaultCount );
end;
//---------------------------------------------------------------------------
constructor TOWPinListOwner.CreateLockEx( AOwner : TComponent; AOwnerLock : IBasicLock; ADefaultCount : Integer; APinCategories : TOWPinCategories; AMinPins : Integer; AMaxPins : Integer; APinCreateFunction : TOWPinCreateFunction; APinDestroyFunction : TOWPinDestroyFunction = NIL; APinAddedFunction : TOWPinEvent = NIL );
var
  AWriteLock : ILockSection;

begin
  inherited CreateLock( AOwner, AOwnerLock, APinCategories, True );

  AWriteLock := WriteLock();
  FMinPins := AMinPins;

  if( FMinPins < 0 ) then
    FMinPins := 0;

  FMaxPins := AMaxPins;
  FDefaultCount := ADefaultCount;

  FPinCreateFunction  := APinCreateFunction;
  FPinDestroyFunction := APinDestroyFunction;
  FPinAddedFunction := APinAddedFunction;

  SetCount( FDefaultCount );
end;
//---------------------------------------------------------------------------
procedure TOWPinListOwner.BeforeDestruction();
begin
  FMinPins := 0;
  Count := 0;
  inherited;
end;
//---------------------------------------------------------------------------
function TOWPinListOwner.GetCountStored() : Boolean;
begin
  Result := ( FDefaultCount <> Count );
end;
//---------------------------------------------------------------------------
procedure TOWPinListOwner.SetCount( ACount : Integer );
var
  Pin         : TOWBasicPin;
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  inherited;
  if( ACount < FMinPins )then
    ACount := FMinPins;

  if( ACount > FMaxPins )then
    ACount := FMaxPins;

  while( Count > ACount ) do
    begin
    Pin := Pins[ Count - 1 ];
    if( Assigned( FPinDestroyFunction )) then
      FPinDestroyFunction( Self, Pin );

    Remove( Pin );
//    Pin.Free();
    end;

  if( Assigned( FPinCreateFunction )) then
    while( Count < ACount ) do
      Add( FPinCreateFunction( Self ));

end;
//---------------------------------------------------------------------------
procedure TOWPinListOwner.ReadConnectionsData( Reader : TReader );
var
  Ident       : String;
  IdentName   : String;
  Pin         : TOWBasicPin;
  DecCounter  : Integer;
  Counter     : Integer;
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  DecCounter := Count;
  Counter    := 0;
  Reader.ReadListBegin();
  while not Reader.EndOfList do
    begin
    if( Reader.NextValue() <> vaList ) then
      begin
      Ident := Reader.ReadIdent();
      if( Assigned( FPinCreateFunction )) then
        begin
        if( DecCounter = 0 ) then
          begin
          Pin := FPinCreateFunction( Self );
          Add( Pin );
          end

        else
          begin
          Pin := Pins[ Counter ];
          Dec( DecCounter );
          Inc( Counter );
          end;

        if( Ident <> 'nil' )then
          begin
          if( Ident = 'State' ) then
            begin
            // Here it goes state pin connection !
            Reader.ReadListBegin();
            Pin.ReadStateConnectionsData( Reader );
            Reader.ReadListEnd();
            end

          else if( Pin is TOWSinkPin )then
            ConnectPin( Counter - 1, ptSink, ptSource, Ident, Ident )

          else if( Pin is TOWSourcePin )then
            begin
            if( Ident = 'Sinks' ) then
              begin
              Reader.ReadListBegin();
              while not Reader.EndOfList do
                begin
                if( Reader.NextValue() = vaList ) then
                  begin
                  Reader.ReadListBegin();
                  Ident := Reader.ReadIdent();
                  IdentName := Reader.ReadString();
                  Reader.ReadListEnd();
                  end

                else
                  begin
                  Ident := Reader.ReadIdent();
                  IdentName := Ident;
                  end;

                ConnectPin( Counter - 1, ptSource, ptSink, Ident, IdentName ); 
                end;

              Reader.ReadListEnd();
              end

            else
              ConnectPin( Counter - 1, ptSource, ptSink, Ident, Ident );

            end;
          end;
        end;
      end

    else
      begin
      if( Assigned( FPinCreateFunction )) then
        begin
        if( DecCounter = 0 ) then
          begin
          Pin := FPinCreateFunction( Self );
          Add( Pin );
          end

        else
          begin
          Pin := Pins[ Counter ];
          Dec( DecCounter );
          Inc( Counter );
          end;

        Reader.ReadListBegin();
        Ident := Reader.ReadIdent();
        IdentName := Reader.ReadString();
        Reader.ReadListEnd();
        if( Pin is TOWSinkPin )then
          ConnectPin( Counter - 1, ptSink, ptSource, Ident, IdentName )
//          TOWSinkPin( Pin ).TryLinkTo( Reader.Root, Ident, IdentName, True )

        else if( Pin is TOWSourcePin )then
          ConnectPin( Counter - 1, ptSource, ptSink, Ident, IdentName )
//          TOWSourcePin( Pin ).TryLinkTo( Reader.Root, Ident, IdentName, '', True );

        end;
      end;
    end;

  Reader.ReadListEnd();

  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
{
function TOWPinListOwner.DoWrite() : Boolean;
begin
  Result := True;
end;
}
//---------------------------------------------------------------------------
procedure TOWPinListOwner.AddNamed( Item : TOWBasicPin; Name : String );
begin
  inherited;
  if( Assigned( FPinAddedFunction )) then
    FPinAddedFunction( Item );

end;
//---------------------------------------------------------------------------
class function TOWPinListOwner.DelegatePinDestroy( ALamda : TProc ) : TOWPinDestroyFunction;
begin
  Result := procedure( APinListOwner : TOWPinList; APin : TOWBasicPin )
            begin
              ALamda();
            end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWStatePin.UpdateStateValue();
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  if( FDispatcher <> NIL ) then
    FDispatcher.NewConnection( Self );
    
end;
//---------------------------------------------------------------------------
function TOWStatePin.ConnectToStateAfter( ADispatcher : TOWBasicStateDispatcher; NotifyAfterPin : TOWBasicPin ) : Boolean;
var
  I : Integer;
  AWriteLock : ILockSection;
  AStateName : String;
  AOtherPin  : TOWBasicPin;

begin
  AWriteLock := WriteLock();

  Result := False;
  if( ADispatcher = FDispatcher ) then
    Exit;

  if( FDispatcher <> NIL ) then
    Disconnect();

  if( ADispatcher = NIL ) then
    Exit;

  IntStateDisconnect();
  if( not FInConnect ) then
    begin
    FInConnect := True;
    if( ADispatcher.PinCount = 0 ) then
      begin
      FDispatcher := ADispatcher;
      FDispatcher.AddPin( Self, Self );
      end

    else if( ADispatcher.PinCount = 1 ) then
      begin
      AStateName := ADispatcher.Name;
      AOtherPin  := ADispatcher[ 0 ];
      ADispatcher.DisconnectAll();
      Result := ConnectByStateAfter( AOtherPin, NotifyAfterPin );
      ADispatcher := FDispatcher;
      end

    else
      for I := 0 to ADispatcher.PinCount - 1 do // Make sure we reconnect to all pins to update the connection types
        if( ConnectByStateAfter( ADispatcher[ I ], NotifyAfterPin )) then
          Result := True;

    FInConnect := False;
    end

  else
    Result := inherited ConnectToStateAfter( ADispatcher, NotifyAfterPin );

  UpdateStateValue();

  if( ADispatcher <> NIL ) then
    OWNotifyConnected( Self, ADispatcher );

end;
//---------------------------------------------------------------------------
function TOWStatePin.TryLinkTo( Root : TComponent; SinkName : String ) : Boolean;
var
  Values           : TStringList;
  OtherPin         : TOWPin;
  I                : Integer;
  RootName         : String;
  MyRoot           : TComponent;
  PinValueFilters  : TOWPinValueFilters;
  AWriteLock : ILockSection;

begin
  PinValueFilters := [ pvoFullList ];

  Result := True;
  if( SinkName = '' ) then
    begin
    Disconnect();
    Exit;
    end;

  Result := False;

  Values := TStringList.Create();
  AWriteLock := WriteLock();
  try
    MyRoot := GetRoot();
    if( ( MyRoot <> Root ) and ( Root <> NIL )) then
      begin
      RootName := Root.Name;
      if( not OWGetPinsValueListSingle( Values, Root, Self, '.', RootName, PinValueFilters )) then
        Result := True;

      end

    else
      if( not OWGetPinsValueList( Values, Self, '.', PinValueFilters )) then
        Result := True;

    for I := 0 to Values.Count - 1 do
      begin
      if( ( Values.Strings[ I ] = SinkName ) or ( MyRoot.Name + '.' + Values.Strings[ I ] = SinkName )) then
        begin
        OtherPin := TOWPin( Values.Objects[ i ] );
        Connect( OtherPin );
        Result := True;
        Break;
        end;

      end;

  finally
    Values.Free();

  end;

end;
//---------------------------------------------------------------------------
function TOWStatePin.IsCompatible( const OtherPin : TOWBasicPin; UseConverters : Boolean ) : Boolean;
var
//  StatePin : TOWStatePin;
  AConverter : IOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  AReadLock : ILockSection;

begin
  if( OtherPin = NIL ) then
    Exit( True );

{
  if( not ( OtherPin is TOWStatePin )) then
    Exit( False );
}

//  StatePin := TOWStatePin( OtherPin );

  Result := False;
  AReadLock := ReadLock();
  if( OtherPin is TOWStatePin ) then
    begin
    Result := not IsEqualGUID( FindConnectionID( OtherPin, AConverter, AConverterClass, UseConverters, OWNULLID ), OWNULLID );
    if( Result ) then
      Result := not IsEqualGUID( OtherPin.FindConnectionID( Self, AConverter, AConverterClass, UseConverters, OWNULLID ), OWNULLID );

    end

  else if( OtherPin is TOWBasicSinkPin ) then
    Result := not IsEqualGUID( FindConnectionID( OtherPin, AConverter, AConverterClass, UseConverters, OWNULLID ), OWNULLID )

  else if( OtherPin is TOWSourcePin ) then
    Result := not IsEqualGUID( OtherPin.FindConnectionID( Self, AConverter, AConverterClass, UseConverters, OWNULLID ), OWNULLID );

{
  Result := SourcePin.CheckDownStreamInterfaces( Self );
//  if( not Result ) then
//    Result := FIgnoreUpstream;

  if( Result ) then
    Result := CheckUpStreamInterfaces( SourcePin );
}
end;
//---------------------------------------------------------------------------
function TOWStatePin.GetImage( out AImage : IGPBitmap ) : Boolean;
var
  AWasCached : Boolean;

begin
  AWasCached := FImageCached;
  if( inherited ) then
    Exit( True );

  if( AWasCached ) then
    Exit( False );

  Result := GetInputOutputImage( AImage, True, True );
end;
//---------------------------------------------------------------------------
function TOWStatePin.GetConnectionID( const OtherPin : TOWBasicPin ) : TGUID;
var
  AReadLock       : ILockSection;
  AConverter      : IOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;

begin

  AReadLock := ReadLock();
  if( IsConnectedTo( OtherPin )) then
    if( OtherPin is TOWSourcePin ) then
      Exit( OtherPin.FindConnectionID( Self, AConverter, AConverterClass, True, OWNULLID ))

    else
      Exit( GetStateSubmitID( OtherPin ));

  Exit( OWNULLID );
end;
//---------------------------------------------------------------------------
function TOWStatePin.DependsOn( const OtherPin : TOWBasicPin ) : Boolean;
begin
  Result := DirectDependsOn( OtherPin );
end;
//---------------------------------------------------------------------------
function TOWStatePin.DirectDependsOn( const OtherPin : TOWBasicPin ) : Boolean;
begin
  Result := IsConnectedTo( OtherPin );
end;
//---------------------------------------------------------------------------
function TOWStatePin.GetPinType() : TOWPinType;
begin
  Result := ptState;
end;
//---------------------------------------------------------------------------
function TOWStatePin.GetLinkStr( StatePin : TOWPin ) : String;
var
  AddRoot   : Boolean;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  AddRoot := StatePin.GetRoot() <> GetRoot();
//  Result := StatePin.GetFullName( ( AddRoot ) and ( StatePin.Owner.Owner = NIL ) );
  Result := StatePin.GetFullName( AddRoot );

{
  if(( AddRoot ) and ( StatePin.Owner.Owner = NIL )) then
    Result := StatePin.RootName + '.' + OWValueToString( StatePin, '.', False, SaveFormat )

  else
    Result := OWValueToString( StatePin, '.', AddRoot, SaveFormat );
}
end;
//---------------------------------------------------------------------------
function TOWStatePin.GetEditorString() : String;
begin
  if( FDispatcher = NIL ) then
    Exit( GOWDISCONNECTED );

  if( FDispatcher.PinCount = 2 ) then
    begin
    if( FDispatcher.Pins[ 0 ].GetFullIdentName( True ) = GetFullIdentName( True ) ) then
      Exit( FDispatcher.Pins[ 1 ].GetFullName( True ));

    Exit( FDispatcher.Pins[ 0 ].GetFullName( True ));
    end;

  Result := FDispatcher.Name;
end;
//---------------------------------------------------------------------------
function TOWStatePin.SetEditorString( ARoot : TComponent; const AValue: String ) : Boolean;
var
  ADispatcher : TOWStateDispatcher;
  
begin
  if( ( AValue = '' ) or ( AValue = GOWDISCONNECTED ) ) then
    begin
    Disconnect();
    Exit( True );
    end;

  if( IsPreviewPin() ) then
    Exit( False );

  ADispatcher := TOWStateDispatcher.GetByName( AValue, True );

  if( ADispatcher <> NIL ) then
    if( ConnectToState( ADispatcher )) then
      Exit( True );

  if( TryLinkTo( ARoot, AValue )) then
    Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWStatePin.CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean; ADataType : TGUID ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( not( FOwner is TOWFormatConverter ) and not( OtherPin.Owner is TOWFormatConverter )) then
    begin
    if( ( OtherPin.OwnerInDesigning( False ) ) and ( not ( OwnerInDesigning( False ) ))) then
      Exit( False );

    if( ( not ( OtherPin.OwnerInDesigning( False ) )) and ( OwnerInDesigning( False ) )) then
      Exit( False );

    end;

//  if( OtherPin is TOWStatePin ) then
  if( OtherPin is TOWSourcePin ) then
    Exit( not IsEqualGUID( OtherPin.FindConnectionID( Self, AConverter, AConverterClass, UseConverters, ADataType ), OWNULLID ));

  Exit( not IsEqualGUID( FindConnectionID( OtherPin, AConverter, AConverterClass, UseConverters, ADataType ), OWNULLID ));
end;
//---------------------------------------------------------------------------
function TOWStatePin.GetPinCount() : Integer;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( FDispatcher <> NIL ) then
    Exit( FDispatcher.PinCount );

  Result := 0;
end;
//---------------------------------------------------------------------------
function TOWStatePin.GetPin( Index : Integer ) : TOWBasicPin;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := NIL;

  if( FDispatcher <> NIL ) then
    Result := FDispatcher.Pins[ Index ];

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWBasicStateDispatcher.NewConnection( const APin : TOWPin );
begin
end;
//---------------------------------------------------------------------------
function TOWBasicStateDispatcher.GetOwnerComponent() : TComponent;
var
  I : Integer;

begin
  for I := 0 to PinCount - 1 do
    begin
    Result := Pins[ I ].GetOwnerComponent();
    if( Result <> NIL ) then
      Exit;

    end;

  Exit( NIL );
end;
//---------------------------------------------------------------------------
function TOWBasicStateDispatcher.IsPreviewDispatcher() : Boolean;
var
  AComponent  : TComponent;
  ARoot       : TComponent;

begin
  AComponent := GetOwnerComponent();
  if( AComponent = NIL ) then
    Exit( True );

  if( not( csDesigning in AComponent.ComponentState )) then
    Exit( False );

  ARoot := OWGetMainOwnerComponent( AComponent );
  if( OWInheritsFromClassName( ARoot.ClassType(), 'TPreviewForm' )) then
    Exit( True );

  if( ARoot.Name = 'Root' ) then
    if( ARoot.ClassName().StartsWith( ARoot.ClassParent().ClassName() + '_' )) then
      Exit( True );

  Exit( False );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
class function TOWStateDispatcher.GetByName( Name : String; DesignTime : Boolean ) : TOWStateDispatcher;
var
  I : Integer;

begin
  GlobalStorageSection.Enter();
  try
    for I := 0 to OWDispatchers( DesignTime ).Count - 1 do
      begin
      Result := TOWStateDispatcher( OWDispatchers( DesignTime )[ I ] );
      if( Result.FName = Name ) then
        Exit;

      end;

  finally
    GlobalStorageSection.Leave();
    end;

  Result := NIL;
end;
//---------------------------------------------------------------------------
class function TOWStateDispatcher.GetByNameCreate( APin : TOWBasicPin; Name : String; DesignTime : Boolean ) : TOWStateDispatcher;
var
  I : Integer;

begin
  GlobalStorageSection.Enter();
  try
    for I := 0 to OWDispatchers( DesignTime ).Count - 1 do
      begin
      Result := TOWStateDispatcher( OWDispatchers( DesignTime )[ I ] );
      if( Result.FName = Name ) then
        Exit;

      end;

  finally
    GlobalStorageSection.Leave();
    end;

//  Result := TOWStateDispatcher.CreateNamed( Name, DesignTime );
  Result := APin.CreateNamedDispatcher( Name, DesignTime );
end;
//---------------------------------------------------------------------------
class function TOWStateDispatcher.GetUniqueName( OwnerForm : TComponent; APrefix : String ) : String;
var
  I        : Integer;
  NotFound : Boolean;
  Index    : Integer;

begin
  Index := 0;
  GlobalStorageSection.Enter();
  try
    repeat
      begin
      Inc( Index );
      Result := APrefix + OwnerForm.Name + 'Link' + IntToStr( Index );
      NotFound := True;
      for I := 0 to OWDispatchers( csDesigning in OwnerForm.ComponentState ).Count - 1 do
        begin
        if( TOWStateDispatcher( OWDispatchers( csDesigning in OwnerForm.ComponentState )[ I ] ).FName = Result ) then
          begin
          NotFound := False;
          Break;
          end;
        end;
      end;
    until NotFound;

  finally
    GlobalStorageSection.Leave();
    end;

end;
//---------------------------------------------------------------------------
class function TOWStateDispatcher.IsUniqueName( Name : String; DesignTime : Boolean ) : Boolean;
var
  I : Integer;

begin
  GlobalStorageSection.Enter();
  try
    for I := 0 to OWDispatchers( DesignTime ).Count - 1 do
      if( TOWStateDispatcher( OWDispatchers( DesignTime )[ I ] ).FName = Name ) then
        Exit( False );

  finally
    GlobalStorageSection.Leave();
    end;

  Result := True;
end;
//---------------------------------------------------------------------------
constructor TOWStateDispatcher.CreateNamed( Name : String; DesignTime : Boolean; AFromConverter : Boolean = False );
var
  AWriteLock : ILockSection;

begin
  inherited Create();
  AWriteLock := WriteLock();
  FFromConverter := AFromConverter;
  FName := Name;
  FPins := TOWDispatcherPinStorageList.Create( True );
  FSavedForms := TLinkedList<TComponent>.Create();
  if( FFromConverter ) then
    Exit;

  GlobalStorageSection.Access.Execute(
      procedure()
      begin
        OWDispatchers( DesignTime ).Add( Self );
      end
    );

end;
//---------------------------------------------------------------------------
constructor TOWStateDispatcher.Create( OwnerForm : TComponent; AFromConverter : Boolean );
begin
  if( AFromConverter ) then
    CreateNamed( GetUniqueName( OwnerForm, ' . ' ), csDesigning in OwnerForm.ComponentState, AFromConverter )

  else
    CreateNamed( GetUniqueName( OwnerForm, '' ), csDesigning in OwnerForm.ComponentState, AFromConverter );

end;
//---------------------------------------------------------------------------
destructor TOWStateDispatcher.Destroy();
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();

  GlobalStorageSection.Access.Execute(
      procedure()
      begin
        OWDispatchers( True ).RemoveOne( Self );
        OWDispatchers( False ).RemoveOne( Self );
      end
    );

  FPins.Free();               

  AWriteLock := NIL;
  inherited;
end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.AfterConstruction();
begin
  inherited;
  if( not FFromConverter ) then
    OWNotifyAddDispatcher( Self );

end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.BeforeDestruction();
begin
  if( not FFromConverter ) then
    OWNotifyRemoveDispatcher( Self, False );

  inherited;
end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.NewConnection( const APin : TOWPin );
var
  I           : Integer;
  AWriteLock  : ILockSection;
  AItemPin    : TOWBasicPin;

begin
  AWriteLock := WriteLock();
  for I := 0 to PinCount - 1 do
    begin
    AItemPin := Pins[ I ];
    if( AItemPin is TOWSourcePin ) then
      begin
      if( AItemPin = APin ) then
        AItemPin.NotifyDispatcher( TOWNotifyOperation.Create(), [nsNewLink], NIL )

      else
        AItemPin.NotifyDispatcher( TOWNotifyOperation.Create(), [nsNewLink], APin );

      Exit;
      end;
    end;

  for I := 0 to PinCount - 1 do
    begin
    AItemPin := Pins[ I ];
    if( not( AItemPin is TOWBasicSinkPin )) then
      begin
      if( AItemPin = APin ) then
        AItemPin.NotifyDispatcher( TOWNotifyOperation.Create(), [nsNewLink], NIL )

      else
        AItemPin.NotifyDispatcher( TOWNotifyOperation.Create(), [nsNewLink], APin );

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.GetName() : String;
begin
  Result := FName;
end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.SetName( AValue : String );
begin
  FName := AValue;
end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.GetPinCount() : Integer;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FPins.Count;
end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.GetPin( Index : Integer ) : TOWBasicPin;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FPins[ Index ].RealPin;
end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.GetConnectionPin( Index : Integer ) : TOWBasicPin;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FPins[ Index ].ConnectionPin;
end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.GetAfterPin( Index : Integer ) : TOWBasicPin;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FPins[ Index ].AfterPin;
end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.GetConnectedAfterForPin( OtherPin : TOWBasicPin ) : TOWBasicPin;
var
  AItem : TOWDispatcherPinStorage;

begin
  for AItem in FPins do
    if( AItem.RealPin = OtherPin ) then
      Exit( AItem.AfterPin );

  Result := NIL;
end; 
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.AddPin( AConnectionPin : TOWBasicPin; ARealPin : TOWBasicPin );
begin
  AddPinAfter( AConnectionPin, ARealPin, NIL );
end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.AddPinAfter( AConnectionPin : TOWBasicPin; ARealPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin );
var
  AWriteLock  : ILockSection;
  APinStorage : TOWDispatcherPinStorage;

begin
  AWriteLock := WriteLock();
  if( IsConnectedTo( AConnectionPin )) then
    Exit;

  APinStorage := TOWDispatcherPinStorage.Create();
  APinStorage.ConnectionPin := AConnectionPin;
  APinStorage.RealPin := ARealPin;
  APinStorage.AfterPin := NotifyAfterPin; 
  FPins.Add( APinStorage );
  if( not FFromConverter ) then
    OWNotifyChangeDispatcher( Self );

end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.PinDeletedNotify( const ADeletedPin : TOWBasicPin );
var
  AItem : TOWDispatcherPinStorage;

begin
  for AItem in FPins do
    if( AItem.AfterPin = ADeletedPin ) then
      AItem.AfterPin := NIL;

end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.DisconnectAll();
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  while( PinCount > 0 ) do
    begin
    if( PinCount <= 2 ) then
      begin
      Pins[ 0 ].Disconnect(); // This will not work for Source pins in the future !!!
      Exit;
      end

    else
      Pins[ 0 ].Disconnect(); // This will not work for Source pins in the future !!!

    end;

end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.CanConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin; UseConverters : Boolean ) : Boolean;
var
  AReadLock : ILockSection;
  I         : Integer;

begin
  if( NotifyAfterPin = NIL ) then
    Exit( True );
    
  AReadLock := ReadLock();

  if( OtherPin = NotifyAfterPin ) then
    Exit( False );

  for I := 0 to PinCount - 1 do
    if( Pins[ I ] = NotifyAfterPin ) then
      begin
      if( AfterPins[ I ] <> NIL ) then
        Exit( CanConnectAfter( OtherPin, AfterPins[ I ], UseConverters ));

      Exit( True );
      end;

  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.RemovePin( APin : TOWBasicPin );
var
  AWriteLock  : ILockSection;
  I           : Integer;
  AAfterPin   : TOWBasicPin;
  AItem       : TOWDispatcherPinStorage;

begin
  AWriteLock := WriteLock();
  AAfterPin := NIL;
  for I := 0 to FPins.Count - 1 do
    begin
    AItem := FPins[ I ];
    if( AItem.RealPin = APin ) then
      begin
      AItem.RealPin.FDispatcher := NIL;
      AItem.ConnectionPin.FDispatcher := NIL;
      AAfterPin := AItem.AfterPin;
      FPins.Delete( I );
      Break;
      end;
    end;

  for AItem in FPins do
    if( AItem.AfterPin = AAfterPin ) then
      begin
      AItem.AfterPin := NIL;
      Break;
      end;

  if( FPins.Count = 1 ) then
    begin
    // Remove the last refference.
    AItem := FPins[ 0 ];
    AItem.RealPin.FDispatcher := NIL;
    AItem.ConnectionPin.FDispatcher := NIL;
    FPins.Clear();
    end;

  if( not FFromConverter ) then
    OWNotifyChangeDispatcher( Self );

  if( FPins.Count = 0 ) then
    begin
    AWriteLock := NIL;
    Free();
    end;

end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.IsConnectedTo( APin : TOWBasicPin ) : Boolean;
var
  AItem     : TOWDispatcherPinStorage;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  for AItem in FPins do
    if( AItem.RealPin = APin ) then
      Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.IsCrosForm() : Boolean;
var
  I         : Integer;
  AReadLock : ILockSection;
  ARootName : String;

begin
  AReadLock := ReadLock();

  ARootName := Pins[ 0 ].GetRootName();
  for I := 1 to FPins.Count - 1 do
    if( ARootName <> FPins[ I ].RealPin.GetRootName() ) then
      Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.ResetFormsSave();
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  FSavedForms.Clear();
  FCountSaved := 0;
end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.AddFormSaved( AOwnerComponent : TComponent );
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  if( not FSavedForms.Query().Contains( AOwnerComponent )) then
    FSavedForms.Add( AOwnerComponent );

  Inc( FCountSaved );
end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.IsFormSaved( AOwnerComponent : TComponent ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FSavedForms.Query().Contains( AOwnerComponent );
end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.GetAfterPinDisplayName( APin : TOWPin ) : String;
var
  AItem : TOWDispatcherPinStorage;

begin
  for AItem in FPins do
    if( AItem.RealPin = APin ) then
      Exit( AItem.RealPin.GetFullName( True ) );

  Result := '';
end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.ConnectedToForm( OwnerComponent : TComponent ) : Boolean;
var
  AItem       : TOWDispatcherPinStorage;
  AWriteLock  : ILockSection;

begin
  if( OwnerComponent = NIL ) then
    Exit( False );

  AWriteLock := WriteLock();

  for AItem in FPins do
    if( AItem.RealPin.GetRootName() = OwnerComponent.Name ) then
      Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.SetNotifyAfterByName( const APin : TOWPin; const AfterPinName : String );
var
  AAfterPin : TOWBasicPin;
  APinItem  : TOWBasicPin;
  AItem     : TOWDispatcherPinStorage;

begin
  AAfterPin := NIL;
  for AItem in FPins do
    begin
    APinItem := AItem.RealPin;
    if( ( APinItem.GetFullName( False ) = AfterPinName ) or ( APinItem.GetFullName( True ) = AfterPinName )) then
      begin
      AAfterPin := APinItem;
      Break;
      end;
    end;

  if( AAfterPin <> NIL ) then
    for AItem in FPins do
      if( AItem.RealPin = APin ) then
        begin
        AItem.AfterPin := AAfterPin;
        Break;
        end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure OWGlobalLock();
begin
  GlobalStorageSection.Enter();
end;
//---------------------------------------------------------------------------
procedure OWGlobalUnlock();
begin
  GlobalStorageSection.Leave();
end;
//---------------------------------------------------------------------------
function OWGetPinCount() : Integer;
begin
  GlobalStorageSection.Enter();
  try
    Result := GOWPins.Count;
  finally
    GlobalStorageSection.Leave();
    end;

end;
//---------------------------------------------------------------------------
function OWGetPin( Index : Integer ) : TOWBasicPin;
begin
  GlobalStorageSection.Enter();
  try
    Result := GOWPins[ Index ];
  finally
    GlobalStorageSection.Leave();
    end;

end;
//---------------------------------------------------------------------------
function OWGetPinListCount() : Integer;
begin
  GlobalStorageSection.Enter();
  try
    Result := GOWPinLists.Count;
  finally
    GlobalStorageSection.Leave();
    end;

end;
//---------------------------------------------------------------------------
function OWGetPinList( Index : Integer ) : TOWBasicPinList;
begin
  GlobalStorageSection.Enter();
  try
    Result := TOWBasicPinList( GOWPinLists[ Index ] );
  finally
    GlobalStorageSection.Leave();
    end;

end;
//---------------------------------------------------------------------------
function OWGetDispatcherCount() : Integer;
begin
  GlobalStorageSection.Enter();
  try
    if( GDesignDispatchers.Count > 0 ) then
      Result := GDesignDispatchers.Count

    else
      Result := GRunDispatchers.Count;

  finally
    GlobalStorageSection.Leave();
    end;

end;
//---------------------------------------------------------------------------
function OWGetDispatcher( Index : Integer ) : TOWBasicStateDispatcher;
begin
  GlobalStorageSection.Enter();
  try
    if( GDesignDispatchers.Count > 0 ) then
      Result := TOWBasicStateDispatcher( GDesignDispatchers[ Index ] )

    else
      Result := TOWBasicStateDispatcher( GRunDispatchers[ Index ] );

  finally
    GlobalStorageSection.Leave();
    end;

end;
//---------------------------------------------------------------------------
procedure OWSetIgnoreDesignMode( AIgnore : Boolean );
begin
  GIgnoreDesignMode := AIgnore;
end;
//---------------------------------------------------------------------------
procedure OWSetIgnorePinChangeNotifications( AIgnore : Boolean );
begin
  GIgnoreChangeNotifications := AIgnore;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWPinEntry.Assign( AOther : TOWPinEntry );
begin
  ConnectionPin := AOther.ConnectionPin;
  RealPin := AOther.RealPin;
  NotifyAfterPin := AOther.NotifyAfterPin;
  ConnectedID := AOther.ConnectedID;
  SubmitFunction := AOther.SubmitFunction;
  ModificationLevel := AOther.ModificationLevel;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWNotifyPinEntry.Create();
begin
  inherited;
  Section := Mitov.Threading.TCriticalSection.Create();
  Entry := TOWPinEntry.Create();
end;
//---------------------------------------------------------------------------
destructor TOWNotifyPinEntry.Destroy();
begin
  Entry.Free();
  inherited;
end;
//---------------------------------------------------------------------------
function TOWNotifyPinEntry.GetInstance() : TOWNotifyPinEntry;
begin
  Result := Self;
end;
//---------------------------------------------------------------------------
procedure TOWNotifyPinEntry.RemoveNotifyEntry();
begin
  Section.Enter();
  try
    if( Entry.ConnectionPin <> NIL ) then
      Entry.ConnectionPin.RemoveNotifyEntry( Self );

  except
    end;

  Section.Leave();
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWPinEntryList.Create();
begin
  inherited Create( TOWEComponentsListComparer.Create() );
end;
//---------------------------------------------------------------------------
function TOWPinEntryList.Add() : TOWPinEntry;
begin
  Result := TOWPinEntry.Create();
  inherited Add( Result );
end;
//---------------------------------------------------------------------------
function TOWPinEntryList.GetItemByPin( APin : TOWBasicPin ) : TOWPinEntry;
var
  AItem : TOWPinEntry;

begin
  for AItem in Self do
    if( AItem.RealPin = APin ) then
      Exit( AItem );

  Result := NIL;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWPinEntryList.TOWEComponentsListComparer.Compare(const Item1, Item2: TOWPinEntry): Integer;
begin
  Result := Item1.ModificationLevel - Item2.ModificationLevel;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWPinNotifyEntryList.RemoveLinks();
begin
  try
    Query().ForEach(
        procedure( AItem : IOWNotifyPinEntry )
        var
          AEntry  : TOWNotifyPinEntry;

        begin
          try
            AEntry := AItem.GetInstance();
            AEntry.Section.Access.Execute(
                procedure()
                begin
                  AEntry.Entry.SubmitFunction := NIL;
                  AEntry.Entry.ConnectionPin := NIL;
                end
              );

          except
            end;
        end
      );

  except
    end;

  try
    Clear();
  except
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSinkPinList.Create( AOwner : TOWSourcePin );
begin
  inherited Create();
  FSection := Mitov.Threading.TCriticalSection.Create();
  FOwner := AOwner;
  FList := TLinkedList<TOWBasicSinkPin>.Create();
end;
//---------------------------------------------------------------------------
procedure TOWSinkPinList.Add( APin : TOWBasicSinkPin ); //; ShareLock : Boolean = True );
begin
  if( APin = NIL ) then
    Exit;

  FSection.Access.Execute(
      procedure()
      begin
        FList.Add( APin );
      end
    );

end;
//---------------------------------------------------------------------------
procedure TOWSinkPinList.Remove( APin : TOWBasicSinkPin );
begin
  FSection.Access.Execute(
      procedure()
      begin
        FList.RemoveOne( APin );
      end
    );

end;
//---------------------------------------------------------------------------
function TOWSinkPinList.GetList() : IOWSinkPinListCopy;
begin
  Result := FSection.Access().Execute<IOWSinkPinListCopy>(
      function() : IOWSinkPinListCopy
      begin
        Result := TOWSinkPinListCopy.Create( Self );
      end
    );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSinkPinListCopy.Create( AOwner : TOWSinkPinList );
var
  AItem : TOWBasicSinkPin;

begin
  inherited Create();
  FList := TArrayList<TOWBasicSinkPin>.Create();
  for AItem in AOwner.FList do
    FList.Add( AItem );

end;
//---------------------------------------------------------------------------
function TOWSinkPinListCopy.GetCount() : Integer;
begin
  Result := FList.Count;
end;
//---------------------------------------------------------------------------
function TOWSinkPinListCopy.GetItem( Index : Integer ) : TOWBasicSinkPin;
begin
  Result := FList[ Index ];
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWDataTypeSinkPinList.Add( APin : TOWBasicSinkPin );
var
  AWriteLock : ILockSection;

begin
  AWriteLock := FOwner.WriteLock();
  inherited Add( APin );
  APin.IntAddDataTypeDependance( FOwner );
end;
//---------------------------------------------------------------------------
procedure TOWDataTypeSinkPinList.Remove( APin : TOWBasicSinkPin );
var
  AWriteLock : ILockSection;

begin
  AWriteLock := FOwner.WriteLock();
  inherited Remove( APin ); 
  APin.IntRemoveDataTypeDependance( FOwner );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWNotifyOperation.Create();
begin
  inherited;
  FOperationID := TInterlocked.Increment( GOWOperationID );
end;
//---------------------------------------------------------------------------
function TOWNotifyOperation.GetInstance() : TOWNotifyOperation;
begin
  Result := Self;
end;
//---------------------------------------------------------------------------
function TOWNotifyOperation.IsType( AClass : TOWNotifyOperationClass ) : Boolean; stdcall;

  function InheritsFrom( AMyClass : TOWNotifyOperationClass ) : Boolean;
  var
    AClassParent : TClass;

  begin
    if( AMyClass.UnitName() = AClass.UnitName() ) then
      if( AMyClass.ClassName() = AClass.ClassName() ) then
        Exit( True );

    AClassParent := AMyClass.ClassParent();
    if( AClassParent <> NIL ) then
      if( AClassParent <> TOWNotifyOperation ) then
        Exit( InheritsFrom( TOWNotifyOperationClass( AClassParent )) );

    Result := False;
  end;

begin
  Result := InheritsFrom( TOWNotifyOperationClass( ClassType() )); //( Self is AClass );
end;
//---------------------------------------------------------------------------
function TOWNotifyOperation.IsType( AClasses : array of TOWNotifyOperationClass ) : Boolean; stdcall;
var
  AClass : TOWNotifyOperationClass;

begin
  for AClass in AClasses do
    if( IsType( AClass )) then
      Exit( True );

  Exit( False );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWValueNotifyOperation<T>.Create( AValue : T );
begin
  inherited Create();
  Value := AValue;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor OWNameAttribute.Create( AValue : String );
begin
  inherited Create();
  FValue := AValue;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor OWConvertDataTypeAttribute.Create( AFromDataType : TGUID; AToDataType : TGUID );
begin
  inherited Create();
  FFromDataType := AFromDataType;
  FToDataType := AToDataType;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWObjectList.SetItem( Index : Integer; Value : TOWObject );
begin
  inherited Items[ Index ] := Value; 
end;
//---------------------------------------------------------------------------
function TOWObjectList.GetItem( Index : Integer ) : TOWObject;
begin
  Result := inherited Items[ Index ];
end;
//---------------------------------------------------------------------------
function TOWObjectList.GetCount() : Integer;
begin
  Result := inherited Count;
end;
//---------------------------------------------------------------------------
function TOWObjectList.QueryInterface({$IFDEF FPC_HAS_CONSTREF}constref{$ELSE}const{$ENDIF} IID: TGUID; out Obj): HResult; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};
begin
  if GetInterface(IID, Obj) then
    Result := 0

  else
    Result := E_NOINTERFACE;

end;
//---------------------------------------------------------------------------
function TOWObjectList._AddRef(): Integer; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};
begin
  Result := TInterlocked.Increment(FRefCount);
end;
//---------------------------------------------------------------------------
function TOWObjectList._Release(): Integer; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};
begin
  Result := TInterlocked.Decrement(FRefCount);
  if Result = 0 then
    Destroy();

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWUnloadedPin.Create( ARoot : TComponent; AType : TOWPinType; APinIdentName : String; APinDisplayName : String; ACreatedFrom : String );
begin
  inherited Create( NIL );
  FCreatedFrom := ACreatedFrom;
  FIdentName := APinIdentName;
  FDisplayName := APinDisplayName;
  FType := AType;
  
  if( ARoot <> NIL ) then
    begin
    FDesignTime := ( csDesigning in ARoot.ComponentState );
    if( ARoot.Name <> GetRootName() ) then
      ARoot := NIL;

    end;

  FRoot := ARoot;

  GOWUnloadedPins.Add( Self );
  FConnectedPins := TOWPinEntryList.Create();
//  FConnectedPins := TOWPinListBasic.Create( False );
end;
//---------------------------------------------------------------------------
destructor TOWUnloadedPin.Destroy();
begin
  FreeAndNil( FConnectedPins );
  inherited;
end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.DependsOn( const OtherPin : TOWBasicPin ) : Boolean;
begin
  Result := False;
end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.OwnerInDesigning( ACheckForDispatchers : Boolean ) : Boolean;
begin
  if( GIgnoreDesignMode ) then
    if( not ACheckForDispatchers ) then
      Exit( False );

  Result := True;
end;
//---------------------------------------------------------------------------
procedure TOWUnloadedPin.PinDeletedNotify( const ADeletedPin : TOWBasicPin );
var
  I : Integer;
  
begin
  for I := FConnectedPins.Count - 1 downto 0 do
    if( FConnectedPins[ I ].RealPin = ADeletedPin ) then
      FConnectedPins.Delete( I );

end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.FindConnectionID( const OtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean; ADataType : TGUID ) : TGUID;
begin
  Result := OWNULLID;
end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.NotifyDispatcher( const Operation : IOWNotifyOperation; State : TOWNotifyState; const APinToNotify : TOWBasicPin ) : TOWNotifyResult;
begin
  Result := [];
end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean; ADataType : TGUID ) : Boolean;
begin
  Result := True;
end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.IsCompatible( const OtherPin : TOWBasicPin; UseConverters : Boolean ) : Boolean;
begin
  Result := True;
end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.IsConnected() : Boolean;
begin
  Result := ( FConnectedPins.Count > 0 );  
end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.IsConnectedTo( const OtherPin : TOWBasicPin ) : Boolean;
begin
  Result := ( FConnectedPins.GetItemByPin( OtherPin ) <> NIL );
end;
//---------------------------------------------------------------------------
procedure TOWUnloadedPin.PinReplacedNotify( const AOldPin : TOWBasicPin; const ANewPin : TOWBasicPin );
var
  AItem : TOWPinEntry;
  
begin
  for AItem in FConnectedPins do
    begin
    if( AItem.NotifyAfterPin = AOldPin ) then
      AItem.NotifyAfterPin := ANewPin;

    if( AItem.RealPin = AOldPin ) then
      AItem.RealPin := ANewPin;

    end;
    
end;
//---------------------------------------------------------------------------
procedure TOWUnloadedPin.SetInEditor( Value : Boolean );
begin
  FInEditor := Value;
  if( not FInEditor ) then
    CheckRemove();
    
end;
//---------------------------------------------------------------------------
procedure TOWUnloadedPin.CheckRemove();
begin
  if( FInRemoveCount > 0 ) then
    Exit;
    
  Inc( FInRemoveCount );
  if( not FInEditor ) then
    if( not FOwnedByList ) then
      if( FConnectedPins.Count = 0 ) then
        begin
        GOWUnloadedPins.Remove( Self );
        Exit;
        end;
    
  Dec( FInRemoveCount );
end;
//---------------------------------------------------------------------------
procedure TOWUnloadedPin.IntDisconnect( const OtherPin : TOWBasicPin; DesignFormClosing : Boolean );
var
  I : Integer;

begin
  FImageCached := False;

  for I := FConnectedPins.Count - 1 downto 0 do
    if( FConnectedPins[ I ].RealPin = OtherPin ) then
      begin
      FConnectedPins.Delete( I );
      Break;
      end;

{
  if( FOwnerPinList <> NIL ) then
    if( FOwnerPinList.IndexOf( Self ) >= 0 ) then
      Exit;

  if( FConnectedPins.Count = 0 ) then
    GOWUnloadedPins.Remove( Self );
}
end;
//---------------------------------------------------------------------------
procedure TOWUnloadedPin.IntConnect( const SinkPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin; const ADataType : TGUID );
var
  APinEntry : TOWPinEntry;

begin
  if( SinkPin <> NIL ) then
    begin
    APinEntry := FConnectedPins.Add();
    APinEntry.RealPin := SinkPin;
    APinEntry.NotifyAfterPin := NotifyAfterPin;
//    FConnectedPins.Add( SinkPin );
    end;
    
end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.GetPinType() : TOWPinType;
begin
  Result := FType;
end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.ConnectAfter( const OtherPin : TOWBasicPin; const NotifyAfterPin : TOWBasicPin ) : Boolean;
var
  APinEntry : TOWPinEntry;

begin
  if( OtherPin = Self ) then
    Exit( False );

  if( IsConnectedTo( OtherPin )) then
    Exit( True );

  FImageCached := False;
  if( OtherPin <> NIL ) then
    begin
    APinEntry := FConnectedPins.Add();
    APinEntry.RealPin := OtherPin;
    APinEntry.NotifyAfterPin := NotifyAfterPin;
    end;

  if( OtherPin is TOWSourcePin ) then
    TOWSourcePin( OtherPin ).IntConnect( Self, NotifyAfterPin, OWNULLID )

  else if( OtherPin is TOWMultiSinkPin ) then
    TOWMultiSinkPin( OtherPin ).IntConnect( Self, NotifyAfterPin, OWNULLID )

  else if( OtherPin is TOWSinkPin ) then
    begin
    TOWSinkPin( OtherPin ).Disconnect();
    TOWSinkPin( OtherPin ).FRealSourcePin := Self;
    TOWSinkPin( OtherPin ).FIntRealSourcePin := Self;
    end;

  Result := True;
end;
//---------------------------------------------------------------------------
procedure TOWUnloadedPin.Disconnect();
begin
  FConnectedPins.Clear();
//  if( FConnectedPins.Count = 0 ) then
//    GOWUnloadedPins.Remove( Self );

end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.GetFullName( IncludeRootForm : Boolean ) : String;
var
  Position : Integer;

begin
  if( IncludeRootForm ) then
    Result := FDisplayName

  else
    begin
    Result := FIdentName;
    Position := Pos( '.', Result );
    if( Position <> 0 ) then
      Delete( Result, 1, Position );

    end;

end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.GetFullIdentName( AIncludeRootForm : Boolean ) : String;
var
  APosition : Integer;

begin
  if( AIncludeRootForm ) then
    Result := FIdentName

  else
    begin
    Result := FIdentName;
    APosition := Pos( '.', Result );
    if( APosition <> 0 ) then
      Delete( Result, 1, APosition );

    end;

end;
//---------------------------------------------------------------------------
procedure TOWUnloadedPin.PopulatePinAndDestroy( APin : TOWBasicPin );
var
  I         : Integer;
  ARealPin  : TOWBasicPin;

begin
  Inc( FInRemoveCount );
  for ARealPin in GOWPins do
    ARealPin.PinReplacedNotify( Self, APin );

  for I := FConnectedPins.Count - 1 downto 0 do
    begin
    ARealPin := FConnectedPins[ I ].RealPin;
    APin.ConnectAfter( ARealPin, FConnectedPins[ I ].NotifyAfterPin );
    if( ARealPin <> NIL ) then
      begin
      if( FConnectedPins.Count > I ) then // Check if we already got disconnected
        ARealPin.DisconnectFrom( Self )

      else
        ARealPin.UnlodedPinRemoved( Self );


      end;
    end;

  Dec( FInRemoveCount );
  if( FInRemoveCount = 0 ) then
    GOWUnloadedPins.Remove( Self );

end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.GetRoot() : TComponent;
begin
  Result := NIL; //FRoot;
end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.GetNameInt() : String;
var
  APos : Integer;
  
begin
  Result := FDisplayName;
  while( True ) do
    begin
    APos := Pos( '.', Result );
    if( APos > 0 ) then
      Delete( Result, 1, APos )

    else
      Break;

    end;
    
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStreamTypeEntry.Create( AID : TGUID );
begin
  inherited Create();
  Extentions := TDictionary<TGUID, IOWStreamInfoExtention>.Create();
end;
//---------------------------------------------------------------------------
function TOWStreamTypeEntry.GetInstance() : TOWStreamTypeEntry;
begin
  Result := Self;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWPinListBasic.Add( APin : TOWBasicPin ): Integer;
begin
  Result := IndexOf( APin );
  if( Result < 0 ) then
    Result := inherited Add( APin ); 
  
end;
//---------------------------------------------------------------------------
function TOWPinListBasic.RemoveNoList( APin : TOWBasicPin ) : Boolean;
begin
  APin.FOwnerPinList := NIL;
  Result := ( Remove( APin ) >= 0 );
end;
//---------------------------------------------------------------------------
function TOWPinListBasic.GetByIdentName( ARoot : TComponent; APinName : String ) : TOWBasicPin;
var
  Position   : Integer;
  AItemRoot  : TComponent;
  AShortName : String; 
  AFullName  : String;
  AItem      : TOWBasicPin;

begin
  AShortName := APinName;
  Position := Pos( '.', AShortName );
  if( Position <> 0 ) then
    System.Delete( AShortName, 1, Position );

  Result := NIL;

  GlobalStorageSection.Enter();
  try
    for AItem in Self do
      begin
      AItemRoot := AItem.GetRoot();
      AFullName := AItem.GetFullIdentName( True );
      if(( AItemRoot = NIL ) or ( ARoot = NIL ) or ( AItemRoot = ARoot )) then
        begin
        if(( ARoot = NIL ) or ( ARoot.Name = AItem.GetRootName() )) then
          if( AItem.GetFullIdentName( False ) = APinName ) then
            Exit( AItem );

        if( AFullName = APinName ) then
          Exit( AItem );

        if( AFullName = AShortName ) then
          Exit( AItem );

        end

      else if( ARoot.Name <> AItem.GetRootName() ) then
        begin
        if( AFullName = APinName ) then
          Exit( AItem );

        end;
      end;

  finally
    GlobalStorageSection.Leave();
    end;

end;
//---------------------------------------------------------------------------
function TOWPinListBasic.GetByDisplayName( ARoot : TComponent; APinName : String ) : TOWBasicPin;
var
  AItemRoot : TComponent;
  AItem     : TOWBasicPin;

begin
  GlobalStorageSection.Enter();
  try
    for AItem in Self do
      begin
      AItemRoot := AItem.GetRoot();
      if(( AItemRoot = NIL ) or ( ARoot = NIL ) or ( AItemRoot = ARoot )) then
        if(( AItem.GetFullName( False ) = APinName ) or ( AItem.GetFullName( True ) = APinName )) then
          Exit( AItem );

      end;

  finally
    GlobalStorageSection.Leave();
    end;

  Result := NIL;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWFormatConverter.Create();
begin
  inherited Create( NIL );
  FLock := TLock.Create();
end;
//---------------------------------------------------------------------------
constructor TOWFormatConverter.CreateEx( AInputPin : TOWSinkPin; AOutputPin : TOWSourcePin );
begin
  inherited Create( NIL );
  FLock := TLock.Create();
  FInputPin := AInputPin;
  FOutputPin := AOutputPin;
  FOutputPin.FunctionSources.Add( FInputPin );
end;
//---------------------------------------------------------------------------
destructor TOWFormatConverter.Destroy();
var
  ALock : ILockSection;

begin
  ALock := FLock.StopLock();
  FInputPin.Disconnect();
  FOutputPin.Disconnect();
  FreeAndNil( FInputPin );
  FreeAndNil( FOutputPin );
  ALock := NIL;
  inherited;
end;
//---------------------------------------------------------------------------
procedure TOWFormatConverter.BeforeDestruction();
var
  ALock : ILockSection;

begin
  ALock := FLock.UnlockAll();
  FInputPin.Disconnect();
  inherited;
end;
//---------------------------------------------------------------------------
function TOWFormatConverter.SourceOperationEvent( Sender : TOWBasicPin; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
begin
  Result := FInputPin.Notify( Operation );
end;
//------------------------------------------------------------------------------
function TOWFormatConverter.GetInstance() : TOWFormatConverter;
begin
  Result := Self;
end;
//------------------------------------------------------------------------------
function TOWFormatConverter._AddRef(): Integer; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};
begin
  Result := TInterlocked.Increment(FRefCount);
end;
//---------------------------------------------------------------------------
function TOWFormatConverter._Release(): Integer; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};
begin
  Result := TInterlocked.Decrement(FRefCount);
  if Result = 0 then
    Destroy();

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWPinProxy.SetPinName( AName : String );
begin
  GetPin().FOverrideName := AName;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
destructor TOWBasicPinProxy.Destroy();
begin
  FPin.Free();
  inherited;
end;
//---------------------------------------------------------------------------
function TOWBasicPinProxy.GetPin() : TOWPin;
begin
  Result := FPin;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWPinListProxy.SetPinListName( AName : String );
begin
  GetPinList().FOverrideName := AName;
end;
//---------------------------------------------------------------------------
function TOWPinListProxy.CreatePinProxy( AProxyClassName : String; APinName : String ) : TOWPinProxy;
var
  AClass : TOWPinProxyClass;

begin
  AClass := TOWPinProxyClass( Classes.GetClass( AProxyClassName ));
  Result := TOWPinProxy( AClass.Create( Self ));
  Result.SetPinName( APinName );
//  Result := OWCreatePinProxy( APinTypeName, APinName );
  Result.GetPin().FOwner := Self;
//  Result.GetPin().FOwnerPinList := GetPinList();

  GetPinList().AddNamed( Result.GetPin(), APinName );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
destructor TOWBasicPinListProxy.Destroy();
begin
  FPinList.Free();
  inherited;
end;
//---------------------------------------------------------------------------
function TOWBasicPinListProxy.GetPinList() : TOWPinList;
begin
  Result := FPinList;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWInternalPinList.GetByNameCreate( ARoot : TComponent; AType : TOWPinType; APinIdentName : String; APinDisplayName : String; ACreatedFrom : String ) : TOWBasicPin;
begin
  if( APinIdentName = '' ) then
    Exit( NIL );

  Result := GetByIdentName( ARoot, APinIdentName );
  if( Result <> NIL ) then
    Exit;

  Result := GetByDisplayName( ARoot, APinDisplayName );

  if( Result <> NIL ) then
    Exit;

  Result := TOWUnloadedPin.Create( ARoot, AType, APinIdentName, APinDisplayName, ACreatedFrom );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function OWDispatchers( DesignTime : Boolean ) : IOWStateDispatcherList;
begin
  if( DesignTime ) then
    Result := GDesignDispatchers

  else
    Result := GRunDispatchers;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure OWInitGlobals();
var
  APinListType : ITypeInfo;

begin
  if( GLoaded ) then
    Exit;

  Mitov.ClassManagement.InitializationSection();
  OpenWire.TypeConverters.TypeConvertersInitGlobals();

  GlobalStorageSection := Mitov.Threading.TCriticalSection.Create();
  GLoaded := True;
  GOWNotifySection := Mitov.Threading.TCriticalSection.Create();
  GOWNotifyList := TLinkedList<IOWPinNotifier>.Create();
  GOWStreamTypes := TDictionary<TGUID, IOWStreamTypeEntry>.Create();

  // State pins support
  GDesignDispatchers := TOWStateDispatcherList.Create();
  GRunDispatchers := TOWStateDispatcherList.Create();
  GOWPins := TOWInternalPinList.Create( False );
  GOWPinLists := TArrayList<TOWBasicPinList>.Create();
  GOWUnloadedPins := TOWPinListBasic.Create( True );

  TClassManagement.RegisterSupressedAssign(
      function( AObject : TObject ) : Boolean
      begin
        Result := ( AObject is TOWObject );
      end
    );

  APinListType := TOWPinList.TypeInfo;

  TClassManagement.RegisterBeforeDestructionFirst(
      TOWSinkPin.TypeInfo
    ,
      procedure( AInstance : TObject; AClass : TClass; AMember : IValueMemberInfo )
      var
        APin  : TOWBasicPin;

      begin
        APin := AMember.Value[ AInstance ].AsType<TOWBasicPin>();
        if( APin <> NIL ) then
          APin.Disconnect();

      end
    );

  TClassManagement.RegisterBeforeDestructionFirst(
      APinListType
    ,
      procedure( AInstance : TObject; AClass : TClass; AMember : IValueMemberInfo )
      var
        APinList  : TOWPinList;
        I         : Integer;

      begin
        APinList := AMember.Value[ AInstance ].AsType<TOWPinList>();
        if( APinList <> NIL ) then
          for I := 0 to APinList.Count - 1 do
            if( APinList[ I ] is TOWSinkPin ) then
              APinList[ I ].Disconnect();

      end
    );

  TClassManagement.RegisterBeforeDestructionSecond(
      TOWBasicPin.TypeInfo
    ,
      procedure( AInstance : TObject; AClass : TClass; AMember : IValueMemberInfo )
      var
        APin  : TOWBasicPin;

      begin
        APin := AMember.Value[ AInstance ].AsType<TOWBasicPin>();
        if( APin <> NIL ) then
          APin.Disconnect();

      end
    );

  TClassManagement.RegisterBeforeDestructionSecond(
      APinListType
    ,
      procedure( AInstance : TObject; AClass : TClass; AMember : IValueMemberInfo )
      var
        APinList  : TOWPinList;
        I         : Integer;

      begin
        APinList := AMember.Value[ AInstance ].AsType<TOWPinList>();
        if( APinList <> NIL ) then
          for I := 0 to APinList.Count - 1 do
            APinList[ I ].Disconnect();

      end
    );

  TClassManagement.RegisterDestruction(
      TOWPinTypeObject.TypeInfo
    ,
      procedure( AInstance : TObject; AClass : TClass; AMember : IValueMemberInfo; ADelayMembersList : ILinkedList<IValueMemberInfo> )
      begin
        ADelayMembersList.Add( AMember );
      end
    );

end;
//---------------------------------------------------------------------------
procedure GOWUninitGlobals();
begin
  if( GLoaded ) then
    begin
    GOWUnloadedPins.Free();
    GOWPins.Free();

    GLoaded := False;
    end;

end;
//---------------------------------------------------------------------------
procedure GModuleUnloadProc( HInstance: NativeInt );
begin
  GOWStreamTypes.RemoveAll(
      function( AKey : TGUID; AEntry : IOWStreamTypeEntry ) : Boolean
      begin
        AEntry.GetInstance().Extentions.RemoveAll(
            function( AKey : TGUID; AExtention : IOWStreamInfoExtention ) : Boolean
            begin
              Result := AExtention.IsInModule( HInstance );
            end
          );


        Result := ( NativeInt( FindHInstance( @AEntry.GetInstance().SendFunction )) = HInstance );
      end
    );

end;
//---------------------------------------------------------------------------
initialization
  OWInitGlobals();
  AddModuleUnloadProc( GModuleUnloadProc );

finalization
  RemoveModuleUnloadProc( GModuleUnloadProc );
  GOWUninitGlobals();
//---------------------------------------------------------------------------
end.
