{*> Ver: V4.3.2 *********      History      ***************************\

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
V4.3         09/23/2009  Added Delphi 2010 and C++ Builder support.
V4.3.1       10/10/2009  Improved pin list editor.
V4.3.2       10/25/2009  Improved pin editors.
                         Fully Lazarus compatible under Windows.


Legal issues: Copyright (C) 2001-2010 by Boian Mitov
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
                Graph editor.

\***************************************************************************}

{$IFDEF fpc}
{$MODE DELPHI}{$H+}
{$DEFINE D6}
{$DEFINE SYMLOCKS}
{$ELSE}
{$IFNDEF VER130}
{$IFNDEF VER140}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$ENDIF}
{$ENDIF}
{$ENDIF}

{$I OWDefs.inc}

unit OWPins;

interface

uses classes,
{$IFDEF fpc}
LCLIntf, LCLType, SyncObjs,
{$ELSE}
windows,
{$ENDIF}
typinfo, SysUtils, Contnrs;

var  PinsNeedRefresh : Boolean;

const  OWNULLID : TGUID = '{00000000-0000-0000-0000-000000000000}';

{$IFDEF fpc}
type TOWCriticalSection = TCriticalSection;
const INFINITE = $FFFFFFFF;
{$ELSE}
type TOWCriticalSection = class
protected
  FSection : TRTLCriticalSection;

public
  constructor Create();
  destructor  Destroy(); override;

public
  procedure Enter(); stdcall;
  procedure Leave(); stdcall;

end;
{$ENDIF}
//---------------------------------------------------------------------------
type TOWEvent = class
protected
{$IFDEF fpc}
  FHandle : PEventState;
{$ELSE}
  FHandle : THandle;
{$ENDIF}

public
  constructor CreateNamed( AName : String; AManualReset : Boolean; AInitialState : Boolean );
  constructor Create( AManualReset : Boolean; AInitialState : Boolean );
  destructor  Destroy(); override;

public
  procedure Signal(); stdcall;
  procedure Reset(); stdcall;
  function  WaitFor( Timeout: DWORD = INFINITE ) : Boolean; stdcall;
{$IFNDEF fpc}
  function  GetHandle() : THandle;
{$ENDIF}

end;
//---------------------------------------------------------------------------
type TOWMutex = class
private
{$IFDEF SYMLOCKS}
  FEvent    : TOWEvent;
  FSection  : TOWCriticalSection;
  FCount    : Integer;
  FThreadID : DWORD;
{$ELSE}
  FHandle   : THandle;
{$ENDIF}

public
  constructor CreateNamed( AName : String; AInitialOwner : Boolean );
  constructor Create( AInitialOwner : Boolean );
  destructor Destroy(); override;
  
public
  function Acquire( Milliseconds : Cardinal ) : Boolean; stdcall;
  function Release() : Boolean; stdcall;

end;
//---------------------------------------------------------------------------
type TOWSemaphore = class
private
{$IFDEF SYMLOCKS}
  FEvent    : TOWEvent;
  FSection  : TOWCriticalSection;
  FCount    : Integer;
  FMaxCount : Integer;
{$ELSE}
  FHandle   : THandle;
{$ENDIF}

public
  constructor Create( AInitialCount : Longint; AMaximumCount: Longint );
  destructor  Destroy(); override;

public
  function Increment( ACount : Longint = 1 ) : Boolean; stdcall;
  function Decrement( AMilliseconds : Cardinal ) : Boolean; stdcall;
{$IFNDEF fpc}
  function  GetHandle() : THandle;
{$ENDIF}

end;
//---------------------------------------------------------------------------
type
  IOWStream = interface
    ['{2BFF1BE1-1698-4CFA-A427-9E0801C5B357}']
  end;

//---------------------------------------------------------------------------
TOWNotifyState  = set of ( nsNewLink, nsLastIteration );
TOWNotifyResult = set of ( nrDataChanged );
//---------------------------------------------------------------------------

type
  TOWNotifyOperation = class;

  IOWNotifyOperation = interface
    ['{AC2714E1-1E70-4C60-ABBB-EA27737CEE74}']
    function Instance() : TOWNotifyOperation; stdcall;
  end;

  TOWNotifyOperation = class( TInterfacedObject, IOWNotifyOperation )
  protected
    FOperationID  : Cardinal;

  public
    property OperationID  : Cardinal read FOperationID;

  public
    constructor Create();

  public
    function Instance() : TOWNotifyOperation; stdcall;

  end;

type TOWDBOperation = (
  owdbNone,
  owdbError,
  owdbCreate, owdbDestroy,
  owdbBeginWriteCreate, owdbWriteCreate, owdbBeginWriteDestroy, owdbWriteDestroy,
  owdbBeginReadCreate, owdbReadCreate, owdbBeginReadDestroy, owdbReadDestroy,
  owdbStopCreate, owdbStopDestroy, owdbUnlockCreate, owdbUnlockDestroy );

type TOWDBLockRecord = record
  ID                  : Int64;
  IsNext              : Boolean;
  Lock                : Pointer;
  Section             : Pointer;
  Operation           : TOWDBOperation;
  ThreadID            : Integer;

  CountStopLocks      : Integer;
  CountStopLocksOwner : Integer;
  CountLocks          : Integer;
  OwningThreadID      : Integer;

  InStopCount         : LongInt;

  CountWrites         : Integer;
  CountReads          : Integer;
  CountUnlocks        : Integer;
  CountStops          : Integer;

end;

const GOWDBG_HISTORY_SIZE = 6999;

type TGOWDBGLockHistoryArray = array [ 0..GOWDBG_HISTORY_SIZE ] of TOWDBLockRecord;

type TGOWDBGLockHistory = record
  Active  : Boolean;
  Index   : Integer;
  History : TGOWDBGLockHistoryArray;

end;

type PGOWDBGLockHistory = ^TGOWDBGLockHistory;

{$IFDEF __LOCKS_DBG__}

{$IFDEF __LOCKS_DBG_MAPPED__}
type TOWDebugCriticalSection = class( TOWMutex )
public
  procedure Enter();
  procedure Leave();

end; 

var GDBGMemMap        : THandle;            // Mapping handle
var GOWDBGLockHistory : PGOWDBGLockHistory; // Memory Pointer

{$ELSE}
type TOWDebugCriticalSection = TOWCriticalSection;
 
var GOWDBGLockHistoryData : TGOWDBGLockHistory;
var GOWDBGLockHistory  : PGOWDBGLockHistory = @GOWDBGLockHistoryData;
{$ENDIF}

{$ENDIF}

type
TOWPin = class;
TOWBasicPin = class;
TOWStreamPin = class;
TOWBasicSinkPin = class;
TOWSinkPin = class;
TOWEventSinkPin = class;
TOWSourcePin = class;
TOWStatePin = class;
TOWStateDispatcher = class;
TOWPinList = class;
TOWPinListOwner = class;
TOWFormatConverter = class;
TOWFormatConverterClass = class of TOWFormatConverter;
TOWDestroyLock = class;
//---------------------------------------------------------------------------
{$IFDEF OWCBUILDER} // BCB 6.0
  PDataTypeID = Pointer; // Fixes C++ Builder 6 linker problem.

// {$NODEFINE PDataTypeID}
// (*$HPPEMIT 'namespace Owpins'*)
// (*$HPPEMIT '{'*)
// {$HPPEMIT 'typedef void * PDataTypeID;'}
// (*$HPPEMIT '};'*)

{$ELSE}
  PDataTypeID = ^TGUID;

{$ENDIF}

TOWSubmit = function ( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult of object;
TOWGlobalSubmit = function ( Sender : TOWPin; Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
//TOWCreateTypeConverter = function () : TOWFormatConverter;
//TOWPinNotifyEvent = procedure ( Sender : TOWPin ) of object;
//---------------------------------------------------------------------------
{$IFDEF OWCBUILDER} // BCB 6.0
TOWSubmitLink = TNotifyEvent;
{$ELSE}
TOWSubmitLink = TOWSubmit;
{$ENDIF}
//---------------------------------------------------------------------------
TOWPinTypeEntry=record
  ID             : TGUID;
  SubmitFunction : TOWSubmit;
end;
//---------------------------------------------------------------------------
TOWPinStreamType=class( TObject )
protected
  Types : array of TOWPinTypeEntry;

public
  procedure AddType( ID : TGUID; SubmitFunction : TOWSubmit );
  procedure RemoveType( ID : TGUID );
  procedure SwapPosition( Index1 : Integer; Index2 : Integer ); 
  procedure ClearTypes();

  function  GetID( Index : Integer )             : TGUID;
  function  GetSubmitFunc( Index : Integer )     : TOWSubmit;
  function  GetLength()                          : Integer;

public
  property  ID [ Index : Integer ] : TGUID read GetID;
  property  SubmitFunc [ Index : Integer ] : TOWSubmit read GetSubmitFunc;
  property  Count : Integer read GetLength;

end;

TOWPinTypeRestricted=class( TOWPinStreamType )
public
  Ordered : Boolean;

end;

//---------------------------------------------------------------------------
IOWLockSection = interface
  ['{01621A5C-9936-4BEB-BF6F-5D6754E65786}']
  
end;
//---------------------------------------------------------------------------
TOWLockSection = class( TInterfacedObject, IOWLockSection )
end;
//---------------------------------------------------------------------------
TOWObject = class;
TOWLock = class;
//---------------------------------------------------------------------------
IOWBaseLockObject = interface
   ['{581C5EAF-32C2-49FB-9FA4-BED8AEC22B87}']

  function  BeginRead( TryLock : Boolean = False ) : Boolean;
  procedure BeginWrite();
  procedure EndRead();
  procedure EndWrite();

  function  ReadLock()  : IOWLockSection;
  function  WriteLock() : IOWLockSection;

end;
//---------------------------------------------------------------------------
IOWLock = interface
  ['{66C8D1BF-FA12-48E8-B0C9-60A652FA80D9}']

  function  ReadLock()  : IOWLockSection;
  function  WriteLock() : IOWLockSection;
  function  StopLock()  : IOWLockSection;
  function  UnlockAll() : IOWLockSection;
  function  Instance()  : TOWLock;

end;
//---------------------------------------------------------------------------
TOWLock = class( TInterfacedObject, IOWLock )
protected
  FIntLockSection       : TOWCriticalSection;
  FCountStopLocks       : Integer;
  FCountStopLocksOwner  : Integer;
  FCountLocks           : Integer;
  FInStopCount          : LongInt;

  FOwningThread         : DWORD;
  FLockMutex            : TOWMutex;
//  FPairLock             : IOWLock;
//  FPairUnlock           : IOWLockSection;

{$IFDEF __LOCKS_DBG__}
  FCountWrites          : Integer;
  FCountReads           : Integer;
  FCountUnlocks         : Integer;
  FCountStops           : Integer;
{$ENDIF}

{$IFDEF __LOCKS_DBG__}
protected
  procedure Assert();
{$ENDIF}

protected
  function  BeginRead( TimeOut : Cardinal ) : Boolean; stdcall;
  function  BeginWrite( TimeOut : Cardinal ) : Boolean; stdcall;
  procedure EndRead(); stdcall;
  procedure EndWrite(); stdcall;
  procedure BeginStop(); stdcall;
  procedure EndStop(); stdcall;

//  procedure SetPair( APairLock : IOWLock );

protected
  procedure IntLock(); stdcall;
  procedure IntUnlock(); stdcall;
  procedure IntBeginWrite( Count : Integer; CountOther : Integer );

public
  function  Instance() : TOWLock;
   
public
  function  ReadLock() : IOWLockSection;
  function  WriteLock() : IOWLockSection;
  function  StopLock() : IOWLockSection;
  function  UnlockAll() : IOWLockSection;

public
  constructor Create();
  destructor  Destroy(); override;

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
  FLockCounter : LongInt;
  FDestroying  : LongInt;

protected
  procedure Unlock();
  procedure DestroyUnlock();
  procedure DestroyLockNum( ACount : LongInt );

public
  function  Lock() : IOWDestroyLockSection;
  function  DestroyLock() : IOWDestroyLockSection;
  function  DestroyUnlockLock() : IOWDestroyLockSection;
  function  Instance() : TOWDestroyLock;

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
  FLock : TOWDestroyLock;

public
  constructor Create( ALock : TOWDestroyLock );
  destructor  Destroy(); override;

end;
//---------------------------------------------------------------------------
TOWDestroyLockUnlockSection = class( TInterfacedObject, IOWDestroyLockSection )
protected
  FLock  : TOWDestroyLock;
  FCount : LongInt;

public
  constructor Create( ALock : TOWDestroyLock; ACount : LongInt );
  destructor  Destroy(); override;

end;
//---------------------------------------------------------------------------
TOWObject = class( TPersistent )
protected
  FIntLock              : IOWLock;
  FIntLockSection       : TOWCriticalSection;

public
  function  ReadLock()  : IOWLockSection; virtual;
  function  WriteLock() : IOWLockSection; virtual;
  function  UnlockAll() : IOWLockSection; virtual;

public
  constructor Create();
  destructor  Destroy(); override;
  
end;
//---------------------------------------------------------------------------
TOWPinObject = class( TOWObject )
protected
  procedure PinDeletedNotify( ADeletedPin : TOWBasicPin ); virtual;
  procedure PinReplacedNotify( AOldPin : TOWBasicPin; ANewPin : TOWBasicPin ); virtual;
  procedure SetNotifyAfterByName( APin : TOWPin; AfterPinName : String ); virtual;
  
public
  function  GetAfterPinDisplayName( APin : TOWPin ) : String; virtual;

end;
//---------------------------------------------------------------------------
TOWPinType = ( ptSource, ptSink, ptState, ptEventSink, ptDispatcher );
//---------------------------------------------------------------------------
TOWBasicPin = class(TOWPinObject, IOWStream)
protected
  CurrentEditorPtr      : ^TOWBasicPin;

protected
  FOwnerPinList         : TOWPinList;   // If owned by pin list.
  FCustomData           : TObject;
  FLoadFormName         : String;
  FDestroyLock          : IOWDestroyLock;

protected // State support
  FDispatcher           : TOWStateDispatcher;

protected
  function  GetOwnerComponent() : TComponent; virtual;
  function  RootInDestroying() : Boolean; virtual;
  procedure IntDisconnect( OtherPin : TOWBasicPin; DesignFormClosing : Boolean ); virtual;
  procedure IntConnect( SinkPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ); virtual;
  procedure CheckRemove(); virtual;
  procedure ApplyFormName( var Ident : String );
  function  CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : TOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean ) : Boolean; virtual; abstract;

protected
  function  GetPinType() : TOWPinType; virtual; abstract;
  function  GetConnectedAfterForPin( OtherPin : TOWBasicPin ) : TOWBasicPin; virtual;

public
  function  DirectDependsOn( const OtherPin : TOWBasicPin ) : Boolean; virtual;
  function  GetConnectionID( const OtherPin : TOWBasicPin ) : TGUID; virtual;
  function  GetIsRealPin() : Boolean;
  function  GetRootName() : String; virtual;
  function  GetRoot() : TComponent; virtual;
  function  GetName() : String; virtual; abstract;
  function  GetSaveName() : String; virtual;
  function  GetOwnerName() : String; virtual;
  function  GetFullName( IncludeRootForm : Boolean ) : String; virtual; abstract;
  function  GetFullIdentName( IncludeRootForm : Boolean ) : String; virtual; abstract;
  function  DependsOn( const OtherPin : TOWBasicPin ) : Boolean; virtual; abstract;
  // Wether or not the OtherPin is compatible with the entire data chain of already connected slots.
  function  CanConnectTo( const OtherPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean;
  function  IsCompatible( const OtherPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; virtual; abstract;
  function  IsConnected() : Boolean; virtual;
  function  IsStateConnected() : Boolean; virtual;
  function  IsConnectedTo( OtherPin : TOWBasicPin ) : Boolean; virtual;//const;
  function  IsConnectedToAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ) : Boolean; virtual;//const;
  function  IsConnectedToState( const ADispatcher : TOWStateDispatcher ) : Boolean; virtual;
  function  IsConnectedByStateTo( OtherPin : TOWBasicPin ) : Boolean; virtual;//const;
  function  IsConnectedByStateToAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ) : Boolean; virtual;//const;
  function  IsConnectedByConverterTo( OtherPin : TOWBasicPin ) : Boolean; virtual;//const;

  function  ConnectByState( OtherPin : TOWBasicPin ) : Boolean; virtual;
  function  ConnectByStateAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ) : Boolean; virtual;
  function  Connect( OtherPin : TOWBasicPin ) : Boolean; virtual;
  function  ConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ) : Boolean; virtual;
  function  CanConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; virtual;
  procedure Disconnect(); virtual;
  procedure DisconnectFrom( OtherPin : TOWBasicPin ); virtual;
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
  function  WriteNoStateListEntry( Writer : TWriter ) : Boolean; virtual;
  function  GetConnectedPinCount() : Integer; virtual;
  function  GetConnectedPin( Index : Integer ) : TOWBasicPin; virtual;
  function  GetConnectedAfterPin( Index : Integer ) : TOWBasicPin; virtual;
  function  GetDispatcherCount() : Integer; virtual;
  function  GetDispatcher( Index : Integer ) : TOWStateDispatcher; virtual;
  procedure SetInEditor( Value : Boolean ); virtual;
  function  CanConnectToStateInt( const ADispatcher : TOWStateDispatcher; var AConverter : TOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean ) : Boolean; virtual;
  procedure IntStateDisconnect(); virtual;
  function  GetEditorString() : String; virtual;
  function  SetEditorString( ARoot : TComponent; const AValue: string ) : Boolean; virtual;

public
  function  IsLinkedTo( PinName : String ) : Boolean; virtual;

public // State support
  function  ConnectToState( ADispatcher : TOWStateDispatcher ) : Boolean; virtual;
  function  ConnectToStateAfter( ADispatcher : TOWStateDispatcher; NotifyAfterPin : TOWBasicPin ) : Boolean; virtual;
  function  CanConnectToState( const ADispatcher : TOWStateDispatcher ) : Boolean;

protected
  function  CreateDispatcher( Owner : TComponent ) : TOWStateDispatcher; virtual;
  function  CreateNamedDispatcher( Name : String; DesignTime : Boolean ) : TOWStateDispatcher; virtual;

protected
  function  OwnerInDesigning() : Boolean; virtual; abstract;
  function  FindConnectionID( const OtherPin : TOWBasicPin; var AConverter : TOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean ) : TGUID; virtual; abstract;
  function  NotifyDispatcher( Operation : IOWNotifyOperation; State : TOWNotifyState; APinToNotify : TOWPin ) : TOWNotifyResult; virtual; abstract;
  procedure UpdateStateValue(); virtual;

protected
  function  RequestInterface(const IID: TGUID; out Obj): HResult; virtual; stdcall;
  function  _AddRef(): Integer; stdcall;
  function  _Release(): Integer; stdcall;

public
  function  QueryInterface(const IID: TGUID; out Obj): HResult; virtual; stdcall;

public
  procedure AfterConstruction(); override;
  procedure BeforeDestruction(); override;

public
  constructor Create();
  destructor  Destroy(); override;

public
  property OwnerPinList                           : TOWPinList          read FOwnerPinList;   // If owned by pin list.
  property Owner                                  : TComponent          read GetOwnerComponent;
  property Name                                   : String              read GetName;
  property CustomData                             : TObject             read FCustomData write FCustomData;
  property ConnectedPinCount                      : Integer             read GetConnectedPinCount;
  property ConnectedPin[ Index : Integer ]        : TOWBasicPin         read GetConnectedPin;
  property AfterPins[ Index : Integer ]           : TOWBasicPin         read GetConnectedAfterPin;
  property ConnectedDispatcherCount               : Integer             read GetDispatcherCount;
  property ConnectedDispatcher[ Index : Integer ] : TOWStateDispatcher  read GetDispatcher;

end;
//---------------------------------------------------------------------------
TOWPin = class(TOWBasicPin)
protected
  FOwner                : TComponent;
  FLastRootName         : String;
  StreamType            : TOWPinStreamType;
  FInSending            : Integer;
  FIsLoaded             : Boolean;
  FOwnerLock            : IOWLock; // The lock of the component taht owns the pin.

public
  constructor Create(AOwner: TComponent);
  constructor CreateLock(AOwner: TComponent; AOwnerLock : IOWLock);
  destructor  Destroy(); override;

protected
  function  RootInDestroying() : Boolean; override;
  function  OwnerInLoading() : Boolean;
  function  OwnerInDesigning() : Boolean; override;

protected
  procedure DefineProperties(Filer: TFiler); override;

protected // State support
  function  FindConnectionID( const OtherPin : TOWBasicPin; var AConverter : TOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean ) : TGUID; override;

protected
  procedure AddType( ID : TGUID );  overload;
  procedure AddType( ID : TGUID; SubmitFunction : TOWSubmit ); overload;

  procedure RemoveType( ID : TGUID );
  procedure ClearTypes();

public
  function  DefaultNotifyDispatcher( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;

protected
  procedure OrderStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted );

public
  function  GetConnectionID( const OtherPin : TOWBasicPin ) : TGUID; override;
  function  GetConnectionName( const OtherPin : TOWBasicPin ) : String;
  function  GetPrimaryConnectionID() : TGUID; virtual;
  
protected
  function  GetSubmitFunctionID( const IID : TGUID ) : TOWSubmit;
  function  GetLinkNameID( const IID : TGUID ) : String;
  procedure CheckVirtualList(); override;
  function  CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : TOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean ) : Boolean; override;

protected
  function  GetStateSubmitID( const OtherPin : TOWBasicPin ) : TGUID;   virtual;

protected
  function  GetOwnerComponent() : TComponent; override;
  
public
  function  ReadLock()  : IOWLockSection; override;
  function  WriteLock() : IOWLockSection; override;
  
public
  function  GetRootName() : String; override;
  function  GetName() : String; override;
  function  GetSaveName() : String; override;
  function  GetFullName( IncludeRootForm : Boolean ) : String; override;
  function  GetFullIdentName( IncludeRootForm : Boolean ) : String; override;

protected
  function  NotifyDispatcher( Operation : IOWNotifyOperation; State : TOWNotifyState; APinToNotify : TOWPin ) : TOWNotifyResult; override;
  
public
  function  Notify( Operation : IOWNotifyOperation ) : TOWNotifyResult; override;

public
  function  IsCompatible( const OtherPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; override;

end;
//---------------------------------------------------------------------------
IOWObjectList = interface
  procedure SetItem( Index : Integer; Value : TOWObject );
  function  GetItem( Index : Integer ) : TOWObject;
  function  GetCount() : Integer;

  procedure Add( AList : TOWObject );
  property  Items[ Index : Integer ] : TOWObject read GetItem write SetItem; default;
  property  Count : Integer read GetCount;

end;
//---------------------------------------------------------------------------
TOWObjectList = class( TList, IOWObjectList )
protected
  FRefCount: Integer;

protected
  function QueryInterface(const IID: TGUID; out Obj): HResult; stdcall;
  function _AddRef: Integer; stdcall;
  function _Release: Integer; stdcall;

protected
  function  GetCount() : Integer;
  procedure SetItem( Index : Integer; Value : TOWObject );
  function  GetItem( Index : Integer ) : TOWObject;

public
  procedure Add( AList : TOWObject );

public
  property Items[ Index : Integer ] : TOWObject read GetItem write SetItem; default;

end;
//---------------------------------------------------------------------------
TOWObjectListList = class( TObjectList )
protected
  procedure SetItem( Index : Integer; Value : TOWObjectList );
  function  GetItem( Index : Integer ) : TOWObjectList;

public
  procedure Add( AList : TOWObjectList );

public
  property Items[ Index : Integer ] : TOWObjectList read GetItem write SetItem; default;

end;
//---------------------------------------------------------------------------
TOWStreamPin = class(TOWPin)
protected
  procedure DownStreamFillPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin ); virtual;
  procedure UpStreamFillPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin ); virtual;
  function  DownStreamQueryPossybleInterface( const IID: TGUID ) : HResult; virtual;
  function  UpStreamQueryPossybleInterface( const IID: TGUID ) : HResult; virtual;

protected
  procedure BackPopulateStreamChains( AChain : TOWObjectListList; AList : TOWObjectList ); virtual;

public

end;
//---------------------------------------------------------------------------
TOWFormatConverter = class(TComponent)
protected
  FInputPin  : TOWSinkPin;
  FOutputPin : TOWSourcePin;

protected
  function SourceOperationEvent( Sender : TOWBasicPin; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
  
public
  property InputPin  : TOWSinkPin   read FInputPin;
  property OutputPin : TOWSourcePin read FOutputPin;

protected
  constructor Create(); reintroduce; virtual;
  constructor CreateEx( AInputPin : TOWSinkPin; AOutputPin : TOWSourcePin );

public
  destructor  Destroy(); override;

end;
//---------------------------------------------------------------------------
EOWException = class(Exception)
end;
//---------------------------------------------------------------------------
TOWPinEntry = record
  ConnectionPin         : TOWBasicPin;
  RealPin               : TOWBasicPin;
  NotifyAfterPin        : TOWBasicPin;
  ConnectedID           : TGUID;
  SubmitFunction        : TOWSubmit;
  ModificationLevel     : Integer; // Indicates how often this pin is source of data modification.
end;

POWPinEntry = ^TOWPinEntry;
//---------------------------------------------------------------------------
TOWPinEntryList = class( TList )
public
  function  Add() : POWPinEntry;
  function  Remove( Item: POWPinEntry ) : Integer;
  procedure Delete( Index: Integer );
  procedure Clear(); override;

  procedure CopyFromList( AList : TOWPinEntryList );

protected
  function  GetItem( Index : Integer ) : POWPinEntry;

public
  function  GetItemByPin( APin : TOWBasicPin ) : POWPinEntry;

public
  property Items[ Index : Integer ] : POWPinEntry read GetItem; default;

end;
//---------------------------------------------------------------------------
TOWFormatConverterList = class( TObjectList )
protected
  function  GetItem( Index : Integer ) : TOWFormatConverter;

public
  property Items[ Index : Integer ] : TOWFormatConverter read GetItem; default;

end;
//---------------------------------------------------------------------------
TOWSinkPinList = class( TObject )
protected
  FList       : TObjectList;
  FOwner      : TOWSourcePin;

protected
  function GetCount() : Integer;
  function GetItem( Index : Integer ) : TOWBasicSinkPin;

public
  procedure Add( APin : TOWBasicSinkPin ); //; ShareLock : Boolean = True );
  procedure Remove( APin : TOWBasicSinkPin ); virtual;

public
  constructor Create( AOwner : TOWSourcePin );
  destructor  Destroy(); override;
  
public
  property Count : Integer read GetCount;
  property Items[ Index : Integer ] : TOWBasicSinkPin read GetItem; default;

end;
//---------------------------------------------------------------------------
TOWFunctionSinkPinList = class( TOWSinkPinList )
public
  procedure Add( APin : TOWBasicSinkPin );
  procedure Remove( APin : TOWBasicSinkPin ); override;

end;
//---------------------------------------------------------------------------
TOWDataTypeSinkPinList = class( TOWSinkPinList )
public
  procedure Add( APin : TOWBasicSinkPin );
  procedure Remove( APin : TOWBasicSinkPin ); override;

end;
//---------------------------------------------------------------------------
TOWSourcePin = class(TOWStreamPin)
protected
  FSinkPins             : TOWPinEntryList;
  FFormatConverters     : TOWFormatConverterList;
  FFunctionSources      : TOWFunctionSinkPinList;
  FDataTypeSources      : TOWDataTypeSinkPinList;
  FInDependOn           : Boolean;
  FInDisconnect         : Boolean;
  FInEditor             : Boolean;

protected
  procedure IntConnect( SinkPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ); override;
  procedure IntDisconnect( OtherPin : TOWBasicPin; DesignFormClosing : Boolean ); override;
  procedure PinDeletedNotify( ADeletedPin : TOWBasicPin ); override;
  procedure PinReplacedNotify( AOldPin : TOWBasicPin; ANewPin : TOWBasicPin ); override;
  function  GetPinType() : TOWPinType; override;
  function  GetConnectedAfterForPin( OtherPin : TOWBasicPin ) : TOWBasicPin; override;
  function  GetConnectedPinCount() : Integer; override;
  function  GetConnectedPin( Index : Integer ) : TOWBasicPin; override;
  function  GetEditorString() : String; override;
  function  SetEditorString( ARoot : TComponent; const AValue: string ) : Boolean; override;
  procedure SetInEditor( AValue : Boolean ); override;

public
  function  IsLinkedTo( PinName : String ) : Boolean; override;

protected
  function  GetSinkCount() : Integer;                           virtual; // const;
  function  GetSink( Index : Integer ) : TOWBasicPin;           virtual;

  function  GetConverterCount() : Integer;
  function  GetConverter( Index : Integer ) : TOWFormatConverter;
  
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

  function  DownStreamFindConnectionID( const OtherPin : TOWBasicPin; UseConverters : Boolean; RequestConverters : Boolean; var AConverter : TOWFormatConverter; var AConverterClass : TOWFormatConverterClass ) : TGUID;
  
  procedure ChangeConnectionType( PinIndex : Integer; const IID : TGUID );
//  procedure ChainReconnect( const DownIID: TGUID; const UpIID: TGUID );
  procedure BackChainReconnect( const DownIID: TGUID; const UpIID: TGUID );
  procedure ForthChainReconnect( const DownIID: TGUID; const UpIID: TGUID );

protected
  procedure BackPopulateStreamChains( AChain : TOWObjectListList; AList : TOWObjectList ); override;

protected
  procedure NewConnection( ASinkPin : TOWBasicPin; ASubmitFunctionIn : TOWSubmitLink ); overload; virtual;
  procedure NewConnection( ASinkPin : TOWBasicPin ); overload; virtual;

protected
  procedure ReadConnectionsData( Reader : TReader ); override;
  procedure WriteConnectionsData( Writer : TWriter ); virtual;
  function  WriteNoStateListEntry( Writer : TWriter ) : Boolean; override;

  function  DoFormWrite() : Boolean; override;
  function  DoWrite() : Boolean; virtual;

  procedure DefineProperties(Filer: TFiler); override;

protected
  procedure SetNotifyAfterByName( APin : TOWPin; AfterPinName : String ); override;

protected
  function  TryLinkTo( Root : TComponent; SinkIdent : String; SinkName : String; ReadIdentAfter : String; SaveForm : Boolean ) : Boolean;

protected
  procedure TryLinkToList( Root : TComponent; SinkIdents : TStringList; SinkNames : TStringList );
  function  IsConnectedToPinName( OtherPinName : String ) : Boolean;
  procedure DisconnectFromPinName( OtherPinName : String );
  function  IntConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ) : Boolean; virtual;
  function  CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : TOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean ) : Boolean; override;
  procedure IntDisconnectFrom( OtherPin : TOWBasicPin );

protected
  procedure UpdateStateValue(); override;

public
  function  GetConnectionID( const OtherPin : TOWBasicPin ) : TGUID; override;
  function  GetPrimaryConnectionID() : TGUID; override;

public
  function  GetAfterPinDisplayName( APin : TOWPin ) : String; override;

public
  function  Connect( OtherPin : TOWBasicPin ) : Boolean; override;
  function  ConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ) : Boolean; override;
  function  CanConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; override;
  procedure Disconnect(); override;
  procedure DisconnectFrom( OtherPin : TOWBasicPin ); override;

  function  IsCompatible( const OtherPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; override;
  function  DependsOn( const OtherPin : TOWBasicPin ) : Boolean; override;
  function  DirectDependsOn( const OtherPin : TOWBasicPin ) : Boolean; override;
  function  IsConnected() : Boolean; override;

  function  IsConnectedTo( OtherPin : TOWBasicPin ) : Boolean; override; //const;
  function  IsConnectedToAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ) : Boolean; override;
  function  IsConnectedByConverterTo( OtherPin : TOWBasicPin ) : Boolean; override; //const;

protected
  function  NotifyPin( APin : TOWBasicPin; Operation : IOWNotifyOperation ) : TOWNotifyResult;
  
public
  function  Notify( Operation : IOWNotifyOperation ) : TOWNotifyResult; override;

public
  constructor Create(AOwner: TComponent);
  constructor CreateLock(AOwner: TComponent; AOwnerLock : IOWLock);
  destructor  Destroy(); override;

public
  property SinkCount : Integer read GetSinkCount;
  property Sinks[ Index : Integer  ] : TOWBasicPin read GetSink; default;

  property ConverterCount : Integer read GetConverterCount;
  property Converters[ Index : Integer  ] : TOWFormatConverter read GetConverter;

  // Describes the functions sources for the output within the component.
  property FunctionSources : TOWFunctionSinkPinList read FFunctionSources;

  // Describes the data type sources for the output within the component( The output should be of the same type as them ).
  property DataTypeSources : TOWDataTypeSinkPinList read FDataTypeSources;

end;

//---------------------------------------------------------------------------
TOWBasicSinkPin = class(TOWStreamPin)
protected
  FFunctionDependants   : TObjectList;
  FDataTypeDependants   : TObjectList;
  FIgnoreUpstream       : Boolean;

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
  procedure ChainReconnect( const DownIID: TGUID; const UpIID: TGUID );
  function  CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : TOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean ) : Boolean; override;
  function  CheckUpStreamInterfaces( const OtherPin : TOWSourcePin; UseConverters : Boolean ) : Boolean; virtual;

  function  HasToIgnoreUpstream() : Boolean;

protected
  procedure IntAddFunctionDependance( FunctionDependancePin : TOWSourcePin );
  procedure IntRemoveFunctionDependance( FunctionDependancePin : TOWSourcePin );
  procedure IntAddDataTypeDependance( DataTypeDependancePin : TOWSourcePin );
  procedure IntRemoveDataTypeDependance( DataTypeDependancePin : TOWSourcePin );
  function  GetUpStreamLinkName() : String; virtual; abstract;
  function  GetDownStreamLinkName() : String; virtual; abstract;

public
  function  IsCompatible( const OtherPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; override;

protected
  procedure IntCreate();

public
  constructor Create(AOwner: TComponent);
  constructor CreateLock(AOwner: TComponent; AOwnerLock : IOWLock);
  destructor  Destroy(); override;

public
  property IgnoreUpstream       : Boolean read FIgnoreUpstream write FIgnoreUpstream;
  property DownStreamLinkName   : String read GetDownStreamLinkName;
  property UpStreamLinkName     : String read GetUpStreamLinkName;

end;
//---------------------------------------------------------------------------
TOWEventSinkPin = class(TOWBasicSinkPin)
protected
  FSourcePins         : TOWPinEntryList;
  FFormatConverters   : TOWFormatConverterList;
  FInDisconnect       : Boolean;

protected
  function  GetSourceCount() : Integer; virtual;
  function  GetSource( Index : Integer ) : TOWBasicPin; virtual;

  function  GetConverterCount() : Integer;
  function  GetConverter( Index : Integer ) : TOWFormatConverter;

  function  GetPinType() : TOWPinType; override;

protected
  function  TryLinkTo( Root : TComponent; SourceIdent : String; SourceName : String; ReadIdentAfter : String; SaveForm : Boolean ) : Boolean;
  function  GetEditorString() : String; override;
  function  SetEditorString( ARoot : TComponent; const AValue: string ) : Boolean; override;

protected
  procedure IntConnect( SourcePin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ); override;
  function  IntConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ) : Boolean; virtual;
  procedure IntDisconnect( OtherPin : TOWBasicPin; DesignFormClosing : Boolean ); override;
  procedure IntDisconnectFrom( OtherPin : TOWBasicPin );
  procedure ReorderChangedData();
  procedure BackChainReconnect( const DownIID: TGUID; const UpIID: TGUID ); override;
  procedure ForthChainReconnect( const DownIID: TGUID; const UpIID: TGUID ); override;
  function  GetUpStreamLinkName() : String; override;
  function  GetDownStreamLinkName() : String; override;

public
  function  IsLinkedTo( PinName : String ) : Boolean; override;

public
  function  GetConnectedPinCount() : Integer; override;
  function  GetConnectedPin( Index : Integer ) : TOWBasicPin; override;
  
public
  function  ConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ) : Boolean; override;
  function  CanConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; override;
  procedure Disconnect(); override;
  procedure DisconnectFrom( OtherPin : TOWBasicPin ); override;
  function  DependsOn( const OtherPin : TOWBasicPin ) : Boolean; override;
  function  DirectDependsOn( const OtherPin : TOWBasicPin ) : Boolean; override;
  function  IsConnected() : Boolean; override;
  function  IsConnectedTo( OtherPin : TOWBasicPin ) : Boolean; override; //const;
  function  IsConnectedByConverterTo( OtherPin : TOWBasicPin ) : Boolean; override; //const;

  procedure Assign(Source: TPersistent); override;
  
protected
  function  DoFormWrite() : Boolean; override;
  function  DoWrite() : Boolean; virtual;
  
  procedure DefineProperties(Filer: TFiler); override;

  // TODO: Write state converters data.
  procedure ReadConnectionsData( Reader : TReader ); override;
  procedure WriteConnectionsData( Writer : TWriter ); virtual;
  function  WriteNoStateListEntry( Writer : TWriter ) : Boolean; override;

protected
  function  NotifyPin( APin : TOWBasicPin; Operation : IOWNotifyOperation ) : TOWNotifyResult;

public
  function  Notify( Operation : IOWNotifyOperation ) : TOWNotifyResult; override;

protected
  function  GetLinkStr( Item : Integer ) : String;
  
public
  constructor Create(AOwner: TComponent);
  constructor CreateLock(AOwner: TComponent; AOwnerLock : IOWLock);
  destructor  Destroy(); override;

public
  property SourceCount : Integer read GetSourceCount;
  property Sources[ Index : Integer  ] : TOWBasicPin read GetSource; default;

  property ConverterCount : Integer read GetConverterCount;
  property Converters[ Index : Integer  ] : TOWFormatConverter read GetConverter;

end;
//---------------------------------------------------------------------------
TOWSinkPin = class(TOWBasicSinkPin)
protected
  FConnectionSourcePin  : TOWBasicPin;
  FRealSourcePin        : TOWBasicPin;
  FIntRealSourcePin     : TOWBasicPin;
  FSubmitFunction       : TOWSubmit;
  FConnectedID          : TGUID;

  FInConnect            : Boolean;

protected
  procedure PinDeletedNotify( ADeletedPin : TOWBasicPin ); override;
  function  GetPinType() : TOWPinType; override;
  function  GetConnectedAfterForPin( OtherPin : TOWBasicPin ) : TOWBasicPin; override;
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
  function  GetFormatConverter() : TOWFormatConverter;

  function  GetUpStreamLinkName() : String; override;
  function  GetDownStreamLinkName() : String; override;
  function  GetUpStreamID() : TGUID;
  function  GetDownStreamID() : TGUID;

  function  WriteNoStateListEntry( Writer : TWriter ) : Boolean; override;
  procedure ReadConnectionsData( Reader : TReader ); override;
  procedure WriteConnectionsData( Writer : TWriter ); virtual;
  procedure ReadStateConverterConnectionsData( Reader : TReader ); virtual;
  procedure WriteStateConverterConnectionsData( Writer : TWriter ); virtual;
  function  DoStateConverterWrite() : Boolean; override;

  function  DoFormWrite() : Boolean; override;
  function  DoWrite() : Boolean; virtual;

  procedure DefineProperties(Filer: TFiler); override;

  procedure IntDisconnect( OtherPin : TOWBasicPin; DesignFormClosing : Boolean ); override;
  function  IsConnectedToPinName( OtherPinName : String ) : Boolean;
  function  CanConnectToStateInt( const ADispatcher : TOWStateDispatcher; var AConverter : TOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean ) : Boolean; override;
  procedure IntStateDisconnect(); override;
  function  GetEditorString() : String; override;
  function  SetEditorString( ARoot : TComponent; const AValue: string ) : Boolean; override;

public
  function  IsLinkedTo( PinName : String ) : Boolean; override;
  
protected
  function  GetLinkStr() : String;

protected
  procedure UpdateStateValue(); override;

public
  function  Notify( Operation : IOWNotifyOperation ) : TOWNotifyResult; override;

public
  function  GetConnectionID( const OtherPin : TOWBasicPin ) : TGUID; override;
  function  GetPrimaryConnectionID() : TGUID; override;

public
  function  Connect( OtherPin : TOWBasicPin ) : Boolean; override;
  function  ConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ) : Boolean; override;
  function  CanConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; override;
  procedure Disconnect(); override;
  procedure DisconnectFrom( OtherPin : TOWBasicPin ); override;

  function  ConnectToState( ADispatcher : TOWStateDispatcher ) : Boolean; override;
  function  DependsOn( const OtherPin : TOWBasicPin ) : Boolean; override;
  function  DirectDependsOn( const OtherPin : TOWBasicPin ) : Boolean; override;
  function  IsConnected() : Boolean; override;
  function  IsConnectedTo( OtherPin : TOWBasicPin ) : Boolean; override; //const;
  function  IsConnectedByConverterTo( OtherPin : TOWBasicPin ) : Boolean; override; //const;
  function  ConnectToStateAfter( ADispatcher : TOWStateDispatcher; NotifyAfterPin : TOWBasicPin ) : Boolean; override;

  procedure Assign(Source: TPersistent); override;

public
  destructor  Destroy(); override;

public
  property SourcePin            : TOWBasicPin read GetSourcePin write SetSourcePin;
  property FormatConverter      : TOWFormatConverter read GetFormatConverter;

  property DownStreamID         : TGUID read GetDownStreamID;
  property UpStreamID           : TGUID read GetUpStreamID;

end;
//---------------------------------------------------------------------------
TOWStatePin = class(TOWPin)
protected
  procedure UpdateStateValue(); override;
  function  CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : TOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean ) : Boolean; override;
  
public
  constructor Create(AOwner: TComponent);
  constructor CreateLock(AOwner: TComponent; AOwnerLock : IOWLock);
//  destructor  Destroy(); override;

public
  function  IsCompatible( const OtherPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; override;

public
  function  TryLinkTo( Root : TComponent; SinkName : String ) : Boolean;

protected
  function  GetPinType() : TOWPinType; override;

protected
  function  GetLinkStr( StatePin : TOWPin ) : String;
  function  GetEditorString() : String; override;
  function  SetEditorString( ARoot : TComponent; const AValue: string ) : Boolean; override;

public
  function  GetConnectionID( const OtherPin : TOWBasicPin ) : TGUID; override;
  function  DependsOn( const OtherPin : TOWBasicPin ) : Boolean; override;
  function  DirectDependsOn( const OtherPin : TOWBasicPin ) : Boolean; override;

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
  DConnectionPin : TOWBasicPin;
  RealPin       : TOWBasicPin;
  AfterPin      : TOWBasicPin;
end;
//---------------------------------------------------------------------------
// Internal storage class
TOWDispatcherPinStorageList = class( TObjectList )
private
  function GetItem( Index : Integer ) : TOWDispatcherPinStorage;
  
public
  property Items[ Index : Integer ] : TOWDispatcherPinStorage read GetItem; default;
  
end; 
//---------------------------------------------------------------------------
TOWStateDispatcher = class( TOWPinObject )
protected
  FName                 : String;
  FPins                 : TOWDispatcherPinStorageList;
  FFormatConverters     : TOWFormatConverterList;
  FSavedForms           : TList;

  FCountSaved           : Integer;

public
//  procedure AfterConstruction(); override;
  procedure BeforeDestruction(); override;

public
  constructor CreateNamed( Name : String; DesignTime : Boolean );
  constructor Create( OwnerForm : TComponent );
  destructor  Destroy(); override;

public
  function  ConnectedToForm( OwnerComponent : TComponent ) : Boolean;

protected
  procedure SetNotifyAfterByName( APin : TOWPin; AfterPinName : String ); override;

protected
  function  GetPinCount() : Integer;            virtual; // const;
  function  GetPin( Index : Integer ) : TOWBasicPin; virtual;
  function  GetConnectionPin( Index : Integer ) : TOWBasicPin; virtual;
  function  GetAfterPin( Index : Integer ) : TOWBasicPin; virtual;
  function  GetConnectedAfterForPin( OtherPin : TOWBasicPin ) : TOWBasicPin; 

protected
//  function  GetProxyCount() : Integer;
//  function  GetProxy( Index : Integer ) : IOWStateProxy;

protected
  procedure NewConnection( APin : TOWPin );
  procedure PinDeletedNotify( ADeletedPin : TOWBasicPin ); override;

public
  procedure AddPin( AConnectionPin : TOWBasicPin; ARealPin : TOWBasicPin ); virtual;
  procedure AddPinAfter( AConnectionPin : TOWBasicPin; ARealPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ); virtual;
  procedure RemovePin( APin : TOWBasicPin ); virtual;
  function  IsConnectedTo( APin : TOWBasicPin ) : Boolean;
  procedure DisconnectAll();
  function  CanConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean;

public
  function  IsCrosForm() : Boolean;

protected
  procedure ResetFormsSave();
  procedure AddFormSaved( AOwnerComponent : TComponent );
  function  IsFormSaved( AOwnerComponent : TComponent ) : Boolean;

public
  class function GetByName( Name : String; DesignTime : Boolean ) : TOWStateDispatcher;
  class function GetByNameCreate( APin : TOWBasicPin; Name : String; DesignTime : Boolean ) : TOWStateDispatcher;
  class function GetUniqueName( OwnerForm : TComponent ) : String;
  class function IsUniqueName( Name : String; DesignTime : Boolean ) : Boolean;

public
  function GetAfterPinDisplayName( APin : TOWPin ) : String; override; 

public
  property PinCount : Integer read GetPinCount;
  property Pins[ Index : Integer ] : TOWBasicPin read GetPin; default;
  property ConnectionPins[ Index : Integer ] : TOWBasicPin read GetConnectionPin;
  property AfterPins[ Index : Integer ] : TOWBasicPin read GetAfterPin;

published
  property Name : String read FName write FName;

public
//  property PinProxyCount : Integer read GetProxyCount;
//  property PinProxies[ Index : Integer ] : IOWStateProxy read GetProxy;

end;

//---------------------------------------------------------------------------
TOWPinList = class( TOWObject )
protected
  FOwner              : TComponent;
  FOwnerLock          : IOWLock; // The lock of the component taht owns the pin.
  FPinsList           : TStringList;

protected
  FPinsOwner : Boolean;

protected
  LastIndicatedCount  : Integer;
  FUnloadedCount      : Integer;
  FLoadFormName       : String;
  FInUnload           : Boolean;

public
  constructor Create( AOwner : TComponent; IsPinsOwner : Boolean );
  constructor CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; IsPinsOwner : Boolean );
  destructor  Destroy(); override;

public
  procedure AfterConstruction(); override;
  procedure BeforeDestruction(); override;

public
  function  ReadLock()  : IOWLockSection; override;
  function  WriteLock() : IOWLockSection; override;
  
protected
  function  GetCount() : Integer;
  procedure SetCount( ACount : Integer ); virtual;
  function  GetPin( Item : Integer ) : TOWBasicPin;
  procedure SetPin( Item : Integer; Pin : TOWBasicPin );
  function  GetName( Item : Integer ) : String;
  procedure SetName( Item : Integer; Name : String );
  function  GetStoredName( Item : Integer ) : String;

  function  GetListName() : String;
  procedure CleanUnloaded();
  function  GetRoot() : TComponent;
  procedure ApplyFormName( var Ident : String );  

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
  procedure AddNamed( Item : TOWBasicPin; Name : String );
  procedure Insert( Index : Integer; Item : TOWBasicPin );
  procedure InsertNamed( Index : Integer; Item : TOWBasicPin; Name : String );
  procedure Remove( Item : TOWBasicPin );
  procedure Delete( Index : Integer );
  procedure Swap( Index1 : Integer; Index2 : Integer );
  function  IndexOf( Item : TOWBasicPin ) : Integer;

  procedure Clear();

public
  procedure SetPinName( Pin : TOWPin; Name : String );

public
  property Pins[ Item : Integer ] : TOWBasicPin read GetPin write SetPin; default;
  property Names[ Item : Integer ] : String read GetName write SetName;
  property StoredNames[ Item : Integer ] : String read GetStoredName;

public
  property Name  : String read GetListName;
  property Owner : TComponent read FOwner;
  property PinsOwner : Boolean read FPinsOwner write FPinsOwner;
  
published
  property Count : Integer read GetCount write SetCount;

end;
//---------------------------------------------------------------------------
TOWPinCreateFunction = function ( APinListOwner : TOWPinList ) : TOWPin of object;
TOWPinDestroyFunction = procedure ( APinListOwner : TOWPinList; APin : TOWBasicPin ) of object;
//---------------------------------------------------------------------------
TOWPinListOwner = class(TOWPinList)
protected
  FPinCreateFunction  : TOWPinCreateFunction;
  FPinDestroyFunction : TOWPinDestroyFunction;

  FMinPins : Integer;
  FMaxPins : Integer;

protected
  procedure SetCount( ACount : Integer ); override;
  procedure ReadConnectionsData( Reader : TReader ); override;
  function  DoWrite() : Boolean; override;

public
  procedure BeforeDestruction(); override;
  
public
  constructor Create( AOwner : TComponent; APinCreateFunction : TOWPinCreateFunction; APinDestroyFunction : TOWPinDestroyFunction = NIL );
  constructor CreateEx( AOwner : TComponent; AMinPins : Integer; AMaxPins : Integer; APinCreateFunction : TOWPinCreateFunction; APinDestroyFunction : TOWPinDestroyFunction = NIL );
  constructor CreateLock( AOwner : TComponent; AOwnerLock : IOWLock; APinCreateFunction : TOWPinCreateFunction; APinDestroyFunction : TOWPinDestroyFunction = NIL );
  constructor CreateLockEx( AOwner : TComponent; AOwnerLock : IOWLock; AMinPins : Integer; AMaxPins : Integer; APinCreateFunction : TOWPinCreateFunction; APinDestroyFunction : TOWPinDestroyFunction = NIL );
//  destructor  Destroy(); override;
                           
end;
//---------------------------------------------------------------------------
type TOWPinValueFilters = set of ( pvoFullList, pvoSaveValue, pvoExcludeDirectDependency );
//---------------------------------------------------------------------------
procedure OWRegisterStream( ID : TGUID; Name : String );
procedure OWRegisterDefaultHandler( ID : TGUID; SendFunction : TOWGlobalSubmit );
procedure OWRegisterTypeConverter( InputID : TGUID; OutputID : TGUID; AConverterClass : TOWFormatConverterClass );
function  OWGetConverter( InputID : TGUID; OutputID : TGUID ) : TOWFormatConverterClass;   
//---------------------------------------------------------------------------
function  OWValueToString( StreamPin : TOWBasicPin; Linking : String; AddRoot : Boolean; SaveValue : Boolean ) : String;
function  OWGetPinsValueList( List : TStrings; StreamPin : TOWPin; Link : String; ValueFilters : TOWPinValueFilters ) : Boolean;
function  OWGetPinsValueListSingle( List : TStrings; OwnerComponent : TComponent;  APin : TOWPin; Link : String; RootName : String; ValueFilters : TOWPinValueFilters ) : Boolean;
function  OWGetPinsValueListSingleRoot( List : TStrings; OwnerComponent : TComponent;  APin : TOWPin; Link : String; RootName : String; ValueFilters : TOWPinValueFilters ) : Boolean;
function  OWGetMainOwnerComponent( Component : TComponent ) : TComponent;
function  OWGetStreamTypeFromID( ID : TGUID ) : String;
procedure OWReportAwaitsLinking();
function  OWGetAllLinked() : Boolean;
function  OWGetClassPropertiesOfTypeName( AClass : TObject; TypeName : String; AStrings : TStrings; SaveValue : Boolean ) : Boolean;
procedure OWClearPendingLinks();
function  OWGetClassPropertyNameForPropertyObject( AClass : TObject; TypeName : String; PinObject : TObject ) : String;

function  Dispatchers( DesignTime : Boolean ) : TObjectList;
//---------------------------------------------------------------------------
type IOWPinNotifier = interface
    procedure AddPin( APin : TOWBasicPin );
    procedure RemovePin( APin : TOWBasicPin; DesignFormClosing : Boolean );
    procedure ChangePin( APin : TOWBasicPin );
    
    procedure Connected( AObject1 : TOWObject; AObject2 : TOWObject );
    procedure Disconnected( AObject1 : TOWObject; AObject2 : TOWObject );

    procedure AddPinList( APinList : TOWPinList );
    procedure RemovePinList( APinList : TOWPinList );
    procedure ChangePinList( APinList : TOWPinList );

    procedure PinListPinAdded( APinList : TOWPinList; APin : TOWBasicPin; Index : Integer );
    procedure PinListPinRemoved( APinList : TOWPinList; APin : TOWBasicPin; Index : Integer );
    procedure PinListPinsSwapped( APinList : TOWPinList; APin1 : TOWBasicPin; Index1 : Integer; APin2 : TOWBasicPin; Index2 : Integer ); 

    procedure AddDispatcher( ADispatcher : TOWStateDispatcher );
    procedure RemoveDispatcher( ADispatcher : TOWStateDispatcher; DesignFormClosing : Boolean );
    procedure ChangeDispatcher( ADispatcher : TOWStateDispatcher );

end;

type IOWDBGNotify = interface
  ['{1EDD88CA-D8DC-46B3-B3EA-42FD5DD8D1C8}']
  procedure Notify( ALock : TOWLock; ASection : Pointer; AOperation : TOWDBOperation; AThreadID : Integer );
  
end;

procedure OWAddPinNotifier( ANotifyItem : IOWPinNotifier );
procedure OWRemovePinNotifier( ANotifyItem : IOWPinNotifier );

function OWGetPinCount() : Integer;
function OWGetPin( Index : Integer ) : TOWBasicPin;

procedure OWSetIgnoreDesignMode( Ignore : Boolean );

// State pins support.
function OWGetDispatcherCount() : Integer;
function OWGetDispatcher( Index : Integer ) : TOWStateDispatcher;

procedure OWDBGRegisterNotify( ANotify : IOWDBGNotify );
procedure OWDBGUnregisterNotify( ANotify : IOWDBGNotify );

procedure GOWDBGLog( ALock : TOWLock; ASection : Pointer; AOperation : TOWDBOperation; AThreadID : Integer );
{$IFDEF __LOCKS_DBG__}
procedure GOWDBGSaveLocks( ALock : TOWLock );
{$ENDIF}

const
  GOWDISCONNECTED = '(Disconnected)';

implementation

{$T-}

uses Dialogs, Forms
{$IFNDEF D6}
  ,ActiveX, ComObj
{$ENDIF}
  ;

type PGUID = ^TGUID;
//---------------------------------------------------------------------------
function GOWIsStringValueType( AValue : TValueType ) : Boolean;
begin
{$IFDEF D5Down}
  Result := AValue in [vaString, vaLString, vaWString];
{$ELSE}
  Result := AValue in [vaString, vaUTF8String, vaLString, vaWString];
{$ENDIF}
end;
//---------------------------------------------------------------------------
type
  TOWBasicPinList = class(TObjectList)
  protected
    function GetItem( Index : integer ) : TOWBasicPin;

  public
    function Add( APin: TOWBasicPin ): Integer;

  public
    function GetByIdentName( ARoot : TComponent; APinName : String ) : TOWBasicPin;
    function GetByDisplayName( ARoot : TComponent; APinName : String ) : TOWBasicPin;

  public
    property Items[ Index : integer ] : TOWBasicPin read GetItem; default;

  end;
//---------------------------------------------------------------------------
type
  TOWInternalPinList = class(TOWBasicPinList)
  public
    function GetByNameCreate( ARoot : TComponent; AType : TOWPinType; APinIdentName : String; APinDisplayName : String; ACreatedFrom : String ) : TOWBasicPin;

  end;
//---------------------------------------------------------------------------
type
  TOWUnloadedPin = class( TOWBasicPin )
  protected
    FDisplayName    : String;
    FIdentName      : String;
    FRoot           : TComponent;
    FType           : TOWPinType;
    FDesignTime     : Boolean;
    FConnectedPins  : TOWPinEntryList;
    FCreatedFrom    : String;
    FOwnedByList    : Boolean;
    FInRemove       : Boolean;
    FInEditor       : Boolean;

  public
    function  IsCompatible( const OtherPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean; override;
    function  ConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ) : Boolean; override;
    procedure Disconnect(); override;
    function  DependsOn( const OtherPin : TOWBasicPin ) : Boolean; override;
    function  IsConnected() : Boolean; override;
    function  IsConnectedTo( OtherPin : TOWBasicPin ) : Boolean; override; //const;

  protected
    function  OwnerInDesigning() : Boolean; override;
    function  FindConnectionID( const OtherPin : TOWBasicPin; var AConverter : TOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean ) : TGUID; override;
    function  NotifyDispatcher( Operation : IOWNotifyOperation; State : TOWNotifyState; APinToNotify : TOWPin ) : TOWNotifyResult; override;
    procedure PinDeletedNotify( ADeletedPin : TOWBasicPin ); override;
    procedure IntDisconnect( OtherPin : TOWBasicPin; DesignFormClosing : Boolean ); override;
    procedure IntConnect( SinkPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ); override;
    function  GetPinType() : TOWPinType; override;
    procedure CheckRemove(); override;
    procedure PinReplacedNotify( AOldPin : TOWBasicPin; ANewPin : TOWBasicPin ); override;
    procedure SetInEditor( Value : Boolean ); override;
    function  CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : TOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean ) : Boolean; override;

  public
    function  GetRoot() : TComponent; override;
    function  GetName() : String; override;
    function  GetFullName( IncludeRootForm : Boolean ) : String; override;
    function  GetFullIdentName( IncludeRootForm : Boolean ) : String; override;

  public
    procedure PopulatePinAndDestroy( APin : TOWBasicPin );

  public
    constructor Create( ARoot : TComponent; AType : TOWPinType; APinIdentName : String; APinDisplayName : String; ACreatedFrom : String );
    destructor  Destroy(); override;

  end;
//---------------------------------------------------------------------------
type
  TOWStreamTypeEntry = record
    ID            : TGUID;
    Name          : String;
    SendFunction  : TOWGlobalSubmit;
  end;
//---------------------------------------------------------------------------
  TOWTypeConverterEntry = record
    InputID         : TGUID;
    OutputID        : TGUID;
    ConverterClass  : TOWFormatConverterClass;
  end;
//---------------------------------------------------------------------------
var
  GOWPins                     : TOWInternalPinList;
  GOWUnloadedPins             : TOWBasicPinList;

  StreamTypes                 : array of TOWStreamTypeEntry;
  ConverterTypes              : array of TOWTypeConverterEntry;

  NotifyList                  : TInterfaceList;
  gOWOperationID              : LongInt;

var
  Loaded : Boolean;

var
  __OWCountLockObjects : Integer = 0;

var // State pins support
  DesignDispatchers : TObjectList;
  RunDispatchers : TObjectList;
  GIgnoreDesignMode : Boolean;
  GlobalStorageSection : TOWCriticalSection;
{$IFDEF __LOCKS_DBG__}
  LogStorageSection : TOWDebugCriticalSection;
  GOWDBGCurrentID   : Int64 = 0;
{$IFDEF __LOCKS_DBG_MAPPED__}
  LogStartStopEvent : TOWEvent;
  LogEvent          : TOWEvent;
{$ENDIF}

{$ENDIF}

//---------------------------------------------------------------------------
type
  TOWSimpleReadLockSection = class( TOWLockSection )
  protected
    FOwnerIntf      : IOWLock;
    FOwner          : TOWLock;
    FUnlockSection  : IOWLockSection;

    FLocked         : Boolean;

  public
    constructor Create( AOwner : IOWLock; ASlaveLock : IOWLock = NIL );
    destructor  Destroy(); override;

  end;
//---------------------------------------------------------------------------
type
  TOWSimpleLockSection = class( TOWLockSection )
  protected
    FOwnerIntf      : IOWLock;
    FOwner          : TOWLock;
    
  public
    constructor Create( AOwner : IOWLock );
    
  end;

  TOWSimpleWriteLockSection = class( TOWSimpleLockSection )
  protected
    FUnlockSection  : IOWLockSection;

    FLocked         : Boolean;

  public
    constructor Create( AOwner : IOWLock; ASlaveLock : IOWLock = NIL );
    destructor  Destroy(); override;

  end;
//---------------------------------------------------------------------------
type
  TOWSimpleStopLockSection = class( TOWSimpleLockSection )
  public
    constructor Create( AOwner : IOWLock );
    destructor  Destroy(); override;

  end;
//---------------------------------------------------------------------------
type
  TOWSimpleUnlockSection = class( TOWSimpleLockSection )
  protected
//    FCountReads   : Integer;
//    FCountWrites  : Integer;
    FCountLocks       : Integer;
    FCountOtherLocks  : Integer;

  public
    constructor Create( AOwner : IOWLock );
    destructor  Destroy(); override;

  end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure OWAddPinNotifier( ANotifyItem : IOWPinNotifier );
begin
  if( NotifyList = NIL ) then
    Exit;
    
  NotifyList.Add( ANotifyItem );
end;
//---------------------------------------------------------------------------
procedure OWRemovePinNotifier( ANotifyItem : IOWPinNotifier );
begin
  if( NotifyList = NIL ) then
    Exit;
    
  NotifyList.Remove( ANotifyItem );
end;
//---------------------------------------------------------------------------
procedure OWNotifyAddPin( APin : TOWBasicPin );
var
  I : Integer;

begin
  if( NotifyList = NIL ) then
    Exit;
    
  for I := 0 to NotifyList.Count - 1 do
    try
      IOWPinNotifier( NotifyList.Items[ I ] ).AddPin( APin );

    except;
    end;

end;
//---------------------------------------------------------------------------
procedure OWNotifyRemovePin( APin : TOWBasicPin; DesignFormClosing : Boolean );
var
  I : Integer;

begin
  if( NotifyList = NIL ) then
    Exit;
    
  for I := 0 to NotifyList.Count - 1 do
    try
      IOWPinNotifier( NotifyList.Items[ I ] ).RemovePin( APin, DesignFormClosing );

    except;
    end;

end;
//---------------------------------------------------------------------------
procedure OWNotifyChangePin( APin : TOWBasicPin );
var
  I : Integer;

begin
  if( NotifyList = NIL ) then
    Exit;
    
  for I := 0 to NotifyList.Count - 1 do
    try
      IOWPinNotifier( NotifyList.Items[ I ] ).ChangePin( APin );

    except;
    end;
    
end;
//---------------------------------------------------------------------------
procedure OWNotifyConnected( AObject1 : TOWObject; AObject2 : TOWObject );
var
  I : Integer;

begin
  if( NotifyList = NIL ) then
    Exit;
    
  for I := 0 to NotifyList.Count - 1 do
    try
      IOWPinNotifier( NotifyList.Items[ I ] ).Connected( AObject1, AObject2 );

    except;
    end;
    
end;
//---------------------------------------------------------------------------
procedure OWNotifyDisconnected( AObject1 : TOWObject; AObject2 : TOWObject );
var
  I : Integer;

begin
  if( NotifyList = NIL ) then
    Exit;
    
  for I := 0 to NotifyList.Count - 1 do
    try
      IOWPinNotifier( NotifyList.Items[ I ] ).Disconnected( AObject1, AObject2 );

    except;
    end;
    
end;
//---------------------------------------------------------------------------
procedure OWNotifyAddDispatcher( ADispatcher : TOWStateDispatcher );
var
  I : Integer;

begin
  if( NotifyList = NIL ) then
    Exit;
    
  for I := 0 to NotifyList.Count - 1 do
    try
      IOWPinNotifier( NotifyList.Items[ I ] ).AddDispatcher( ADispatcher );

    except;
    end;

end;
//---------------------------------------------------------------------------
procedure OWNotifyRemoveDispatcher( ADispatcher : TOWStateDispatcher; DesignFormClosing : Boolean );
var
  I : Integer;

begin
  if( NotifyList = NIL ) then
    Exit;
    
  for I := 0 to NotifyList.Count - 1 do
    try
      IOWPinNotifier( NotifyList.Items[ I ] ).RemoveDispatcher( ADispatcher, DesignFormClosing );

    except;
    end;

end;
//---------------------------------------------------------------------------
procedure OWNotifyChangeDispatcher( ADispatcher : TOWStateDispatcher );
var
  I : Integer;

begin
  if( NotifyList = NIL ) then
    Exit;
    
  for I := 0 to NotifyList.Count - 1 do
    try
      IOWPinNotifier( NotifyList.Items[ I ] ).ChangeDispatcher( ADispatcher );

    except;
    end;
    
end;
//---------------------------------------------------------------------------
procedure OWNotifyAddPinList( APinList : TOWPinList );
var
  I : Integer;

begin
  if( NotifyList = NIL ) then
    Exit;

  for I := 0 to NotifyList.Count - 1 do
    try
      IOWPinNotifier( NotifyList.Items[ I ] ).AddPinList( APinList );

    except;
    end;
  
end;
//---------------------------------------------------------------------------
procedure OWNotifyRemovePinList( APinList : TOWPinList );
var
  I : Integer;

begin
  if( NotifyList = NIL ) then
    Exit;
    
  for I := 0 to NotifyList.Count - 1 do
    try
      IOWPinNotifier( NotifyList.Items[ I ] ).RemovePinList( APinList );

    except;
    end;

end;
//---------------------------------------------------------------------------
procedure OWNotifyChangePinList( APinList : TOWPinList );
var
  I : Integer;

begin
  if( NotifyList = NIL ) then
    Exit;
    
  for I := 0 to NotifyList.Count - 1 do
    try
      IOWPinNotifier( NotifyList.Items[ I ] ).ChangePinList( APinList );

    except;
    end;
    
end;
//---------------------------------------------------------------------------
procedure OWNotifyPinListPinAdded( APinList : TOWPinList; APin : TOWBasicPin; Index : Integer );
var
  I : Integer;

begin
  if( NotifyList = NIL ) then
    Exit;
    
  for I := 0 to NotifyList.Count - 1 do
    try
      IOWPinNotifier( NotifyList.Items[ I ] ).PinListPinAdded( APinList, APin, Index );

    except;
    end;
    
end;
//---------------------------------------------------------------------------
procedure OWNotifyPinListPinRemoved( APinList : TOWPinList; APin : TOWBasicPin; Index : Integer );
var
  I : Integer;

begin
  if( NotifyList = NIL ) then
    Exit;
    
  for I := 0 to NotifyList.Count - 1 do
    try
      IOWPinNotifier( NotifyList.Items[ I ] ).PinListPinRemoved( APinList, APin, Index );

    except;
    end;
    
end;
//---------------------------------------------------------------------------
procedure OWNotifyPinListPinsSwapped( APinList : TOWPinList; APin1 : TOWBasicPin; Index1 : Integer; APin2 : TOWBasicPin; Index2 : Integer );
var
  I : Integer;

begin
  if( NotifyList = NIL ) then
    Exit;
    
  for I := 0 to NotifyList.Count - 1 do
    try
      IOWPinNotifier( NotifyList.Items[ I ] ).PinListPinsSwapped( APinList, APin1, Index1, APin2, Index2 );

    except;
    end;
    
end;
//---------------------------------------------------------------------------
function _OWGetEntryIndex( ID : TGUID ) : Integer;
var
  I : Integer;

begin
  for I := 0 to Length(StreamTypes) - 1 do
    begin
    if( IsEqualGUID( StreamTypes[ I ].ID, ID )) then
      begin
      Result := I;
      Exit;
      end;

    end;

  Result := Length( StreamTypes );
  SetLength( StreamTypes, Result + 1 );
  StreamTypes[ Result ].ID := ID;
  StreamTypes[ Result ].Name := '';
  StreamTypes[ Result ].SendFunction := NIL;
end;
//---------------------------------------------------------------------------
procedure OWRegisterStream( ID : TGUID; Name : String );
var
  EntryIndex : Integer;
//  Entry : TOWStreamTypeEntry;

begin
  EntryIndex := _OWGetEntryIndex( ID );
  StreamTypes[ EntryIndex ].Name := Name;
{
  Entry.ID := ID;
  Entry.Name := Name;
  SetLength( StreamTypes, Length( StreamTypes ) + 1 );
  StreamTypes[ Length( StreamTypes ) - 1 ] := Entry;
}
end;
//---------------------------------------------------------------------------
procedure OWRegisterDefaultHandler( ID : TGUID; SendFunction : TOWGlobalSubmit );
var
  EntryIndex : Integer;

begin
  EntryIndex := _OWGetEntryIndex( ID );
//  StreamTypes[ EntryIndex ].Name := Name;
  StreamTypes[ EntryIndex ].SendFunction := SendFunction;
end;
//---------------------------------------------------------------------------
function _OWGetTypeConverterEntryIndex( InputID : TGUID; OutputID : TGUID ) : Integer;
var
  I : Integer;

begin
  for I := 0 to Length(ConverterTypes) - 1 do
    begin
    if( IsEqualGUID( ConverterTypes[ I ].InputID, InputID ) and IsEqualGUID( ConverterTypes[ I ].OutputID, OutputID )) then
      begin
      Result := I;
      Exit;
      end;

    end;

  Result := -1;
{
  Result := Length( ConverterTypes );
  SetLength( ConverterTypes, Result + 1 );
  ConverterTypes[ Result ].ID := ID;
  ConverterTypes[ Result ].Name := '';
  ConverterTypes[ Result ].SendFunction := NIL;
}
end;
//---------------------------------------------------------------------------
procedure OWRegisterTypeConverter( InputID : TGUID; OutputID : TGUID; AConverterClass : TOWFormatConverterClass );
var
  EntryIndex : Integer;

begin
  EntryIndex := _OWGetTypeConverterEntryIndex( InputID, OutputID );
  if( EntryIndex < 0 ) then
    begin
    EntryIndex := Length( ConverterTypes );
    SetLength( ConverterTypes, EntryIndex + 1 );
    end;

  ConverterTypes[ EntryIndex ].InputID := InputID;
  ConverterTypes[ EntryIndex ].OutputID := OutputID;
  ConverterTypes[ EntryIndex ].ConverterClass := AConverterClass;
end;
//---------------------------------------------------------------------------
function OWGetConverter( InputID : TGUID; OutputID : TGUID ) : TOWFormatConverterClass;
var
  EntryIndex : Integer;

begin
  EntryIndex := _OWGetTypeConverterEntryIndex( InputID, OutputID );
  if( EntryIndex < 0 ) then
    Result := NIL
    
  else
    Result := ConverterTypes[ EntryIndex ].ConverterClass;
  
end;   
//---------------------------------------------------------------------------
function OWGetStreamGUIDFromID( ID : TGUID ) : String;
var
  I : Integer;
  
begin
  Result := '{' + IntToHex( ID.D1, 8 ) + '-' + IntToHex( ID.D2, 4 ) + '-' + IntToHex( ID.D3, 4 ) + '-';
  for I := 0 to 1 do
    Result := Result + IntToHex( ID.D4[ I ], 2 );

  Result := Result + '-';
  for I := 2 to 7 do
    Result := Result + IntToHex( ID.D4[ I ], 2 );

  Result := Result + '}';
end;
//---------------------------------------------------------------------------
function OWGetStreamTypeFromID( ID : TGUID ) : String;
var
  I : Integer;
  
begin
  if( IsEqualGUID( ID, OWNULLID )) then
    begin
    Result := 'NIL ID';
    Exit;
    end;

  for I := 0 to Length( StreamTypes ) - 1 do
    if( IsEqualGUID( StreamTypes[ i ].ID, ID ))then
      begin
      Result := StreamTypes[ I ].Name;
      if( Result = '' ) then
        Break;
        
      Exit;
      end;

  Result := OWGetStreamGUIDFromID( ID );
(*
  Result := '{' + IntToHex( ID.D1, 8 ) + '-' + IntToHex( ID.D2, 4 ) + '-' + IntToHex( ID.D3, 4 ) + '-';
  for I := 0 to 1 do
    Result := Result + IntToHex( ID.D4[ I ], 2 );

  Result := Result + '-';
  for I := 2 to 7 do
    Result := Result + IntToHex( ID.D4[ I ], 2 );

  Result := Result + '}';
//  Result := 'Unregistered stream';
*)
end;
//---------------------------------------------------------------------------
function OWGetMainOwnerComponent( Component : TComponent ) : TComponent;
begin
  if( Component = NIL ) then
    Result := NIL
    
  else if( Component.Owner = NIL ) then
    Result := Component

  else if( Component.Owner is TApplication ) then
    Result := Component
    
  else if( Component is TDataModule ) then
    Result := Component

  else if( Component is TCustomForm ) then
    Result := Component

  else if( Component is TFrame ) then
    Result := Component

  else
    Result := OWGetMainOwnerComponent( Component.Owner );
    
end;

//---------------------------------------------------------------------------
function  OWGetAllLinked() : Boolean;
begin
  GlobalStorageSection.Enter();
  Result := ( GOWUnloadedPins.Count = 0 );
  GlobalStorageSection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWReportAwaitsLinking();
var
  Info     : String;
  I        : Integer;

begin
  GlobalStorageSection.Enter();
  Info := 'AwaitsLinkingPins =' + IntToStr( GOWUnloadedPins.Count ) + #13;
  for I := 0 to GOWUnloadedPins.Count - 1 do
    Info := Info + '  ' + GOWUnloadedPins[ I ].GetFullName( True ) + #13;

  GlobalStorageSection.Leave();

  ShowMessage( Info );
end;
//---------------------------------------------------------------------------
procedure OWClearPendingLinks();
begin
  GlobalStorageSection.Enter();
  GOWUnloadedPins.Clear();
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
constructor TOWSimpleReadLockSection.Create( AOwner : IOWLock; ASlaveLock : IOWLock = NIL );
var
  TimeOut : Cardinal;
  AThread : Cardinal;

begin
  inherited Create();
  FOwnerIntf := AOwner;
  FOwner := FOwnerIntf.Instance();
  TimeOut := 1;
  AThread := GetCurrentThreadId();
{$IFDEF __LOCKS_DBG__}
  FOwner.IntLock();
  Inc( FOwner.FCountReads );
  FOwner.IntUnlock();
  
{$ENDIF}
  GOWDBGLog( FOwner, Self, owdbBeginReadCreate, AThread );
  while( not FOwner.BeginRead( TimeOut ) ) do
    begin
    FOwner.IntLock();
    if( FOwner.FInStopCount > 0 ) then
      begin
      if( FOwner.FOwningThread = AThread ) then
        Inc( FOwner.FCountStopLocksOwner )

      else
        Inc( FOwner.FCountStopLocks );

      GOWDBGLog( FOwner, Self, owdbReadCreate, AThread );
      FOwner.IntUnlock();
      Exit;
      end;

    FOwner.IntUnlock();
    if( TimeOut < 20 ) then
      Inc( TimeOut )

    else
      if( ASlaveLock <> NIL ) then
        if( FUnlockSection = NIL ) then
          FUnlockSection := ASlaveLock.UnlockAll();
        
    end;

  GOWDBGLog( FOwner, Self, owdbReadCreate, AThread );
  FLocked := True;
end;
//---------------------------------------------------------------------------
destructor  TOWSimpleReadLockSection.Destroy();
var
  AThread : Cardinal;

begin
{$IFDEF __LOCKS_DBG__}
  FOwner.IntLock();
  Dec( FOwner.FCountReads );
  FOwner.IntUnlock();
{$ENDIF}
  AThread := GetCurrentThreadId();
  GOWDBGLog( FOwner, Self, owdbBeginReadDestroy, AThread );
  FOwner.EndRead();

  GOWDBGLog( FOwner, Self, owdbReadDestroy, AThread );
{$IFDEF __LOCKS_DBG__}
  FOwner.Assert();
{$ENDIF}
  inherited;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSimpleLockSection.Create( AOwner : IOWLock );
begin
  inherited Create();
  FOwnerIntf := AOwner;
  FOwner := FOwnerIntf.Instance();
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSimpleWriteLockSection.Create( AOwner : IOWLock; ASlaveLock : IOWLock = NIL );
var
  TimeOut : Cardinal;
  AThread : Cardinal;

begin
  inherited Create( AOwner );
  
  TimeOut := 1;
  AThread := GetCurrentThreadId();
{$IFDEF __LOCKS_DBG__}
  FOwner.IntLock();
  Inc( FOwner.FCountWrites );
  FOwner.IntUnlock();

{$ENDIF}
  GOWDBGLog( FOwner, Self, owdbBeginWriteCreate, AThread );
  while( not FOwner.BeginWrite( TimeOut ) ) do
    begin
    FOwner.IntLock();
    if( FOwner.FInStopCount > 0 ) then
      begin
      if( FOwner.FOwningThread = AThread ) then
        Inc( FOwner.FCountStopLocksOwner )

      else
        Inc( FOwner.FCountStopLocks );

      GOWDBGLog( FOwner, Self, owdbWriteCreate, AThread );
      FOwner.IntUnlock();
      Exit;
      end;

    FOwner.IntUnlock();
    if( TimeOut < 20 ) then
      Inc( TimeOut )

    else
      if( ASlaveLock <> NIL ) then
        if( FUnlockSection = NIL ) then
          FUnlockSection := ASlaveLock.UnlockAll();

    end;
    
  GOWDBGLog( FOwner, Self, owdbWriteCreate, AThread );
  FLocked := True;
//  FOwner.BeginWrite();
end;
//---------------------------------------------------------------------------
destructor  TOWSimpleWriteLockSection.Destroy();
var
  AThread : Cardinal;

begin
{$IFDEF __LOCKS_DBG__}
  FOwner.IntLock();
  Dec( FOwner.FCountWrites );
  FOwner.IntUnlock();
{$ENDIF}

  AThread := GetCurrentThreadId();
  GOWDBGLog( FOwner, Self, owdbBeginWriteDestroy, AThread );
  FOwner.EndWrite();

  GOWDBGLog( FOwner, Self, owdbWriteDestroy, AThread );
{$IFDEF __LOCKS_DBG__}
  FOwner.Assert();
{$ENDIF}
  inherited;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSimpleStopLockSection.Create( AOwner : IOWLock );
var
  AThread : Cardinal;

begin
  inherited Create( AOwner );
  
{$IFDEF __LOCKS_DBG__}
  FOwner.IntLock();
  Inc( FOwner.FCountStops );
  FOwner.IntUnlock();
{$ENDIF}

  AThread := GetCurrentThreadId();
  FOwner.IntLock();
  Inc( FOwner.FInStopCount );
  FOwner.IntUnlock();
  FOwner.BeginStop();
  Dec( FOwner.FInStopCount );
  GOWDBGLog( FOwner, Self, owdbStopCreate, AThread );
end;
//---------------------------------------------------------------------------
destructor  TOWSimpleStopLockSection.Destroy();
var
  AThread : Cardinal;

begin
{$IFDEF __LOCKS_DBG__}
  FOwner.IntLock();
  Dec( FOwner.FCountStops );
  FOwner.IntUnlock();
{$ENDIF}
  AThread := GetCurrentThreadId();
  FOwner.EndStop();
  GOWDBGLog( FOwner, Self, owdbStopDestroy, AThread );
{$IFDEF __LOCKS_DBG__}
  FOwner.Assert();
{$ENDIF}
  inherited;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSimpleUnlockSection.Create( AOwner : IOWLock );
var
  AThread : Cardinal;

begin
  AOwner.Instance().IntLock();
  inherited Create( AOwner );

{$IFDEF __LOCKS_DBG__}
  FOwner.IntLock();
  Inc( FOwner.FCountUnlocks );
  FOwner.IntUnlock();
{$ENDIF}

  AThread := GetCurrentThreadId();
  if( FOwner.FOwningThread <> 0 ) then
    if( FOwner.FOwningThread <> AThread ) then
      begin
      GOWDBGLog( FOwner, Self, owdbUnlockCreate, AThread );
      FOwner.IntUnlock();
      Exit;
      end;
      
//  FCountReads := FOwner.FCountReads + FOwner.FCountStopReads;
//  FCountWrites := FOwner.FCountWrites + FOwner.FCountStopWrites;
  FCountLocks := FOwner.FCountLocks + FOwner.FCountStopLocksOwner;
  FCountOtherLocks := FOwner.FCountStopLocks; 
//  FCountLocks := FOwner.FCountLocks + FOwner.FCountStopLocksOwner;

{
  for I := 0 to FCountReads - 1 do
    FOwner.EndRead();

  for I := 0 to FCountWrites - 1 do
    FOwner.EndWrite();
}
  if( FCountLocks > 0 ) then
    begin
    if( FOwner.FCountLocks > 0 ) then 
      if( not FOwner.FLockMutex.Release()) then
        begin
{$IFDEF __LOCKS_DBG__}
        GOWDBGSaveLocks( FOwner );
        ExitProcess( 8 );
{$ENDIF}
        end;

    end;

  FOwner.FCountLocks := 0;
  FOwner.FCountStopLocks := 0;
  FOwner.FCountStopLocksOwner := 0;
  FOwner.FOwningThread := 0;

//  for I := 0 to FCountLocks - 1 do
//    FOwner.EndWrite();

  GOWDBGLog( FOwner, Self, owdbUnlockCreate, AThread );
  FOwner.IntUnlock();
end;
//---------------------------------------------------------------------------
destructor  TOWSimpleUnlockSection.Destroy();
var
  AThread : Cardinal;

begin
{$IFDEF __LOCKS_DBG__}
  FOwner.IntLock();
  Dec( FOwner.FCountUnlocks );
  FOwner.IntUnlock();
{$ENDIF}
  AThread := GetCurrentThreadId();
  FOwner.IntBeginWrite( FCountLocks, FCountOtherLocks );
  GOWDBGLog( FOwner, Self, owdbUnlockDestroy, AThread );
  inherited;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWObject.Create();
begin
  inherited;
//  FLockEvent := CreateEvent( NIL, True, True, NIL );
  FIntLockSection := TOWCriticalSection.Create();
  FIntLock := TOWLock.Create();
end;
//---------------------------------------------------------------------------
destructor  TOWObject.Destroy();
begin
  FIntLockSection.Free();
//  CloseHandle( FLockEvent );
//  FLockEvent := 0;
  inherited;
end;
//---------------------------------------------------------------------------
{
procedure TOWObject.SetLock( Value : IOWLockObject );
begin
//  WaitForSingleObject( FLockEvent, INFINITE );
//  EnterCriticalSection( FIntLockSection );
  FIntLock := Value;
//  FIntLockSection.Leave();
end;
}
//---------------------------------------------------------------------------
function  TOWObject.ReadLock()  : IOWLockSection;
begin
  Result := TOWSimpleReadLockSection.Create( FIntLock );
//  Result := FLock.ReadLock();
end;
//---------------------------------------------------------------------------
function  TOWObject.WriteLock() : IOWLockSection;
begin
  Result := TOWSimpleWriteLockSection.Create( FIntLock );
//  Result := FLock.WriteLock();
end;
//---------------------------------------------------------------------------
function  TOWObject.UnlockAll() : IOWLockSection;
begin
//  Result := NIL;
//  Exit;
  Result := TOWSimpleUnlockSection.Create( FIntLock );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWLock.Create();
var
  AThread : Cardinal;
  
begin
  inherited;
  FIntLockSection := TOWCriticalSection.Create();
  FLockMutex := TOWMutex.Create( False );
  AThread := GetCurrentThreadId();
  GOWDBGLog( Self, NIL, owdbCreate, AThread );
end;
//---------------------------------------------------------------------------
destructor  TOWLock.Destroy();
var
  AThread : Cardinal;

begin
  AThread := GetCurrentThreadId();
  GOWDBGLog( Self, NIL, owdbDestroy, AThread );
  FLockMutex.Free();
  FLockMutex := NIL;
  FIntLockSection.Free();
  inherited;
end;
//---------------------------------------------------------------------------
procedure TOWLock.IntBeginWrite( Count : Integer; CountOther : Integer );
var
  AThread : Cardinal;
  
begin
  if(( Count = 0 ) and ( CountOther = 0 )) then
    Exit;

  AThread := GetCurrentThreadId();
  while( not BeginWrite( 1 )) do
    begin
    FIntLockSection.Enter();

    if( FInStopCount > 0 ) then
      begin
      if( FOwningThread = AThread ) then
        begin
        Inc( FCountStopLocksOwner, Count );
        Inc( FCountStopLocks, CountOther );
        end

      else
        begin
        Inc( FCountStopLocks, Count );
        if( Count = 0 ) then
          Inc( FCountStopLocks, CountOther );

        end;
        
//      Inc( FCountStopLocks, CountOther );
        
      FIntLockSection.Leave();
      Exit;
      end;

    FIntLockSection.Leave();
    end;

  FIntLockSection.Enter();
{$IFDEF __LOCKS_DBG__}
  if( AThread <> FOwningThread ) then
    begin
    GOWDBGSaveLocks( Self );
    ExitProcess( 8 );
    end;
{$ENDIF}

  Inc( FCountLocks, Count - 1 );
  Inc( FCountStopLocks, CountOther );

{$IFDEF __LOCKS_DBG__}
  Assert();
{$ENDIF}

  FIntLockSection.Leave();
end;
//---------------------------------------------------------------------------
function  TOWLock.BeginRead( TimeOut : Cardinal ) : Boolean; stdcall;
begin
  Result := BeginWrite( TimeOut );
end;
//---------------------------------------------------------------------------
function  TOWLock.BeginWrite( TimeOut : Cardinal ) : Boolean; stdcall;
var
  Res     : Boolean;
  AThread : Cardinal;
  
begin
  FIntLockSection.Enter();
  
  AThread := GetCurrentThreadId();
  if(( FOwningThread = AThread ) and ( FCountLocks > 0 )) then
    begin
    Result := True;
    Inc( FCountLocks );
    end

  else
    begin
    if( FInStopCount > 0 ) then
      begin
      Result := False;
      FIntLockSection.Leave();
      Exit;
      end;
      
    FIntLockSection.Leave();
    Res := FLockMutex.Acquire( TimeOut );
    FIntLockSection.Enter();
    if( Res ) then
      begin
      FOwningThread := AThread;
      Inc( FCountLocks );
      Result := True;
      end
      
    else
      Result := False;

    end;       

  FIntLockSection.Leave();
end;
//---------------------------------------------------------------------------
procedure TOWLock.EndRead(); stdcall;
begin
  EndWrite();
//  FPairUnlock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWLock.EndWrite(); stdcall;
var
  AThread : Cardinal;

begin
  FIntLockSection.Enter();

  AThread := GetCurrentThreadId();
{$IFDEF __LOCKS_DBG__}
  if( AThread <> FOwningThread ) then
    if( FCountStopLocks = 0 ) then
      if( FInStopCount = 0 ) then
        begin
        GOWDBGSaveLocks( Self );
        ExitProcess( 8 );
        end;
{$ENDIF}
{
  if( FCountWrites <= 0 ) then
    begin
    LeaveCriticalSection( FIntLockSection1 );
    Exit;
    end;
}
//  if( FCountStopWrites > 0 ) then
//    Dec( FCountStopWrites )
  if( AThread <> FOwningThread ) then
    begin
    if( FCountStopLocks > 0 ) then
      Dec( FCountStopLocks );

    end

  else
    begin
    if( FCountStopLocksOwner > 0 ) then
      Dec( FCountStopLocksOwner )

    else if( FCountStopLocks > 0 ) then
      Dec( FCountStopLocks )

    else
      begin
{$IFDEF __LOCKS_DBG__}
      if( FCountLocks = 0 ) then
        begin
        GOWDBGSaveLocks( Self );
        ExitProcess( 8 );
        end;
{$ENDIF}

      Dec( FCountLocks );
      end;

    if( ( FCountLocks = 0 ) and ( FCountStopLocksOwner = 0 ) and ( FCountLocks = 0 ) ) then
      begin
        if( not FLockMutex.Release()) then
        begin
{$IFDEF __LOCKS_DBG__}
        GOWDBGSaveLocks( Self );
        ExitProcess( 8 );
{$ENDIF}
        end;
          
      FOwningThread := 0;
//    LeaveCriticalSection( FLockSection );
      end;
    end;

{$IFDEF __LOCKS_DBG__}
  Assert();
{$ENDIF}

  FIntLockSection.Leave();
//  FPairUnlock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWLock.BeginStop(); stdcall;
var
  AThread : Cardinal;
  Res     : Boolean;

begin
{
  if( TryLock ) then
    Result := TryEnterCriticalSection( FLockSection )

  else
    EnterCriticalSection( FLockSection );
}
  FIntLockSection.Enter();
  AThread := GetCurrentThreadId();
  if(( FOwningThread = AThread ) and ( FCountLocks > 0 )) then
    Inc( FCountLocks )

  else
    begin
    FIntLockSection.Leave();
    repeat
      Res := FLockMutex.Acquire( 1000 );

    until( Res );

//    if( Res <> WAIT_OBJECT_0 ) then
//      Res := Res;
      
    FIntLockSection.Enter();
    FOwningThread := AThread;
    Inc( FCountLocks );
    end;

  Inc( FInStopCount );
//  if( Result ) then
//    Inc( FCountLocks );
//    Inc( FCountReads );

  FIntLockSection.Leave();
end;
//---------------------------------------------------------------------------
procedure TOWLock.EndStop(); stdcall;
var
  AThread : Cardinal;
  
begin
  FIntLockSection.Enter();
  
  AThread := GetCurrentThreadId();
  Dec( FInStopCount );
  if( AThread <> FOwningThread ) then
    begin
{$IFDEF __LOCKS_DBG__}
    if( FCountStopLocks = 0 ) then
      begin
      GOWDBGSaveLocks( Self );
      ExitProcess( 8 );
      end;
{$ENDIF}

    if( FCountStopLocks > 0 ) then
      Dec( FCountStopLocks );

    end

  else
    begin
    if( FCountStopLocksOwner > 0 ) then
      Dec( FCountStopLocksOwner )

    else if( FCountStopLocks > 0 ) then
      Dec( FCountStopLocks )

    else
      begin
{$IFDEF __LOCKS_DBG__}
      if( FCountLocks = 0 ) then
        begin
        GOWDBGSaveLocks( Self );
        ExitProcess( 8 );
        end;
{$ENDIF}

      Dec( FCountLocks );
      end;

    if( ( FCountLocks = 0 ) and ( FCountStopLocksOwner = 0 ) and ( FCountLocks = 0 ) ) then
      begin
      FOwningThread := 0;
      if( not FLockMutex.Release()) then
        begin
{$IFDEF __LOCKS_DBG__}
        GOWDBGSaveLocks( Self );
        ExitProcess( 8 );
{$ENDIF}
        end;
      end;
    end;

{$IFDEF __LOCKS_DBG__}
  Assert();
{$ENDIF}

  FIntLockSection.Leave();
end;
//---------------------------------------------------------------------------
{$IFDEF __LOCKS_DBG__}
procedure TOWLock.Assert();
begin
  if(( FCountWrites = 0 ) and ( FCountReads = 0 ) and ( FCountUnlocks = 0 ) and ( FCountStops = 0 )) then
    begin
    if( FOwningThread <> 0 ) then
      begin
      GOWDBGSaveLocks( Self );
      ExitProcess( 8 );
      end;

    if( FCountLocks > 0 ) then
      begin
      GOWDBGSaveLocks( Self );
      ExitProcess( 8 );
      end;

    if( FCountStopLocks > 0 ) then
      begin
      GOWDBGSaveLocks( Self );
      ExitProcess( 8 );
      end;
    end;

end;
{$ENDIF}
//---------------------------------------------------------------------------
procedure TOWLock.IntLock(); stdcall;
begin
  FIntLockSection.Enter();
end;
//---------------------------------------------------------------------------
procedure TOWLock.IntUnlock(); stdcall;
begin
  FIntLockSection.Leave();
end;
//---------------------------------------------------------------------------
function  TOWLock.ReadLock() : IOWLockSection;
var
  ASection : TOWSimpleReadLockSection;

begin
  ASection := TOWSimpleReadLockSection.Create( Self );
  Result := ASection;

  FIntLockSection.Enter();
  if( not ASection.FLocked ) then
    Result := NIL;

//  else
//    if( FPairLock <> NIL ) then
//      FPairUnlock := FPairLock.UnlockAll(); 

  FIntLockSection.Leave();
end;
//---------------------------------------------------------------------------
function  TOWLock.WriteLock() : IOWLockSection;
var
  ASection : TOWSimpleWriteLockSection;

begin
  ASection := TOWSimpleWriteLockSection.Create( Self ); 
  Result := ASection;
  
  FIntLockSection.Enter();
  if( not ASection.FLocked ) then
    Result := NIL;

//  else
//    if( FPairLock <> NIL ) then
//      FPairUnlock := FPairLock.UnlockAll(); 

  FIntLockSection.Leave();
end;
//---------------------------------------------------------------------------
function  TOWLock.UnlockAll() : IOWLockSection;
begin
//  Result := NIL;
//  Exit;
  Result := TOWSimpleUnlockSection.Create( Self );
end;
//---------------------------------------------------------------------------
function  TOWLock.StopLock() : IOWLockSection;
begin
  Result := TOWSimpleStopLockSection.Create( Self );
end;
//---------------------------------------------------------------------------
function  TOWLock.Instance() : TOWLock;
begin
  Result := Self;
end;
//---------------------------------------------------------------------------
{
procedure TOWLock.SetPair( APairLock : IOWLock );
begin
  FPairLock := APairLock; 
end;
}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWDestroyLock.Lock() : IOWDestroyLockSection;
begin
  InterlockedIncrement( FLockCounter );
{$IFDEF fpc}
  if( InterlockedExchangeAdd( FDestroying, 0 ) <> 0 ) then
{$ELSE}
  if( InterlockedExchangeAdd( @FDestroying, 0 ) <> 0 ) then
{$ENDIF}
    begin
    InterlockedDecrement( FLockCounter );
    Exit;
    end;

  Result := TOWDestroyLockSection.Create( Self );
end;
//---------------------------------------------------------------------------
function TOWDestroyLock.DestroyLock() : IOWDestroyLockSection;
begin
  InterlockedIncrement( FDestroying );
{$IFDEF fpc}
  while( InterlockedExchangeAdd( FLockCounter, 0 ) <> 0 ) do
{$ELSE}
  while( InterlockedExchangeAdd( @FLockCounter, 0 ) <> 0 ) do
{$ENDIF}
  Sleep( 0 );

  Result := TOWDestroyLockLockSection.Create( Self );   
end;
//---------------------------------------------------------------------------
function  TOWDestroyLock.DestroyUnlockLock() : IOWDestroyLockSection;
var
  ACount : LongInt;
   
begin
  ACount := InterlockedExchange( FDestroying, 0 );
  Result := TOWDestroyLockUnlockSection.Create( Self, ACount );   
end;
//---------------------------------------------------------------------------
function TOWDestroyLock.Instance() : TOWDestroyLock;
begin
  Result := Self;
end;
//---------------------------------------------------------------------------
procedure TOWDestroyLock.Unlock();
begin
  InterlockedDecrement( FLockCounter );
end;
//---------------------------------------------------------------------------
procedure TOWDestroyLock.DestroyUnlock();
begin
  InterlockedDecrement( FDestroying );
end;
//---------------------------------------------------------------------------
procedure TOWDestroyLock.DestroyLockNum( ACount : LongInt );
begin
{$IFDEF fpc}
  InterlockedExchangeAdd( FDestroying, ACount );
{$ELSE}
  InterlockedExchangeAdd( @FDestroying, ACount );
{$ENDIF}
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
  inherited;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWPinObject.PinDeletedNotify( ADeletedPin : TOWBasicPin );
begin
end;
//---------------------------------------------------------------------------
procedure TOWPinObject.PinReplacedNotify( AOldPin : TOWBasicPin; ANewPin : TOWBasicPin );
begin
end;
//---------------------------------------------------------------------------
procedure TOWPinObject.SetNotifyAfterByName( APin : TOWPin; AfterPinName : String );
begin
end;
//---------------------------------------------------------------------------
function  TOWPinObject.GetAfterPinDisplayName( APin : TOWPin ) : String;
begin
  Result := '';
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWBasicPin.Create();
begin
  inherited;
//  FDestroyLock := TOWDestroyLock.Create();
  FDestroyLock := TOWDestroyLock.Create();
  GlobalStorageSection.Enter();
  GOWPins.Add( Self );
  GlobalStorageSection.Leave();
//  FAfterLinkList := TObjectList.Create( False );
end;
//---------------------------------------------------------------------------
destructor  TOWBasicPin.Destroy();
var
  ADestroyLock : IOWDestroyLockSection;
  
begin
//  FAfterLinkList.Free();
  ADestroyLock := FDestroyLock.DestroyLock();
  if( CurrentEditorPtr <> NIL )then
    CurrentEditorPtr^ := NIL;

  GlobalStorageSection.Enter();
  GOWPins.Remove( Self );
  GlobalStorageSection.Leave();
  inherited;
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.AfterConstruction();
var
  AWriteLock : IOWLockSection;

begin
  inherited;
//  Log( 'NEW    : ' + IntToHex( Integer( Self ), 8 ) + ' - ' + GetFullName( True ) );

  AWriteLock := WriteLock();

  OWNotifyAddPin( Self );

  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.BeforeDestruction();
var
  DesignFormClosing : Boolean;
  AStopLock  : IOWLockSection;
  AWriteLock : IOWLockSection;
  ADestroyLock : IOWDestroyLockSection;
  I          : Integer;

begin
//  Log( 'DELETE : ' + IntToHex( Integer( Self ), 8 ) + ' - ' + GetFullName( True ) );
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();
  Disconnect();
  DesignFormClosing := False;
  if( OwnerInDesigning() ) then
    if( RootInDestroying() ) then
      DesignFormClosing := True;

  OWNotifyRemovePin( Self, DesignFormClosing );

  GlobalStorageSection.Enter();
  for I := 0 to GOWPins.Count - 1 do
    GOWPins[ I ].PinDeletedNotify( Self );
    
  GlobalStorageSection.Leave();

  AStopLock := NIL;
  AWriteLock := NIL;
  inherited;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.QueryInterface(const IID: TGUID; out Obj): HResult; stdcall;
begin
  if GetInterface(IID, Obj) then
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
function TOWBasicPin._AddRef: Integer; stdcall;
begin
  _AddRef := 1;
end;
//---------------------------------------------------------------------------
function TOWBasicPin._Release: Integer; stdcall;
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
function TOWBasicPin.GetSaveName() : String;
begin
  Result := GetName();
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetRoot() : TComponent;
begin
  Result := GetOwnerComponent();
  if( Result <> NIL ) then
    Result := OWGetMainOwnerComponent( Result );
    
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.GetConnectedAfterForPin( OtherPin : TOWBasicPin ) : TOWBasicPin;
begin
  if( FDispatcher <> NIL ) then
    Result := FDispatcher.GetConnectedAfterForPin( OtherPin )

  else
    Result := NIL;
    
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.GetIsRealPin() : Boolean;
begin
  Result := ( Self is TOWPin );
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.DirectDependsOn( const OtherPin : TOWBasicPin ) : Boolean;
begin
  Result := DependsOn( OtherPin );
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.GetConnectionID( const OtherPin : TOWBasicPin ) : TGUID;
begin
  Result := OWNULLID;
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.GetOwnerComponent() : TComponent;
begin
  Result := NIL;
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.RootInDestroying() : Boolean;
begin
  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.IntDisconnect( OtherPin : TOWBasicPin; DesignFormClosing : Boolean );
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.IntConnect( SinkPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin );
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.CheckRemove();
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.ApplyFormName( var Ident : String );
begin
  if( FLoadFormName <> '' ) then
    if( Pos( FLoadFormName + '.', Ident ) = 1 ) then
      begin
      Delete( Ident, 1, Length( FLoadFormName ));
      Ident := OWGetMainOwnerComponent( GetOwnerComponent() ).Name + Ident;
      end;
     
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.IsLinkedTo( PinName : String ) : Boolean;
var
  I : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := False;
  if( FDispatcher = NIL ) then
    Exit;

  for I := 0 to FDispatcher.PinCount - 1 do
    if( FDispatcher.Pins[ I ].GetFullName( True ) = PinName ) then
      begin
      Result := True;
      Exit;
      end;

end;
//---------------------------------------------------------------------------
function  TOWBasicPin.ConnectToState( ADispatcher : TOWStateDispatcher ) : Boolean;
begin
  Result := ConnectToStateAfter( ADispatcher, NIL );
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.ConnectToStateAfter( ADispatcher : TOWStateDispatcher; NotifyAfterPin : TOWBasicPin ) : Boolean;
var
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();

  Result := False;
  if( ADispatcher = FDispatcher ) then
    Exit;

  if( FDispatcher <> NIL ) then
    Disconnect();

  if( ADispatcher = NIL ) then
    Exit;

  if( not CanConnectToState( ADispatcher )) then
    Exit;

  Result := True;

  ADispatcher.AddPinAfter( Self, Self, NotifyAfterPin );
  FDispatcher := ADispatcher;
  UpdateStateValue();

  OWNotifyConnected( Self, ADispatcher );
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.CanConnectToState( const ADispatcher : TOWStateDispatcher ) : Boolean;
var
  AConverter : TOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  
begin
  Result := CanConnectToStateInt( ADispatcher, AConverter, AConverterClass, True ); 
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
function TOWBasicPin.SetEditorString( ARoot : TComponent; const AValue: string ) : Boolean;
begin
  Result := False;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.CanConnectToStateInt( const ADispatcher : TOWStateDispatcher; var AConverter : TOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean ) : Boolean;
var
  I         : Integer;
  AReadLock : IOWLockSection;

begin
  Result := False;
  if( ADispatcher = NIL ) then
    Exit;

  AReadLock := ReadLock();
  if( ADispatcher = FDispatcher ) then
    begin
    Result := True;
    Exit;
    end;

  for I := 0 to ADispatcher.PinCount - 1 do
    if( not CanConnectToInt( ADispatcher[ I ], AConverter, AConverterClass, UseConverters )) then
//    CanConnectTo( ADispatcher[ I ], UseConverters )) then
      Exit;

  Result := True;
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.UpdateStateValue();
begin
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.IsConnected() : Boolean;
begin
  Result := IsStateConnected();
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.CanConnectTo( const OtherPin : TOWBasicPin; UseConverters : Boolean = True ) : Boolean;
var
  AConverter : TOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  
begin
  Result := CanConnectToInt( OtherPin, AConverter, AConverterClass, UseConverters );  
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.IsStateConnected() : Boolean;
begin
  Result := ( FDispatcher <> NIL );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsConnectedTo( OtherPin : TOWBasicPin ) : Boolean;
begin
  Result := IsConnectedByStateTo( OtherPin );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsConnectedToAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ) : Boolean;
begin
  Result := IsConnectedByStateToAfter( OtherPin, NotifyAfterPin );
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.IsConnectedToState( const ADispatcher : TOWStateDispatcher ) : Boolean;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();

  Result := ( ADispatcher = FDispatcher );
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.IsConnectedByStateTo( OtherPin : TOWBasicPin ) : Boolean;
var
  AReadLock       : IOWLockSection;
  I               : Integer;

begin
  AReadLock := ReadLock();

  Result := False;
  if( FDispatcher <> NIL ) then
    begin
    Result := True;
    for I := 0 to FDispatcher.FPins.Count - 1 do
      if( FDispatcher.FPins[ I ].RealPin = OtherPin ) then
        Exit;

    Result := False;
    end;

end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsConnectedByStateToAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ) : Boolean;
var
  AReadLock       : IOWLockSection;
  I               : Integer;

begin
  AReadLock := ReadLock();

  Result := False;
  if( FDispatcher <> NIL ) then
    begin
    Result := True;
    for I := 0 to FDispatcher.FPins.Count - 1 do
      if( ( FDispatcher.FPins[ I ].RealPin = OtherPin ) and ( FDispatcher.FPins[ I ].AfterPin = NotifyAfterPin ) ) then
        Exit;

    Result := False;
    end;

end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsConnectedByConverterTo( OtherPin : TOWBasicPin ) : Boolean;
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
function  TOWBasicPin.GetConnectedPin( Index : Integer ) : TOWBasicPin;
begin
  Result := NIL;
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.GetConnectedAfterPin( Index : Integer ) : TOWBasicPin;
begin
  Result := GetConnectedAfterForPin( GetConnectedPin( Index ));
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.GetDispatcherCount() : Integer;
begin
  if( FDispatcher <> NIL ) then 
    Result := 1

  else
    Result := 0;
    
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.GetDispatcher( Index : Integer ) : TOWStateDispatcher; 
begin
  Result := FDispatcher;
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.ConnectByState( OtherPin : TOWBasicPin ) : Boolean;
begin
  Result := ConnectByStateAfter( OtherPin, NIL );
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.Connect( OtherPin : TOWBasicPin ) : Boolean;
begin
  Result := ConnectAfter( OtherPin, NIL );
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.ConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ) : Boolean;
begin
  if( OtherPin = Self ) then
    begin
    Result := False;
    Exit;
    end;

  Result := ConnectByStateAfter( OtherPin, NotifyAfterPin );
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.CanConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin; UseConverters : Boolean ) : Boolean;
begin
  if( NotifyAfterPin = NIL ) then
    begin
    Result := CanConnectTo( OtherPin, UseConverters );
    Exit;
    end;
    
  if( FDispatcher <> NIL ) then
    Result := FDispatcher.CanConnectAfter( OtherPin, NotifyAfterPin, UseConverters )

  else
    Result := False;
    
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.Disconnect();
var
  AWriteLock  : IOWLockSection;
  ADestroyLock : IOWDestroyLockSection;

begin
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();

  OWNotifyDisconnected( Self, FDispatcher );

  if( FDispatcher <> NIL ) then
    FDispatcher.RemovePin( Self );

  FDispatcher := NIL;

  AWriteLock := NIL;

  OWNotifyChangePin( Self );
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.DisconnectFrom( OtherPin : TOWBasicPin );
var
  AWriteLock  : IOWLockSection;
  ADestroyLock : IOWDestroyLockSection;

begin
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();

  OWNotifyDisconnected( Self, FDispatcher );

  if( FDispatcher <> NIL ) then
    FDispatcher.RemovePin( OtherPin );

  FDispatcher := NIL;

  AWriteLock := NIL;

  OWNotifyChangePin( Self );
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.Notify( Operation : IOWNotifyOperation ) : TOWNotifyResult;
begin
  Result := [];
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.DoStateWrite() : Boolean;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();

  Result := ( FDispatcher <> NIL ) and not DoStateConverterWrite();
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.DoStateConverterWrite() : Boolean;
begin
  Result := False;
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.DoFormWrite() : Boolean;
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
  AWriteLock : IOWLockSection;
  
begin
  AWriteLock := WriteLock();

  FDispatcher := TOWStateDispatcher.GetByNameCreate( Self, IdentName, OwnerInDesigning() );
  FDispatcher.AddPin( Self, Self );
  UpdateStateValue();
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.ReadFormName( Reader : TReader );
begin
  FLoadFormName := Reader.ReadIdent();
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.WriteFormName( Writer : TWriter );
begin
  Writer.WriteIdent( OWGetMainOwnerComponent( GetOwnerComponent() ).Name ); 
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.ReadStateConnectionsData( Reader : TReader );
var
  ReadIdent : String;
  ReadName  : String;
  AfterReadIdent : String;
  AfterReadName  : String;
  AWriteLock : IOWLockSection;

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
          
//        FDispatcher.AddLinkStorage( ReadIdent, ReadName, AfterReadIdent, AfterReadName ); 
        Reader.ReadListEnd();
        end

      else
        begin
        ReadName := Reader.ReadIdent();
//        FDispatcher.AddLinkStorage( ReadName, ReadName, '', '' );
        end;
        
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
  I            : Integer;
  Ident        : String;
  IdentName    : String;

  PinRootName  : String;
  ThePinOwner  : TComponent;
  IsSaved      : Boolean;
  ExternalLink : Boolean;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();

  if( FDispatcher = NIL ) then
    Exit;
    
  IsSaved := False;
  PinRootName := GetRootName();
  ThePinOwner := OWGetMainOwnerComponent( GetOwnerComponent() ); 
  if( FDispatcher.FCountSaved = 0 ) then
    FDispatcher.ResetFormsSave(); // It's the first pin to save.

  if( ( ThePinOwner = NIL ) or ( not FDispatcher.IsFormSaved( ThePinOwner ))) then
    begin
    if( FDispatcher.IsCrosForm()) then
      begin
      Writer.WriteListBegin();
      Writer.WriteString( FDispatcher.FName );
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
  if( FDispatcher.FCountSaved = FDispatcher.PinCount ) then
    FDispatcher.ResetFormsSave() // It's the last pin. We are done with saving.

  else
    FDispatcher.AddFormSaved( ThePinOwner );

  if( not IsSaved ) then
    Writer.WriteString( FDispatcher.FName );

end;
//---------------------------------------------------------------------------
function TOWBasicPin.WriteNoStateListEntry( Writer : TWriter ) : Boolean;
begin
  Result := False;
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
{
    if( Pins[ I ] is TOWSinkPin ) then
      begin
      if( TOWSinkPin( Pins[ I ] ).DoWrite() ) then
        TOWSinkPin( Pins[ I ] ).WriteConnectionsData( Writer );

      end

    else if( Pins[ I ] is TOWEventSinkPin ) then
      begin
      if( TOWEventSinkPin( Pins[ I ] ).DoWrite() ) then
        begin
        Writer.WriteIdent( 'Sources' );
        TOWEventSinkPin( Pins[ I ] ).WriteConnectionsData( Writer );
        end;

      end

    else if( Pins[ I ] is TOWSourcePin ) then
      begin
      if( TOWSourcePin( Pins[ I ] ).DoWrite() ) then
        begin
        Writer.WriteIdent( 'Sinks' );
        TOWSourcePin( Pins[ I ] ).WriteConnectionsData( Writer );
        end;

      end;
}
    Writer.WriteListEnd();
//    Continue;
    end
    
  else if( not WriteNoStateListEntry( Writer ) ) then
    Writer.WriteIdent( 'nil' );

end;
//---------------------------------------------------------------------------
function TOWBasicPin.ConnectByStateAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ) : Boolean;
var
  AConverter : TOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  AWriteLock : IOWLockSection;

begin
  Result := False;
  AConverterClass := NIL;
  AConverter := NIL;
  if( not CanConnectToInt( OtherPin, AConverter, AConverterClass, True ) ) then // ???????
    Exit;

  AWriteLock := WriteLock();

  if( FDispatcher <> NIL ) then
    begin
    if(( AConverter <> NIL ) or ( AConverterClass <> NIL )) then
      begin
      if( AConverterClass <> NIL ) then
        begin
        AConverter := AConverterClass.Create();
        FDispatcher.FFormatConverters.Add( AConverter );
        end;
        
      AConverter.FOutputPin.ConnectAfter( OtherPin, NotifyAfterPin );
      AConverter.FInputPin.FDispatcher := FDispatcher;
      FDispatcher.AddPin( AConverter.FInputPin, OtherPin );
//      PEntry.ConnectionPin := AConverter.FInputPin;
      AConverter.FInputPin.FConnectionSourcePin := Self; // AConverter.FOutputPin;
      TOWSinkPin( OtherPin ).FRealSourcePin := Self;
      TOWSinkPin( OtherPin ).FIntRealSourcePin := Self;
//      TOWSinkPin( AConverter.FInputPin ).FConnectionSourcePin := AConverter.FOutputPin;
      OtherPin.FDispatcher := FDispatcher;
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
    FDispatcher := CreateDispatcher( OWGetMainOwnerComponent( GetOwnerComponent() ) );
    FDispatcher.AddPin( Self, Self );
    if( AConverterClass <> NIL ) then
      begin
      AConverter := AConverterClass.Create();
      FDispatcher.FFormatConverters.Add( AConverter );
      end;

    if( AConverter <> NIL ) then
      begin
      AConverter.FOutputPin.ConnectAfter( OtherPin, NotifyAfterPin );
      AConverter.FInputPin.FDispatcher := FDispatcher;
      FDispatcher.AddPin( AConverter.FInputPin, OtherPin );
//      PEntry.ConnectionPin := AConverter.FInputPin;
      AConverter.FInputPin.FConnectionSourcePin := Self; // AConverter.FOutputPin;
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

    OWNotifyAddDispatcher( FDispatcher );
    UpdateStateValue();
    OWNotifyConnected( OtherPin, FDispatcher );
    OWNotifyConnected( Self, FDispatcher );
    OWNotifyChangePin( OtherPin );
    OWNotifyChangePin( Self );
    Result := True;
    end;

end;
//---------------------------------------------------------------------------
function  TOWBasicPin.CreateDispatcher( Owner : TComponent ) : TOWStateDispatcher;
begin
  Result := TOWStateDispatcher.Create( Owner );
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.CreateNamedDispatcher( Name : String; DesignTime : Boolean ) : TOWStateDispatcher;
begin
  Result := TOWStateDispatcher.CreateNamed( Name, DesignTime );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWPin.Create(AOwner: TComponent);
var
  AWriteLock : IOWLockSection;
  
begin
  inherited Create();
  AWriteLock := WriteLock();
  StreamType := TOWPinStreamType.Create();
  FOwner := AOwner;
//  FDeleteNotifyes := TObjectList.Create( False );
  PinsNeedRefresh := True;
  FInSending := 0;
  GetRootName();
end;
//---------------------------------------------------------------------------
constructor TOWPin.CreateLock(AOwner: TComponent; AOwnerLock : IOWLock);
var
  AWriteLock : IOWLockSection;
  
begin
  inherited Create();
  AWriteLock := WriteLock();

  FOwnerLock := AOwnerLock;
//  FIntLock.Instance().SetPair( F1OwnerLock );
  StreamType := TOWPinStreamType.Create();
  FOwner := AOwner;
//  FDeleteNotifyes := TObjectList.Create( False );
  PinsNeedRefresh := True;
  FInSending := 0;
  GetRootName();
end;
//---------------------------------------------------------------------------
destructor TOWPin.Destroy();
var
  AWriteLock : IOWLockSection;
  ADestroyLock : IOWDestroyLockSection;

begin
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();

//  FDeleteNotifyes.Free();
  StreamType.Free();
  ADestroyLock := NIL;
  AWriteLock := NIL;
  inherited;
end;
//---------------------------------------------------------------------------
function  TOWPin.RootInDestroying() : Boolean;
var
  AWriteLock : IOWLockSection;
  
begin
  AWriteLock := WriteLock();

  if( Owner <> NIL ) then
    Result := ( csDestroying in OWGetMainOwnerComponent( Owner ).ComponentState )

  else
    Result := False;

end;
//---------------------------------------------------------------------------
function  TOWPin.OwnerInLoading() : Boolean;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  
  if( FOwner <> NIL ) then
    Result := ( csLoading in FOwner.ComponentState )

  else
    Result := False;

end;
//---------------------------------------------------------------------------
function  TOWPin.OwnerInDesigning() : Boolean;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := False;
  if( GIgnoreDesignMode ) then
    Exit;

  if( FOwner <> NIL ) then
    Result := ( csDesigning	in FOwner.ComponentState )
    
end;
//---------------------------------------------------------------------------
function  TOWPin.GetName() : String;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();

  Result := OWValueToString( Self, '.', False, False );
  Delete( Result, 1, Pos( '.', Result ) );
end;
//---------------------------------------------------------------------------
function  TOWPin.GetOwnerComponent() : TComponent;
begin
  Result := FOwner;
end;
//---------------------------------------------------------------------------
function  TOWPin.GetFullName( IncludeRootForm : Boolean ) : String;
begin
  Result := OWValueToString( Self, '.', IncludeRootForm, False );
end;
//---------------------------------------------------------------------------
function  TOWPin.GetFullIdentName( IncludeRootForm : Boolean ) : String;
begin
  Result := OWValueToString( Self, '.', IncludeRootForm, True );
end;
//---------------------------------------------------------------------------
function  TOWPin.GetSaveName() : String;
var
  AReadLock : IOWLockSection;
  
begin
  AReadLock := ReadLock();

  Result := OWValueToString( Self, '.', False, True );
  Delete( Result, 1, Pos( '.', Result ) );
end;
//---------------------------------------------------------------------------
function TOWPin.GetRootName() : String;
var
  ARoot : TComponent;

begin
  if( Owner <> NIL ) then
    begin
    if( Owner.Owner <> NIL ) then
      begin
      ARoot := OWGetMainOwnerComponent( Owner );
      if( ARoot <> NIL ) then
        FLastRootName := ARoot.Name

      end;

    Result := FLastRootName;
    end

  else
    Result := inherited GetRootName();

end;
//---------------------------------------------------------------------------
function  TOWPin.ReadLock()  : IOWLockSection;
begin
  Result := TOWSimpleReadLockSection.Create( FIntLock, FOwnerLock );
//  if( Result <> NIL ) then
//    if( FIntLock.Instance().FPairLock <> NIL ) then
//      FIntLock.Instance().FPairUnlock := FIntLock.Instance().FPairLock.UnlockAll();
      
end;
//---------------------------------------------------------------------------
function  TOWPin.WriteLock() : IOWLockSection;
begin
  Result := TOWSimpleWriteLockSection.Create( FIntLock, FOwnerLock );
//  if( Result <> NIL ) then
//    if( FIntLock.Instance().FPairLock <> NIL ) then
//      FIntLock.Instance().FPairUnlock := FIntLock.Instance().FPairLock.UnlockAll();
      
end;
//---------------------------------------------------------------------------
function  TOWPin.NotifyDispatcher( Operation : IOWNotifyOperation; State : TOWNotifyState; APinToNotify : TOWPin ) : TOWNotifyResult;
var
  I      : Integer;
  Status : TOWNotifyResult;
  DataTypeID : TGUID;
  ASubmitFunction : TOWSubmit;
  ADispatcher : TOWStateDispatcher;
  APin        : TOWBasicPin;
  AReadLock : IOWLockSection;
  ADestroyLock : IOWDestroyLockSection;

begin
  AReadLock := ReadLock();

  Result := [];
  if( FDispatcher = NIL ) then
    Exit;

  ADispatcher := FDispatcher;
  AReadLock := NIL;
  
  for I := 0 to ADispatcher.PinCount - 1 do
    begin
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
      AReadLock := ADispatcher.ReadLock(); 
      DataTypeID := GetStateSubmitID( ADispatcher.ConnectionPins[ I ] );
      ASubmitFunction := GetSubmitFunctionID( DataTypeID );
      APin := ADispatcher.ConnectionPins[ I ]; 
      AReadLock := NIL;
//      AUnlock := NIL;
      ADestroyLock := FDestroyLock.Lock();
      if( ADestroyLock <> NIL ) then
        if( Assigned( ASubmitFunction )) then
          Status := ASubmitFunction( APin, @DataTypeID, Operation, State );

      AReadLock := NIL;      
      end;

    end;

  AReadLock := NIL;
//  AUnlock := NIL;
////  ReorderChangedData(); { TODO: Reorder changed data }
end;
//---------------------------------------------------------------------------
function  TOWPin.Notify( Operation : IOWNotifyOperation ) : TOWNotifyResult;
begin
  Result := NotifyDispatcher( Operation, [], NIL );
end;
//---------------------------------------------------------------------------
function  TOWPin.GetStateSubmitID( const OtherPin : TOWBasicPin ) : TGUID;
var
  AConverter      : TOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  
begin
  Result := FindConnectionID( OtherPin, AConverter, AConverterClass, True );
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
procedure TOWStreamPin.UpStreamFillPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  I : Integer;

  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();

  for I := 0 to StreamType.Count - 1 do
    PossibleStreamTypes.AddType( StreamType.ID[ I ], StreamType.SubmitFunc[ I ] );
    
end;
//---------------------------------------------------------------------------
function  TOWStreamPin.DownStreamQueryPossybleInterface( const IID: TGUID ) : HResult;
begin
  Result := S_OK;
end;
//---------------------------------------------------------------------------
procedure TOWStreamPin.DownStreamFillPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
//procedure TOWPin.FillPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  I : Integer;

  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();

  for I := 0 to StreamType.Count - 1 do
    PossibleStreamTypes.AddType( StreamType.ID[ I ], StreamType.SubmitFunc[ I ] );

end;
//---------------------------------------------------------------------------
procedure TOWStreamPin.BackPopulateStreamChains( AChain : TOWObjectListList; AList : TOWObjectList );
begin
  AList.Add( Self )
end;
//---------------------------------------------------------------------------
function  TOWStreamPin.UpStreamQueryPossybleInterface( const IID: TGUID ) : HResult;
begin
  Result := S_OK;
//  Result := DownStreamQueryPossybleInterface( IID );
end;
//---------------------------------------------------------------------------
{
procedure TOWPin.RemoveDeleteNotify( ADeleteNotifyPin : TOWPin );
begin
  FDeleteNotifyes.Remove( ADeleteNotifyPin );
end;
}
//---------------------------------------------------------------------------
procedure TOWPin.OrderStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted );
var
  I, J      : Integer;
  CalcIndex : Integer;

var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  
  if( PossibleStreamTypes.Ordered ) then
    Exit;

  CalcIndex := 0;
  for I := 0 to StreamType.Count - 1 do
    begin
    for J := 0 to PossibleStreamTypes.Count - 1 do
      begin
      if( IsEqualGUID( PossibleStreamTypes.ID[ J ], StreamType.ID[ I ] )) then
        begin
        if( CalcIndex <> J ) then
          PossibleStreamTypes.SwapPosition( CalcIndex, J );

        Inc( CalcIndex );
        end;
      end;
    end;

  PossibleStreamTypes.Ordered := True;
end;
//---------------------------------------------------------------------------
procedure TOWPin.AddType( ID : TGUID );
var
  AWriteLock : IOWLockSection;
  
begin
  AWriteLock := WriteLock();
  
  StreamType.AddType( ID, DefaultNotifyDispatcher );
end;

//---------------------------------------------------------------------------
procedure TOWPin.AddType( ID : TGUID; SubmitFunction : TOWSubmit );
var
  AWriteLock : IOWLockSection;
  
begin
  AWriteLock := WriteLock();
  
  StreamType.AddType( ID, SubmitFunction );
end;
//---------------------------------------------------------------------------
procedure TOWPin.RemoveType( ID : TGUID );
var
  AWriteLock : IOWLockSection;
  
begin
  AWriteLock := WriteLock();
  
  StreamType.RemoveType( ID );
end;
//---------------------------------------------------------------------------
procedure TOWPin.ClearTypes();
var
  AWriteLock : IOWLockSection;
  
begin
  AWriteLock := WriteLock();
  
  StreamType.ClearTypes();
end;
//---------------------------------------------------------------------------
function  TOWPin.GetConnectionID( const OtherPin : TOWBasicPin ) : TGUID;
begin
  Result := GetStateSubmitID( OtherPin );
end;
//---------------------------------------------------------------------------
function  TOWPin.GetConnectionName( const OtherPin : TOWBasicPin ) : String;
begin
  Result := GetLinkNameID( GetConnectionID( OtherPin ));
end;
//---------------------------------------------------------------------------
function  TOWPin.GetPrimaryConnectionID() : TGUID;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();

  Result := OWNULLID;
  if( IsConnected() ) then
    if( FDispatcher.PinCount > 0 ) then
      Result := GetConnectionID( FDispatcher.Pins[ 0 ] );

end;
//---------------------------------------------------------------------------
function  TOWPin.DefaultNotifyDispatcher( Handler : IOWStream; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
var
  I : Integer;
  DataTypeGUID : PGUID;
  AReadLock : IOWLockSection;
  ASubmit : TOWGlobalSubmit;

begin
  AReadLock := ReadLock();

  DataTypeGUID := PGUID( DataTypeID );
  for I := 0 to Length(StreamTypes) - 1 do
    begin
    if( IsEqualGUID( StreamTypes[ I ].ID, DataTypeGUID^ )) then
      begin
      if( Assigned( StreamTypes[ I ].SendFunction )) then
        begin
        ASubmit := StreamTypes[ I ].SendFunction;
        AReadLock := NIL;
        Result := ASubmit( Self, Handler, DataTypeID, Operation, State );
        end

      else
        Result := [];

      Exit;
      end;

    end;

  Result := [];
end;
//---------------------------------------------------------------------------
function  TOWPin.GetSubmitFunctionID( const IID : TGUID ) : TOWSubmit;
var
  I         : Integer;
  AReadLock : IOWLockSection;

begin
  Result := NIL;
  if( not IsEqualGUID( IID, OWNULLID )) then
    begin
    AReadLock := ReadLock();
    for I := 0 to StreamType.Count - 1 do
      begin
      if( IsEqualGUID( StreamType.ID[ I ], IID )) then
        begin
        Result := StreamType.SubmitFunc[ I ];
        if( not Assigned( Result )) then
          Result := DefaultNotifyDispatcher;

        Exit;
        end;
      end;
    end;

end;
//---------------------------------------------------------------------------
function  TOWPin.GetLinkNameID( const IID : TGUID ) : String;
begin
  Result := '';
  if( not IsEqualGUID( IID, OWNULLID )) then
    Result := OWGetStreamTypeFromID( IID );

end;
//---------------------------------------------------------------------------
function  TOWPin.CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : TOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean ) : Boolean;
var
  AReadLock       : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := False;
  if( not( FOwner is TOWFormatConverter ) and not( OtherPin.Owner is TOWFormatConverter )) then
    begin 
    if( OtherPin.OwnerInDesigning() and ( not OwnerInDesigning())) then
      Exit;

    if( ( not ( OtherPin.OwnerInDesigning() )) and OwnerInDesigning() ) then
      Exit;
      
    end;

  if( OtherPin is TOWStatePin ) then
    Result := not IsEqualGUID( FindConnectionID( OtherPin, AConverter, AConverterClass, UseConverters ), OWNULLID );

  if( OtherPin is TOWUnloadedPin ) then
    Result := OtherPin.CanConnectTo( Self, UseConverters );

//  Result := IsCompatible( OtherPin );
end;
//---------------------------------------------------------------------------
function  TOWPin.IsCompatible( const OtherPin : TOWBasicPin; UseConverters : Boolean ) : Boolean;
var
  AConverter : TOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  StatePin : TOWStatePin;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := False;
  if( not ( OtherPin is TOWStatePin )) then
    Exit;

  StatePin := TOWStatePin( OtherPin );

  Result := not IsEqualGUID( FindConnectionID( StatePin, AConverter, AConverterClass, UseConverters ), OWNULLID );
  if( Result ) then
    Result := not IsEqualGUID( StatePin.FindConnectionID( Self, AConverter, AConverterClass, UseConverters ), OWNULLID );

end;
//---------------------------------------------------------------------------
function TOWPin.FindConnectionID( const OtherPin : TOWBasicPin; var AConverter : TOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean ) : TGUID;
var
  Unknown       : IUnknown;
  I             : Integer;
  J             : Integer;
  AReadLock     : IOWLockSection;
  AId           : TGUID;

begin
  AReadLock := ReadLock();
  for I := StreamType.Count - 1 downto 0 do
    begin
    if( OtherPin.RequestInterface( StreamType.ID[ I ], Unknown ) = S_OK ) then
      begin
      Result := StreamType.ID[ I ];
      Exit;
      end;
    end;

  if( UseConverters ) then
    begin
    if( OtherPin.GetPinType() in [ ptSink, ptEventSink ] ) then
      begin 
      if( FDispatcher <> NIL ) then
        begin
        for I := FDispatcher.FFormatConverters.Count - 1 downto 0 do
          begin
          AId := FDispatcher.FFormatConverters[ I ].FOutputPin.DownStreamFindConnectionID( OtherPin, False, False, AConverter, AConverterClass );
          if( not IsEqualGUID( AId, OWNULLID )) then
            begin
            if( OtherPin.RequestInterface( AId, Unknown ) = S_OK ) then
              begin
              AConverter := FDispatcher.FFormatConverters[ I ];
              Result := AId;
              Exit;
              end;
            end;
          end;
        end;

  //    if( UseConverters ) then
        for I := Length( ConverterTypes ) - 1 downto 0 do
          begin
          for J := StreamType.Count - 1 downto 0 do
          if( IsEqualGUID( StreamType.ID[ J ], ConverterTypes[ I ].InputID )) then
            begin
            if( OtherPin.RequestInterface( ConverterTypes[ I ].OutputID, Unknown ) = S_OK ) then
              begin
              Result := ConverterTypes[ I ].InputID;
              AConverterClass := ConverterTypes[ I ].ConverterClass;
              Exit;
              end;
            end;
          end;
        end;
        
    end;
    
  Result := OWNULLID;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSourcePin.Create(AOwner: TComponent);
var
  AWriteLock : IOWLockSection;

begin
  inherited;
  AWriteLock := WriteLock();

  FInDependOn := False;
  FSinkPins  := TOWPinEntryList.Create();
  FFormatConverters := TOWFormatConverterList.Create();
  FFunctionSources := TOWFunctionSinkPinList.Create( Self );
  FDataTypeSources := TOWDataTypeSinkPinList.Create( Self );
end;
//---------------------------------------------------------------------------
constructor TOWSourcePin.CreateLock(AOwner: TComponent; AOwnerLock : IOWLock);
var
  AWriteLock : IOWLockSection;

begin
  inherited;
  AWriteLock := WriteLock();
  FInDependOn := False;
  FSinkPins  := TOWPinEntryList.Create();
  FFormatConverters := TOWFormatConverterList.Create();
  FFunctionSources := TOWFunctionSinkPinList.Create( Self );
  FDataTypeSources := TOWDataTypeSinkPinList.Create( Self );
end;
//---------------------------------------------------------------------------
destructor TOWSourcePin.Destroy();
var
  ADestroyLock : IOWDestroyLockSection;
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();
  Disconnect();

  FFormatConverters.Free();
  FSinkPins.Free();
  FDataTypeSources.Free();
  FFunctionSources.Free();

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
  AWriteLock      : IOWLockSection;
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
        ApplyFormName( ReadIdentAfter );
        ABasePinAfter := GOWPins.GetByNameCreate( GetRoot(), ptSink, ReadIdentAfter, ReadIdentAfter, GetFullName( True ) ); 
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

    ApplyFormName( ReadIdent );
    ApplyFormName( ReadName );
    ABasePin := GOWPins.GetByNameCreate( GetRoot(), ptSink, ReadIdent, ReadName, GetFullName( True ) );
    IntConnectAfter( ABasePin, ABasePinAfter );
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

  AWriteLock      : IOWLockSection;

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
    MyRoot := OWGetMainOwnerComponent( Owner );
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
procedure TOWSourcePin.SetNotifyAfterByName( APin : TOWPin; AfterPinName : String );
var
  I          : Integer;
  AAfterPin  : TOWBasicPin;
  
begin
  AAfterPin := NIL;
  for I := 0 to FSinkPins.Count - 1 do
    begin
    if( ( FSinkPins[ I ].RealPin.GetFullName( False ) = AfterPinName ) or ( FSinkPins[ I ].RealPin.GetFullName( True ) = AfterPinName )) then
      begin
      AAfterPin := FSinkPins[ I ].RealPin;
      Break;
      end;

    end;

  if( AAfterPin <> NIL ) then
    for I := 0 to FSinkPins.Count - 1 do
      begin
      if( FSinkPins[ I ].RealPin = APin ) then
        begin
        FSinkPins[ I ].NotifyAfterPin := AAfterPin;
        Break;
        end;
      end;
      
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.WriteConnectionsData( Writer : TWriter );
var
  I          : Integer;
  Ident      : String;
  IdentAfter : String;
  IdentName  : String;
  AReadLock  : IOWLockSection;

begin
  AReadLock := ReadLock();
  Writer.WriteListBegin();
  for I := 0 to SinkCount - 1 do
    begin
    Ident := Sinks[ I ].GetFullIdentName( True ); // GetLinkStr( I, True );
    IdentName := Sinks[ I ].GetFullName( True ); // GetLinkStr( I, False );
    if( Ident = IdentName ) then
      begin
      if( FSinkPins.Items[ I ].NotifyAfterPin <> NIL ) then
        begin
        IdentAfter := FSinkPins.Items[ I ].NotifyAfterPin.GetFullIdentName( True ); // GetLinkAfterStr( I );

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
      if( FSinkPins.Items[ I ].NotifyAfterPin <> NIL ) then
        begin
        IdentAfter := FSinkPins.Items[ I ].NotifyAfterPin.GetFullIdentName( True ); // GetLinkAfterStr( I );
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
  AReadLock : IOWLockSection;

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
procedure TOWSourcePin.DefineProperties(Filer: TFiler);
begin
  inherited;
  Filer.DefineProperty( 'SinkPins', ReadConnectionsData, WriteConnectionsData, DoWrite());
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetLinkStr( Item : Integer ) : String;
var
  AddRoot : Boolean;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();

  AddRoot := False;
  if( SinkCount > 0 ) then
    AddRoot := OWGetMainOwnerComponent( Sinks[ Item ].Owner ) <> OWGetMainOwnerComponent( Owner );

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
{
function TOWSourcePin.GetLinkAfterStr( Item : Integer ) : String;
var
  AddRoot : Boolean;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  
  AddRoot := False;
  if( SinkCount > 0 ) then
    AddRoot := FSinkPins.Items[ Item ].NotifyAfterPin.GetRootName() <> GetRootName();

//  if(( AddRoot ) and ( FSinkPins.Items[ Item ].NotifyAfterPin.Owner.Owner = NIL )) then
  FSinkPins.Items[ Item ].NotifyAfterPin.GetFullIdentName( AddRoot );
end;
}
//---------------------------------------------------------------------------
procedure TOWSourcePin.IntConnect( SinkPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin );
var
  PEntry : POWPinEntry;
  AWriteLock : IOWLockSection;
  AConverterClass : TOWFormatConverterClass;
  AConverter : TOWFormatConverter;

begin
  AWriteLock := WriteLock();
  
  PEntry := FSinkPins.Add();
  PEntry.RealPin := SinkPin; 
  PEntry.NotifyAfterPin := NotifyAfterPin;
  PEntry.ConnectionPin := NIL;
  AConverter := NIL;
  PEntry.ConnectedID := DownStreamFindConnectionID( SinkPin, True, True, AConverter, AConverterClass );
  PEntry.ModificationLevel := 0;
  PEntry.SubmitFunction := NIL;
  if( AConverterClass <> NIL ) then
    begin
    AConverter := AConverterClass.Create();
    FFormatConverters.Add( AConverter );
    end;

  if( AConverter <> NIL ) then
    begin
    PEntry.ConnectionPin := AConverter.FInputPin;
    AConverter.FOutputPin.ConnectAfter( SinkPin, NotifyAfterPin );
    TOWSinkPin( SinkPin ).FConnectionSourcePin := AConverter.FOutputPin;
    end

  else
    PEntry.ConnectionPin := SinkPin;

  PEntry.SubmitFunction := GetSubmitFunctionID( PEntry.ConnectedID );
  PEntry.ModificationLevel := 0;
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.IntDisconnect( OtherPin : TOWBasicPin; DesignFormClosing : Boolean );
var
  Index           : Integer;
  I               : Integer;
  PEntry          : POWPinEntry;
  LinkIdent       : String;
  LinkIdentName   : String;
  ADestroyLock    : IOWDestroyLockSection;
  AWriteLock      : IOWLockSection;
  ATmpPin         : TOWUnloadedPin;

begin
  if( FInDisconnect ) then
    Exit;

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

  for Index := GetSinkCount() - 1 downto 0 do
    begin
    PEntry := FSinkPins.Items[ Index ];
    if( PEntry.RealPin = OtherPin ) then
      begin
      if( PEntry.RealPin <> PEntry.ConnectionPin ) then
        begin
        for I := FFormatConverters.Count - 1 downto 0 do
          begin
          FFormatConverters[ I ].FOutputPin.IntDisconnect( OtherPin, False );
          if( not FFormatConverters[ I ].FOutputPin.IsConnected() ) then
            begin
            FFormatConverters.Delete( I );
            end;
          end; 
        end; 
//      ANotifyAfterPin := PEntry.NotifyAfterPin;
//      Dispose( PEntry );
      FSinkPins.Delete( Index );

      ADestroyLock := NIL;
      AWriteLock := NIL;
      OWNotifyChangePin( Self );
      OtherPin.CheckRemove();
      Exit;
      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.NotifyPin( APin : TOWBasicPin; Operation : IOWNotifyOperation ) : TOWNotifyResult;
var
  I      : Integer;
  J      : Integer;
  State  : TOWNotifyState;
  Status : TOWNotifyResult;
  DataTypeID : TGUID;
//  OperationIntf :  IOWNotifyOperation;
  ALock : IOWLockSection;
  ASinkPin   : TOWBasicPin;
  ARealSinkPin   : TOWBasicPin;
//  ASinkReadLock : IOWLockSection;

  ASinksList    : TOWPinEntryList;
  Entry : POWPinEntry;
  AUnlock : IOWLockSection;
  ADestroyLock : IOWDestroyLockSection;

begin
  ALock := ReadLock();

  ASinksList := TOWPinEntryList.Create();

  ASinksList.CopyFromList( FSinkPins );

  for I := ASinksList.Count - 1 downto 0 do
    begin
    if( ASinksList[ I ].ConnectionPin <> ASinksList[ I ].RealPin ) then
      begin 
      for J := I - 1 downto 0 do
        begin
        if( ASinksList[ I ].ConnectionPin = ASinksList[ J ].ConnectionPin ) then
          begin
          ASinksList.Delete( I );
          Break;
          end;
        end;
      end;
    end;
    
  try
  
//  OperationIntf := Operation; 
    if( FInSending > 200 ) then
      begin
      ALock := NIL;
      raise EOWException.Create( 'The pin depends on itself. Please protect with functional dependency.' );
      Exit;
      end;

    Inc( FInSending );
  //  Result := [];
    Result := inherited Notify( Operation );

  //  AWriteLock := NIL;
    for I := 0 to ASinksList.Count - 1 do
      begin
      if( I < ASinksList.Count - 1 ) then
        State := []

      else
        State := [nsLastIteration];

      Entry := ASinksList.Items[ I ];
      
      DataTypeID := Entry.ConnectedID;
      ASinkPin := Entry.ConnectionPin;
      ARealSinkPin := Entry.RealPin;
      if(( APin = NIL ) or ( APin = ARealSinkPin )) then
        begin
        if( Assigned( Entry.SubmitFunction )) then
          begin
//          ASinkReadLock := ASinkPin.ReadLock();
    //    DataTypeID := GetSubmitID( I );
    //    ASinkPin := GetSink( I );
    //    ASinkWriteLock := ASinkPin.WriteLock();
            try
              ALock := NIL;
//              AUnlock := NIL;
              ADestroyLock := FDestroyLock.Lock();
              if( ADestroyLock <> NIL ) then
                begin
                if( FOwnerLock <> NIL ) then
                  AUnlock := FOwnerLock.UnlockAll();

                Status := TOWSubmit( Entry.SubmitFunction )( ASinkPin, @DataTypeID, Operation, State );
                AUnlock := NIL;
                end;
                
              ALock := NIL;
            finally
//              if( FOwnerLock <> NIL ) then
//                AUnlock := FOwnerLock.UnlockAll();
                
              ALock := ReadLock();
//              ASinkReadLock := NIL;
            end;
          end;

    //    Status := TOWSubmitFunction( GetSubmit( I ))( 0, GetSink( I ), Operation, Data, State );

        if( nrDataChanged in Status ) then
          begin
          if( Entry.ModificationLevel < 10000 ) then
            Inc( Entry.ModificationLevel, 4 );

          end;
    //      SinkChangedData( I );

        end;
      end;

  finally
    ASinksList.Free();

    ALock := WriteLock();
    if( not FInDisconnect ) then
      ReorderChangedData();

    Dec( FInSending );
    ALock := NIL;
//    AUnlock := NIL;
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
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock(); 
  Result := FSinkPins.Count;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetSink( Index : Integer ) : TOWBasicPin;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := FSinkPins.Items[ Index ].RealPin;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetConverterCount() : Integer;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := FFormatConverters.Count;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetConverter( Index : Integer ) : TOWFormatConverter;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := FFormatConverters.Items[ Index ];
end;
//---------------------------------------------------------------------------
function PinSortMethod(Item1, Item2: Pointer): Integer;
begin
{
  if( POWPinEntry( Item1 ).NotifyAfterPin = POWPinEntry( Item2 ).SinkPin ) then
    Result := -1

  else if( POWPinEntry( Item2 ).NotifyAfterPin = POWPinEntry( Item1 ).SinkPin ) then
    Result := 1

  else
}
    Result := POWPinEntry( Item1 ).ModificationLevel - POWPinEntry( Item2 ).ModificationLevel;
    
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.ReorderChangedData();
var
  PEntry1    : POWPinEntry;
  PEntry2    : POWPinEntry;
  I, J       : Integer;
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();

  for I:= 0 to FSinkPins.Count - 1 do
    begin
    PEntry1 := FSinkPins.Items[ I ];
    if( PEntry1.ModificationLevel > 0 ) then
      Dec( PEntry1.ModificationLevel );

    end;

  FSinkPins.Sort( PinSortMethod );

  for I := 0 to FSinkPins.Count - 1 do
    begin
    PEntry1 := FSinkPins.Items[ I ];
    if( PEntry1.NotifyAfterPin <> NIL ) then
      begin
      for J := 0 to FSinkPins.Count - 1 do
        begin
        PEntry2 := FSinkPins.Items[ J ];
        if( PEntry1.NotifyAfterPin = PEntry2.RealPin ) then
          begin
          if( I < J ) then
            FSinkPins.Move( I, J );
            
          end;
        end;
      end;
       
    end;
    
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.DownStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  I             : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();

  if( ForPin = Self ) then
    begin
    for I := 0 to SinkCount - 1 do
      if( FSinkPins.Items[ I ].ConnectionPin is TOWBasicSinkPin ) then
        TOWBasicSinkPin( FSinkPins.Items[ I ].ConnectionPin ).DownStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

    Exit;
    end;

  if( FDataTypeSources.Count > 0 ) then
    begin
    for I := 0 to FDataTypeSources.Count - 1 do
      TOWBasicSinkPin( FDataTypeSources.Items[ I ] ).DownStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

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
  I : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  
  if( ForPin = Self ) then
    begin
    for I := 0 to SinkCount - 1 do
      if( FSinkPins.Items[ I ].ConnectionPin is TOWBasicSinkPin ) then
        TOWBasicSinkPin( FSinkPins.Items[ I ].ConnectionPin ).UpStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

    Exit;
    end;

  if( FDataTypeSources.Count > 0 ) then
    begin
    for I := 0 to FDataTypeSources.Count - 1 do
      TOWBasicSinkPin( FDataTypeSources.Items[ I ] ).UpStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

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
  I, J          : Integer;
  EntryFound    : Boolean;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();

  if( ForPin = Self ) then
    Exit;

  I := 0;
  while( I < PossibleStreamTypes.Count ) do
    begin
    EntryFound := False;
    for J := 0 to StreamType.Count - 1 do
      begin
      if( IsEqualGUID( StreamType.ID[ J ], PossibleStreamTypes.ID[ I ] )) then
        begin
        EntryFound := True;
        Break;
        end;

      end;

    if( EntryFound ) then
      Inc( I )

    else
      PossibleStreamTypes.RemoveType( PossibleStreamTypes.ID[ I ] );

    end;
{
  I := 0;
  while( I < PossibleStreamTypes.Count ) do
    begin
    if( RequestInterface( PossibleStreamTypes.ID[ I ], Unknown ) = S_OK ) then
      Inc( I )

    else
      PossibleStreamTypes.RemoveType( PossibleStreamTypes.ID[ I ] );

    end;
}

  for I := 0 to SinkCount - 1 do
    if( FSinkPins.Items[ I ].ConnectionPin is TOWBasicSinkPin ) then
      TOWBasicSinkPin( FSinkPins.Items[ I ].ConnectionPin ).DownStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

{
  for I := 0 to FDataTypeSources.Count - 1 do
    TOWBasicSinkPin( FDataTypeSources.Items[ I ] ).ForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );
}
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.UpStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  I         : Integer;
  Unknown   : IUnknown;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();

  if( ForPin = Self ) then
    Exit;

  I := 0;
  
  while( I < PossibleStreamTypes.Count ) do
    begin
    if( RequestInterface( PossibleStreamTypes.ID[ I ], Unknown ) = S_OK ) then
      Inc( I )

    else
      PossibleStreamTypes.RemoveType( PossibleStreamTypes.ID[ I ] );

    end;

  for I := 0 to SinkCount - 1 do
    if( FSinkPins.Items[ I ].ConnectionPin is TOWBasicSinkPin ) then
      TOWBasicSinkPin( FSinkPins.Items[ I ].ConnectionPin ).UpStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );
    
end;
//---------------------------------------------------------------------------
function TOWSourcePin.DownStreamQueryPossybleInterface( const IID: TGUID ) : HResult;
var
  I         : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();

  Result := inherited DownStreamQueryPossybleInterface( IID );

  if( Result = S_OK ) then
    begin
    for I := 0 to FDataTypeSources.Count - 1 do
      begin
      Result := TOWBasicSinkPin( FDataTypeSources.Items[ I ] ).DownStreamForthQueryPossybleInterface( IID, Self );
      if( Result <> S_OK ) then
        Exit;

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.UpStreamQueryPossybleInterface( const IID: TGUID ) : HResult;
var
  I : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  
  Result := inherited UpStreamQueryPossybleInterface( IID );

  for I := 0 to FDataTypeSources.Count - 1 do
    begin
    Result := TOWBasicSinkPin( FDataTypeSources.Items[ I ] ).UpStreamForthQueryPossybleInterface( IID, Self );
    if( Result <> S_OK ) then
      Exit;

    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.UpStreamBackQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult;
var
  I         : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();

  Result := S_OK;

  if( ForPin = Self ) then
    begin
    for I := 0 to SinkCount - 1 do
      begin
      if( FSinkPins.Items[ I ].ConnectionPin is TOWBasicSinkPin ) then
        Result := TOWBasicSinkPin( FSinkPins.Items[ I ].ConnectionPin ).UpStreamForthQueryPossybleInterface( IID, ForPin );
        
      if( Result <> S_OK ) then
        Break;

      end;

    Exit;
    end;

  if( FDataTypeSources.Count > 0 ) then
    begin
    for I := 0 to FDataTypeSources.Count - 1 do
      begin
      Result := TOWBasicSinkPin( FDataTypeSources.Items[ I ] ).UpStreamBackQueryPossybleInterface( IID, ForPin );
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
  I             : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();

  Result := S_OK;
  if( ForPin = Self ) then
    begin
    for I := 0 to SinkCount - 1 do
      begin
      if( FSinkPins.Items[ I ].ConnectionPin is TOWBasicSinkPin ) then
        Result := TOWBasicSinkPin( FSinkPins.Items[ I ].ConnectionPin ).DownStreamForthQueryPossybleInterface( IID, ForPin );
        
      if( Result <> S_OK ) then
        Break;

      end;

    Exit;
    end;

  if( FDataTypeSources.Count > 0 ) then
    begin
    for I := 0 to FDataTypeSources.Count - 1 do
      begin
      Result := TOWBasicSinkPin( FDataTypeSources.Items[ I ] ).DownStreamBackQueryPossybleInterface( IID, ForPin );
      if( Result <> S_OK ) then
        Break;

      end;

    end

  else
    Result := DownStreamForthQueryPossybleInterface( IID, ForPin );

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.ChangeConnectionType( PinIndex : Integer; const IID : TGUID );
var
  PinEntry : POWPinEntry;
  AWriteLock : IOWLockSection;
  AConverterClass : TOWFormatConverterClass;
  AConverter : TOWFormatConverter;

begin
  AWriteLock := WriteLock();
  
  PinEntry := FSinkPins.Items[ PinIndex ];
  if( not IsEqualGUID( PinEntry.ConnectedID, IID )) then
    begin
    PinEntry.ConnectedID := DownStreamFindConnectionID( PinEntry.RealPin, True, False, AConverter, AConverterClass );
    PinEntry.SubmitFunction := GetSubmitFunctionID( PinEntry.ConnectedID );
    NewConnection( PinEntry.RealPin, TOWSubmitLink( PinEntry.SubmitFunction ));
    end;

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.BackChainReconnect( const DownIID: TGUID; const UpIID: TGUID );
var
  I : Integer;
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();

  if( FDataTypeSources.Count > 0 ) then
    begin
    for I := 0 to FDataTypeSources.Count - 1 do
      TOWBasicSinkPin( FDataTypeSources.Items[ I ] ).BackChainReconnect( DownIID, UpIID );

    end

  else
    ForthChainReconnect( DownIID, UpIID );

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.ForthChainReconnect( const DownIID: TGUID; const UpIID: TGUID );
var
  I : Integer;
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();

  for I := 0 to SinkCount - 1 do
    begin
    ChangeConnectionType( I, DownIID );
    if( FSinkPins.Items[ I ].ConnectionPin is TOWBasicSinkPin ) then
      TOWBasicSinkPin( FSinkPins.Items[ I ].ConnectionPin ).ForthChainReconnect( DownIID, UpIID );
      
    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.DownStreamFindConnectionID( const OtherPin : TOWBasicPin; UseConverters : Boolean; RequestConverters : Boolean; var AConverter : TOWFormatConverter; var AConverterClass : TOWFormatConverterClass ) : TGUID;
var
  PossibleStreamTypes   : TOWPinTypeRestricted;
  I                     : Integer;
  J                     : Integer;
  Unknown               : IUnknown;
  AId                   : TGUID;
  AReadLock             : IOWLockSection;

begin
  AReadLock := ReadLock();

  Result := OWNULLID;
  AConverterClass := NIL;
  AConverter := NIL;
  if( OtherPin <> NIL ) then
    begin
    PossibleStreamTypes := TOWPinTypeRestricted.Create();

    DownStreamFillPossibleStreamTypes( PossibleStreamTypes, Self );

    for I := PossibleStreamTypes.Count - 1 downto 0 do
      begin
      if( OtherPin.RequestInterface( PossibleStreamTypes.ID[ I ], Unknown ) = S_OK ) then
        begin
        Result := PossibleStreamTypes.ID[ I ];
        PossibleStreamTypes.Free();
        Exit;
        end;
      end;

    if( UseConverters ) then
      begin
      for I := FFormatConverters.Count - 1 downto 0 do
        begin
//        AId := DownStreamFindConnectionID( FFormatConverters[ I ].FInputPin, False, False, AConverter, AConverterClass );
        AId := FFormatConverters[ I ].FOutputPin.DownStreamFindConnectionID( OtherPin, False, False, AConverter, AConverterClass );
  //      Result := FFormatConverters[ I ].FInputPin.DownStreamFindConnectionID( OtherPin, False, AConverter, AConverterClass ); //  FOutputPin.DownStreamFindConnectionID( OtherPin, False, AConverter, AConverterClass );
        if( not IsEqualGUID( AId, OWNULLID )) then
          begin
          if( OtherPin.RequestInterface( AId, Unknown ) = S_OK ) then
            begin
            Result := DownStreamFindConnectionID( FFormatConverters[ I ].FInputPin, False, False, AConverter, AConverterClass );
            AConverter := FFormatConverters[ I ];
            PossibleStreamTypes.Free();
            Exit;
            end;
          end;

        end;

      if( RequestConverters ) then
        for I := Length( ConverterTypes ) - 1 downto 0 do
          begin
          for J := PossibleStreamTypes.Count - 1 downto 0 do
          if( IsEqualGUID( PossibleStreamTypes.ID[ J ], ConverterTypes[ I ].InputID )) then
            begin
            if( OtherPin.RequestInterface( ConverterTypes[ I ].OutputID, Unknown ) = S_OK ) then
              begin
              Result := ConverterTypes[ I ].InputID;
              AConverterClass := ConverterTypes[ I ].ConverterClass;
              PossibleStreamTypes.Free();
              Exit;
              end;
            end;
          end;

      end;
      
    PossibleStreamTypes.Free();
    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.UpStreamForthQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult;
var
  I       : Integer;
  Unknown : IUnknown;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := S_OK;
  if( ForPin = Self ) then
    Exit;

  Result := inherited RequestInterface( IID, Unknown );
  if( Result <> S_OK ) then
    Exit;

  for I := 0 to SinkCount - 1 do
    begin
    if( FSinkPins.Items[ I ].ConnectionPin is TOWBasicSinkPin ) then
      Result := TOWBasicSinkPin( FSinkPins.Items[ I ].ConnectionPin ).UpStreamForthQueryPossybleInterface( IID, ForPin );

    if( Result <> S_OK ) then
      Exit;

    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.DownStreamForthQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult;
var
  I          : Integer;
  EntryFound : Boolean;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  
  Result := S_OK;
  if( ForPin = Self ) then
    Exit;

  EntryFound := False;
  
  for I := 0 to StreamType.Count - 1 do
    begin
    if( IsEqualGUID( IID, StreamType.ID[ I ] )) then
      begin
      EntryFound := True;
      Break;
      end;
    end;

  if( not EntryFound ) then
    begin
    Result := E_NOINTERFACE;
    Exit;
    end;

  for I := 0 to SinkCount - 1 do
    begin
    if( FSinkPins.Items[ I ].ConnectionPin is TOWBasicSinkPin ) then
      Result := TOWBasicSinkPin( FSinkPins.Items[ I ].ConnectionPin ).DownStreamForthQueryPossybleInterface( IID, ForPin );
      
    if( Result <> S_OK ) then
      Exit;

    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.RequestInterface(const IID: TGUID; out Obj): HResult;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();

  Result := inherited RequestInterface( IID, Obj );
  if( Result = S_OK ) then
    Result := UpStreamQueryPossybleInterface( IID );

end;

//---------------------------------------------------------------------------
procedure TOWSourcePin.DownStreamFillPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  I : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();

  inherited DownStreamFillPossibleStreamTypes( PossibleStreamTypes, ForPin );
  for I := 0 to FDataTypeSources.Count - 1 do
    TOWBasicSinkPin( FDataTypeSources.Items[ I ] ).DownStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.UpStreamFillPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  I : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  inherited UpStreamFillPossibleStreamTypes( PossibleStreamTypes, ForPin );
  for I := 0 to FDataTypeSources.Count - 1 do
    TOWBasicSinkPin( FDataTypeSources.Items[ I ] ).UpStreamBackRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.PinDeletedNotify( ADeletedPin : TOWBasicPin );
var
  I : Integer;
  AWriteLock : IOWLockSection;

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
    
  for I := 0 to FSinkPins.Count - 1 do
    if( FSinkPins[ I ].NotifyAfterPin = ADeletedPin ) then
      FSinkPins[ I ].NotifyAfterPin := NIL; 
  
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.PinReplacedNotify( AOldPin : TOWBasicPin; ANewPin : TOWBasicPin );
var
  I : Integer;
  AWriteLock : IOWLockSection;
  
begin
  AWriteLock := WriteLock();
  for I := 0 to FSinkPins.Count - 1 do
    if( FSinkPins[ I ].NotifyAfterPin = AOldPin ) then
      FSinkPins[ I ].NotifyAfterPin := ANewPin;
       
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
function TOWSourcePin.SetEditorString( ARoot : TComponent; const AValue: string ) : Boolean;
begin
  Result := TryLinkTo( ARoot, AValue, AValue, '', False );
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.SetInEditor( AValue : Boolean );
begin
  FInEditor := AValue;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetConnectedAfterForPin( OtherPin : TOWBasicPin ) : TOWBasicPin;
var
  PEntry : POWPinEntry;

begin
  PEntry := FSinkPins.GetItemByPin( OtherPin );
  if( PEntry <> NIL ) then
    Result := PEntry.NotifyAfterPin

  else
    Result := NIL;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.Connect( OtherPin : TOWBasicPin ) : Boolean;
begin
  Result := ConnectAfter( OtherPin, NIL ); 
end;
//---------------------------------------------------------------------------
function TOWSourcePin.ConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ) : Boolean;
begin
  if( OtherPin = Self ) then
    begin
    Result := False;
    Exit;
    end;

  if( OtherPin <> NIL ) then
    begin
    Result := CanConnectAfter( OtherPin, NotifyAfterPin );
    if( not Result ) then
      Exit;

    end;

  Result := IntConnectAfter( OtherPin, NotifyAfterPin );
end;
//---------------------------------------------------------------------------
function TOWSourcePin.IntConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ) : Boolean;
var
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();
  Result := False;

  if( OtherPin <> NIL ) then
    if( ( OtherPin is TOWBasicSinkPin ) or ( OtherPin is TOWStatePin ) or ( OtherPin is TOWUnloadedPin )) then
      Result := OtherPin.ConnectAfter( Self, NotifyAfterPin );

end;
//---------------------------------------------------------------------------
function TOWSourcePin.CanConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin; UseConverters : Boolean ) : Boolean;
var
  I : Integer;

begin
  Result := inherited CanConnectAfter( OtherPin, NotifyAfterPin, UseConverters );
  if( Result ) then
    Exit;
    
  if( OtherPin = NotifyAfterPin ) then
    Exit;

  if( ( not Result ) and ( OwnerInLoading() or FInEditor ) ) then
    Result := True

  else
    begin
    for I := 0 to FSinkPins.Count - 1 do
      begin
      if( FSinkPins[ I ].RealPin = NotifyAfterPin ) then
        begin
        if( FSinkPins[ I ].NotifyAfterPin <> NIL ) then
          Result := CanConnectAfter( OtherPin, FSinkPins[ I ].NotifyAfterPin, UseConverters )

        else
          Result := True;

        Break;
        end;

      end;
    end;

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.NewConnection( ASinkPin : TOWBasicPin );
var
  PEntry : POWPinEntry;
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();

  PEntry := FSinkPins.GetItemByPin( ASinkPin );
  NewConnection( PEntry.RealPin, TOWSubmitLink( PEntry.SubmitFunction ));
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.BackPopulateStreamChains( AChain : TOWObjectListList; AList : TOWObjectList );
var
  I : Integer;
  ASubList : TOWObjectList;

begin
  AList.Add( Self );
  for I := 0 to FFunctionSources.Count - 1 do
    begin
    if( I = 0 ) then
      ASubList := AList
       
    else
      begin
      ASubList := TOWObjectList.Create();
      AChain.Add( ASubList );
      end;

    FFunctionSources[ I ].BackPopulateStreamChains( AChain, ASubList );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.NewConnection( ASinkPin : TOWBasicPin; ASubmitFunctionIn : TOWSubmitLink );
//var SinkRoot : TComponent;
var
  DataTypeID : TGUID;
  AWriteLock : IOWLockSection;
  ASelfUnlockLock : IOWLockSection;
  ASubmitFunction : TOWSubmit;
  AConverterClass : TOWFormatConverterClass;
  AConverter : TOWFormatConverter;
  AUnlock : IOWLockSection;
  ADestroyLock : IOWDestroyLockSection;

begin
  if( not Assigned( ASubmitFunctionIn )) then
    Exit;

  ASubmitFunction := TOWSubmit( ASubmitFunctionIn );
  AWriteLock := WriteLock();
  if( FInSending > 10 ) then
    begin
    raise EOWException.Create( 'The pin depends on itself. Please protect with functional dependency.' );
    Exit;
    end;

  Inc( FInSending );
  DataTypeID := DownStreamFindConnectionID( ASinkPin, True, False, AConverter, AConverterClass );
  AWriteLock := NIL;
  ASelfUnlockLock := UnlockAll();

  ADestroyLock := FDestroyLock.Lock();
  if( ADestroyLock <> NIL ) then
    if( Assigned( ASubmitFunction ) ) then
      begin
      if( FOwnerLock <> NIL ) then
        AUnlock := FOwnerLock.UnlockAll();

      ASubmitFunction( ASinkPin, @DataTypeID, TOWNotifyOperation.Create(), [ nsNewLink, nsLastIteration ] );
      AUnlock := NIL;
      end;

  ASelfUnlockLock := NIL;
  
  AWriteLock := NIL;
//  AUnlock := NIL;

//  if( FOwnerLock <> NIL ) then
//    AUnlock := FOwnerLock.UnlockAll();
    
  AWriteLock := WriteLock();
  OWNotifyChangePin( Self );
  Dec( FInSending );
end;
//---------------------------------------------------------------------------
function TOWSourcePin.IsCompatible( const OtherPin : TOWBasicPin; UseConverters : Boolean ) : Boolean;
var
  SinkPin : TOWBasicSinkPin;
  StatePin : TOWStatePin;
  AConverter : TOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  AReadLock : IOWLockSection;

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

    Result := not IsEqualGUID( FindConnectionID( StatePin, AConverter, AConverterClass , UseConverters ), OWNULLID );
//    if( Result ) then
//      Result := not IsEqualGUID( StatePin.FindConnectionID( Self ), OWNULLID );;

    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : TOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean ) : Boolean;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := False;
  if( not( FOwner is TOWFormatConverter )) then
    begin 
    if( ( OtherPin.OwnerInDesigning() ) and ( not OwnerInDesigning() )) then
      Exit;

    if( ( not ( OtherPin.OwnerInDesigning() )) and OwnerInDesigning() ) then
      Exit;

    end;

  Result := inherited CanConnectToInt( OtherPin, AConverter, AConverterClass, UseConverters );
  if( Result = True ) then
    Exit;
    
  if( OtherPin <> NIL ) then
    begin
    if( OtherPin <> Self ) then
      begin
      if( OtherPin is TOWBasicSinkPin ) then
        Result := OtherPin.CanConnectTo( Self, UseConverters );

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.IsConnected() : Boolean;
begin
  Result := ( FSinkPins.Count > 0 ) or inherited IsConnected();
end;
//---------------------------------------------------------------------------
function TOWSourcePin.DirectDependsOn( const OtherPin : TOWBasicPin ) : Boolean;
var
  I : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := False;
  
  if( FInDependOn ) then
    Exit;

  FInDependOn := True;
  if( OtherPin <> NIL ) then
    begin
    for I := 0 to FFunctionSources.Count - 1 do
      if( FFunctionSources[ I ] = OtherPin ) then
        begin
        Result := True;
        FInDependOn := False;
        Exit;
        end;

    end;

  Result := False;
  FInDependOn := False;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.DependsOn( const OtherPin : TOWBasicPin ) : Boolean;
var
  I : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := False;
  
  if( FInDependOn ) then
    Exit;

  FInDependOn := True;
  if( OtherPin <> NIL ) then
    begin
    Result := True;
    for I := 0 to FFunctionSources.Count - 1 do
      if( FFunctionSources[ I ] = OtherPin ) then
        begin
        Result := True;
        FInDependOn := False;
        Exit;
        end;

    for I := 0 to FFunctionSources.Count - 1 do
      if( FFunctionSources[ I ].DependsOn( OtherPin ) ) then
        begin
        FInDependOn := False;
        Exit;
        end;

    end;

  Result := False;
  FInDependOn := False;
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.UpdateStateValue();
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  if( FDispatcher <> NIL ) then
    NotifyDispatcher( TOWNotifyOperation.Create(), [nsNewLink], NIL );
    
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetAfterPinDisplayName( APin : TOWPin ) : String;
var
  I : Integer;
  
begin
  Result := '';
  for I := 0 to FSinkPins.Count - 1 do
    begin
    if( FSinkPins[ I ].RealPin = APin ) then
      begin
      if( FSinkPins[ I ].NotifyAfterPin <> NIL ) then
        Result := FSinkPins[ I ].NotifyAfterPin.GetFullName( GetRoot() <> APin.GetRoot() );
        
      Exit;
      end;

    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetConnectionID( const OtherPin : TOWBasicPin ) : TGUID;
var
//  I     : Integer;
  PEntry : POWPinEntry;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();

  PEntry := FSinkPins.GetItemByPin( OtherPin );
  if( PEntry <> NIL ) then
    Result := PEntry.ConnectedID

  else
    Result := inherited GetConnectionID( OtherPin );
    
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetPrimaryConnectionID() : TGUID;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  if( GetSinkCount() > 0 ) then
    Result := FSinkPins[ 0 ].ConnectedID

  else
    Result := inherited GetPrimaryConnectionID();
   
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.DisconnectFromPinName( OtherPinName : String );
var
  I : Integer;
  AWriteLock : IOWLockSection;
  
begin
  AWriteLock := WriteLock();
  
  for I := 0 to GetSinkCount() - 1 do
    begin
    if( OtherPinName = OWValueToString( GetSink( I ), '.', True, True ) ) then
      begin
      GetSink( I ).Disconnect();
      Exit;
      end;

    if( OtherPinName = OWValueToString( GetSink( I ), '.', False, True ) ) then
      begin
      GetSink( I ).Disconnect();
      Exit;
      end;
      
    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.IsConnectedToPinName( OtherPinName : String ) : Boolean;
var
  I     : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
//  OWLinkAwaitsLinking( Owner );
  Result := True;
  
  for I := 0 to GetSinkCount() - 1 do
    if( OtherPinName = OWValueToString( GetSink( I ), '.', True, True ) ) then
      Exit;

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.IsConnectedTo( OtherPin : TOWBasicPin ) : Boolean; //const;
var
  I     : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  
  Result := True;
  for I := 0 to GetSinkCount() - 1 do
    if( OtherPin = GetSink( I ) ) then
      Exit;

  Result := inherited IsConnectedTo( OtherPin );
end;
//---------------------------------------------------------------------------
function TOWSourcePin.IsConnectedToAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ) : Boolean;
var
  I     : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  
  Result := True;
  for I := 0 to GetSinkCount() - 1 do
    if( ( OtherPin = GetSink( I ) ) and ( FSinkPins.Items[ I ].NotifyAfterPin = NotifyAfterPin ) ) then
      Exit;

  Result := inherited IsConnectedToAfter( OtherPin, NotifyAfterPin );
end;
//---------------------------------------------------------------------------
function TOWSourcePin.IsConnectedByConverterTo( OtherPin : TOWBasicPin ) : Boolean;
var
  I     : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  
  Result := inherited IsConnectedByConverterTo( OtherPin );
  if( Result ) then
    Exit;
    
  if( IsConnectedTo( OtherPin )) then
    begin
    for I := FFormatConverters.Count - 1 downto 0 do
      begin
      if( FFormatConverters[ I ].OutputPin.IsConnectedTo( OtherPin )) then
        begin
        Result := True;
        Exit;
        end;
      end;
    end;
    
end;
//---------------------------------------------------------------------------
function TOWSourcePin.CheckDownStreamInterfaces( const OtherPin : TOWBasicPin; UseConverters : Boolean ) : Boolean;
var
  AConverterClass : TOWFormatConverterClass;
  AConverter : TOWFormatConverter;
  
begin
  Result := not IsEqualGUID( DownStreamFindConnectionID( OtherPin, UseConverters, True, AConverter, AConverterClass ), OWNULLID );
end;
//---------------------------------------------------------------------------
function TOWSourcePin.IsLinkedTo( PinName : String ) : Boolean;
var
  I     : Integer; 
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := True;
  
  for I := 0 to GetSinkCount() - 1 do
    begin
    if( PinName = Sinks[ I ].GetFullName( True )) then // GetLinkStr( I, False )) then
      Exit;

    if( Sinks[ I ].GetRootName() = GetRootName() ) then
      if( PinName = Sinks[ I ].GetFullName( False )) then
        Exit;

    end;

  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.Disconnect();
var
  ADestroyLock : IOWDestroyLockSection;
  AWriteLock  : IOWLockSection;

  I         : Integer;

begin
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();

  inherited Disconnect();
  for I := GetSinkCount() - 1 downto 0 do
    IntDisconnectFrom( GetSink( I ) );

  FSinkPins.Clear();
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.IntDisconnectFrom( OtherPin : TOWBasicPin );
var
  DesignFormClosing : Boolean;
  OldInDisconnect : Boolean;
  
begin
  DesignFormClosing := False;
  if( OwnerInDesigning() ) then
    if( RootInDestroying() ) then
      DesignFormClosing := True;

  OWNotifyDisconnected( Self, OtherPin );
  OldInDisconnect := FInDisconnect;
  FInDisconnect := True;
  IntDisconnect( OtherPin, DesignFormClosing );
  FInDisconnect := OldInDisconnect;
  OtherPin.IntDisconnect( Self, DesignFormClosing );
  OtherPin.CheckRemove();
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.DisconnectFrom( OtherPin : TOWBasicPin );
var
  ADestroyLock : IOWDestroyLockSection;
  AWriteLock  : IOWLockSection;

begin
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
constructor TOWBasicSinkPin.Create(AOwner: TComponent);
begin
  inherited;
  IntCreate();
end;
//---------------------------------------------------------------------------
constructor TOWBasicSinkPin.CreateLock(AOwner: TComponent; AOwnerLock : IOWLock);
begin
  inherited;
  IntCreate();
end;
//---------------------------------------------------------------------------
destructor TOWBasicSinkPin.Destroy();
begin
  FFunctionDependants.Free();
  FDataTypeDependants.Free();
  inherited;
end;
//---------------------------------------------------------------------------
procedure TOWBasicSinkPin.IntCreate();
begin
  FFunctionDependants := TObjectList.Create( False );
  FDataTypeDependants := TObjectList.Create( False );
end;
//---------------------------------------------------------------------------
function TOWBasicSinkPin.IsCompatible( const OtherPin : TOWBasicPin; UseConverters : Boolean ) : Boolean;
var
  SourcePin       : TOWSourcePin;
  StatePin        : TOWStatePin;
  AConverter      : TOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  AReadLock       : IOWLockSection;

begin
  if( OtherPin = NIL ) then
    begin
    Result := True;
    Exit
    end;

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
    Result := not IsEqualGUID( StatePin.FindConnectionID( Self, AConverter, AConverterClass, UseConverters ), OWNULLID );
    end;

end;
//---------------------------------------------------------------------------
function  TOWBasicSinkPin.HasToIgnoreUpstream() : Boolean;
var
  AReadLock : IOWLockSection;
  
begin
  AReadLock := ReadLock();
  Result := FIgnoreUpstream;
  if( not Result ) then
    Result := ( StreamType.Count = 0 );

end;
//---------------------------------------------------------------------------
procedure TOWBasicSinkPin.DownStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  I       : Integer;
  Unknown : IUnknown;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  if( ForPin = Self ) then
    Exit;

  I := 0;
  while( I < PossibleStreamTypes.Count ) do
    begin
    if( RequestInterface( PossibleStreamTypes.ID[ I ], Unknown ) = S_OK ) then
      Inc( I )

    else
      PossibleStreamTypes.RemoveType( PossibleStreamTypes.ID[ I ] );

    end;

  for I := 0 to FDataTypeDependants.Count - 1 do
    TOWSourcePin( FDataTypeDependants.Items[ I ] ).DownStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

end;
//---------------------------------------------------------------------------
procedure TOWBasicSinkPin.UpStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  I, J          : Integer;
  EntryFound    : Boolean;
  AReadLock : IOWLockSection;

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
    for J := 0 to StreamType.Count - 1 do
      begin
      if( IsEqualGUID( StreamType.ID[ J ], PossibleStreamTypes.ID[ I ] )) then
        begin
        EntryFound := True;
        Break;
        end;

      end;

    if( EntryFound ) then
      Inc( I )

    else
      PossibleStreamTypes.RemoveType( PossibleStreamTypes.ID[ I ] );

    end;

  for I := 0 to FDataTypeDependants.Count - 1 do
    TOWSourcePin( FDataTypeDependants.Items[ I ] ).UpStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

end;
//---------------------------------------------------------------------------
function  TOWBasicSinkPin.UpStreamForthQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult;
var
  I          : Integer;
  EntryFound : Boolean;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := S_OK;
  if( ForPin = Self ) then
    Exit;

  EntryFound := False;
  for I := 0 to StreamType.Count - 1 do
    begin
    if( IsEqualGUID( IID, StreamType.ID[ I ] )) then
      begin
      EntryFound := True;
      Break;
      end;
    end;

  if( not EntryFound ) then
    begin
    Result := E_NOINTERFACE;
    Exit;
    end;

  for I := 0 to FDataTypeDependants.Count - 1 do
    begin
    Result := TOWSourcePin( FDataTypeDependants.Items[ I ] ).UpStreamForthQueryPossybleInterface( IID, ForPin );
    if( Result <> S_OK ) then
      Exit;

    end;

end;
//---------------------------------------------------------------------------
function  TOWBasicSinkPin.DownStreamForthQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult;
var
  I : Integer;
  Unknown : IUnknown;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := S_OK;
  if( ForPin = Self ) then
    Exit;

  Result := inherited RequestInterface( IID, Unknown );
  if( Result <> S_OK ) then
    Exit;

  for I := 0 to FDataTypeDependants.Count - 1 do
    begin
    Result := TOWSourcePin( FDataTypeDependants.Items[ I ] ).DownStreamForthQueryPossybleInterface( IID, ForPin );
    if( Result <> S_OK ) then
      Exit;

    end;

end;
//---------------------------------------------------------------------------
procedure TOWBasicSinkPin.IntAddFunctionDependance( FunctionDependancePin : TOWSourcePin );
var
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();
  FFunctionDependants.Add( FunctionDependancePin );
end;
//---------------------------------------------------------------------------
procedure TOWBasicSinkPin.IntRemoveFunctionDependance( FunctionDependancePin : TOWSourcePin );
var
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();
  FFunctionDependants.Remove( FunctionDependancePin );
end;
//---------------------------------------------------------------------------
procedure TOWBasicSinkPin.IntAddDataTypeDependance( DataTypeDependancePin : TOWSourcePin );
var
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();
  FDataTypeDependants.Add( DataTypeDependancePin );
end;
//---------------------------------------------------------------------------
procedure TOWBasicSinkPin.IntRemoveDataTypeDependance( DataTypeDependancePin : TOWSourcePin );
var
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();
  FDataTypeDependants.Remove( DataTypeDependancePin );
end;
//---------------------------------------------------------------------------
function  TOWBasicSinkPin.UpStreamFindConnectionID( const OtherPin : TOWSourcePin; PreferedID : TGUID ) : TGUID;
var
  PossibleStreamTypes   : TOWPinTypeRestricted;
  I                     : Integer;
  Unknown               : IUnknown;

var
  AReadLock : IOWLockSection;
  
begin
  AReadLock := ReadLock();
  Result := OWNULLID;
  if( OtherPin <> NIL ) then
    begin
    PossibleStreamTypes := TOWPinTypeRestricted.Create();

////    UpStreamFillPossibleStreamTypes( PossibleStreamTypes, OtherPin );
    OtherPin.UpStreamFillPossibleStreamTypes( PossibleStreamTypes, Self );

//    ReportTypes( PossibleStreamTypes );

    for I := PossibleStreamTypes.Count - 1 downto 0 do
      begin
      if( OtherPin.RequestInterface( PossibleStreamTypes.ID[ I ], Unknown ) = S_OK ) then
//      if( RequestInterface( PossibleStreamTypes.ID[ I ], Unknown ) = S_OK ) then
        begin
        if( IsEqualGUID( PossibleStreamTypes.ID[ I ], PreferedID )) then
          begin
          Result := PossibleStreamTypes.ID[ I ];
          PossibleStreamTypes.Free();
          Exit;
          end;

        if( IsEqualGUID( Result, OWNULLID )) then
          Result := PossibleStreamTypes.ID[ I ];

        end;
      end;

    PossibleStreamTypes.Free();
    end;

end;
//---------------------------------------------------------------------------
procedure TOWBasicSinkPin.ChainReconnect( const DownIID: TGUID; const UpIID: TGUID );
begin
  BackChainReconnect( DownIID, UpIID );
end;
//---------------------------------------------------------------------------
function TOWBasicSinkPin.CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : TOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean ) : Boolean;
var
  AReadLock : IOWLockSection;

begin
  Result := False;
  if( not( FOwner is TOWFormatConverter ) and not( OtherPin.Owner is TOWFormatConverter )) then
    begin
    if( ( OtherPin.OwnerInDesigning() ) and ( not OwnerInDesigning() )) then
      Exit;

    if( ( not ( OtherPin.OwnerInDesigning() ) and OwnerInDesigning())) then
      Exit;

    end;

  AReadLock := ReadLock();
  Result := inherited CanConnectToInt( OtherPin, AConverter, AConverterClass, UseConverters );
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
  AReadLock : IOWLockSection;
  AConverterClass : TOWFormatConverterClass;
  AConverter : TOWFormatConverter;
  
begin
  AReadLock := ReadLock();
  if( HasToIgnoreUpstream() ) then
    Result := True

  else
    Result := not IsEqualGUID( UpStreamFindConnectionID( OtherPin, OtherPin.DownStreamFindConnectionID( Self, UseConverters, False, AConverter, AConverterClass ) ), OWNULLID );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWEventSinkPin.Create(AOwner: TComponent);
begin
  inherited;
//  FInDependOn := False;
  FSourcePins  := TOWPinEntryList.Create();
  FFormatConverters := TOWFormatConverterList.Create();
end;
//---------------------------------------------------------------------------
constructor TOWEventSinkPin.CreateLock(AOwner: TComponent; AOwnerLock : IOWLock);
begin
  inherited;
//  FInDependOn := False;
  FSourcePins  := TOWPinEntryList.Create();
  FFormatConverters := TOWFormatConverterList.Create();
end;
//---------------------------------------------------------------------------
destructor TOWEventSinkPin.Destroy();
var
  ADestroyLock : IOWDestroyLockSection;
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();
  Disconnect();

  FFormatConverters.Free();
  FSourcePins.Free();

  ADestroyLock := NIL;
  AWriteLock := NIL;
  inherited;
end;
//---------------------------------------------------------------------------
function TOWEventSinkPin.GetSourceCount() : Integer; // const;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := FSourcePins.Count;
end;
//---------------------------------------------------------------------------
function TOWEventSinkPin.GetSource( Index : Integer ) : TOWBasicPin;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := FSourcePins.Items[ Index ].RealPin;
end;
//---------------------------------------------------------------------------
function TOWEventSinkPin.GetConverterCount() : Integer;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := FFormatConverters.Count;
end;
//---------------------------------------------------------------------------
function TOWEventSinkPin.GetConverter( Index : Integer ) : TOWFormatConverter;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := FFormatConverters.Items[ Index ];
end;
//---------------------------------------------------------------------------
function TOWEventSinkPin.GetPinType() : TOWPinType;
begin
  Result := ptEventSink;
end;
//---------------------------------------------------------------------------
function  TOWEventSinkPin.GetLinkStr( Item : Integer ) : String;
var
  AddRoot : Boolean;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();

  AddRoot := False;
  if( SourceCount > 0 ) then
    AddRoot := OWGetMainOwnerComponent( Sources[ Item ].Owner ) <> OWGetMainOwnerComponent( Owner );

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
function TOWEventSinkPin.TryLinkTo( Root : TComponent; SourceIdent : String; SourceName : String; ReadIdentAfter : String; SaveForm : Boolean ) : Boolean;
var
  Values          : TStringList;
  SourcePin       : TOWBasicPin;
  I               : Integer;
  RootName        : String;
  MyRoot          : TComponent;
  PinValueFilters : TOWPinValueFilters;

  AWriteLock      : IOWLockSection;

begin
  if( SaveForm ) then
    PinValueFilters := [ pvoFullList, pvoSaveValue ]

  else
    PinValueFilters := [ pvoFullList ];

  Result := True;
  if( SourceIdent = '' ) then
    begin
    if( not SaveForm ) then
      Disconnect();

//    CheckLinks();
    Exit;
    end;

  AWriteLock := WriteLock();

  Result := False;

  Values := TStringList.Create();
  try
    MyRoot := OWGetMainOwnerComponent( Owner );
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
function TOWEventSinkPin.GetEditorString() : String;
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
function TOWEventSinkPin.SetEditorString( ARoot : TComponent; const AValue: string ) : Boolean;
begin
  Result := TryLinkTo( ARoot, AValue, AValue, '', False );
end;
//---------------------------------------------------------------------------
function TOWEventSinkPin.IsLinkedTo( PinName : String ) : Boolean;
var
  I     : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := True;
  
  for I := 0 to GetSourceCount() - 1 do
    begin
    if( PinName = Sources[ I ].GetFullName( True )) then // GetLinkStr( I, False )) then
      Exit;

    if( Sources[ I ].GetRootName() = GetRootName() ) then
      if( PinName = Sources[ I ].GetFullName( False )) then
        Exit;

    end;

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWEventSinkPin.GetConnectedPinCount() : Integer;
begin
  Result := SourceCount;
end;
//---------------------------------------------------------------------------
function TOWEventSinkPin.GetConnectedPin( Index : Integer ) : TOWBasicPin;
begin
  Result := Sources[ Index ];
end;
//---------------------------------------------------------------------------
function TOWEventSinkPin.ConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ) : Boolean;
begin
  if( OtherPin = Self ) then
    begin
    Result := False;
    Exit;
    end;

  if( OtherPin <> NIL ) then
    begin
    Result := CanConnectAfter( OtherPin, NotifyAfterPin );
    if( not Result ) then
      Exit;

    end;

  Result := IntConnectAfter( OtherPin, NotifyAfterPin );
end;
//---------------------------------------------------------------------------
function TOWEventSinkPin.CanConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin; UseConverters : Boolean ) : Boolean;
begin
  if( OtherPin = NIL ) then
    Result := True

  else
    Result := OtherPin.CanConnectAfter( Self, NotifyAfterPin, UseConverters );

end;
//---------------------------------------------------------------------------
procedure TOWEventSinkPin.IntConnect( SourcePin : TOWBasicPin; NotifyAfterPin : TOWBasicPin );
var
  PEntry : POWPinEntry;
  AWriteLock : IOWLockSection;
  AConverterClass : TOWFormatConverterClass;
  AConverter : TOWFormatConverter;

begin
  AWriteLock := WriteLock();

  PEntry := FSourcePins.Add();
  PEntry.RealPin := SourcePin;
  PEntry.NotifyAfterPin := NIL; // Only SourcePins use NotifyAfterPin;
  PEntry.ConnectionPin := NIL;
  AConverter := NIL;
//  PEntry.ConnectedID := UpStreamFindConnectionID( TOWSourcePin( SourcePin ), TOWSourcePin( SourcePin ).GetConnectionID( Self ) ); //  UpStreamFindConnectionID( TOWSourcePin( SourcePin ), True, True, AConverter, AConverterClass );
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
function  TOWEventSinkPin.IntConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ) : Boolean;
var
  DataTypeID      : TGUID;
  AWriteLock      : IOWLockSection;
  ASourcePin      : TOWBasicPin;
  AConverterClass : TOWFormatConverterClass;
  AConverter      : TOWFormatConverter;
  ADownStreamID   : TGUID;
  ARealSourcePin  : TOWBasicPin;
  I               : Integer;
  PEntry          : POWPinEntry;

begin
  if( OtherPin = NIL ) then
    begin
    Result := False;
    Exit
    end;

  ARealSourcePin := NIL;
  AWriteLock := WriteLock();
  for I := 0 to FSourcePins.Count - 1 do
    begin
    if( OtherPin = FSourcePins[ I ].RealPin ) then
      begin
      ARealSourcePin := FSourcePins[ I ].RealPin;
      Break;
      end;

    if( OtherPin = FSourcePins[ I ].ConnectionPin ) then
      begin
      Result := True;
      Exit
      end;
    end;

  if( ARealSourcePin <> NIL ) then
    begin
    if( OtherPin.GetConnectedAfterForPin( Self ) = NotifyAfterPin ) then
      begin
      Result := True;
      Exit
      end;
    end;

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
      TOWSourcePin( OtherPin ).IntConnect( Self, NotifyAfterPin );
      AWriteLock := NIL;
      AWriteLock := WriteLock();
      PEntry.RealPin := OtherPin;
//      FRealSourcePin := TOWSourcePin( OtherPin );
//      FIntRealSourcePin := TOWSourcePin( OtherPin );

      Result := True;
      if( PEntry.RealPin is TOWSourcePin ) then
        begin
        DataTypeID := TOWSourcePin( PEntry.RealPin ).DownStreamFindConnectionID( Self, True, False, AConverter, AConverterClass );
        PEntry.ConnectedID := UpStreamFindConnectionID( TOWSourcePin( OtherPin ), DataTypeID );
        PEntry.SubmitFunction := GetSubmitFunctionID( PEntry.ConnectedID );
        ASourcePin := PEntry.RealPin;
        AWriteLock := NIL;
        AWriteLock := ASourcePin.WriteLock();
        TOWSourcePin( ASourcePin ).NewConnection( Self );

//      FSourcePin.NewConnection( Self, FSourcePin.GetSubmitFunctionID( DataTypeID ));
        ADownStreamID := TOWSourcePin( ASourcePin ).DownStreamFindConnectionID( Self, True, False, AConverter, AConverterClass ); 
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
procedure TOWEventSinkPin.Disconnect();
var
  ADestroyLock : IOWDestroyLockSection;
  AWriteLock  : IOWLockSection;

  I         : Integer;

begin
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();

  inherited Disconnect();
  for I := SourceCount - 1 downto 0 do
    DisconnectFrom( Sources[ I ] );

  FSourcePins.Clear();
end;
//---------------------------------------------------------------------------
procedure TOWEventSinkPin.IntDisconnectFrom( OtherPin : TOWBasicPin );
var
  DesignFormClosing : Boolean;
//  OldInDisconnect : Boolean;
  
begin
  DesignFormClosing := False;
  if( OwnerInDesigning() ) then
    if( RootInDestroying() ) then
      DesignFormClosing := True;

  OWNotifyDisconnected( Self, OtherPin );
//  OldInDisconnect := FInDisconnect;
//  FInDisconnect := True;
  IntDisconnect( OtherPin, DesignFormClosing );
//  FInDisconnect := OldInDisconnect;
  OtherPin.IntDisconnect( Self, DesignFormClosing );
  OtherPin.CheckRemove();
end;
//---------------------------------------------------------------------------
procedure TOWEventSinkPin.DisconnectFrom( OtherPin : TOWBasicPin );
var
  ADestroyLock : IOWDestroyLockSection;
  AWriteLock  : IOWLockSection;

begin
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
procedure TOWEventSinkPin.IntDisconnect( OtherPin : TOWBasicPin; DesignFormClosing : Boolean );
var
  Index           : Integer;
  I               : Integer;
  PEntry          : POWPinEntry;
  LinkIdent       : String;
  LinkIdentName   : String;
  ADestroyLock    : IOWDestroyLockSection;
  AWriteLock      : IOWLockSection;
  ATmpPin         : TOWUnloadedPin;

begin
  if( FInDisconnect ) then
    Exit;

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
          FFormatConverters[ I ].FOutputPin.IntDisconnect( OtherPin, False );
          if( not FFormatConverters[ I ].FOutputPin.IsConnected() ) then
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
function  TOWEventSinkPin.DependsOn( const OtherPin : TOWBasicPin ) : Boolean;
var
  AReadLock : IOWLockSection;
  I         : Integer;

begin
  AReadLock := ReadLock();

  for I := 0 to SourceCount - 1 do
    begin
    if( OtherPin = FSourcePins[ I ].RealPin ) then
      begin
      Result := True;
      Exit;
      end;

    if( FSourcePins[ I ].RealPin.DependsOn( OtherPin ) ) then
      begin
      Result := True;
      Exit;
      end;      
    end;

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWEventSinkPin.DirectDependsOn( const OtherPin : TOWBasicPin ) : Boolean;
var
  AReadLock : IOWLockSection;
  I         : Integer;

begin
  AReadLock := ReadLock();
  
  for I := 0 to SourceCount - 1 do
    begin
    if( FSourcePins[ I ].RealPin.DirectDependsOn( OtherPin ) ) then
      begin
      Result := True;
      Exit;
      end;      
    end;

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWEventSinkPin.IsConnected() : Boolean;
begin
  Result := ( FSourcePins.Count > 0 ) or inherited IsConnected();
end;
//---------------------------------------------------------------------------
function  TOWEventSinkPin.IsConnectedTo( OtherPin : TOWBasicPin ) : Boolean; //const;
var
  I         : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  
  Result := True;
  for I := 0 to SourceCount - 1 do
    if( OtherPin = Sources[ I ] ) then
      Exit;

  Result := inherited IsConnectedTo( OtherPin );
end;
//---------------------------------------------------------------------------
function  TOWEventSinkPin.IsConnectedByConverterTo( OtherPin : TOWBasicPin ) : Boolean;
var
  I         : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  
  Result := inherited IsConnectedByConverterTo( OtherPin );
  if( Result ) then
    Exit;
    
  if( IsConnectedTo( OtherPin )) then
    begin
    for I := FFormatConverters.Count - 1 downto 0 do
      begin
      if( FFormatConverters[ I ].OutputPin.IsConnectedTo( OtherPin )) then
        begin
        Result := True;
        Exit;
        end;
      end;
    end;
    
end;
//---------------------------------------------------------------------------
procedure TOWEventSinkPin.Assign(Source: TPersistent);
var
  OtherPin : TOWEventSinkPin;
  I        : Integer;

begin
  if( Source = NIL ) then
    Connect( NIL )

  else
    begin
    OtherPin := Source as TOWEventSinkPin;
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
function  TOWEventSinkPin.Notify( Operation : IOWNotifyOperation ) : TOWNotifyResult;
begin
  Result := NotifyPin( NIL, Operation );
end;
//---------------------------------------------------------------------------
function TOWEventSinkPin.NotifyPin( APin : TOWBasicPin; Operation : IOWNotifyOperation ) : TOWNotifyResult;
var
  I      : Integer;
  J      : Integer;
  State  : TOWNotifyState;
  Status : TOWNotifyResult;
  DataTypeID : TGUID;
//  OperationIntf :  IOWNotifyOperation;
  ALock : IOWLockSection;
  ASourcePin   : TOWBasicPin;
  ARealSourcePin   : TOWBasicPin;
//  ASinkReadLock : IOWLockSection;

  ASourcesList    : TOWPinEntryList;
  Entry : POWPinEntry;
  AUnlock : IOWLockSection;
  ADestroyLock : IOWDestroyLockSection;

begin
  ALock := ReadLock();

  ASourcesList := TOWPinEntryList.Create();

  ASourcesList.CopyFromList( FSourcePins );

  for I := ASourcesList.Count - 1 downto 0 do
    begin
    if( ASourcesList[ I ].ConnectionPin <> ASourcesList[ I ].RealPin ) then
      begin 
      for J := I - 1 downto 0 do
        begin
        if( ASourcesList[ I ].ConnectionPin = ASourcesList[ J ].ConnectionPin ) then
          begin
          ASourcesList.Delete( I );
          Break;
          end;
        end;
      end;
    end;
    
  try
  
//  OperationIntf := Operation; 
    if( FInSending > 200 ) then
      begin
      ALock := NIL;
      raise EOWException.Create( 'The pin depends on itself. Please protect with functional dependency.' );
      Exit;
      end;

    Inc( FInSending );
  //  Result := [];
    Result := inherited Notify( Operation );

  //  AWriteLock := NIL;
    for I := 0 to ASourcesList.Count - 1 do
      begin
      if( I < ASourcesList.Count - 1 ) then
        State := []

      else
        State := [nsLastIteration];

      Entry := ASourcesList.Items[ I ];
      
      DataTypeID := Entry.ConnectedID;
      ASourcePin := Entry.ConnectionPin;
      ARealSourcePin := Entry.RealPin;
      if(( APin = NIL ) or ( APin = ARealSourcePin )) then
        begin
        if( Assigned( Entry.SubmitFunction )) then
          begin
//          ASinkReadLock := ASinkPin.ReadLock();
    //    DataTypeID := GetSubmitID( I );
    //    ASinkPin := GetSink( I );
    //    ASinkWriteLock := ASinkPin.WriteLock();
            try
              ALock := NIL;
//              AUnlock := NIL;
              ADestroyLock := FDestroyLock.Lock();
              if( ADestroyLock <> NIL ) then
                begin
                if( FOwnerLock <> NIL ) then
                  AUnlock := FOwnerLock.UnlockAll();

                Status := TOWSubmit( Entry.SubmitFunction )( ASourcePin, @DataTypeID, Operation, State );
                AUnlock := NIL;
                end;
                
              ALock := NIL;
            finally
//              if( FOwnerLock <> NIL ) then
//                AUnlock := FOwnerLock.UnlockAll();
                
              ALock := ReadLock();
//              ASinkReadLock := NIL;
            end;
          end;

    //    Status := TOWSubmitFunction( GetSubmit( I ))( 0, GetSink( I ), Operation, Data, State );

        if( nrDataChanged in Status ) then
          begin
          if( Entry.ModificationLevel < 10000 ) then
            Inc( Entry.ModificationLevel, 4 );

          end;
    //      SinkChangedData( I );

        end;
      end;

  finally
    ASourcesList.Free();

    ALock := WriteLock();
    if( not FInDisconnect ) then
      ReorderChangedData();

    Dec( FInSending );
    ALock := NIL;
//    AUnlock := NIL;
  end;

end;
//---------------------------------------------------------------------------
procedure TOWEventSinkPin.ReorderChangedData();
var
  PEntry1    : POWPinEntry;
  PEntry2    : POWPinEntry;
  I, J       : Integer;
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();

  for I:= 0 to FSourcePins.Count - 1 do
    begin
    PEntry1 := FSourcePins[ I ];
    if( PEntry1.ModificationLevel > 0 ) then
      Dec( PEntry1.ModificationLevel );

    end;

  FSourcePins.Sort( PinSortMethod );

  for I := 0 to FSourcePins.Count - 1 do
    begin
    PEntry1 := FSourcePins[ I ];
    if( PEntry1.NotifyAfterPin <> NIL ) then
      begin
      for J := 0 to FSourcePins.Count - 1 do
        begin
        PEntry2 := FSourcePins[ J ];
        if( PEntry1.NotifyAfterPin = PEntry2.RealPin ) then
          begin
          if( I < J ) then
            FSourcePins.Move( I, J );

          end;
        end;
      end;

    end;

end;
//---------------------------------------------------------------------------
procedure TOWEventSinkPin.BackChainReconnect( const DownIID: TGUID; const UpIID: TGUID );
var
  AWriteLock : IOWLockSection;
  I : Integer;
  AFound : Boolean;

begin
  AWriteLock := WriteLock();

  AFound := False;
  for I := 0 to FSourcePins.Count - 1 do
    if( FSourcePins[ I ].ConnectionPin is TOWSourcePin ) then
      begin
      TOWSourcePin( FSourcePins[ I ].ConnectionPin ).BackChainReconnect( DownIID, UpIID );
      AFound := True;
      end;

  if( not AFound ) then
    ForthChainReconnect( DownIID, UpIID );
    
end;
//---------------------------------------------------------------------------
procedure TOWEventSinkPin.ForthChainReconnect( const DownIID: TGUID; const UpIID: TGUID );
var
  I : Integer; 
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();
  for I := 0 to FSourcePins.Count - 1 do
    if( FSourcePins[ I ].ConnectionPin is TOWSourcePin ) then
      begin
      FSourcePins[ I ].ConnectedID := UpStreamFindConnectionID( TOWSourcePin( FSourcePins[ I ].ConnectionPin ), FSourcePins[ I ].ConnectionPin.GetConnectionID( Self ) );
      FSourcePins[ I ].SubmitFunction := GetSubmitFunctionID( FSourcePins[ I ].ConnectedID );
      end;

end;
//---------------------------------------------------------------------------
function TOWEventSinkPin.GetUpStreamLinkName() : String;
var
  AConverter      : TOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  AReadLock       : IOWLockSection;
  I               : Integer;
  
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
        Result := GetLinkNameID( FindConnectionID( FDispatcher[ 1 ], AConverter, AConverterClass, True ))

      else
        Result := GetLinkNameID( FindConnectionID( FDispatcher[ 0 ], AConverter, AConverterClass, True ));

      end;
    end;
    
  for I := 0 to SourceCount - 1 do
    begin
    if( Result <> '' ) then
      begin
      if( Result <> GetLinkNameID( FSourcePins[ I ].ConnectedID )) then
        begin
        Result := 'Multiple...';
        Exit;
        end; 
      end
      
    else
      Result := GetLinkNameID( FSourcePins[ I ].ConnectedID );
      
    end;

end;
//---------------------------------------------------------------------------
function TOWEventSinkPin.GetDownStreamLinkName() : String;
var
  AConverter      : TOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  DownStreamID    : TGUID;
  I               : Integer;
  AReadLock       : IOWLockSection;
  
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
        Result := GetLinkNameID( FindConnectionID( FDispatcher[ 1 ], AConverter, AConverterClass, True ))

      else
        Result := GetLinkNameID( FindConnectionID( FDispatcher[ 0 ], AConverter, AConverterClass, True ));

      end;
    end;

  for I := 0 to SourceCount - 1 do
    begin
    DownStreamID := FSourcePins[ I ].RealPin.GetConnectionID( Self );

    if( Result <> '' ) then
      begin
      if( Result <> GetLinkNameID( DownStreamID )) then 
        begin
        Result := 'Multiple...';
        Exit;
        end;
      end
      
    else
      Result := GetLinkNameID( DownStreamID );
      
    end;
   
end;
//---------------------------------------------------------------------------
function TOWEventSinkPin.DoWrite() : Boolean;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := ( SourceCount > 0 ) and not ( DoStateWrite() or DoStateConverterWrite() );
end;
//---------------------------------------------------------------------------
function TOWEventSinkPin.DoFormWrite() : Boolean;
begin
  Result := (( inherited DoFormWrite() ) or DoWrite() );
end;
//---------------------------------------------------------------------------
procedure TOWEventSinkPin.DefineProperties(Filer: TFiler);
begin
  inherited;
  Filer.DefineProperty( 'SourcePin', ReadConnectionsData, WriteConnectionsData, DoWrite());
//  Filer.DefineProperty( 'StateConverter', ReadStateConverterConnectionsData, WriteStateConverterConnectionsData, DoStateConverterWrite());
end;
//---------------------------------------------------------------------------
procedure TOWEventSinkPin.ReadConnectionsData( Reader : TReader );
var
  ReadIdent       : String;
  ReadIdentAfter  : String;
  ReadName        : String;
  AWriteLock      : IOWLockSection;
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
        ApplyFormName( ReadIdentAfter );
        ABasePinAfter := GOWPins.GetByNameCreate( GetRoot(), ptSink, ReadIdentAfter, ReadIdentAfter, GetFullName( True ) ); 
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

    ApplyFormName( ReadIdent );
    ApplyFormName( ReadName );
    ABasePin := GOWPins.GetByNameCreate( GetRoot(), ptSink, ReadIdent, ReadName, GetFullName( True ) );
    IntConnectAfter( ABasePin, ABasePinAfter );
    end;

  Reader.ReadListEnd();
//  CheckLinks();

  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWEventSinkPin.WriteConnectionsData( Writer : TWriter );
var
  I          : Integer;
  Ident      : String;
  IdentAfter : String;
  IdentName  : String;
  AReadLock  : IOWLockSection;

begin
  // TODO: Write state converters data.
  AReadLock := ReadLock();
  Writer.WriteListBegin();
  for I := 0 to SourceCount - 1 do
    begin
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
      if( FSourcePins.Items[ I ].NotifyAfterPin <> NIL ) then
        begin
        IdentAfter := FSourcePins.Items[ I ].NotifyAfterPin.GetFullIdentName( True ); // GetLinkAfterStr( I );
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
function TOWEventSinkPin.WriteNoStateListEntry( Writer : TWriter ) : Boolean;
begin
  Result := DoWrite(); 
  if( Result ) then
    begin
    Writer.WriteIdent( 'Sources' );
    WriteConnectionsData( Writer );
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
destructor TOWSinkPin.Destroy();
var
  ADestroyLock : IOWDestroyLockSection;
  AWriteLock : IOWLockSection;

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
procedure TOWSinkPin.PinDeletedNotify( ADeletedPin : TOWBasicPin );
var
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();
  inherited;
  FFunctionDependants.Remove( ADeletedPin );
  FDataTypeDependants.Remove( ADeletedPin );
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
function TOWSinkPin.GetConnectedAfterForPin( OtherPin : TOWBasicPin ) : TOWBasicPin;
begin
  if( FIntRealSourcePin <> NIL ) then
    if( OtherPin = FIntRealSourcePin ) then
      begin  
      Result := FIntRealSourcePin.GetConnectedAfterForPin( Self );
      Exit;
      end;

  Result := inherited GetConnectedAfterForPin( OtherPin );
end;
//---------------------------------------------------------------------------
function TOWSinkPin.Notify( Operation : IOWNotifyOperation ) : TOWNotifyResult;
var
  ADestroyLock : IOWDestroyLockSection;
  AReadLock : IOWLockSection;
  ASourcePin : TOWBasicPin;
  ASubmitFunction : TOWSubmit;
  AConnectedID    : TGUID;
  AUnlock : IOWLockSection;

begin
  Result := [];
  AReadLock := ReadLock();
  if( ( SourcePin <> NIL ) and ( Assigned(FSubmitFunction) ) ) then
    begin
    ASourcePin := SourcePin;
    ASubmitFunction := FSubmitFunction;
    AConnectedID := FConnectedID;
    AReadLock := NIL;
    ADestroyLock := FDestroyLock.Lock();
    if( ADestroyLock <> NIL ) then
      begin
      if( FOwnerLock <> NIL ) then
        AUnlock := FOwnerLock.UnlockAll();

      Result := ASubmitFunction( ASourcePin, @AConnectedID, Operation, [nsLastIteration] );
      AUnlock := NIL;
      end;
      
    AReadLock := NIL;
    end;

  AReadLock := NIL;
//  AUnlock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.IntDisconnect( OtherPin : TOWBasicPin; DesignFormClosing : Boolean );
var
  ADestroyLock : IOWDestroyLockSection;
  AWriteLock       : IOWLockSection;
  ALinkStorage     : String;
  ALinkStorageName : String;
  ATmpPin          : TOWUnloadedPin;

begin
  AWriteLock := WriteLock();
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
function TOWSinkPin.Connect( OtherPin : TOWBasicPin ) : Boolean;
begin
  Result := ConnectAfter( OtherPin, NIL );
end;
//---------------------------------------------------------------------------
function TOWSinkPin.CanConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin; UseConverters : Boolean ) : Boolean;
begin
  if( OtherPin = NIL ) then
    Result := True

  else
    Result := OtherPin.CanConnectAfter( Self, NotifyAfterPin, UseConverters );

end;
//---------------------------------------------------------------------------
function TOWSinkPin.ConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ) : Boolean;
var
  DataTypeID : TGUID;
  DesignFormClosing : Boolean;
  AWriteLock : IOWLockSection;
  ASourcePin : TOWBasicPin;
  AConverterClass : TOWFormatConverterClass;
  AConverter : TOWFormatConverter;
  ADownStreamID : TGUID;

begin
  if( OtherPin = Self ) then
    begin
    Result := False;
    Exit;
    end;

  ASourcePin := NIL;
  AWriteLock := WriteLock();
  if( OtherPin = FRealSourcePin ) then
    begin
    if( OtherPin = NIL ) then
      begin
      Result := True;
      Exit
      end;

    if( OtherPin.GetConnectedAfterForPin( Self ) = NotifyAfterPin ) then
      begin
      Result := True;
      Exit
      end;

    end;

  if( OtherPin = FConnectionSourcePin ) then
    begin
    Result := True;
    Exit
    end;
    
  if( OtherPin = NIL ) then
    begin
    DesignFormClosing := False;
    if( OwnerInDesigning() ) then
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
      OWNotifyDisconnected( Self, FRealSourcePin );
      FRealSourcePin := NIL;
      FIntRealSourcePin := NIL;
      FConnectionSourcePin := NIL;
      end;

//    ASourcePin := FSourcePin;
    FSubmitFunction := NIL;

    Result := True;

    OWNotifyChangePin( Self );

    AWriteLock := NIL;
    
    if( ASourcePin <> NIL ) then
      ASourcePin.CheckRemove();

    Exit
    end;

  if( CanConnectTo( OtherPin )) then
    begin
    if( FDispatcher <> NIL ) then
      Disconnect();
      
    if( FRealSourcePin <> NIL ) then
      begin
      DesignFormClosing := False;
      if( OwnerInDesigning() ) then
        if( RootInDestroying() ) then
          DesignFormClosing := True;

      ASourcePin := FRealSourcePin;
      AWriteLock := NIL;
      AWriteLock := ASourcePin.WriteLock();
      ASourcePin.IntDisconnect(Self, DesignFormClosing);
      OWNotifyDisconnected( Self, ASourcePin);
      ASourcePin.CheckRemove();
      AWriteLock := NIL;
      AWriteLock := WriteLock();
      
//      ASourcePin := FSourcePin;
      FRealSourcePin := NIL;
      FIntRealSourcePin := NIL;
      FConnectionSourcePin := NIL;

      FSubmitFunction := NIL;
      end;

    if( OtherPin is TOWSourcePin ) then
      begin

      FConnectionSourcePin := TOWSourcePin( OtherPin );
      FIntRealSourcePin := TOWSourcePin( OtherPin );
      AWriteLock := NIL;
      AWriteLock := OtherPin.WriteLock();
      TOWSourcePin( OtherPin ).IntConnect( Self, NotifyAfterPin );
      AWriteLock := NIL;
      AWriteLock := WriteLock();
      FRealSourcePin := TOWSourcePin( OtherPin );
      FIntRealSourcePin := TOWSourcePin( OtherPin );

      Result := True;
      if( FRealSourcePin is TOWSourcePin ) then
        begin
        DataTypeID := TOWSourcePin( FRealSourcePin ).DownStreamFindConnectionID( Self, True, False, AConverter, AConverterClass );
        FConnectedID := UpStreamFindConnectionID( TOWSourcePin( OtherPin ), DataTypeID );
        FSubmitFunction := GetSubmitFunctionID( FConnectedID );
        ASourcePin := FRealSourcePin;
        AWriteLock := NIL;
        AWriteLock := ASourcePin.WriteLock();
        TOWSourcePin( ASourcePin ).NewConnection( Self );

//      FSourcePin.NewConnection( Self, FSourcePin.GetSubmitFunctionID( DataTypeID ));
        ADownStreamID := TOWSourcePin( ASourcePin ).DownStreamFindConnectionID( Self, True, False, AConverter, AConverterClass ); 
        AWriteLock := NIL;
        AWriteLock := WriteLock();
        ChainReconnect( ADownStreamID, FConnectedID );
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
procedure TOWSinkPin.BackChainReconnect( const DownIID: TGUID; const UpIID: TGUID );
var
  AWriteLock : IOWLockSection;

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
  I : Integer; 
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if(( FConnectionSourcePin <> NIL ) and ( FConnectionSourcePin is TOWSourcePin )) then
    begin
    FConnectedID := UpStreamFindConnectionID( TOWSourcePin( FConnectionSourcePin ), FConnectionSourcePin.GetConnectionID( Self ) );
    FSubmitFunction := GetSubmitFunctionID( FConnectedID );
    end;
    
  for I := 0 to FDataTypeDependants.Count - 1 do
    TOWSourcePin( FDataTypeDependants.Items[ I ] ).ForthChainReconnect( DownIID, UpIID );

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
  ADestroyLock : IOWDestroyLockSection;
  ASourceDestroyLock : IOWDestroyLockSection;
  AWriteLock : IOWLockSection;
  ASourceWriteLock : IOWLockSection;

begin
  if( FRealSourcePin <> NIL ) then
    if( not ( FRealSourcePin is TOWUnloadedPin )) then
      begin
      ASourceDestroyLock := FRealSourcePin.FDestroyLock.DestroyLock();  
      ASourceWriteLock := FRealSourcePin.WriteLock();
      end;

  ADestroyLock := FDestroyLock.DestroyLock();
  AWriteLock := WriteLock();
  inherited Disconnect();
  Connect( NIL );

  ADestroyLock := NIL;
  AWriteLock := NIL;
  ASourceDestroyLock := NIL;
  ASourceWriteLock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.DisconnectFrom( OtherPin : TOWBasicPin );
begin
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
    OWNotifyDisconnected( Self, FRealSourcePin );
    IntDisconnect( FRealSourcePin, False );
    if( FRealSourcePin <> NIL ) then
      FRealSourcePin.CheckRemove();

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
function TOWSinkPin.SetEditorString( ARoot : TComponent; const AValue: string ) : Boolean;
var
  ADispatcher : TOWStateDispatcher;

begin
  Result := IsConnected();
  if( ( AValue = '' ) or ( AValue = GOWDISCONNECTED ) ) then
    begin
    Disconnect();
    Exit;
    end;
    
  if( TryLinkTo( ARoot, AValue, AValue, False )) then
    begin
    Result := True;
    Exit;
    end;

  ADispatcher := TOWStateDispatcher.GetByName( AValue, True );
  if( ConnectToState( ADispatcher )) then
    Result := True;

end;
//---------------------------------------------------------------------------
function TOWSinkPin.ConnectToState( ADispatcher : TOWStateDispatcher ) : Boolean;
var
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();
  Result := inherited ConnectToState( ADispatcher );
end;
//---------------------------------------------------------------------------
function TOWSinkPin.ConnectToStateAfter( ADispatcher : TOWStateDispatcher; NotifyAfterPin : TOWBasicPin ) : Boolean;
var
  I : Integer;
//  AConverter : TOWFormatConverter;
//  AConverterClass : TOWFormatConverterClass;
  AWriteLock : IOWLockSection;

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
    for I := 0 to ADispatcher.PinCount - 1 do
      if( ADispatcher[ I ].ConnectByStateAfter( Self, NotifyAfterPin )) then
        begin
        Result := True;
        Break;
        end;
          
    FInConnect := False;
    end

  else
    begin
    Result := inherited ConnectToStateAfter( ADispatcher, NotifyAfterPin );
{
    if( not CanConnectToStateInt( ADispatcher, AConverter, AConverterClass, True )) then
      Exit;

    Result := True;

//  ADispatcher.AddPinAfter( Self, Self, NotifyAfterPin );
    FDispatcher := ADispatcher;
    if( AConverter <> NIL ) then
      begin
      AConverter.FOutputPin.ConnectAfter( OtherPin, NotifyAfterPin );
      AConverter.FInputPin.FDispatcher := FDispatcher;
      FDispatcher.AddPin( AConverter.FInputPin, OtherPin );
  //      PEntry.ConnectionPin := AConverter.FInputPin;
      TOWSinkPin( AConverter.FInputPin ).FConnectionSourcePin := Self; // AConverter.FOutputPin;
      TOWSinkPin( OtherPin ).FRealSourcePin := Self;
  //      TOWSinkPin( AConverter.FInputPin ).FConnectionSourcePin := AConverter.FOutputPin;
      OtherPin.FDispatcher := FDispatcher;
      end

    else
      Result := OtherPin.ConnectToState( FDispatcher );

}
    end;
    
  UpdateStateValue();

  OWNotifyConnected( Self, ADispatcher );
end;
//---------------------------------------------------------------------------
function TOWSinkPin.CanConnectToStateInt( const ADispatcher : TOWStateDispatcher; var AConverter : TOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean ) : Boolean;
var
  I : Integer;
  AReadLock : IOWLockSection;

begin
  Result := False;
  if( ADispatcher = NIL ) then
    Exit;

  AReadLock := ReadLock();
  if( ADispatcher = FDispatcher ) then
    begin
    Result := True;
    Exit;
    end;

  for I := 0 to ADispatcher.PinCount - 1 do
    if( not( ADispatcher[ I ] is TOWBasicSinkPin )) then
      if( not CanConnectToInt( ADispatcher[ I ], AConverter, AConverterClass, UseConverters )) then
//      if( not CanConnectTo( ADispatcher[ I ] )) then
        Exit;

  Result := True;
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetPrimaryConnectionID() : TGUID;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := FConnectedID;
  if( IsEqualGUID( Result, OWNULLID )) then
    Result := inherited GetPrimaryConnectionID();

end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetConnectionID( const OtherPin : TOWBasicPin ) : TGUID;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := FConnectedID;
end;
//---------------------------------------------------------------------------
function TOWSinkPin.IsConnectedToPinName( OtherPinName : String ) : Boolean;
var
  AReadLock : IOWLockSection;
  
begin
  AReadLock := ReadLock();
  
//  OWLinkAwaitsLinking( Owner );
  if( FIntRealSourcePin <> NIL ) then
    Result := ( OWValueToString( FIntRealSourcePin, '.', True, True ) = OtherPinName )

  else
    Result := False;

end;
//---------------------------------------------------------------------------
function TOWSinkPin.IsConnectedTo( OtherPin : TOWBasicPin ) : Boolean; //const;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  
  Result := ( FIntRealSourcePin = OtherPin );
  if( not Result ) then
    Result := inherited IsConnectedTo( OtherPin );
    
end;
//---------------------------------------------------------------------------
function TOWSinkPin.IsConnectedByConverterTo( OtherPin : TOWBasicPin ) : Boolean;
var
  AReadLock : IOWLockSection;

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
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  
{
  if( OtherPin = FRealSourcePin ) then
    begin
    Result := True;
    Exit;
    end;
}
  if( FIntRealSourcePin = NIL ) then
    begin
    Result := False;
    Exit;
    end;

  Result := FIntRealSourcePin.DirectDependsOn( OtherPin );
end;
//---------------------------------------------------------------------------
function TOWSinkPin.DependsOn( const OtherPin : TOWBasicPin ) : Boolean;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();

  if( OtherPin = FIntRealSourcePin ) then
    begin
    Result := True;
    Exit;
    end;

  if( FIntRealSourcePin = NIL ) then
    begin
    Result := False;
    Exit;
    end;

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
  I : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  if( ForPin = Self ) then
    begin
    for I := 0 to FDataTypeDependants.Count - 1 do
      TOWSourcePin( FDataTypeDependants.Items[ I ] ).DownStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

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
  I : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  if( ForPin = Self ) then
    begin
    for I := 0 to FDataTypeDependants.Count - 1 do
      TOWSourcePin( FDataTypeDependants.Items[ I ] ).UpStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

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
  AReadLock : IOWLockSection;
  
begin
  AReadLock := ReadLock();
  Result := inherited RequestInterface( IID, Obj );
  if( Result = S_OK ) then
    Result := DownStreamQueryPossybleInterface( IID );

end;

//---------------------------------------------------------------------------
function TOWSinkPin.UpStreamBackQueryPossybleInterface( const IID: TGUID; ForPin : TOWPin ) : HResult;
var
  I : Integer;
  AReadLock : IOWLockSection;
  
begin
  AReadLock := ReadLock();
  Result := S_OK;

  if( ForPin = Self ) then
    begin
    for I := 0 to FDataTypeDependants.Count - 1 do
      begin
      Result := TOWSourcePin( FDataTypeDependants.Items[ I ] ).UpStreamForthQueryPossybleInterface( IID, ForPin );
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
  I : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := S_OK;

  if( ForPin = Self ) then
    begin
    for I := 0 to FDataTypeDependants.Count - 1 do
      begin
      Result := TOWSourcePin( FDataTypeDependants.Items[ I ] ).DownStreamForthQueryPossybleInterface( IID, ForPin );
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
  I : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := inherited DownStreamQueryPossybleInterface( IID );
  if( Result = S_OK ) then
    begin
    for I := 0 to FDataTypeDependants.Count - 1 do
//    TOWSourcePin( FDataTypeDependants.Items[ I ] ).DownStreamForthQueryPossybleInterface( IID, Self );
      begin
      Result := TOWSourcePin( FDataTypeDependants.Items[ I ] ).DownStreamBackQueryPossybleInterface( IID, Self );
      if( Result <> S_OK ) then
        Exit;
        
      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWSinkPin.UpStreamQueryPossybleInterface( const IID: TGUID ) : HResult;
var
  I : Integer;
var
  AReadLock : IOWLockSection;
  
begin
  AReadLock := ReadLock();
  Result := inherited UpStreamQueryPossybleInterface( IID );

  for I := 0 to FDataTypeDependants.Count - 1 do
//    TOWSourcePin( FDataTypeDependants.Items[ I ] ).DownStreamForthQueryPossybleInterface( IID, Self );
    begin
    Result := TOWSourcePin( FDataTypeDependants.Items[ I ] ).UpStreamBackQueryPossybleInterface( IID, Self );
    if( Result <> S_OK ) then
      Exit;

    end;

end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.DownStreamFillPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  I : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  inherited DownStreamFillPossibleStreamTypes( PossibleStreamTypes, ForPin );
//  BackRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );
  for I := 0 to FDataTypeDependants.Count - 1 do
    TOWSourcePin( FDataTypeDependants.Items[ I ] ).DownStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );
//  DownStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.UpStreamFillPossibleStreamTypes( PossibleStreamTypes : TOWPinTypeRestricted; ForPin : TOWPin );
var
  I : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  inherited UpStreamFillPossibleStreamTypes( PossibleStreamTypes, ForPin );
  if( HasToIgnoreUpstream() ) then
    Exit;

//  inherited;
//  BackRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );
  for I := 0 to FDataTypeDependants.Count - 1 do
    TOWSourcePin( FDataTypeDependants.Items[ I ] ).UpStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );
//  DownStreamForthRestrictPossibleStreamTypes( PossibleStreamTypes, ForPin );

end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.SetSourcePin( SourcePin : TOWBasicPin );
begin
  Connect( SourcePin );
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetSourcePin() : TOWBasicPin;
var
  AReadLock : IOWLockSection;
  
begin
  AReadLock := ReadLock();
  Result := FIntRealSourcePin;
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetFormatConverter() : TOWFormatConverter;
var
  AReadLock : IOWLockSection;
  
begin
  AReadLock := ReadLock();

  Result := NIL;
  
  if( FRealSourcePin <> FConnectionSourcePin ) then
    if( FConnectionSourcePin <> NIL ) then 
      Result := TOWFormatConverter( FConnectionSourcePin.Owner );;

end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetUpStreamLinkName() : String;
var
  AConverter : TOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  AReadLock : IOWLockSection;
  
begin
  AReadLock := ReadLock();
  
  if( FRealSourcePin <> NIL ) then
    Result := GetLinkNameID( FConnectedID )

  else if( FDispatcher <> NIL ) then
    begin
    if( FDispatcher.PinCount > 1 ) then
      begin
      if( FDispatcher[ 0 ] = Self ) then
        Result := GetLinkNameID( FindConnectionID( FDispatcher[ 1 ], AConverter, AConverterClass, True ))

      else
        Result := GetLinkNameID( FindConnectionID( FDispatcher[ 0 ], AConverter, AConverterClass, True ));

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
  AConverter      : TOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  DownStreamID    : TGUID;
  AReadLock       : IOWLockSection;
  
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
        Result := GetLinkNameID( FindConnectionID( FDispatcher[ 1 ], AConverter, AConverterClass, True ))

      else
        Result := GetLinkNameID( FindConnectionID( FDispatcher[ 0 ], AConverter, AConverterClass, True ));

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
  AReadLock : IOWLockSection;

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
  AConverter : TOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  I               : Integer;
  AReadLock : IOWLockSection;

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
          Result := FDispatcher.Pins[ I ].FindConnectionID( Self, AConverter, AConverterClass, True );
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

  if( IsEqualGUID( Result, OWNULLID )) then
    if( FConnectionSourcePin <> NIL ) then 
      Result := FConnectionSourcePin.FindConnectionID( Self, AConverter, AConverterClass, True );

end;
//---------------------------------------------------------------------------
function TOWSinkPin.DoStateConverterWrite() : Boolean;
begin
  Result := ( FDispatcher <> NIL ) and ( FConnectionSourcePin <> NIL ); 
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.ReadStateConverterConnectionsData( Reader : TReader );
var
  ReadIdent : String;
  ReadDispName  : String;
  ReadName  : String;
  AfterReadIdent : String;
  AfterReadName  : String;
  AWriteLock : IOWLockSection;
  AString    : String; 
  AGuidFrom     : TGUID;
  AGuidTo       : TGUID;
  AConverterClass : TOWFormatConverterClass;
  AConverter      : TOWFormatConverter;

begin
  AWriteLock := WriteLock();
  CheckVirtualList();

  Reader.ReadListBegin();
  if( Reader.NextValue() = vaList ) then
    begin
    Reader.ReadListBegin();
    ReadDispName := Reader.ReadString();
//    LinkToStateByName( ReadName );

    while not Reader.EndOfList do
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
          
//        FDispatcher.AddLinkStorage( ReadIdent, ReadName, AfterReadIdent, AfterReadName );
        Reader.ReadListEnd();
        end

      else
        begin
        ReadName := Reader.ReadIdent();
//        FDispatcher.AddLinkStorage( ReadName, ReadName, '', '' );
        end;
        
      end;
      
    Reader.ReadListEnd();
    end

  else
    begin
    ReadDispName := Reader.ReadString();
//    LinkToStateByName( ReadName );
    end;

  AString := Reader.ReadString();
  AGuidFrom := StringToGUID( AString );
  AString := Reader.ReadString();
  AGuidTo := StringToGUID( AString );
{
  FDispatcher := TOWStateDispatcher.GetByName( ReadDispName, OwnerInDesigning() );
  if( FDispatcher <> NIL ) then
    LinkToStateByName( ReadDispName )

  else
    begin
}
    AConverterClass := OWGetConverter( AGuidFrom, AGuidTo );
    AConverter := AConverterClass.Create();
    AConverter.FOutputPin.ConnectAfter( Self, NIL );
    FDispatcher := TOWStateDispatcher.GetByNameCreate( Self, ReadDispName, OwnerInDesigning() );

      AConverter.FInputPin.FDispatcher := FDispatcher;
      FDispatcher.AddPin( AConverter.FInputPin, Self );
      FDispatcher.FFormatConverters.Add( AConverter ); 
//      PEntry.ConnectionPin := AConverter.FInputPin;
//      TOWSinkPin( AConverter.FInputPin ).FConnectionSourcePin := Self; // AConverter.FOutputPin;
//      TOWSinkPin( OtherPin ).FRealSourcePin := Self;
//      TOWSinkPin( AConverter.FInputPin ).FConnectionSourcePin := AConverter.FOutputPin;
//      Self.FDispatcher := FDispatcher;
//    FDispatcher.AddPin( Self, Self );
    UpdateStateValue();
//    end;
  
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
  AReadLock     : IOWLockSection;
  AConverter    : TOWFormatConverter;
  AGuidFrom     : TGUID;
  AGuidTo       : TGUID;

begin
  AReadLock := ReadLock();

  if( FDispatcher = NIL ) then
    Exit;
    
  IsSaved := False;
  PinRootName := GetRootName();
  ThePinOwner := OWGetMainOwnerComponent( GetOwnerComponent() ); 
  if( FDispatcher.FCountSaved = 0 ) then
    FDispatcher.ResetFormsSave(); // It's the first pin to save.

  Writer.WriteListBegin();
  if( ( ThePinOwner = NIL ) or ( not FDispatcher.IsFormSaved( ThePinOwner ))) then
    begin
    if( FDispatcher.IsCrosForm()) then
      begin
      Writer.WriteListBegin();
      Writer.WriteString( FDispatcher.FName );
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
  if( FDispatcher.FCountSaved = FDispatcher.PinCount ) then
    FDispatcher.ResetFormsSave() // It's the last pin. We are done with saving.

  else
    FDispatcher.AddFormSaved( ThePinOwner );

  if( not IsSaved ) then
    Writer.WriteString( FDispatcher.FName );

  AConverter := TOWFormatConverter( FConnectionSourcePin.Owner );
  AGuidFrom := AConverter.InputPin.GetDownStreamID(); // FConnectedID;
  AGuidTo := AConverter.OutputPin.GetPrimaryConnectionID();
  Writer.WriteString( OWGetStreamGUIDFromID( AGuidFrom ) );
  Writer.WriteString( OWGetStreamGUIDFromID( AGuidTo ) );
//  AGuid := GetPrimaryConnectionID(); // FConnectionSourcePin.;
  Writer.WriteListEnd();
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.ReadConnectionsData( Reader : TReader );
var
  ReadName   : String;
  ReadIdent  : String;
  IdentAfter : String;
  AWriteLock : IOWLockSection;
  ABasePin   : TOWBasicPin;
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
      ApplyFormName( IdentAfter );
      ABaseAfterPin := GOWPins.GetByNameCreate( GetRoot(), ptSink, IdentAfter, IdentAfter, GetFullName( True ) );
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

  ApplyFormName( ReadIdent );
  ApplyFormName( ReadName );
  ABasePin := GOWPins.GetByNameCreate( GetRoot(), ptSource, ReadIdent, ReadName, GetFullName( True ) );
  ConnectAfter( ABasePin, ABaseAfterPin );
  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
function TOWSinkPin.TryLinkTo( Root : TComponent; Soutce : String; SoutceName : String; SaveForm : Boolean ) : Boolean;
var
  AWriteLock : IOWLockSection;
  ASourcePin : TOWBasicPin;

begin
  AWriteLock := WriteLock();
  if( Soutce = 'nil' ) then
    begin
    Disconnect();
    Result := True;
    Exit;
    end;
  
  ApplyFormName( Soutce );
  ApplyFormName( SoutceName );
  ASourcePin := GOWPins.GetByNameCreate( GetRoot(), ptSource, Soutce, SoutceName, GetFullName( True ) );
  Result := Connect( ASourcePin );
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.WriteConnectionsData( Writer : TWriter );
var
  Ident       : String;
  IdentName   : String;
  IdentAfter  : String;
  AReadLock   : IOWLockSection;
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
procedure TOWSinkPin.UpdateStateValue();
var
  AWriteLock : IOWLockSection;

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
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  if( FRealSourcePin = NIL ) then
    begin
    Result := '';
    Exit;
    end;

  AddRoot := FRealSourcePin.GetRootName() <> GetRootName();

  Result := FRealSourcePin.GetFullIdentName( AddRoot );
end;
//---------------------------------------------------------------------------
function TOWSinkPin.DoWrite() : Boolean;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := ( SourcePin <> NIL ) and not ( DoStateWrite() or DoStateConverterWrite() );
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
function IsDescendOf( PropertyObject : TObject; TypeName : String ) : Boolean;
var
  AncestorClass : TClass;
  
begin
  if( TypeName = PropertyObject.ClassName() ) then
    begin
    Result := True;
    Exit;
    end;

  AncestorClass := PropertyObject.ClassParent();
  while( AncestorClass <> NIL ) do
    begin
    if( TypeName = AncestorClass.ClassName() ) then
      begin
      Result := True;
      Exit;
      end;

    AncestorClass := AncestorClass.ClassParent();
    end;

  Result := False;
end;
//---------------------------------------------------------------------------
function  OWGetClassPropertyNameForPropertyObjectPrefix( APrefix : String; AClass : TObject; TypeName : String; PinObject : TObject; ALevel : Integer; APropertyStack : TList ) : String;
var
  PropList              : PPropList;
  ClassTypeInfo         : PTypeInfo;
  ClassTypeData         : PTypeData;
  i                     : Integer;
  TypeInfo              : TTypeInfo;
  PropertyObject        : TObject;
  PinIndex              : Integer;
  DoBreak               : Boolean;

begin
  Result := '';

  if( AClass is TComponent )then
    if( csDestroying in TComponent( AClass ).ComponentState )then
      Exit;

// This method retrieves the property names and types for the given object
//  and adds that information to the AStrings parameter.

  ClassTypeInfo := PTypeInfo(AClass.ClassInfo());
  ClassTypeData := GetTypeData(ClassTypeInfo);

  if( ClassTypeData.PropCount <> 0 ) then
    begin
    // allocate the memory needed to hold the references to the TPropInfo
    // structures on the number of properties.
    GetMem( PropList, sizeof( PPropInfo ) * ClassTypeData.PropCount );
    try
      // fill PropList with the pointer references to the TPropInfo structures
      GetPropInfos( PTypeInfo( AClass.ClassInfo() ), PropList);
      for i := 0 to ClassTypeData.PropCount - 1 do
        begin
{$IFDEF fpc}
        TypeInfo := PropList[i].PropType^;
{$ELSE}
        TypeInfo := PropList[i].PropType^^;
{$ENDIF}
        if( TypeInfo.Kind = tkClass ) then
          begin
          PropertyObject := GetObjectProp( AClass, PropList[i]);
          
          if( PropertyObject <> NIL ) then
            begin
            if( PropertyObject = PinObject ) then
              begin
              Result := APrefix + String(PropList[i].Name);
              Break;
              end

            else if( PropertyObject is TOWPinList )then
              begin
              DoBreak := False;
              for PinIndex := 0 to TOWPinList( PropertyObject ).Count - 1 do
                begin
                if( IsDescendOf( TOWPinList( PropertyObject ).Pins[ PinIndex ], TypeName )) then
                  begin
                  if( TOWPinList( PropertyObject ).Pins[ PinIndex ] = PinObject ) then
                    begin
                    Result := APrefix + String(PropList[i].Name) + '.' + TOWPinList( PropertyObject ).Names[ PinIndex ];
                    DoBreak := True;
                    Break;
                    end; 
                  end;
                end;

              if( DoBreak ) then
                Break;
                
              end

            else if( PropertyObject is TPersistent )then
              begin
              if( not ( PropertyObject is TComponent )) then
                begin
                if( APropertyStack.IndexOf( PropertyObject ) = -1 ) then
                  begin
                  APropertyStack.Add( PropertyObject );
                  Result := OWGetClassPropertyNameForPropertyObjectPrefix( String(PropList[i].Name) + '.', PropertyObject, TypeName, PinObject, ALevel + 1, APropertyStack );
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
//---------------------------------------------------------------------------
function  OWGetClassPropertyNameForPropertyObject( AClass : TObject; TypeName : String; PinObject : TObject ) : String;
var
  APropertyStack : TList;

begin
  APropertyStack := TList.Create();
  Result := OWGetClassPropertyNameForPropertyObjectPrefix( '', AClass, TypeName, PinObject, 0, APropertyStack );
  APropertyStack.Free();
end;
//---------------------------------------------------------------------------
function  OWGetClassPropertiesOfTypeNamePrefix( APrefix : String; AClass : TObject; TypeName : String; AStrings : TStrings; SaveValue : Boolean; ALevel : Integer; APropertyStack : TList ) : Boolean;
var
  PropList              : PPropList;
  ClassTypeInfo         : PTypeInfo;
  ClassTypeData         : PTypeData;
  i                     : Integer;
  TypeInfo              : TTypeInfo;
  PropertyObject        : TObject;
  PinIndex              : Integer;
//  PersistentClass       : TPersistentClass;
//  Ret   : Boolean;

begin
  Result := True;

  if( ALevel > 20 ) then
    begin
    Result := False;
    Exit;
    end;

  if( AClass is TComponent )then
    if( csDestroying in TComponent( AClass ).ComponentState )then
      Exit;

// This method retrieves the property names and types for the given object
//  and adds that information to the AStrings parameter.

  ClassTypeInfo := PTypeInfo(AClass.ClassInfo());
  ClassTypeData := GetTypeData(ClassTypeInfo);

  if( ClassTypeData.PropCount <> 0 ) then
    begin
    // allocate the memory needed to hold the references to the TPropInfo
    // structures on the number of properties.
    GetMem( PropList, sizeof( PPropInfo ) * ClassTypeData.PropCount );
//    PropList := new PPropInfo [ ClassTypeData->PropCount ];
    try
      // fill PropList with the pointer references to the TPropInfo structures
      GetPropInfos( PTypeInfo( AClass.ClassInfo() ), PropList );
      for i := 0 to ClassTypeData.PropCount - 1 do
        begin
{$IFDEF fpc}
        TypeInfo := PropList[i].PropType^;
{$ELSE}
        TypeInfo := PropList[i].PropType^^;
{$ENDIF}
        if ( TypeInfo.Kind = tkClass ) then
          begin
          PropertyObject := GetObjectProp( AClass, PropList[i] );
          if( PropertyObject <> NIL ) then
            begin
            if( IsDescendOf( PropertyObject, TypeName )) then
              AStrings.AddObject( APrefix + String(PropList[i].Name), PropertyObject )

            else if( PropertyObject is TOWPinList )then
              begin
              for PinIndex := 0 to TOWPinList( PropertyObject ).Count - 1 do
                begin
                if( IsDescendOf( TOWPinList( PropertyObject ).Pins[ PinIndex ], TypeName )) then
                  begin
                  if( SaveValue ) then
                    AStrings.AddObject( APrefix + String(PropList[i].Name) + '._Pin' + IntToStr( PinIndex ), TOWPinList( PropertyObject ).Pins[ PinIndex ] )

                  else
                    AStrings.AddObject( APrefix + String(PropList[i].Name) + '.' + TOWPinList( PropertyObject ).Names[ PinIndex ], TOWPinList( PropertyObject ).Pins[ PinIndex ] );

                  end;
                end;
              end

            else if( PropertyObject is TPersistent )then
              begin
              if( not ( PropertyObject is TComponent )) then
                if( APropertyStack.IndexOf( PropertyObject ) = -1 ) then
                  begin
                  APropertyStack.Add( PropertyObject );
                  if( OWGetClassPropertiesOfTypeNamePrefix( String(PropList[i].Name) + '.', PropertyObject, TypeName, AStrings, SaveValue, ALevel + 1, APropertyStack )) then
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
//---------------------------------------------------------------------------
function  OWGetClassPropertiesOfTypeName( AClass : TObject; TypeName : String; AStrings : TStrings; SaveValue : Boolean ) : Boolean;
var
  APropertyStack : TList;

begin
  APropertyStack := TList.Create();
  Result := OWGetClassPropertiesOfTypeNamePrefix( '', AClass, TypeName, AStrings, SaveValue, 0, APropertyStack );
  APropertyStack.Free(); 
end;
//---------------------------------------------------------------------------
function OWValueToString( StreamPin : TOWBasicPin; Linking : String; AddRoot : Boolean; SaveValue : Boolean ) : String;
var
  PinIndex : Integer;
  LinkPath : String;

begin
  if( StreamPin = NIL ) then
    begin
//    Result := '(Disconnected)';
    Result := '';
    Exit;
    end;

  if( StreamPin.Owner = NIL ) then
    begin
    Result := '(No owner)';
    Exit;
    end;

  if( StreamPin.FOwnerPinList <> NIL ) then
    begin
    LinkPath := StreamPin.Owner.Name + '.' + OWGetClassPropertyNameForPropertyObject( StreamPin.Owner, 'TOWPinList', StreamPin.FOwnerPinList );
    for PinIndex := 0 to StreamPin.FOwnerPinList.Count - 1 do
      begin
      if( StreamPin.FOwnerPinList.Pins[ PinIndex ] = StreamPin ) then
        begin
        if( SaveValue ) then
          LinkPath := LinkPath + '._Pin' + IntToStr( PinIndex )

        else
          LinkPath := LinkPath + '.' + StreamPin.FOwnerPinList.Names[ PinIndex ];

        Break;
        end;
      end;

    end

  else
    LinkPath := StreamPin.Owner.Name + '.' + OWGetClassPropertyNameForPropertyObject( StreamPin.Owner, 'TOWPin', StreamPin );

  Result := LinkPath;
  if( AddRoot ) then
    Result := StreamPin.GetRootName() + '.' + LinkPath;

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
  IntList       : TStringList;
  i, j          : Integer;
  Component     : TComponent;
  CanConnect    : Boolean;

begin
  Result := True;
  IntList := TStringList.Create();
  for i := 0 to OwnerComponent.ComponentCount - 1 do
    begin
    Component := OwnerComponent.Components [ i ];
    IntList.Clear();
    if( not OWGetClassPropertiesOfTypeName( Component, 'TOWPin', IntList, pvoSaveValue in ValueFilters )) then
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
  procedure GetModules( const FileName, UnitName, FormName, DesignClass: string; CoClasses: TStrings );

end;

procedure TOWModulesColection.GetModules( const FileName, UnitName, FormName, DesignClass: string; CoClasses: TStrings );
begin
  if( FormName <> '' ) then
    Add( FormName );

end;
}

function  OWGetPinsValueList( List : TStrings; StreamPin : TOWPin; Link : String; ValueFilters : TOWPinValueFilters ) : Boolean;
var
  MainComponent : TComponent;
//  Forms : TOWModulesColection;
//  Form : TCustomForm;

begin
//  Forms := TOWModulesColection.Create();
//  MainComponent := GetMainOwnerComponent( StreamPin.Owner );
  
//  if( Assigned( Designer )) then
//    Designer.GetProjectModules( Forms.GetModules );
    
  MainComponent := OWGetMainOwnerComponent( StreamPin.Owner );
  Result := OWGetPinsValueListSingleRoot( List, MainComponent, StreamPin, Link, '', ValueFilters );

//  Forms.Free();
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWPinStreamType.AddType( ID : TGUID; SubmitFunction : TOWSubmit );
var
  Entry : TOWPinTypeEntry;
  I     : Integer;

begin
  for I := 0 to Length( Types ) - 1 do
    begin
    if( IsEqualGUID( Types[ I ].ID, ID )) then
      begin
      Types[ I ].SubmitFunction := SubmitFunction;
      Exit;
      end;

    end;

  Entry.ID := ID;
  Entry.SubmitFunction := SubmitFunction;
  SetLength( Types, Length( Types ) + 1 );
  Types[ Length( Types ) - 1 ] := Entry;
end;


procedure TOWPinStreamType.RemoveType( ID : TGUID );
var
  I : Integer;
  J : Integer;

begin
  for I := 0 to Count - 1 do
    begin
    if( IsEqualGUID( Types[ I ].ID, ID )) then
      begin
      for J := I to Count - 2 do
        Types[ J ] := Types[ J + 1 ];

      SetLength( Types, Length( Types ) - 1 );
      Break;
      end;
    end;
end;

procedure TOWPinStreamType.ClearTypes();
begin
  SetLength( Types, 0 );
end;

procedure TOWPinStreamType.SwapPosition( Index1 : Integer; Index2 : Integer );
var
  Temp : TOWPinTypeEntry;

begin
  Temp := Types[ Index1 ];
  Types[ Index1 ] := Types[ Index2 ];
  Types[ Index2 ] := Temp; 
end;

//---------------------------------------------------------------------------

function TOWPinStreamType.GetSubmitFunc( Index : Integer ) : TOWSubmit;
begin
  Result := Types[ Index ].SubmitFunction;
end;

//---------------------------------------------------------------------------
function TOWPinStreamType.GetID( Index : Integer ) : TGUID;
begin
  Result := Types[ Index ].ID;
end;

//---------------------------------------------------------------------------

function TOWPinStreamType.GetLength() : Integer;
begin
  Result := Length( Types );
end;

//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWPinList.Create( AOwner : TComponent; IsPinsOwner : Boolean );
var
  AWriteLock : IOWLockSection;

begin
  inherited Create();

  AWriteLock := WriteLock();

  FOwner := AOwner;
  FPinsList := TStringList.Create();
  FPinsOwner := IsPinsOwner;
end;
//---------------------------------------------------------------------------
constructor TOWPinList.CreateLock( AOwner: TComponent; AOwnerLock : IOWLock; IsPinsOwner : Boolean );
var
  AWriteLock : IOWLockSection;

begin
  inherited Create();

  AWriteLock := WriteLock();

  FOwnerLock := AOwnerLock;
  FOwner := AOwner;
  FPinsList := TStringList.Create();
  FPinsOwner := IsPinsOwner;
end;
//---------------------------------------------------------------------------
destructor TOWPinList.Destroy();
var
  AWriteLock : IOWLockSection;

begin
//  CheckLoaded();

  AWriteLock := WriteLock();
  Clear();
  FPinsList.Free();

  FPinsList := NIL;

  AWriteLock := NIL;
  
  inherited;
end;
//---------------------------------------------------------------------------
procedure TOWPinList.AfterConstruction();
begin
  inherited;
  OWNotifyAddPinList( Self );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.BeforeDestruction();
begin
  OWNotifyRemovePinList( Self );
  inherited;
end;
//---------------------------------------------------------------------------
function  TOWPinList.ReadLock()  : IOWLockSection;
begin
  Result := TOWSimpleReadLockSection.Create( FIntLock, FOwnerLock );
end;
//---------------------------------------------------------------------------
function  TOWPinList.WriteLock() : IOWLockSection;
begin
  Result := TOWSimpleWriteLockSection.Create( FIntLock, FOwnerLock );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.Clear();
var
  I : Integer;
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FPinsOwner ) then
    begin
    FInUnload := True;
    for I := 0 to Count - 1 do
      Pins[ I ].Free();

    FInUnload := False;
    end

  else
    for I := 0 to Count - 1 do
      if( Pins[ I ].FOwnerPinList = Self ) then
        begin
        Pins[ I ].FOwnerPinList := NIL;
        OWNotifyChangePin( Pins[ I ] );
        end;

  FPinsList.Clear();

  LastIndicatedCount := -1;

  OWNotifyChangePinList( Self );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.CleanUnloaded();
var
  I          : Integer;

begin
  if( FOwner <> NIL ) then
    begin
    if( not (( csDesigning in FOwner.ComponentState ) or ( csLoading in FOwner.ComponentState ))) then
      begin
      for I := Count - 1 downto 0 do
        begin
        if( Pins[ I ] is TOWUnloadedPin ) then
          begin
          Delete( I );
          Dec( FUnloadedCount );
          if( FUnloadedCount = 0 ) then
            Break;

          end;

        end;
      end;

    end;

end;
//---------------------------------------------------------------------------
procedure TOWPinList.ApplyFormName( var Ident : String );
begin
  if( FLoadFormName <> '' ) then
    if( Pos( FLoadFormName, Ident ) = 1 ) then
      begin
      System.Delete( Ident, 1, Length( FLoadFormName ));
      Ident := OWGetMainOwnerComponent( FOwner ).Name + Ident;
      end;
     
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
  AReadLock : IOWLockSection;

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
  AReadLock : IOWLockSection;

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
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();
  FPinsList.Objects[ Item ] := Pin;
  OWNotifyChangePin( Pin );
end;
//---------------------------------------------------------------------------
function TOWPinList.GetName( Item : Integer ) : String;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := FPinsList.Strings[ Item ];
  if( Result = '' )then
    Result := 'Pin [' + IntToStr( Item ) + ']';

end;
//---------------------------------------------------------------------------
procedure TOWPinList.SetPinName( Pin : TOWPin; Name : String );
var
  I : Integer;
  AWriteLock : IOWLockSection;

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
function  TOWPinList.GetStoredName( Item : Integer ) : String;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := FPinsList.Strings[ Item ];
end;
//---------------------------------------------------------------------------
function  TOWPinList.GetListName() : String;
begin
  Result := {FOwner.Name + '.' +} OWGetClassPropertyNameForPropertyObject( FOwner, 'TOWPinList', Self )
end;
//---------------------------------------------------------------------------
procedure TOWPinList.SetName( Item : Integer; Name : String );
var
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( Item >= FPinsList.Count ) then
    Exit;

  if( Name = 'Pin [' + IntToStr( Item ) + ']' ) then
    Name := '';

  if( FPinsList.Strings[ Item ] <> Name ) then
    begin
    FPinsList.Strings[ Item ] := Name;
    LastIndicatedCount := -1;
    OWNotifyChangePin( Pins[ Item ] );
    end;

end;
//---------------------------------------------------------------------------
{
procedure TOWPinList.AddHidden( Item : TOWPin );
begin
  FPinsList.AddObject( '', Item );
  OWNotifyChangePinList( Self );
  OWPinAwaitsReset();
end;
}
//---------------------------------------------------------------------------
procedure TOWPinList.Swap( Index1 : Integer; Index2 : Integer );
var
  TmpObject : TObject;
  TmpName   : String;
  AWriteLock : IOWLockSection;

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
function  TOWPinList.IndexOf( Item : TOWBasicPin ) : Integer;
var
  I : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  for I := 0 to FPinsList.Count - 1 do
    begin
    if( FPinsList.Objects[ I ] = Item )then
      begin
      Result := I;
      Exit;
      end
    end;

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
  AWriteLock : IOWLockSection;
  I : Integer;
  WasAdded : Boolean;
  AUnloadedPin : TOWUnloadedPin;

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
      OWNotifyChangePin( Item );
      end;

  OWNotifyChangePinList( Self );
  OWNotifyPinListPinAdded( Self, Item, FPinsList.Count - 1 );
  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWPinList.InsertNamed( Index : Integer; Item : TOWBasicPin; Name : String );
var
  AWriteLock : IOWLockSection;
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

{
  else if( FUnloadedCount > 0 ) then
    for I := 0 to FPinsList.Count - 1 do
      begin
      if( Pins[ I ] is TOWUnloadedPin ) then
        begin
        AUnloadedPin := TOWUnloadedPin( Pins[ I ] );
        FPinsList.Strings[ I ] := Name;
        FPinsList.Objects[ I ] := Item;
        WasAdded := True;
        AUnloadedPin.PopulatePinAndDestroy( Item );

        Dec( FUnloadedCount );
        Break;
        end;

      end;
}
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
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FPinsOwner ) then
    TOWPin( FPinsList.Objects[ Index ] ).Free()

  else
    if( TOWPin( FPinsList.Objects[ Index ] ).FOwnerPinList = Self ) then
      begin
      TOWPin( FPinsList.Objects[ Index ] ).FOwnerPinList := NIL;
      OWNotifyChangePin( TOWPin( FPinsList.Objects[ Index ] ) );
      end;

  OWNotifyPinListPinRemoved( Self, TOWPin( FPinsList.Objects[ Index ] ), Index );

  FPinsList.Delete( Index );
  OWNotifyChangePinList( Self );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.Remove( Item : TOWBasicPin );
var
  I : Integer;
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();
  I:= 0;
//  for I:= 0 to FPinsList.Count - 1 do
  while( I < FPinsList.Count ) do
    begin
    if( FPinsList.Objects[ I ] = Item )then
      begin
      if( FPinsOwner ) then
        Item.Free()

      else
        if( Item.FOwnerPinList = Self ) then
          begin
          Item.FOwnerPinList := NIL;
          OWNotifyChangePin( Item );
          end;

      OWNotifyPinListPinRemoved( Self, TOWPin( FPinsList.Objects[ I ] ), I );
      FPinsList.Delete( I );
      end

    else
      Inc( I );

    end;

  OWNotifyChangePinList( Self );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.ConnectPin( CurrentPinIndex : Integer; AType : TOWPinType; AToType : TOWPinType; Ident : String; IdentName : String );
var
  ATmpPin             : TOWBasicPin;
  ABasePin            : TOWBasicPin;
  ATmpIdent           : String; 

begin
  if( FPinsList.Count > CurrentPinIndex ) then
    begin
    ATmpPin := Pins[ CurrentPinIndex ];

    ABasePin := GOWUnloadedPins.GetByIdentName( GetRoot(), ATmpPin.GetFullIdentName( False ) );
    if( ABasePin = NIL ) then
      ABasePin := GOWUnloadedPins.GetByDisplayName( GetRoot(), ATmpPin.GetFullName( False ) );

    if( ABasePin <> NIL ) then
      if( ABasePin <> ATmpPin ) then
        TOWUnloadedPin( ABasePin ).PopulatePinAndDestroy( ATmpPin );

    end

  else
    begin
    ATmpPin := NIL;
    while( FPinsList.Count <= CurrentPinIndex ) do
      begin
      ATmpIdent := GetRoot().Name + '.' + FOwner.Name + '.' + GetListName() + '._Pin' + IntToStr( FPinsList.Count );
      ApplyFormName( ATmpIdent );
      ATmpPin := GOWPins.GetByNameCreate( GetRoot(), AType, ATmpIdent, ATmpIdent, ATmpIdent );
      Add( ATmpPin );
      end;
      
    end;

  ApplyFormName( Ident );
  ApplyFormName( IdentName );
  ABasePin := GOWPins.GetByNameCreate( GetRoot(), AToType, Ident, IdentName, ATmpPin.GetFullName( True ) );
  ATmpPin.Connect( ABasePin );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.ReadPinsOwner( Reader : TReader );
begin
  Reader.ReadBoolean();
end;
//---------------------------------------------------------------------------
procedure TOWPinList.ReadConnectionsData( Reader : TReader );
var
  Ident               : String;
  IdentName           : String;
  CurrentPinIndex     : Integer;
  AWriteLock          : IOWLockSection;

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

              ConnectPin( CurrentPinIndex, ptEventSink, ptSource, Ident, IdentName );
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

            ConnectPin( CurrentPinIndex, ptEventSink, ptSource, Ident, IdentName );
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
  I      : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Writer.WriteListBegin();
  for I := 0 to Count - 1 do
    begin
    Pins[ I ].WriteListEntry( Writer );
{
    if( Pins[ I ].DoStateWrite() ) then
      begin
      // Write all the pin connections under the State indicator !
      Writer.WriteIdent( 'State' );
      Writer.WriteListBegin();
      Pins[ I ].WriteStateConnectionsData( Writer );
      if( Pins[ I ] is TOWSinkPin ) then
        begin
        if( TOWSinkPin( Pins[ I ] ).DoWrite() ) then
          TOWSinkPin( Pins[ I ] ).WriteConnectionsData( Writer );

        end

      else if( Pins[ I ] is TOWEventSinkPin ) then
        begin
        if( TOWEventSinkPin( Pins[ I ] ).DoWrite() ) then
          begin
          Writer.WriteIdent( 'Sources' );
          TOWEventSinkPin( Pins[ I ] ).WriteConnectionsData( Writer );
          end;

        end

      else if( Pins[ I ] is TOWSourcePin ) then
        begin
        if( TOWSourcePin( Pins[ I ] ).DoWrite() ) then
          begin
          Writer.WriteIdent( 'Sinks' );
          TOWSourcePin( Pins[ I ] ).WriteConnectionsData( Writer );
          end;

        end;

      Writer.WriteListEnd();
      Continue;
      end

    else if( Pins[ I ] is TOWSinkPin ) then
      begin
      if( TOWSinkPin( Pins[ I ] ).DoWrite() ) then
        begin
        TOWSinkPin( Pins[ I ] ).WriteConnectionsData( Writer );
        Continue;
        end
      end

    else if( Pins[ I ] is TOWEventSinkPin ) then
      begin
      if( TOWEventSinkPin( Pins[ I ] ).DoWrite() ) then
        begin
        Writer.WriteIdent( 'Sources' );
        TOWEventSinkPin( Pins[ I ] ).WriteConnectionsData( Writer );
        Continue;
        end
      end

    else if( Pins[ I ] is TOWSourcePin ) then
      begin
      if( TOWSourcePin( Pins[ I ] ).DoWrite() ) then
        begin
        Writer.WriteIdent( 'Sinks' );
        TOWSourcePin( Pins[ I ] ).WriteConnectionsData( Writer );
        Continue;
        end
      end;

    Writer.WriteIdent( 'nil' );
}
    end;

  Writer.WriteListEnd();
end;
//---------------------------------------------------------------------------
function  TOWPinList.DoWrite() : Boolean;
var
  I         : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := True;

  for I := 0 to Count - 1 do
    if( Pins[ I ].IsConnected() ) then
      Exit;

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
  Writer.WriteIdent( OWGetMainOwnerComponent( FOwner ).Name ); 
end;
//---------------------------------------------------------------------------
procedure TOWPinList.DefineProperties(Filer: TFiler);
begin
  inherited;
  Filer.DefineProperty( 'Form', ReadFormName, WriteFormName, True );
  Filer.DefineProperty( 'Pins', ReadConnectionsData, WriteConnectionsData, DoWrite());
  Filer.DefineProperty( 'PinsOwner', ReadPinsOwner, NIL, False );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWPinListOwner.Create( AOwner : TComponent; APinCreateFunction : TOWPinCreateFunction; APinDestroyFunction : TOWPinDestroyFunction );
var
  AWriteLock : IOWLockSection;

begin
  inherited Create( AOwner, True );

  AWriteLock := WriteLock();
  FMinPins := 0;
  FMaxPins := 100;

  FPinCreateFunction := APinCreateFunction;
  FPinDestroyFunction := APinDestroyFunction;
end;
//---------------------------------------------------------------------------
constructor TOWPinListOwner.CreateEx( AOwner : TComponent; AMinPins : Integer; AMaxPins : Integer; APinCreateFunction : TOWPinCreateFunction; APinDestroyFunction : TOWPinDestroyFunction = NIL );
var
  AWriteLock : IOWLockSection;

begin
  inherited Create( AOwner, True );

  AWriteLock := WriteLock();
  FMinPins := AMinPins;

  if( FMinPins < 0 ) then
    FMinPins := 0;

  FMaxPins := AMaxPins;

  FPinCreateFunction  := APinCreateFunction;
  FPinDestroyFunction := APinDestroyFunction;

  SetCount( FMinPins );
end;
//---------------------------------------------------------------------------
constructor TOWPinListOwner.CreateLock( AOwner : TComponent; AOwnerLock : IOWLock; APinCreateFunction : TOWPinCreateFunction; APinDestroyFunction : TOWPinDestroyFunction );
var
  AWriteLock : IOWLockSection;

begin
  inherited CreateLock( AOwner, AOwnerLock, True );

  AWriteLock := WriteLock();
  FMinPins := 0;
  FMaxPins := 100;

  FPinCreateFunction := APinCreateFunction;
  FPinDestroyFunction := APinDestroyFunction;
end;
//---------------------------------------------------------------------------
constructor TOWPinListOwner.CreateLockEx( AOwner : TComponent; AOwnerLock : IOWLock; AMinPins : Integer; AMaxPins : Integer; APinCreateFunction : TOWPinCreateFunction; APinDestroyFunction : TOWPinDestroyFunction = NIL );
var
  AWriteLock : IOWLockSection;

begin
  inherited CreateLock( AOwner, AOwnerLock, True );

  AWriteLock := WriteLock();
  FMinPins := AMinPins;

  if( FMinPins < 0 ) then
    FMinPins := 0;

  FMaxPins := AMaxPins;

  FPinCreateFunction  := APinCreateFunction;
  FPinDestroyFunction := APinDestroyFunction;

  SetCount( FMinPins );
end;
//---------------------------------------------------------------------------
procedure TOWPinListOwner.BeforeDestruction();
begin
  FMinPins := 0;
  Count := 0;
  inherited;
end;
//---------------------------------------------------------------------------
{
destructor TOWPinListOwner.Destroy();
var
  I : Integer;

begin
  for I := 0 to Count - 1 do
    Pins[ I ].Free();

  inherited;
end;
}
//---------------------------------------------------------------------------
procedure TOWPinListOwner.SetCount( ACount : Integer );
var
  Pin : TOWBasicPin;
  AWriteLock : IOWLockSection;

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
  Ident             : String;
  IdentName         : String;
  Pin               : TOWBasicPin;
  DecCounter        : Integer;
  Counter           : Integer;
  AWriteLock        : IOWLockSection;

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
function  TOWPinListOwner.DoWrite() : Boolean;
begin
  Result := True;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStatePin.Create(AOwner: TComponent);
begin
  inherited;
end;
//---------------------------------------------------------------------------
constructor TOWStatePin.CreateLock(AOwner: TComponent; AOwnerLock : IOWLock);
begin
  inherited;
end;
//---------------------------------------------------------------------------
{
destructor  TOWStatePin.Destroy();
begin
  Disconnect();
  inherited;
end;
}
//---------------------------------------------------------------------------
procedure TOWStatePin.UpdateStateValue();
var
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FDispatcher <> NIL ) then
    FDispatcher.NewConnection( Self );
    
end;
//---------------------------------------------------------------------------
function  TOWStatePin.TryLinkTo( Root : TComponent; SinkName : String ) : Boolean;
var
  Values           : TStringList;
  OtherPin         : TOWPin;
  I                : Integer;
  RootName         : String;
  MyRoot           : TComponent;
  PinValueFilters  : TOWPinValueFilters;
  AWriteLock : IOWLockSection;

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
    MyRoot := OWGetMainOwnerComponent( Owner );
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
function  TOWStatePin.IsCompatible( const OtherPin : TOWBasicPin; UseConverters : Boolean ) : Boolean;
var
//  StatePin : TOWStatePin;
  AConverter : TOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  AReadLock : IOWLockSection;

begin
  if( OtherPin = NIL ) then
    begin
    Result := True;
    Exit
    end;

{
  if( not ( OtherPin is TOWStatePin )) then
    begin
    Result := False;
    Exit
    end;
}

//  StatePin := TOWStatePin( OtherPin );

  Result := False;
  AReadLock := ReadLock();
  if( OtherPin is TOWStatePin ) then
    begin
    Result := not IsEqualGUID( FindConnectionID( OtherPin, AConverter, AConverterClass, UseConverters ), OWNULLID );
    if( Result ) then
      Result := not IsEqualGUID( OtherPin.FindConnectionID( Self, AConverter, AConverterClass, UseConverters ), OWNULLID );

    end

  else if(  OtherPin is TOWBasicSinkPin ) then
    Result := not IsEqualGUID( FindConnectionID( OtherPin, AConverter, AConverterClass, UseConverters ), OWNULLID )

  else if( OtherPin is TOWSourcePin ) then
    Result := not IsEqualGUID( OtherPin.FindConnectionID( Self, AConverter, AConverterClass, UseConverters ), OWNULLID );

{
  Result := SourcePin.CheckDownStreamInterfaces( Self );
//  if( not Result ) then
//    Result := FIgnoreUpstream;

  if( Result ) then
    Result := CheckUpStreamInterfaces( SourcePin );
}
end;
//---------------------------------------------------------------------------
function  TOWStatePin.GetConnectionID( const OtherPin : TOWBasicPin ) : TGUID;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  if( IsConnectedTo( OtherPin )) then
    Result := GetStateSubmitID( OtherPin )

  else
    Result := OWNULLID;

end;
//---------------------------------------------------------------------------
function  TOWStatePin.DependsOn( const OtherPin : TOWBasicPin ) : Boolean;
begin
  Result := DirectDependsOn( OtherPin );
end;
//---------------------------------------------------------------------------
function  TOWStatePin.DirectDependsOn( const OtherPin : TOWBasicPin ) : Boolean;
begin
  Result := IsConnectedTo( OtherPin );
end;
//---------------------------------------------------------------------------
function  TOWStatePin.GetPinType() : TOWPinType;
begin
  Result := ptState;
end;
//---------------------------------------------------------------------------
function  TOWStatePin.GetLinkStr( StatePin : TOWPin ) : String;
var
  AddRoot   : Boolean;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  AddRoot := OWGetMainOwnerComponent( StatePin.Owner ) <> OWGetMainOwnerComponent( Owner );
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
function  TOWStatePin.GetEditorString() : String;
begin
  if( FDispatcher = NIL ) then
    begin
    Result := GOWDISCONNECTED;
    Exit;
    end;

  if( FDispatcher.PinCount = 2 ) then
    begin
    if( FDispatcher.Pins[ 0 ].GetFullIdentName( True ) = GetFullIdentName( True ) ) then
      Result := FDispatcher.Pins[ 1 ].GetFullName( True )

    else
      Result := FDispatcher.Pins[ 0 ].GetFullName( True );

    end

  else
    Result := FDispatcher.Name;

end;
//---------------------------------------------------------------------------
function TOWStatePin.SetEditorString( ARoot : TComponent; const AValue: string ) : Boolean;
var
  ADispatcher : TOWStateDispatcher;
  
begin
  Result := False;
  if( ( AValue = '' ) or ( AValue = GOWDISCONNECTED ) ) then
    begin
    Disconnect();
    Result := True;
    Exit;
    end;

  ADispatcher := TOWStateDispatcher.GetByName( AValue, True );
    
  if( ADispatcher <> NIL ) then
    if( ConnectToState( ADispatcher )) then  
      begin
      Result := True;
      Exit;
      end;

  if( TryLinkTo( ARoot, AValue )) then
    begin
    Result := True;
    end;
    
end;
//---------------------------------------------------------------------------
function TOWStatePin.CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : TOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean ) : Boolean;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := False;
  if( not( FOwner is TOWFormatConverter ) and not( OtherPin.Owner is TOWFormatConverter )) then
    begin 
    if( ( OtherPin.OwnerInDesigning() ) and ( not ( OwnerInDesigning() ))) then
      Exit;

    if( ( not ( OtherPin.OwnerInDesigning() )) and ( OwnerInDesigning() )) then
      Exit;

    end;

//  if( OtherPin is TOWStatePin ) then
  if( OtherPin is TOWSourcePin ) then
    Result := not IsEqualGUID( OtherPin.FindConnectionID( Self, AConverter, AConverterClass, UseConverters ), OWNULLID )

  else
    Result := not IsEqualGUID( FindConnectionID( OtherPin, AConverter, AConverterClass, UseConverters ), OWNULLID );

end;
//---------------------------------------------------------------------------
function  TOWStatePin.GetPinCount() : Integer;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := 0;
  
  if( FDispatcher <> NIL ) then
    Result := FDispatcher.PinCount;

end;
//---------------------------------------------------------------------------
function  TOWStatePin.GetPin( Index : Integer ) : TOWBasicPin;
var
  AReadLock : IOWLockSection;

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
class function TOWStateDispatcher.GetByName( Name : String; DesignTime : Boolean ) : TOWStateDispatcher;
var
  I : Integer;

begin
  GlobalStorageSection.Enter();
  for I := 0 to Dispatchers( DesignTime ).Count - 1 do
    begin
    Result := TOWStateDispatcher( Dispatchers( DesignTime ).Items[ I ] );
    if( Result.FName = Name ) then
      begin
      GlobalStorageSection.Leave();
      Exit;
      end;

    end;

  GlobalStorageSection.Leave();
  Result := NIL;
end;
//---------------------------------------------------------------------------
class function TOWStateDispatcher.GetByNameCreate( APin : TOWBasicPin; Name : String; DesignTime : Boolean ) : TOWStateDispatcher;
var
  I : Integer;

begin
  GlobalStorageSection.Enter();
  for I := 0 to Dispatchers( DesignTime ).Count - 1 do
    begin
    Result := TOWStateDispatcher( Dispatchers( DesignTime ).Items[ I ] );
    if( Result.FName = Name ) then
      begin
      GlobalStorageSection.Leave();
      Exit;
      end;

    end;

  GlobalStorageSection.Leave();
//  Result := TOWStateDispatcher.CreateNamed( Name, DesignTime );
  Result := APin.CreateNamedDispatcher( Name, DesignTime );
end;
//---------------------------------------------------------------------------
class function TOWStateDispatcher.GetUniqueName( OwnerForm : TComponent ) : String;
var
  I        : Integer;
  NotFound : Boolean;
  Index    : Integer;

begin
  Index := 0;
  GlobalStorageSection.Enter();
  
  repeat
    begin
    Inc( Index );
    Result := OwnerForm.Name + 'Link' + IntToStr( Index );
    NotFound := True;
    for I := 0 to Dispatchers( csDesigning in OwnerForm.ComponentState ).Count - 1 do
      begin
      if( TOWStateDispatcher( Dispatchers( csDesigning in OwnerForm.ComponentState ).Items[ I ] ).FName = Result ) then
        begin
        NotFound := False;
        Break;
        end;
      end;
    end;
  until NotFound;

  GlobalStorageSection.Leave();
end;
//---------------------------------------------------------------------------
class function TOWStateDispatcher.IsUniqueName( Name : String; DesignTime : Boolean ) : Boolean;
var
  I        : Integer;

begin
  Result := False;

  GlobalStorageSection.Enter();
  for I := 0 to Dispatchers( DesignTime ).Count - 1 do
    if( TOWStateDispatcher( Dispatchers( DesignTime ).Items[ I ] ).FName = Name ) then
      begin
      GlobalStorageSection.Leave();
      Exit;
      end;

  GlobalStorageSection.Leave();
  Result := True;
end;
//---------------------------------------------------------------------------
constructor TOWStateDispatcher.CreateNamed( Name : String; DesignTime : Boolean );
var
  AWriteLock : IOWLockSection;

begin
  inherited Create();
  AWriteLock := WriteLock();
  FName := Name;
  FPins :=  TOWDispatcherPinStorageList.Create( True );
  FFormatConverters := TOWFormatConverterList.Create();
  FSavedForms := TList.Create();
  GlobalStorageSection.Enter();
  Dispatchers( DesignTime ).Add( Self );
  GlobalStorageSection.Leave();
end;
//---------------------------------------------------------------------------
constructor TOWStateDispatcher.Create( OwnerForm : TComponent );
begin
  CreateNamed( GetUniqueName( OwnerForm ), csDesigning in OwnerForm.ComponentState );
end;
//---------------------------------------------------------------------------
destructor  TOWStateDispatcher.Destroy();
var
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();

  GlobalStorageSection.Enter();
  Dispatchers( True ).Remove( Self );
  Dispatchers( False ).Remove( Self );
  GlobalStorageSection.Leave();
  FFormatConverters.Free();
  FPins.Free();               
  FSavedForms.Free();

  AWriteLock := NIL;
  inherited;
end;
//---------------------------------------------------------------------------
{
procedure TOWStateDispatcher.AfterConstruction();
begin
  inherited;
  OWNotifyAddDispatcher( Self );
end;
}
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.BeforeDestruction();
//var
//  DesignFormClosing : Boolean;

begin
{
  DesignFormClosing := False;
  if( OwnerInDesigning() ) then
    if( RootInDestroying() ) then
      DesignFormClosing := True;

  OWNotifyRemoveDispatcher( Self, DesignFormClosing );
}
  OWNotifyRemoveDispatcher( Self, False );
  inherited;
end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.NewConnection( APin : TOWPin );
var
  I : Integer;
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();
  for I := 0 to PinCount - 1 do
    begin
    if( Pins[ I ] is TOWSourcePin ) then
      begin
      if( Pins[ I ] = APin ) then
        Pins[ I ].NotifyDispatcher( TOWNotifyOperation.Create(), [nsNewLink], NIL )

      else
        Pins[ I ].NotifyDispatcher( TOWNotifyOperation.Create(), [nsNewLink], APin );

      Exit;
      end;

    end;

  for I := 0 to PinCount - 1 do
    if( not( Pins[ I ] is TOWBasicSinkPin )) then
      begin
      if( Pins[ I ] = APin ) then
        Pins[ I ].NotifyDispatcher( TOWNotifyOperation.Create(), [nsNewLink], NIL )

      else
        Pins[ I ].NotifyDispatcher( TOWNotifyOperation.Create(), [nsNewLink], APin );
        
      end;

end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.GetPinCount() : Integer;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := FPins.Count;
end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.GetPin( Index : Integer ) : TOWBasicPin;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := FPins.Items[ Index ].RealPin;
end;
//---------------------------------------------------------------------------
function  TOWStateDispatcher.GetConnectionPin( Index : Integer ) : TOWBasicPin;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := FPins.Items[ Index ].DConnectionPin;
end;
//---------------------------------------------------------------------------
function  TOWStateDispatcher.GetAfterPin( Index : Integer ) : TOWBasicPin;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := FPins.Items[ Index ].AfterPin;
end;
//---------------------------------------------------------------------------
function  TOWStateDispatcher.GetConnectedAfterForPin( OtherPin : TOWBasicPin ) : TOWBasicPin;
var
  I         : Integer;

begin
  for I := 0 to FPins.Count - 1 do
    begin
    if( FPins[ I ].RealPin = OtherPin ) then
      begin
      Result := FPins[ I ].AfterPin;
      Exit;
      end; 
    end;

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
  AWriteLock       : IOWLockSection;
  APinStorage      : TOWDispatcherPinStorage;

begin
  AWriteLock := WriteLock();
  if( IsConnectedTo( AConnectionPin )) then
    Exit;


  APinStorage := TOWDispatcherPinStorage.Create();
  APinStorage.DConnectionPin := AConnectionPin;
  APinStorage.RealPin := ARealPin;
  APinStorage.AfterPin := NotifyAfterPin; 
  FPins.Add( APinStorage );
  OWNotifyChangeDispatcher( Self );
end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.PinDeletedNotify( ADeletedPin : TOWBasicPin );
var
  I : Integer;

begin
  for I := 0 to FPins.Count - 1 do
    if( FPins[ I ].AfterPin = ADeletedPin ) then
      FPins[ I ].AfterPin := NIL;

end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.DisconnectAll();
var
  AWriteLock : IOWLockSection;

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

//  OWNotifyChangeDispatcher( Self );
end;
//---------------------------------------------------------------------------
function  TOWStateDispatcher.CanConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin; UseConverters : Boolean ) : Boolean;
var
  AReadLock : IOWLockSection;
  I         : Integer;

begin
  if( NotifyAfterPin = NIL ) then
    begin
    Result := True;
    Exit;
    end;
    
  AReadLock := ReadLock();

  Result := False;
  if( OtherPin = NotifyAfterPin ) then
    Exit;

  for I := 0 to PinCount - 1 do
    begin
    if( Pins[ I ] = NotifyAfterPin ) then
      begin
      if( AfterPins[ I ] <> NIL ) then
        Result := CanConnectAfter( OtherPin, AfterPins[ I ], UseConverters )

      else
        Result := True;
        
      Break;
      end;

    end;

end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.RemovePin( APin : TOWBasicPin );
var
  AWriteLock       : IOWLockSection;
  I                : Integer;
  AAfterPin        : TOWBasicPin;

begin
  AWriteLock := WriteLock();
  AAfterPin := NIL;
  for I := 0 to FPins.Count - 1 do
    if( FPins.Items[ I ].RealPin = APin ) then
      begin
      FPins.Items[ I ].RealPin.FDispatcher := NIL;
      FPins.Items[ I ].DConnectionPin.FDispatcher := NIL;
      AAfterPin := FPins.Items[ I ].AfterPin;
      FPins.Delete( I );
      Break;
      end;
      
  for I := 0 to FPins.Count - 1 do
    if( FPins.Items[ I ].AfterPin = AAfterPin ) then
      begin
      FPins.Items[ I ].AfterPin := NIL;
      Break;
      end;

  if( FPins.Count = 1 ) then
    begin
    // Remove the last refference.
    FPins.Items[ 0 ].RealPin.FDispatcher := NIL;
    FPins.Items[ 0 ].DConnectionPin.FDispatcher := NIL;
    FPins.Clear();
    end;

  OWNotifyChangeDispatcher( Self );

  if( FPins.Count = 0 ) then
    begin
    AWriteLock := NIL;
    Free();
    end;

end;
//---------------------------------------------------------------------------
function  TOWStateDispatcher.IsConnectedTo( APin : TOWBasicPin ) : Boolean;
var
  I : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := True;
  for I := 0 to FPins.Count - 1 do
    if( Pins[ I ] = APin ) then
      Exit;

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.IsCrosForm() : Boolean;
var
  I : Integer;
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := True;
  for I := 1 to FPins.Count - 1 do
    if( Pins[ 0 ].GetRootName() <> Pins[ I ].GetRootName() ) then
      Exit;

  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.ResetFormsSave();
var
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();
  FSavedForms.Clear();
  FCountSaved := 0;
end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.AddFormSaved( AOwnerComponent : TComponent );
var
  AWriteLock : IOWLockSection;

begin
  AWriteLock := WriteLock();
  if( FSavedForms.IndexOf( AOwnerComponent ) = -1 ) then
    FSavedForms.Add( AOwnerComponent );

  Inc( FCountSaved );
end;
//---------------------------------------------------------------------------
function  TOWStateDispatcher.IsFormSaved( AOwnerComponent : TComponent ) : Boolean;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := ReadLock();
  Result := ( FSavedForms.IndexOf( AOwnerComponent ) <> -1 );
end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.GetAfterPinDisplayName( APin : TOWPin ) : String;
var
  I : Integer;
  
begin
  for I := 0 to PinCount - 1 do
    begin
    if( Pins[ I ] = APin ) then
      begin
      Result := Pins[ I ].GetFullName( True );
      Exit;
      end;
       
    end;

  Result := '';
end;
//---------------------------------------------------------------------------
function  TOWStateDispatcher.ConnectedToForm( OwnerComponent : TComponent ) : Boolean;
var
  I : Integer;
  AWriteLock : IOWLockSection;

begin
  Result := False;
  if( OwnerComponent = NIL ) then
    Exit;
    
  AWriteLock := WriteLock();
  Result := True;
  for I := 0 to PinCount - 1 do
    if( Pins[ I ].GetRootName() = OwnerComponent.Name ) then
      Exit;

  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.SetNotifyAfterByName( APin : TOWPin; AfterPinName : String );
var
  I : Integer;
  AAfterPin  : TOWBasicPin;
  
begin
  AAfterPin := NIL;
  for I := 0 to FPins.Count - 1 do
    begin
    if( ( FPins[ I ].RealPin.GetFullName( False ) = AfterPinName ) or ( FPins[ I ].RealPin.GetFullName( True ) = AfterPinName )) then
      begin
      AAfterPin := FPins[ I ].RealPin;
      Break;
      end;

    end;
{
  if( FLinkStorage <> NIL ) then
    begin
    for I := 0 to FLinkStorage.Count - 1 do
      begin
      end;
    end;
}
  
  if( AAfterPin <> NIL ) then
    for I := 0 to FPins.Count - 1 do
      begin
      if( FPins[ I ].RealPin = APin ) then
        begin
        FPins[ I ].AfterPin := AAfterPin;
        Break;
        end;
      end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function OWGetPinCount() : Integer;
begin
  GlobalStorageSection.Enter();
  Result := GOWPins.Count;
  GlobalStorageSection.Leave();
end;
//---------------------------------------------------------------------------
function OWGetPin( Index : Integer ) : TOWBasicPin;
begin
  GlobalStorageSection.Enter();
  Result := GOWPins[ Index ];
  GlobalStorageSection.Leave();
end;
//---------------------------------------------------------------------------
function OWGetDispatcherCount() : Integer;
begin
  GlobalStorageSection.Enter();
  if( DesignDispatchers.Count > 0 ) then
    Result := DesignDispatchers.Count

  else
    Result := RunDispatchers.Count;

  GlobalStorageSection.Leave();
end;
//---------------------------------------------------------------------------
function OWGetDispatcher( Index : Integer ) : TOWStateDispatcher;
begin
  GlobalStorageSection.Enter();
  if( DesignDispatchers.Count > 0 ) then
    Result := TOWStateDispatcher( DesignDispatchers.Items[ Index ] )

  else
    Result := TOWStateDispatcher( RunDispatchers.Items[ Index ] );

  GlobalStorageSection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWSetIgnoreDesignMode( Ignore : Boolean );
begin
  GIgnoreDesignMode := Ignore;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function  TOWPinEntryList.Add() : POWPinEntry;
begin
  New( Result );
  inherited Add( Result );
end;
//---------------------------------------------------------------------------
function  TOWPinEntryList.Remove( Item: POWPinEntry ) : Integer;
begin
  Dispose( Item ); 
  Result := inherited Remove( Item );
end;
//---------------------------------------------------------------------------
procedure TOWPinEntryList.Delete( Index: Integer );
begin
  Dispose( Items[ Index ] );
  inherited Delete( Index );
end;
//---------------------------------------------------------------------------
procedure TOWPinEntryList.Clear();
var
  I : Integer;
  
begin
  for I := 0 to Count - 1 do
    Dispose( Items[ I ] );

  inherited Clear();
end;
//---------------------------------------------------------------------------
procedure TOWPinEntryList.CopyFromList( AList : TOWPinEntryList );
var
  I : Integer;
  Entry : POWPinEntry;
  
begin
  for I := 0 to AList.Count - 1 do
    begin
    Entry := Add();
    Entry.RealPin := AList.Items[ I ].RealPin; 
    Entry.ConnectionPin := AList.Items[ I ].ConnectionPin; 
    Entry.ConnectedID := AList.Items[ I ].ConnectedID;
    Entry.SubmitFunction := AList.Items[ I ].SubmitFunction; 
    Entry.ModificationLevel := AList.Items[ I ].ModificationLevel; 
    end;
    
end;
//---------------------------------------------------------------------------
function TOWPinEntryList.GetItem( Index : Integer ) : POWPinEntry;
begin
  Result := POWPinEntry( inherited Items[ Index ] );
end;
//---------------------------------------------------------------------------
function TOWPinEntryList.GetItemByPin( APin : TOWBasicPin ) : POWPinEntry;
var
  I : Integer;

begin
  for I := 0 to Count - 1 do
    begin
    if( Items[ I ].RealPin = APin ) then
      begin
      Result := Items[ I ];
      Exit;
      end;
    end;

  Result := NIL;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWFormatConverterList.GetItem( Index : Integer ) : TOWFormatConverter;
begin
  Result := TOWFormatConverter( inherited Items[ Index ] );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSinkPinList.Create( AOwner : TOWSourcePin );
begin
  inherited Create();
  FOwner := AOwner;
  FList := TObjectList.Create( False );
end;
//---------------------------------------------------------------------------
destructor  TOWSinkPinList.Destroy(); 
begin
  FList.Free();
  inherited;
end;
//---------------------------------------------------------------------------
function TOWSinkPinList.GetCount() : Integer;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := FOwner.ReadLock();
  Result := FList.Count;
end;
//---------------------------------------------------------------------------
function TOWSinkPinList.GetItem( Index : Integer ) : TOWBasicSinkPin;
var
  AReadLock : IOWLockSection;

begin
  AReadLock := FOwner.ReadLock();
  Result := TOWBasicSinkPin( FList.Items[ Index ] );
end;
//---------------------------------------------------------------------------
procedure TOWSinkPinList.Add( APin : TOWBasicSinkPin ); //; ShareLock : Boolean = True );
var
  AWriteLock : IOWLockSection;

begin
  if( APin = NIL ) then
    Exit;
    
  AWriteLock := FOwner.WriteLock();
  FList.Add( APin );
end;
//---------------------------------------------------------------------------
procedure TOWSinkPinList.Remove( APin : TOWBasicSinkPin );
var
  AWriteLock : IOWLockSection;

begin
  AWriteLock := FOwner.WriteLock();
  FList.Remove( APin );
end;
//---------------------------------------------------------------------------
procedure TOWFunctionSinkPinList.Add( APin : TOWBasicSinkPin );
var
  AWriteLock : IOWLockSection;

begin
  AWriteLock := FOwner.WriteLock();
  inherited Add( APin );
  APin.IntAddFunctionDependance( FOwner );
end;
//---------------------------------------------------------------------------
procedure TOWFunctionSinkPinList.Remove( APin : TOWBasicSinkPin );
var
  AWriteLock : IOWLockSection;

begin
  AWriteLock := FOwner.WriteLock();
  inherited Remove( APin ); 
  APin.IntRemoveFunctionDependance( FOwner );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWDataTypeSinkPinList.Add( APin : TOWBasicSinkPin );
var
  AWriteLock : IOWLockSection;

begin
  AWriteLock := FOwner.WriteLock();
  inherited Add( APin );
  APin.IntAddDataTypeDependance( FOwner );
end;
//---------------------------------------------------------------------------
procedure TOWDataTypeSinkPinList.Remove( APin : TOWBasicSinkPin );
var
  AWriteLock : IOWLockSection;

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
  FOperationID := InterlockedIncrement( gOWOperationID );
end;
//---------------------------------------------------------------------------
function TOWNotifyOperation.Instance() : TOWNotifyOperation;
begin
  Result := Self;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWObjectList.Add( AList : TOWObject );
begin
  inherited Add( AList );
end;
//---------------------------------------------------------------------------
procedure TOWObjectList.SetItem( Index : Integer; Value : TOWObject );
begin
  inherited Items[ Index ] := Value; 
end;
//---------------------------------------------------------------------------
function  TOWObjectList.GetItem( Index : Integer ) : TOWObject;
begin
  Result := TOWObject( inherited Items[ Index ] );
end;
//---------------------------------------------------------------------------
function TOWObjectList.GetCount() : Integer;
begin
  Result := inherited Count;
end;
//---------------------------------------------------------------------------
function TOWObjectList.QueryInterface(const IID: TGUID; out Obj): HResult;
begin
  if GetInterface(IID, Obj) then
    Result := 0
  else
    Result := E_NOINTERFACE;
end;
//---------------------------------------------------------------------------
function TOWObjectList._AddRef: Integer;
begin
  Result := InterlockedIncrement(FRefCount);
end;
//---------------------------------------------------------------------------
function TOWObjectList._Release: Integer;
begin
  Result := InterlockedDecrement(FRefCount);
  if Result = 0 then
    Destroy;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWObjectListList.Add( AList : TOWObjectList );
begin
  inherited Add( AList );
end;
//---------------------------------------------------------------------------
procedure TOWObjectListList.SetItem( Index : Integer; Value : TOWObjectList );
begin
  inherited Items[ Index ] := Value;
end;
//---------------------------------------------------------------------------
function  TOWObjectListList.GetItem( Index : Integer ) : TOWObjectList;
begin
  Result := TOWObjectList( inherited Items[ Index ] );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWDispatcherPinStorageList.GetItem( Index : Integer ) : TOWDispatcherPinStorage;
begin
  Result := TOWDispatcherPinStorage( inherited Items[ Index ] );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWUnloadedPin.Create( ARoot : TComponent; AType : TOWPinType; APinIdentName : String; APinDisplayName : String; ACreatedFrom : String );
begin
  inherited Create();
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
//  FConnectedPins := TOWBasicPinList.Create( False );
end;
//---------------------------------------------------------------------------
destructor TOWUnloadedPin.Destroy();
begin
  FConnectedPins.Free();
  inherited;
end;
//---------------------------------------------------------------------------
function  TOWUnloadedPin.DependsOn( const OtherPin : TOWBasicPin ) : Boolean;
begin
  Result := False;
end;
//---------------------------------------------------------------------------
function  TOWUnloadedPin.OwnerInDesigning() : Boolean;
begin
  Result := False;
  if( GIgnoreDesignMode ) then
    Exit;

  Result := True;
end;
//---------------------------------------------------------------------------
procedure TOWUnloadedPin.PinDeletedNotify( ADeletedPin : TOWBasicPin );
var
  I : Integer;
  
begin
  for I := FConnectedPins.Count - 1 downto 0 do
    begin
    if( FConnectedPins[ I ].RealPin = ADeletedPin ) then
      FConnectedPins.Delete( I );
      
    end;
    
end;
//---------------------------------------------------------------------------
function  TOWUnloadedPin.FindConnectionID( const OtherPin : TOWBasicPin; var AConverter : TOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean ) : TGUID;
begin
  Result := OWNULLID;
end;
//---------------------------------------------------------------------------
function  TOWUnloadedPin.NotifyDispatcher( Operation : IOWNotifyOperation; State : TOWNotifyState; APinToNotify : TOWPin ) : TOWNotifyResult;
begin
  Result := [];
end;
//---------------------------------------------------------------------------
function  TOWUnloadedPin.CanConnectToInt( const OtherPin : TOWBasicPin; var AConverter : TOWFormatConverter; var AConverterClass : TOWFormatConverterClass; UseConverters : Boolean ) : Boolean;
begin
  Result := True;
end;
//---------------------------------------------------------------------------
function  TOWUnloadedPin.IsCompatible( const OtherPin : TOWBasicPin; UseConverters : Boolean ) : Boolean;
begin
  Result := True;
end;
//---------------------------------------------------------------------------
function  TOWUnloadedPin.IsConnected() : Boolean;
begin
  Result := ( FConnectedPins.Count > 0 );  
end;
//---------------------------------------------------------------------------
function  TOWUnloadedPin.IsConnectedTo( OtherPin : TOWBasicPin ) : Boolean;
begin
  Result := ( FConnectedPins.GetItemByPin( OtherPin ) <> NIL );
end;
//---------------------------------------------------------------------------
procedure TOWUnloadedPin.PinReplacedNotify( AOldPin : TOWBasicPin; ANewPin : TOWBasicPin );
var
  I : Integer;
  
begin
  for I := 0 to FConnectedPins.Count - 1 do
    begin
    if( FConnectedPins[ I ].NotifyAfterPin = AOldPin ) then
      FConnectedPins[ I ].NotifyAfterPin := ANewPin;

    if( FConnectedPins[ I ].RealPin = AOldPin ) then
      FConnectedPins[ I ].RealPin := ANewPin;
      
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
  if( FInRemove ) then
    Exit;
    
  FInRemove := True;
  if( not FInEditor ) then
    if( not FOwnedByList ) then
      if( FConnectedPins.Count = 0 ) then
        begin
        GOWUnloadedPins.Remove( Self );
        Exit;
        end;
    
  FInRemove := False;
end;
//---------------------------------------------------------------------------
procedure TOWUnloadedPin.IntDisconnect( OtherPin : TOWBasicPin; DesignFormClosing : Boolean );
begin
  FConnectedPins.Remove( FConnectedPins.GetItemByPin( OtherPin ));
{
  if( FOwnerPinList <> NIL ) then
    if( FOwnerPinList.IndexOf( Self ) >= 0 ) then
      Exit;

  if( FConnectedPins.Count = 0 ) then
    GOWUnloadedPins.Remove( Self );
}
end;
//---------------------------------------------------------------------------
procedure TOWUnloadedPin.IntConnect( SinkPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin );
var
  APinEntry : POWPinEntry;

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
function  TOWUnloadedPin.GetPinType() : TOWPinType;
begin
  Result := FType;
end;
//---------------------------------------------------------------------------
function  TOWUnloadedPin.ConnectAfter( OtherPin : TOWBasicPin; NotifyAfterPin : TOWBasicPin ) : Boolean;
var
  APinEntry : POWPinEntry;

begin
  if( OtherPin = Self ) then
    begin
    Result := False;
    Exit;
    end;

  Result := True;
  if( IsConnectedTo( OtherPin )) then
    Exit;

  if( OtherPin <> NIL ) then
    begin
    APinEntry := FConnectedPins.Add();
    APinEntry.RealPin := OtherPin;
    APinEntry.NotifyAfterPin := NotifyAfterPin;
    end;

  if( OtherPin is TOWSourcePin ) then
    TOWSourcePin( OtherPin ).IntConnect( Self, NotifyAfterPin )

  else if( OtherPin is TOWEventSinkPin ) then
    TOWEventSinkPin( OtherPin ).IntConnect( Self, NotifyAfterPin )

  else if( OtherPin is TOWSinkPin ) then
    begin
    TOWSinkPin( OtherPin ).Disconnect();
    TOWSinkPin( OtherPin ).FRealSourcePin := Self;
    TOWSinkPin( OtherPin ).FIntRealSourcePin := Self;
    end;

end;
//---------------------------------------------------------------------------
procedure TOWUnloadedPin.Disconnect();
begin
  FConnectedPins.Clear();
//  if( FConnectedPins.Count = 0 ) then
//    GOWUnloadedPins.Remove( Self );
    
end;
//---------------------------------------------------------------------------
function  TOWUnloadedPin.GetFullName( IncludeRootForm : Boolean ) : String;
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
function  TOWUnloadedPin.GetFullIdentName( IncludeRootForm : Boolean ) : String;
var
  Position : Integer;

begin
  if( IncludeRootForm ) then
    Result := FIdentName

  else
    begin
    Result := FIdentName;
    Position := Pos( '.', Result );
    if( Position <> 0 ) then
      Delete( Result, 1, Position );

    end;

end;
//---------------------------------------------------------------------------
procedure TOWUnloadedPin.PopulatePinAndDestroy( APin : TOWBasicPin );
var
  I         : Integer;
  ARealPin  : TOWBasicPin;

begin
  for I := 0 to GOWPins.Count - 1 do
    GOWPins[ I ].PinReplacedNotify( Self, APin );

  for I := FConnectedPins.Count - 1 downto 0 do
    begin
    ARealPin := FConnectedPins[ I ].RealPin;
    APin.ConnectAfter( ARealPin, FConnectedPins[ I ].NotifyAfterPin );
    if( ARealPin <> NIL ) then
      ARealPin.DisconnectFrom( Self );

    end;

  GOWUnloadedPins.Remove( Self );
end;
//---------------------------------------------------------------------------
function  TOWUnloadedPin.GetRoot() : TComponent;
begin
  Result := NIL; //FRoot;
end;
//---------------------------------------------------------------------------
function  TOWUnloadedPin.GetName() : String;
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
function TOWBasicPinList.Add( APin : TOWBasicPin ): Integer;
begin
  Result := IndexOf( APin );
  if( Result < 0 ) then
    Result := inherited Add( APin ); 
  
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetByIdentName( ARoot : TComponent; APinName : String ) : TOWBasicPin;
var
  I          : Integer;
  Position   : Integer;
  AItemRoot  : TComponent;
  AShortName : String; 
  AFullName  : String; 

begin
  AShortName := APinName;
  Position := Pos( '.', AShortName );
  if( Position <> 0 ) then
    System.Delete( AShortName, 1, Position );

  Result := NIL;

  GlobalStorageSection.Enter();
  for I := 0 to Count - 1 do
    begin
    AItemRoot := Items[ I ].GetRoot();
    AFullName := Items[ I ].GetFullIdentName( True );
    if(( AItemRoot = NIL ) or ( ARoot = NIL ) or ( AItemRoot = ARoot )) then
      begin
      if(( ARoot = NIL ) or ( ARoot.Name = Items[ I ].GetRootName() )) then
        if( Items[ I ].GetFullIdentName( False ) = APinName ) then
          begin
          Result := Items[ I ];
          Break;
          end;

      if( AFullName = APinName ) then
        begin
        Result := Items[ I ];
        Break;
        end;

      if( AFullName = AShortName ) then
        begin
        Result := Items[ I ];
        Break;
        end;
      end

    else if( ARoot.Name <> Items[ I ].GetRootName() ) then
      begin
      if( AFullName = APinName ) then
        begin
        Result := Items[ I ];
        Break;
        end;

      end;

    end;

  GlobalStorageSection.Leave();
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetByDisplayName( ARoot : TComponent; APinName : String ) : TOWBasicPin;
var
  I         : Integer;
  AItemRoot : TComponent;

begin
  Result := NIL;
  
  GlobalStorageSection.Enter();
  for I := 0 to Count - 1 do
    begin
    AItemRoot := Items[ I ].GetRoot();
    if(( AItemRoot = NIL ) or ( ARoot = NIL ) or ( AItemRoot = ARoot )) then
      if(( Items[ I ].GetFullName( False ) = APinName ) or ( Items[ I ].GetFullName( True ) = APinName )) then
        begin
        Result := Items[ I ];
        Break;
        end;

    end;

  GlobalStorageSection.Leave();
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetItem( Index : integer ) : TOWBasicPin;
begin
  Result := TOWBasicPin( inherited Items[ Index ] );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWFormatConverter.Create();
begin
  inherited Create( NIL );
end;
//---------------------------------------------------------------------------
constructor TOWFormatConverter.CreateEx( AInputPin : TOWSinkPin; AOutputPin : TOWSourcePin );
begin
  inherited Create( NIL );
  FInputPin := AInputPin;
  FOutputPin := AOutputPin;
  FOutputPin.FunctionSources.Add( FInputPin );
end;
//---------------------------------------------------------------------------
destructor  TOWFormatConverter.Destroy();
begin
  FInputPin.Free();
  FOutputPin.Free();
  inherited;
end;
//---------------------------------------------------------------------------
function TOWFormatConverter.SourceOperationEvent( Sender : TOWBasicPin; DataTypeID : PDataTypeID; Operation : IOWNotifyOperation; State : TOWNotifyState ) : TOWNotifyResult;
begin
  Result := FInputPin.Notify( Operation );
end;
//------------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWInternalPinList.GetByNameCreate( ARoot : TComponent; AType : TOWPinType; APinIdentName : String; APinDisplayName : String; ACreatedFrom : String ) : TOWBasicPin;
begin
  if( APinIdentName = '' ) then
    begin
    Result := NIL;
    Exit;
    end;

  Result := GetByIdentName( ARoot, APinIdentName );
  if( Result = NIL ) then
    Result := GetByDisplayName( ARoot, APinDisplayName );
    
  if( Result = NIL ) then
    Result := TOWUnloadedPin.Create( ARoot, AType, APinIdentName, APinDisplayName, ACreatedFrom );

end;
//---------------------------------------------------------------------------
{
function TOWInternalPinList.Add( APin : TOWBasicPin): Integer;
var
  AUnloadedPin : TOWUnloadedPin;

begin
  Result := inherited Add( APin );

  // There could be more than one Unloaded pins with full and/or partial names.
    repeat
      AUnloadedPin := TOWUnloadedPin( GOWUnloadedPins.GetByIdentName( APin.GetFullName( True ) ));
      if( AUnloadedPin <> NIL ) then
        AUnloadedPin.PopulatePinAndDestroy( APin );

    until( AUnloadedPin = NIL );
    
end;
}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function  Dispatchers( DesignTime : Boolean ) : TObjectList;
begin
  if( DesignTime ) then
    Result := DesignDispatchers

  else
    Result := RunDispatchers;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWEvent.CreateNamed( AName : String; AManualReset : Boolean; AInitialState : Boolean );
begin
  inherited Create();
{$IFDEF fpc}
  FHandle := BasicEventCreate( NIL, AManualReset, AInitialState, AName );
{$ELSE}
  FHandle := CreateEvent( NIL, AManualReset, AInitialState, PChar( AName ));
{$ENDIF}
end;
//---------------------------------------------------------------------------
constructor TOWEvent.Create( AManualReset : Boolean; AInitialState : Boolean );
begin
  inherited Create();
{$IFDEF fpc}
  FHandle := BasicEventCreate( NIL, AManualReset, AInitialState, '' );
{$ELSE}
  FHandle := CreateEvent( NIL, AManualReset, AInitialState, NIL );
{$ENDIF}
end;
//---------------------------------------------------------------------------
destructor  TOWEvent.Destroy();
begin
{$IFDEF fpc}
  BasicEventDestroy( FHandle );
{$ELSE}
  CloseHandle( FHandle );
{$ENDIF}
  inherited;
end;
//---------------------------------------------------------------------------
procedure TOWEvent.Signal();
begin
{$IFDEF fpc}
  BasicEventSetEvent( FHandle );
{$ELSE}
  SetEvent( FHandle );
{$ENDIF}
end;
//---------------------------------------------------------------------------
procedure TOWEvent.Reset();
begin
{$IFDEF fpc}
  BasicEventResetEvent( FHandle );
{$ELSE}
  ResetEvent( FHandle );
{$ENDIF}
end;
//---------------------------------------------------------------------------
function  TOWEvent.WaitFor( Timeout : DWORD = INFINITE ) : Boolean; stdcall;
begin
{$IFDEF fpc}
  Result := ( TWaitResult( BasicEventWaitFor( Timeout, FHandle )) = wrSignaled );
{$ELSE}
  Result := ( WaitForSingleObject( FHandle, Timeout ) = WAIT_OBJECT_0 );
{$ENDIF}
end;
//---------------------------------------------------------------------------
{$IFNDEF fpc}
function TOWEvent.GetHandle() : THandle;
begin
  Result := FHandle;
end;
{$ENDIF}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWMutex.CreateNamed( AName : String; AInitialOwner : Boolean );
{$IFDEF SYMLOCKS}
var
  AThread : Cardinal;
{$ENDIF}
begin
  inherited Create();
{$IFDEF SYMLOCKS}
  if( AInitialOwner ) then
    begin
    AThread := GetCurrentThreadId();
    FEvent := TOWEvent.Create( False, False );
    Inc( FCount );
    FThreadID := AThread;
    end

  else
    FEvent := TOWEvent.Create( False, True );

  FSection := TOWCriticalSection.Create();
{$ELSE}
  FHandle := CreateMutex( NIL, False, PChar( AName ));
{$ENDIF}
end;
//---------------------------------------------------------------------------
constructor TOWMutex.Create( AInitialOwner : Boolean );
{$IFDEF SYMLOCKS}
var
  AThread : Cardinal;
{$ENDIF}
begin
  inherited Create();
{$IFDEF SYMLOCKS}
  if( AInitialOwner ) then
    begin
    AThread := GetCurrentThreadId();
    FEvent := TOWEvent.Create( False, False );
    Inc( FCount );
    FThreadID := AThread;
    end

  else
    FEvent := TOWEvent.Create( False, True );

  FSection := TOWCriticalSection.Create();
{$ELSE}
  FHandle := CreateMutex( NIL, False, NIL );
{$ENDIF}
end;
//---------------------------------------------------------------------------
destructor TOWMutex.Destroy();
begin
{$IFDEF SYMLOCKS}
  FSection.Free();
  FEvent.Free();
{$ELSE}
  CloseHandle( FHandle );
{$ENDIF}
  inherited;
end;
//---------------------------------------------------------------------------
function TOWMutex.Acquire( Milliseconds : Cardinal ) : Boolean;
var
  Res     : DWord;
{$IFDEF SYMLOCKS}
  AThread : Cardinal;
{$ENDIF}
begin
{$IFDEF SYMLOCKS}
  AThread := GetCurrentThreadId();
  Result := True;
  FSection.Enter();
  if( AThread = FThreadID ) then
    begin
    Inc( FCount );
    FSection.Leave();
    Exit;
    end;

  FSection.Leave();

  if( FEvent.WaitFor( Milliseconds )) then
    begin
    FSection.Enter();
    Inc( FCount );
    FThreadID := AThread;
    FSection.Leave();
    Exit;
    end;

  Result := False;
{$ELSE}
  Res := WaitForSingleObject( FHandle, Milliseconds );
  Result := ( Res <> WAIT_TIMEOUT );
{$ENDIF}
end;
//---------------------------------------------------------------------------
function TOWMutex.Release() : Boolean;
{$IFDEF SYMLOCKS}
var
  AThread : Cardinal;
{$ENDIF}
begin
{$IFDEF SYMLOCKS}
  AThread := GetCurrentThreadId();
  FSection.Enter();
  Result := False;
  if( AThread <> FThreadID ) then
    begin
    FSection.Leave();
    Exit;
    end;

  if( FCount > 0 ) then
    begin
    Dec( FCount );
    if( FCount = 0 ) then
      begin
      FThreadID := 0;
      FEvent.Signal();
      Result := True;
      end;
    end;

  FSection.Leave();
{$ELSE}
  Result := ReleaseMutex( FHandle );
{$ENDIF}
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSemaphore.Create( AInitialCount : Longint; AMaximumCount: Longint );
begin
  inherited Create();
{$IFDEF SYMLOCKS}
  if( AInitialCount < 0 ) then
    AInitialCount := 0;

  if( AInitialCount > AMaximumCount ) then
    AInitialCount := AMaximumCount;

  FCount := AInitialCount;
  FMaxCount := AMaximumCount;
  if( FCount = 0 ) then
    FEvent := TOWEvent.Create( False, False )

  else
    FEvent := TOWEvent.Create( False, True );

  FSection := TOWCriticalSection.Create();
{$ELSE}
  FHandle := CreateSemaphore( NIL, AInitialCount, AMaximumCount, NIL );
{$ENDIF}
end;
//---------------------------------------------------------------------------
destructor TOWSemaphore.Destroy();
begin
{$IFDEF SYMLOCKS}
  FSection.Free();
  FEvent.Free();
{$ELSE}
  CloseHandle( FHandle );
{$ENDIF}
  inherited;
end;
//---------------------------------------------------------------------------
function TOWSemaphore.Increment( ACount : Longint = 1 ) : Boolean;
begin
{$IFDEF SYMLOCKS}
  FSection.Enter();
  FEvent.Signal();
  Inc( FCount, ACount );
  FSection.Leave();
  Result := True;
{$ELSE}
  Result := ReleaseSemaphore( FHandle, ACount, NIL );
{$ENDIF}
end;
//---------------------------------------------------------------------------
function TOWSemaphore.Decrement( AMilliseconds : Cardinal ) : Boolean;
begin
{$IFDEF SYMLOCKS}
  FSection.Enter();
  while( FCount = 0 ) do
    begin
    FSection.Leave();
    if( not FEvent.WaitFor( AMilliseconds )) then
      begin
      Result := False;
      Exit;
      end;

    FSection.Enter();
    end;

  Dec( FCount );
  FSection.Leave();
  Result := True;
{$ELSE}
  Result := ( WaitForSingleObject( FHandle, AMilliseconds ) = WAIT_OBJECT_0 );
{$ENDIF}
end;
//---------------------------------------------------------------------------
{$IFNDEF fpc}
function TOWSemaphore.GetHandle() : THandle;
begin
{$IFDEF SYMLOCKS}
  Result := 0;
{$ELSE}
  Result := FHandle;
{$ENDIF}
end;
{$ENDIF}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
{$IFNDEF fpc}
constructor TOWCriticalSection.Create();
begin
  inherited;
  InitializeCriticalSection( FSection );
end;
//---------------------------------------------------------------------------
destructor TOWCriticalSection.Destroy();
begin
  DeleteCriticalSection( FSection );
  inherited;
end;
//---------------------------------------------------------------------------
procedure TOWCriticalSection.Enter(); stdcall;
begin
  EnterCriticalSection( FSection );
end;
//---------------------------------------------------------------------------
procedure TOWCriticalSection.Leave(); stdcall;
begin
  LeaveCriticalSection( FSection );
end;
//---------------------------------------------------------------------------
{$ENDIF}
//---------------------------------------------------------------------------
var
  GOWDBGNotifyList      : TInterfaceList;
  GOWDBGNotifyListSize  : Integer;
  GOWDBGNotifySection   : TOWCriticalSection;
  
//---------------------------------------------------------------------------
procedure OWDBGRegisterNotify( ANotify : IOWDBGNotify );
begin
  GOWDBGNotifySection.Enter();
  GOWDBGNotifyList.Add( ANotify );
  GOWDBGNotifyListSize := GOWDBGNotifyList.Count;
  GOWDBGNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWDBGUnregisterNotify( ANotify : IOWDBGNotify );
begin
  GOWDBGNotifySection.Enter();
  GOWDBGNotifyList.Remove( ANotify );
  GOWDBGNotifyListSize := GOWDBGNotifyList.Count;
  GOWDBGNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure GOWDBGLog( ALock : TOWLock; ASection : Pointer; AOperation : TOWDBOperation; AThreadID : Integer );
var
  I : Integer;

begin
  GOWDBGNotifySection.Enter();
  if( GOWDBGNotifyListSize > 0 ) then
    for I := 0 to GOWDBGNotifyList.Count - 1 do
      ( GOWDBGNotifyList[ I ] as IOWDBGNotify ).Notify( ALock, ASection, AOperation, AThreadID );

  GOWDBGNotifySection.Leave();
//end;
{$IFDEF __LOCKS_DBG__}
//procedure GOWDBGLog( ALock : TOWLock; ASection : Pointer; AOperation : TOWDBOperation; AThreadID : Integer );
//begin
  ALock.IntLock();
  LogStorageSection.Enter();
  GOWDBGLockHistory.History[ GOWDBGLockHistory.Index ].ID := GOWDBGCurrentID;
  GOWDBGLockHistory.History[ GOWDBGLockHistory.Index ].ThreadID := AThreadID;
  GOWDBGLockHistory.History[ GOWDBGLockHistory.Index ].Operation := AOperation;
  GOWDBGLockHistory.History[ GOWDBGLockHistory.Index ].Lock := ALock;
  GOWDBGLockHistory.History[ GOWDBGLockHistory.Index ].Section := ASection;
  GOWDBGLockHistory.History[ GOWDBGLockHistory.Index ].CountLocks := ALock.FCountLocks;
  GOWDBGLockHistory.History[ GOWDBGLockHistory.Index ].InStopCount := ALock.FInStopCount;
  GOWDBGLockHistory.History[ GOWDBGLockHistory.Index ].CountStopLocks := ALock.FCountStopLocks;
  GOWDBGLockHistory.History[ GOWDBGLockHistory.Index ].CountStopLocksOwner := ALock.FCountStopLocksOwner;
  GOWDBGLockHistory.History[ GOWDBGLockHistory.Index ].OwningThreadID := ALock.FOwningThread;

  GOWDBGLockHistory.History[ GOWDBGLockHistory.Index ].CountWrites := ALock.FCountWrites;
  GOWDBGLockHistory.History[ GOWDBGLockHistory.Index ].CountReads := ALock.FCountReads;
  GOWDBGLockHistory.History[ GOWDBGLockHistory.Index ].CountUnlocks := ALock.FCountUnlocks;
  GOWDBGLockHistory.History[ GOWDBGLockHistory.Index ].CountStops := ALock.FCountStops;

  GOWDBGLockHistory.History[ GOWDBGLockHistory.Index ].IsNext := False;
  Inc( GOWDBGLockHistory.Index );
  Inc( GOWDBGCurrentID );
  if( GOWDBGLockHistory.Index > GOWDBG_HISTORY_SIZE ) then
    GOWDBGLockHistory.Index := 0;

  GOWDBGLockHistory.History[ GOWDBGLockHistory.Index ].IsNext := True;

  LogStorageSection.Leave();
  ALock.IntUnlock();
{$IFDEF __LOCKS_DBG_MAPPED__}
//  FlushViewOfFile( @GDBGMemMap, 0 );  
  LogEvent.Signal();
{$ENDIF}
{$ENDIF}
end;
{$IFDEF __LOCKS_DBG__}
//---------------------------------------------------------------------------
const GOWDbgStrings : array [owdbNone..owdbUnlockDestroy] of String =
(
  'None             ',
  'Error            ',
  'Create           ',
  'Destroy          ',
  'BeginWriteCreate ',
  'WriteCreate      ',
  'BeginWriteDestroy',
  'WriteDestroy     ',
  'BeginReadCreate  ',
  'ReadCreate       ',
  'BeginReadDestroy ',
  'ReadDestroy      ',
  'StopCreate       ',
  'StopDestroy      ',
  'UnlockCreate     ',
  'UnlockDestroy    '
);
//---------------------------------------------------------------------------
procedure GOWDBGSaveLocks( ALock : TOWLock );
var
  I : Integer;
  F : TextFile;
  ALine : String;
  
begin
  LogStorageSection.Enter();

  GOWDBGLog( ALock, NIL, owdbError, GetCurrentThreadId() );

  DeleteFile( 'C:\BugLocks.txt' );
  AssignFile(F, 'C:\BugLocks.txt');
  Rewrite(F);
  I := GOWDBGLockHistory.Index;
  WriteLn( F, '  Lock     Section   Operation        ThreadID OwnerThread CntLocks StopLks StopLksOwn InStop Read  Write Unlock  Stop' );
  while( True ) do
    begin
    if( ALock = GOWDBGLockHistory.History[ I ].Lock ) then
      begin
      ALine := IntToHex( Cardinal( GOWDBGLockHistory.History[ I ].Lock ), 8 ) + '  ';
      ALine := ALine + IntToHex( Cardinal( GOWDBGLockHistory.History[ I ].Section ), 8 ) + '  ';
      ALine := ALine + GOWDbgStrings[ GOWDBGLockHistory.History[ I ].Operation ];
      ALine := ALine + Format( '%7d', [ GOWDBGLockHistory.History[ I ].ThreadID ] ) + '  ';
      ALine := ALine + Format( '%8d', [ GOWDBGLockHistory.History[ I ].OwningThreadID ] ) + ' ';
      ALine := ALine + Format( '%7d', [ GOWDBGLockHistory.History[ I ].CountLocks ] ) + '  ';
      ALine := ALine + Format( '%7d', [ GOWDBGLockHistory.History[ I ].CountStopLocks ] ) + '  ';
      ALine := ALine + Format( '%7d', [ GOWDBGLockHistory.History[ I ].CountStopLocksOwner ] ) + '  ';
      ALine := ALine + Format( '%7d', [ GOWDBGLockHistory.History[ I ].InStopCount ] );

      ALine := ALine + Format( '%7d', [ GOWDBGLockHistory.History[ I ].CountReads ] );
      ALine := ALine + Format( '%7d', [ GOWDBGLockHistory.History[ I ].CountWrites ] );
      ALine := ALine + Format( '%7d', [ GOWDBGLockHistory.History[ I ].CountUnlocks ] );
      ALine := ALine + Format( '%7d', [ GOWDBGLockHistory.History[ I ].CountStops ] );
      WriteLn( F, ALine );
      end;
      
    Inc( I );
    if( I > GOWDBG_HISTORY_SIZE ) then
      I := 0;

    if( I = GOWDBGLockHistory.Index ) then
      Break;
       
    end;

  CloseFile(F);
  LogStorageSection.Leave();
end;
{$ENDIF}
//---------------------------------------------------------------------------
{$IFDEF __LOCKS_DBG_MAPPED__}
procedure TOWDebugCriticalSection.Enter();
begin
  Acquire( INFINITE );
end;
//---------------------------------------------------------------------------
procedure TOWDebugCriticalSection.Leave();
begin
  Release();
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure OpenDebugMemoryMap();
var
  AIndex : Integer;
  
begin
  AIndex := 0;
  while( True ) do
    begin
    Inc( AIndex );
    GDBGMemMap := OpenFileMapping(FILE_MAP_WRITE,BOOL(True), PChar( 'OpenWireDbg' + IntToStr( AIndex )));
    if( GDBGMemMap <> 0 ) then
      CloseHandle( GDBGMemMap )
      
    else
      Break;
      
    end;

  GDBGMemMap := CreateFileMapping( $FFFFFFFF, nil, PAGE_READWRITE, 0, SizeOf( TGOWDBGLockHistory ), PChar( 'OpenWireDbg' + IntToStr( AIndex )) );
  if( GDBGMemMap <> 0 ) then
    GOWDBGLockHistory := MapViewOfFile( GDBGMemMap, FILE_MAP_ALL_ACCESS, 0, 0, SizeOf( TGOWDBGLockHistory ) );

  LogStorageSection := TOWDebugCriticalSection.CreateNamed( 'OpenWireDbgMutex' + IntToStr( AIndex ), False );
  LogEvent := TOWEvent.CreateNamed( 'OpenWireDbgEvent' + IntToStr( AIndex ), False, False );
end;
{$ENDIF}
//---------------------------------------------------------------------------
initialization
  GlobalStorageSection := TOWCriticalSection.Create();
{$IFDEF __LOCKS_DBG__}
{$IFNDEF __LOCKS_DBG_MAPPED__}
  LogStorageSection := TOWCriticalSection.Create();
{$ELSE}
  LogStartStopEvent := TOWEvent.CreateNamed( 'OpenWireDbgStartStopEvent', False, False );
  OpenDebugMemoryMap();
{$ENDIF}
  GOWDBGLockHistory.Index := 0;
  GOWDBGLockHistory.Active := True;
{$ENDIF}
  GOWDBGNotifySection := TOWCriticalSection.Create();
  GOWDBGNotifyList := TInterfaceList.Create();
  Loaded := True;
  NotifyList := TInterfaceList.Create();

  // State pins support
  DesignDispatchers := TObjectList.Create( False );
  RunDispatchers := TObjectList.Create( False );
  GOWPins := TOWInternalPinList.Create( False );
  GOWUnloadedPins := TOWBasicPinList.Create( True );
{$IFDEF __LOCKS_DBG_MAPPED__}
  LogStartStopEvent.Signal();
{$ENDIF}

finalization
  if( Loaded ) then
    begin
    DesignDispatchers.Free(); // State pins support
    RunDispatchers.Free(); // State pins support
    GOWUnloadedPins.Free();
    FreeAndNil( GOWDBGNotifyList );
    FreeAndNil( GOWDBGNotifySection );
    GOWPins.Free();

    NotifyList.Free();
    NotifyList := NIL;
    Loaded := False;
{$IFDEF __LOCKS_DBG_MAPPED__}
    GOWDBGLockHistory.Active := False;
    LogStartStopEvent.Signal();
    if( GOWDBGLockHistory <> NIL ) then
      UnMapViewOfFile( GOWDBGLockHistory );

    GOWDBGLockHistory := NIL;
    if( GDBGMemMap <> 0 ) then
      CloseHandle( GDBGMemMap );

    LogStartStopEvent.Free();
    LogEvent.Free();
{$ENDIF}

{$IFDEF __LOCKS_DBG__}
    LogStorageSection.Free();
{$ENDIF}
    GlobalStorageSection.Free();
    end;
//---------------------------------------------------------------------------
end.

