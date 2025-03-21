{*> Ver: V8.0.0.140 *********      History      ***************************\

Beta V1.0b0  04/20/2001 Released
Beta V1.0b1  04/30/2001 Upstream notification added.
                        Standartized notification / Up/Downstream
                        Component iteraction functionality added

Beta V1.0b2  04/31/2001 Improved editor.
                        Added stream type registration.

Beta V1.0b3  05/02/2001 IgnoreUpstream has been added for the sinks.
Beta V1.0b4  05/03/2001 TOWPinList* has been added.
Beta V1.0b5  05/04/2001 Remove notification has been added.
Beta V1.0b6  05/06/2001 TOWPinListOwner has been added.
Beta V1.0b7  05/07/2001 FMinPins and FMaxPins have been added to TOWPinListOwner.
                        Fixed remove notifycation on destroy.

Beta V1.0b8  05/09/2001 TOWNotificationState has been added.
Beta V1.0b9  05/11/2001 Partial Delphi 6 support has been added.
                        Improved TOWPinListPropertyEditor.
                        Pin Categories ave been added.
                        TOWNotificationResults has been adde in order to support dynamic balansing in the future.

Beta V1.1b0  06/04/2001 Multiform support. Dual link information.
                        Improved ObjectInspector refresh.
                        Various fixes.

Beta V1.2b0  06/18/2001 Dynamic order optimization.
                        Sink edit property editor.

Beta V1.2b1  06/25/2001 Some fixes in the multiform support.
Beta V1.2b2  07/11/2001 RequestConnection has been replaced by Connect
                        and now is part of TOWPin.

Beta V1.2b3  07/11/2001 Improved TOWPinList support and property editors.
Beta V1.2b5  07/19/2001 Disconnect procedure has been added.
Beta V1.2b6  08/01/2001 Minor fixes for the graphic editor support.
Beta V1.2b7  08/06/2001 Added pin add/remove/change notification for experts.
Beta V1.2b8  08/13/2001 Edded function dependency check.
V1.2.0       08/31/2001 Official release.
V1.3.0       09/04/2001 Small fix in the dependency on itself check.
V1.4.0       11/21/2001 IsConnectedTo is added to TOWPin IsLinkedTo is changed to IsConnectedTo.
V1.5.0       02/16/2002 TPinType.RemoveType and TPinType.ClearTypes have been added.
                        OWRegisterWireStream adds support for global dispatcher.
                        Restricting and renegotiating handshaking with different type of data
                        ( DataType restriction support) is finally implemented.
V1.6.0       02/23/2002 Delphi 6.0 Support. Some minor bug fixes.
V1.7.0       04/14/2002 C++ Builder 6.0 Support. Added the OWClassProperty file.
                        Uses the IsEqualGUID instead of OWEqualGUIDs.
                        GetName and GetSaveName functions have been added.
                        Some minor notification improvements.
                        Improved interform resolution mechanism.
                        Some minor improvements.
V1.8.0       05/09/2002 Improved editor. Improved lost pins clean up.
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


V2.0b1       11/13/2002 TOWStatePins added. Improved Notify mechanism by using TOWNotifyOperation.
                        TOWPinNotifier has been changed to IOWPinNotifier
                        Improved standard pins.

V2.0b2       12/09/2002 TOWStateDispatcher is a TPersistent. Some changes in the TypeDependency.
V2.0b3       01/21/2003 State pin notification improvements.
V2.0b4       02/12/2003 Some minor overall fixes.
V2.0.0       04/13/2003 Official release.
V2.1.0       05/15/2003 Maintenance release.
V2.2.0       08/27/2003 Maintenance release.
V2.3.0       01/03/2004 Complex data type added. Some minor overall fixes.
V2.4.0       12/02/2004 Multithreading. Delphi 2005 support. Reduced compile warnings. Multy pump support.
V2.5.0       06/22/2005 Improved Multithreading. Added OperationID. Added partial support for Delphi 10
V2.6.0       02/22/2006 Minor improvements.
V3.0.0       01/04/2007 Added name change notification for Pin Lists.
                        Added Notify After Pin support.
V3.1.0       10/25/2007 Fixed loading from Frames.
                        Fixed support for languages other than English in PinLists.
V4.0.0       03/14/2009 Added Format Converters.
                        Added Lazarus support for Windows, and Linux
                        New threading lock mechanism.
                        Added debug subscription support.
V4.3.0       09/23/2009 Added Delphi and C++ Builder 2010 support.
V4.3.1       10/10/2009 Improved pin list editor.
V4.5.0       04/29/2010 TOWMultiSinkPins added.
                        Improved pin editors.
                        Fully Lazarus compatible under Windows.

V5.0.0       09/02/2011 Added Delphi and C++ Builder XE and XE2 support.
                        Improved Lazarus support.
                        64 bit compatible.
                        Improved threading support.
                        Added expandable editors support.
                        The maximal number of sink pins connected to a source pin can be restricted.

V5.0.1       10/01/2011 Added workaround for C++ Builder XE2 initialization bug
V5.0.2       04/14/2012 Initial MAC compatibility added. Small fixes.
V5.0.3       10/04/2012 MAC compatibilible with disabled locks.
                        Added Delphi and C++ Builder XE3 support.

V6.0.0       05/28/2013 Added Delphi and C++ Builder XE4 support.
                        Dropped support for Lazarus and versions older than XE2.
                        Complete redesign to utilize the latest Delphi features such as anonymous methods and attributes.
                        Improved integration with the OpenWire Editor.

V7.0.0       04/13/2014 Added Delphi and C++ Builder XE5, and XE6 support.
                        Added MAC and Android support.
                        Added more standard pin types.
                        Added support for auto component suggestion in OpenWire Studio.
                        Simplified locking interface.
                        Improved integration with the OpenWire Editor.

V7.5.0       11/13/2014 Added Delphi and C++ Builder XE7, and XE7 support.
                        Redesigned to use the new free Mitov.Runtime library.

V7.6.0       04/12/2015 Added Delphi and C++ Builder XE8, and XE8 support.
                        Improved OpenWire Studio integration.
                        Added suport for Visuino.
                        Added support for RAD Studio preview windows.
                        Added support for Debug pins.
                        Added Add/Remove pin notification for owner component.
                        Added support for pin grouping across sub properties.
                        Added support for supression during on connect notifications.

V7.7.0       10/26/2015 Added Delphi and C++ Builder 10 Seattle support
                        Added TOWBoolToIntFormatConverter
                        Improved threading support
                        Improved OpenWire Editor
                        Clock pins changed to MiltiSink
                        Improved Design Time Editors
                        Improved JSON support
                        Improved collections
                        Added more Live Binding types
                        Added support for hosting OpenWire Studio projects
                        Added serialization support in the buffers

V7.8.0       05/01/2016 Added Delphi and C++ Builder 10.1 Berlin support
                        Added Reset to Default property editors
                        Added Enum property editors
                        Added Class events property editors
                        Added Multi-Event property editors
                        Added Make/Split Structure components

V7.8.2       12/21/2018 Added Delphi and C++ Builder 10.2 support
                        Added Float 3D Point and Float Quaternion support
                        Added more format converters

V8.0.0       04/28/2021 Added Delphi and C++ Builder 10.3 and 10.4 support
                        Added OWMaxConnections Attribute
                        Added OWDebugPins Attribute
                        Added support for Dynamic Type Info
                        Added option for overriding pin images
                        Added GetFullIdents returing list of pin owner information
                        Redesigned pin path collection to significantly improve the speed
                        Redesigned to set owner fields on creation
                        Imporved pin information caching
                        CreateLock replaced by Create with Lock parameter
                        Improved FMX Design Time support

V8.0.0.36    10/11/2021 Added Delphi and C++ Builder 11.0 Alexandria support
                        Added more type converters
                        Improved Debugger Visualizers support
                        Updated to the latest Mitov.Runtime support
                        Fixed bug when connecting to Multi Sinks trough format converters
                        Improved performance

V8.0.0.39    11/22/2021 Improved Visual Live Binding support
                        Improved Design Time Editors

V8.0.0.43    12/12/2021 Improved Delphi 11 support
                        Fixed bugs when opening and closing Delphi forms in RAD Studio

V8.0.0.100   12/01/2023 Added Delphi 12 support
                        Added Pin self removing from Pin Lists on destruction
                        Added OWIgnoreUpstreamAttribute, and TOWCustomNotificationAttribute support
                        Added OwnerProperty property for pins and pin lists
                        Added OWClearPendingPasteLinks, and OWClearPendingPasteLinks
                        OWNULLID replaced by GUID_NULL
                        PDataTypeID replaced by const TGUID
                        Added Interfaces caching
                        Added loading pins mapping
                        array of replaced by TArray
                        Added IOWPinStreamType, and IOWPinEntryList
                        TOWPinStreamType, and TOWPinEntryList modified to inherit from TObjectOwnerArrayList
                        Redesigned modification level support
                        Weak attribute replaced by Unsafe
                        Modified to use Set instead of list for better performance
                        Removed GetPinObjectOwnersList
                        Number of loading bug fixes
                        Improved performance
                        Improved OWAutoManagePinListAttribute implementation
                        Added support of indexed enumebarbles
                        Fixed bug in State pins when loading the form

V8.0.0.140   02/19/2025 Added OWAddRootAlias and OWRemoveRootAlias
                        Added TOWPinList.SetOwnerComponent
                        Improved startup performance
                        Added OWClearRootAliases
                        Improved Aliases support
                        Fixed a deadlock bug in TOWSourcePin.DependsOn
                        Added fix for rare deadlocks
                        Fixed Delphi form Streaming bug
                        ParentImageAttribute replaced by ImageAttribute
                        Added OWAutoManagePinListAttribute.Cleanup
                        Create renamed to Make
                        Added Make class method
                        Added TOWPin.RemovePinList
                        Added dpredefined typeinfos
                        Improved performance
                        Moved OWResizePropertyAttribute from Mitov.Attributes
                        Added OWRemoveComponentFromDictionaries
                        NativeInt replaced by THandle in IntGetPNGResImageByName, and IntGetPNGResImageByNameClass
                        Optimized TOWBasicPin.PopulateNameCache implementation
                        Added TSerializeOption.LocalScope, and TSerializeOption.NoLinks support
                        Added maps cleanup when components are destroyed
                        GetOwnerComponent moved to TOWPinTypeObject
                        TOWUnloadedPin moved to the interface section
                        IOWPinNotifier changed to TOWPinTypeObject as parameters
                        Added OWInvalidateCaches procedure
                        Modified to use AImageAttribute.GetImage
                        IsConnectedByIDs with set as parameter
                        Improved Disconnect notification when changing pin connections

Legal issues: Copyright (C) 2001-2025 by Mitov Software
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
  {$DEFINE USE_NEW_RTTI}
{$ENDIF}

{$DEFINE INTERFACE_USE_STDCALL}

{$I Mitov.Definitions.inc}

unit OWPins;

interface

uses
{$IFDEF MSWINDOWS}
  Winapi.Windows,
{$ENDIF}
  System.Classes, System.Types, System.TypInfo, System.SysUtils, System.Rtti,
  System.Generics.Defaults, Mitov.Attributes, Mitov.Types, Mitov.Threading,
  Mitov.Containers.Common, Mitov.Containers.List, Mitov.Containers.Dictionary,
  IGDIPlus, Mitov.Containers.Utils, Mitov.Serialization, Mitov.Elements,
  Mitov.Containers.Sets, Mitov.TypeInfo;

var
  GPinsNeedRefresh : Boolean;

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
  TOWBasicPinList = class;
  TOWPinListOwner = class;
  TOWFormatConverter = class;
  TOWFormatConverterClass = class of TOWFormatConverter;
  TOWPinProxy = class;
  TOWPinProxyClass = class of TOWPinProxy;
  TOWPinListProxyClass = class of TOWPinListProxy;
  TOWDestroyLock = class;
  TOWPinNotifyEntryList = class;
  TOWPinEntryList = class;
  TOWFormatConverterList = class;
  TOWSourcePinList = class;
  TOWPinStreamType = class;
//---------------------------------------------------------------------------
  IOWFormatConverter = interface;
//---------------------------------------------------------------------------
  TOWNotifyOperation = class;
  TOWNotifyOperationClass = class of TOWNotifyOperation;
//---------------------------------------------------------------------------
  OWCoreInterfaceAttribute = class( TCustomAttribute );
//---------------------------------------------------------------------------
  OWRequiredPinAttribute = class( TCustomAttribute );
//---------------------------------------------------------------------------
  OWDebugPinsAttribute = class( TCustomAttribute );
  OWExcludeStreamTypeAttribute = class( TBasicGUIDAttribute );
//---------------------------------------------------------------------------
  OWMaxConnectionsAttribute = class( TBasicUnsignedAttribute );
//---------------------------------------------------------------------------
  OWDontUpdateOnConnectAttribute = class( TCustomAttribute );
//---------------------------------------------------------------------------
  OWIgnoreUpstreamAttribute = class( TCustomAttribute );
//---------------------------------------------------------------------------
  OWAutoManagePinListAttribute = class( AutoManageAttribute )
  protected
    FPinClass : IAtttributeParameterInfo;
    FIsOwner  : Boolean;

  public
    property PinClass : IAtttributeParameterInfo  read FPinClass;
    property IsOwner : Boolean                    read FIsOwner;

  protected
    function  Cleanup( AHInstance : NativeInt ) : Boolean; override;

  public
    constructor Create( APinClass : TClass ); reintroduce; overload;
    constructor Create( APinClass : TClass; AIsOwner : Boolean ); reintroduce; overload;
    constructor Create( const APinClass : IAtttributeParameterInfo ); reintroduce; overload;
    constructor Create( const APinClass : IAtttributeParameterInfo; AIsOwner : Boolean ); reintroduce; overload;

  end;
//---------------------------------------------------------------------------
  OWAutoManagePinListOwnerAttribute = class( OWAutoManagePinListAttribute )
  protected
    FCount  : Integer;
    FMin    : Integer;
    FMax    : Integer;

  public
    property Count : Integer  read FCount;
    property Min : Integer    read FMin;
    property Max : Integer    read FMax;

  public
    constructor Create( APinClass : TClass; ACount : Integer; AMin : Integer; AMax : Integer ); reintroduce; overload;
    constructor Create( const APinClass : IAtttributeParameterInfo; ACount : Integer; AMin : Integer; AMax : Integer ); reintroduce; overload;

  end;
//---------------------------------------------------------------------------
  OWResizePropertyAttribute = class( TBasicStringAttribute )
  protected
    FPopulateOnCreate : Boolean;

  public
    property PopulateOnCreate : Boolean read FPopulateOnCreate;

  public
    constructor Create( const AValue : String ); overload;
    constructor Create( const AValue : String; APopulateOnCreate : Boolean ); overload;

  end;
//---------------------------------------------------------------------------
  TOWBasicDataTypeAttribute = class( TBasicGUIDAttribute )
  protected
    FReorder  : Boolean;

  public
    property Reorder : Boolean  read FReorder;

  public
    constructor Create( const AValue : TGUID; AReorder : Boolean ); overload;

  end;
//---------------------------------------------------------------------------
  OWDataTypeAttribute = class( TOWBasicDataTypeAttribute );
  LPOWDataTypeAttribute = class( TOWBasicDataTypeAttribute );
  OWPrimaryPinAttribute = class( TCustomAttribute );
  OWSecondaryPinAttribute = class( TCustomAttribute );
  OWPinListPrimaryPinTypeAttribute = class( TBasicClassAttribute );
  OWPinGroupAttribute = class( TBasicClassAttribute );
  OWAddPinAttribute = class( TBasicClassAttribute )
  protected
    FName : String;

  public
    property Name : String read FName;

  public
    function CreatePin( const AOnCreated : TProc<TOWPin>; const ALockItem : ILockItem; out AResult : TOWBasicPin ) : Boolean; virtual;

  public
    constructor Create( const AName : String; AValue : TClass ); overload;
    constructor Create( const AName : String; const APinClass : IAtttributeParameterInfo ); overload;

  end;
//---------------------------------------------------------------------------
  TOWBasicDataTypeAttributeClass = class of TOWBasicDataTypeAttribute;
//---------------------------------------------------------------------------
  OWConvertDataTypeAttribute = class( TCustomAttribute )
  protected
    FFromDataType : TGUID;
    FToDataType   : TGUID;

  public
    property FromDataType : TGUID read FFromDataType;
    property ToDataType : TGUID   read FToDataType;

  public
    constructor Create( const AFromDataType : TGUID; const AToDataType : TGUID );

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
  IOWNotifyOperation = interface
    ['{AC2714E1-1E70-4C60-ABBB-EA27737CEE74}']

    [Result : Weak]
    function GetInstance() : TOWNotifyOperation; stdcall;

    function IsType( AClass : TOWNotifyOperationClass ) : Boolean; overload; stdcall;
    function IsType( const AClasses : TArray<TOWNotifyOperationClass> ) : Boolean; overload; stdcall;

  end;
//---------------------------------------------------------------------------
  TOWNotifyOperation = class( TBasicInterfacedObject, IOWNotifyOperation )
  protected
    FOperationID  : Cardinal;

  public
    property OperationID : Cardinal read FOperationID;

  public
    class function Make() : IOWNotifyOperation;

  public
    constructor CreateObject();

  public
    [Result : Weak]
    function  GetInstance() : TOWNotifyOperation; stdcall;

    function  IsType( AClass : TOWNotifyOperationClass ) : Boolean; overload; virtual; stdcall;
    function  IsType( const AClasses : TArray<TOWNotifyOperationClass> ) : Boolean; overload; stdcall;

  end;
//---------------------------------------------------------------------------
  TOWValueNotifyOperation<T> = class( TOWNotifyOperation )
  public
    Value : T;

  public
    class function Make( AValue : T ) : IOWNotifyOperation;

  public
    constructor CreateObject( AValue : T );

  end;
//---------------------------------------------------------------------------
  IOWComponentPinNotify = interface
    ['{677031E5-49A2-4E60-A731-770249C25886}']

    procedure PinAdded( APin : TOWBasicPin );
    procedure PinRemoved( APin : TOWBasicPin );

  end;
//---------------------------------------------------------------------------
  TOWCustomNotificationAttribute = class( TCustomAttribute )
  public
    function  Notification( APinInstance : TOWBasicPin; AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState; out AResult : TOWNotifyResult ) : Boolean; virtual; abstract;

  end;
//---------------------------------------------------------------------------
// TOWSubmit must not be Lambda!
  TOWSubmit = function ( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult of object;
//---------------------------------------------------------------------------
  TOWPinEvent = reference to procedure( APin : TOWBasicPin );
  TOWGlobalSubmit = function ( ASender : TOWPin; AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
//---------------------------------------------------------------------------
  TOWSubmitLink = TOWSubmit;
//---------------------------------------------------------------------------
  TOWPinTypeEntry = class( TBasicObject )
  public
    ID             : TGUID;
    SubmitFunction : TOWSubmit;

  end;
//---------------------------------------------------------------------------
  [CreateType( System.TypeInfo( TOWPinStreamType ))]
  IOWPinStreamType = interface( IObjectOwnerArrayList<TOWPinTypeEntry> )
    ['{C4DC00B7-97BD-4E60-853D-3C29ED89BD93}']

    procedure AddType( const AID : TGUID; const ASubmitFunction : TOWSubmit; AOverrride : Boolean; AReorder : Boolean = False );
    procedure RemoveType( const AID : TGUID );

  end;
//---------------------------------------------------------------------------
  TOWPinStreamType = class( TObjectOwnerArrayList<TOWPinTypeEntry>, IOWPinStreamType )
  public
    procedure AddType( const AID : TGUID; const ASubmitFunction : TOWSubmit; AOverrride : Boolean; AReorder : Boolean = False );
    procedure RemoveType( const AID : TGUID );

  end;
//---------------------------------------------------------------------------
  IOWPinTypeRestricted = interface( IOWPinStreamType )
    ['{B3605387-931D-4F44-8E38-7F76DD906061}']

    function  GetOrdered() : Boolean;
    procedure SetOrdered( AValue : Boolean );

  end;
//---------------------------------------------------------------------------
  TOWPinTypeRestricted = class( TOWPinStreamType, IOWPinTypeRestricted )
  protected
    FOrdered : Boolean;

  protected
    function  GetOrdered() : Boolean;
    procedure SetOrdered( AValue : Boolean );

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
    function  UnlockAllLockInOrder( const AFirstLock : IBasicLock ) : ILockSection; override;

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

    [Result : Weak]
    function GetInstance() : TOWDestroyLock;

  end;
//---------------------------------------------------------------------------
  TOWDestroyLock = class( TBasicInterfacedObject, IOWDestroyLock )
  protected
{$IF DEFINED(LINUX64) or DEFINED(CPUARM64) or DEFINED(OSX64)}
    FLockCounter  : Integer;
    FDestroying   : Integer;
{$ELSE}
    FLockCounter  : LongInt;
    FDestroying   : LongInt;
{$ENDIF}

    [Weak] FOwner : TOWObject;
    FSection      : ICriticalSection;
    FThreadID     : TThreadID;

  protected
    procedure Unlock();
    procedure DestroyUnlock();
    procedure DestroyLockNum( ACount : LongInt );

  public
    function  Lock() : IOWDestroyLockSection;
    function  DestroyLock() : IOWDestroyLockSection;
    function  DestroyUnlockLock() : IOWDestroyLockSection;

    [Result : Weak]
    function  GetInstance() : TOWDestroyLock;

  public
    constructor Create( AOwner : TOWObject );

  end;
//---------------------------------------------------------------------------
  TOWDestroyLockSection = class( TBasicInterfacedObject, IOWDestroyLockSection )
  protected
    FLock : IOWDestroyLock;

  public
    constructor Create( ALock : TOWDestroyLock );
    destructor  Destroy(); override;

  end;
//---------------------------------------------------------------------------
  TOWDestroyLockLockSection = class( TBasicInterfacedObject, IOWDestroyLockSection )
  protected
    [Weak] FLock : TOWDestroyLock;

  public
    constructor Create( ALock : TOWDestroyLock );
    destructor  Destroy(); override;

  end;
//---------------------------------------------------------------------------
  TOWDestroyLockUnlockSection = class( TBasicInterfacedObject, IOWDestroyLockSection )
  protected
    [Weak] FLock  : TOWDestroyLock;
    FCount        : LongInt;

  public
    constructor Create( ALock : TOWDestroyLock; ACount : LongInt );
    destructor  Destroy(); override;

  end;
//---------------------------------------------------------------------------
  TOWObject = class( TManagedPersistent )
  protected
    [AutoManage( TLock )]
    FIntLock        : IBasicLock;

    [AutoManage( TCriticalSection )] // Needs TCriticalSection to work around Android compiler bug
    FIntLockSection : ICriticalSection;

  public
    function  ReadLock() : ILockSection; virtual;
    function  WriteLock() : ILockSection; virtual;
    function  UnlockAll() : ILockSection; virtual;

  end;
//---------------------------------------------------------------------------
  TOWPinTypeObject = class( TOWObject )
  protected
    function  RequestInterface( const IID : TGUID; out Obj ) : HResult; virtual; stdcall;
    function  _AddRef() : Integer; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};
    function  _Release() : Integer; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};

  protected
    function  GetOwnerComponent() : TComponent; virtual; abstract;
    procedure InvalidateCaches( AObject : TObject ); virtual;

  public
    function QueryInterface({$IFDEF FPC_HAS_CONSTREF}constref{$ELSE}const{$ENDIF} IID : TGUID; out Obj): HResult; virtual; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};

  public
    function  IsConnected() : Boolean; virtual;

  public
    property Owner : TComponent read GetOwnerComponent;

  end;
//---------------------------------------------------------------------------
  TOWPinObject = class( TOWPinTypeObject )
  protected
    procedure PinDeletedNotify( const ADeletedPin : TOWBasicPin ); virtual;
    procedure PinReplacedNotify( const AOldPin : TOWBasicPin; const ANewPin : TOWBasicPin ); virtual;
    procedure SetNotifyAfterByName( const APin : TOWPin; const AAfterPinName : String ); virtual;

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
  TOWPinEntry = class( TBasicObject )
  public
    ConnectionPin   : TOWBasicPin;
    RealPin         : TOWBasicPin;
    NotifyAfterPin  : TOWBasicPin;
    ConnectedID     : TGUID;
    SubmitFunction  : TOWSubmit;

  private
    [Weak] FOwnerList  : TOWPinEntryList;

  protected
    ModificationLevel : Integer; // Indicates how often this pin is source of data modification.

  protected
    procedure IncrementModificationLevel(); inline;

  public
    procedure Assign( AOther : TOWPinEntry );

  public
    constructor Create( AOwnerList : TOWPinEntryList );

  end;
//---------------------------------------------------------------------------
  TOWNotifyPinEntry = class;
//---------------------------------------------------------------------------
  IOWNotifyPinEntry = interface
    ['{CAD98CD2-B952-4DC3-ADAB-7D1F476F07B1}']

    [Result : Weak]
    function  GetInstance() : TOWNotifyPinEntry;

    procedure RemoveNotifyEntry();

  end;
//---------------------------------------------------------------------------
  TOWNotifyPinEntry = class( TBasicInterfacedObject, IOWNotifyPinEntry )
  public
    Entry     : TOWPinEntry;
    Converter : IOWFormatConverter; // Used only to keep the converter alive during Notify
    Section   : ICriticalSection;

  protected
    [Result : Weak]
    function  GetInstance() : TOWNotifyPinEntry;

    procedure RemoveNotifyEntry();

  public
    constructor Create();
    destructor  Destroy(); override;

  end;
//---------------------------------------------------------------------------
  [CreateType( System.TypeInfo( TOWPinEntryList ))]
  IOWPinEntryList = interface( IObjectOwnerArrayList<TOWPinEntry> )
    ['{1977E203-E449-4C88-ABDE-B306DDBD760C}']

    function  Add() : TOWPinEntry;
    function  GetItemByPin( APin : TOWBasicPin ) : TOWPinEntry;
    procedure Sort();

  end;
//---------------------------------------------------------------------------
  TOWPinEntryList = class( TObjectOwnerArrayList<TOWPinEntry>, IOWPinEntryList )
  protected
{
    type
      TOWEComponentsListComparer = class( TBasicInterfacedObject, IComparer<TOWPinEntry> )
      protected
        function Compare( const AItem1, AItem2 : TOWPinEntry ) : Integer;

      end;
}
  protected
    FNeedsSort  : Boolean;

  public
    function  Add() : TOWPinEntry; reintroduce;

  public
    function  GetItemByPin( APin : TOWBasicPin ) : TOWPinEntry;
    procedure Sort();

  end;
//---------------------------------------------------------------------------
  [CreateType( System.TypeInfo( TOWPinNotifyEntryList ))]
  IOWPinNotifyEntryList = interface( IArrayList<IOWNotifyPinEntry> )
    ['{5773999D-A0ED-4FFC-8DBF-31FED1A198B1}']

    procedure RemoveLinks();

  end;
//---------------------------------------------------------------------------
  TOWPinNotifyEntryList = class( TInterfaceArrayList<IOWNotifyPinEntry>, IOWPinNotifyEntryList )
  public
    procedure RemoveLinks();

  end;
//---------------------------------------------------------------------------
  TBindingValueType = ( Display, Save, PropertyName );
//---------------------------------------------------------------------------
  TDataStreamInfo = record
  public
    ID      : TGUID;    // Used by Debugger/Visualizer!
    Accepts : Boolean;  // Used by Debugger/Visualizer!
    Sends   : Boolean;  // Used by Debugger/Visualizer!

  public
    constructor Create( const AID : TGUID; AAccepts : Boolean; ASends : Boolean );

  end;
//---------------------------------------------------------------------------
  TOWBasicPin = class( TOWPinObject, IOWStream, ITypeInfoChangeNotify, ISerializable )
  protected
    FCurrentEditorPtr : ^TOWBasicPin;

  protected
    [Unsafe] FOwnerPinList : TOWPinList;   // If owned by pin list.
    FPinLists       : IArrayList<TOWPinList>;

    FLoadFormName   : String;
    FDestroyLock    : IOWDestroyLock;
    FOwnerLock      : IBasicLock; // The lock of the component that owns the pin.
    FInDesignMode   : Boolean;

    FImageCached    : Boolean;
    FImage          : IGPBitmap;

    FOnCreated      : TProc<TOWPin>;

  protected // State support
    FDispatcher           : TOWBasicStateDispatcher;
    FConverterDispatcher  : TOWBasicStateDispatcher;

  protected
    FName                   : String;
    FShortName              : String;
    FFullIdentName          : String;
    FFullLoadIdentName      : String;
    FPropertyElements       : IPropertyElements;
    FDoNotShortName         : Boolean;
    FIsRegistered           : Boolean;
    FValidPropertyElements  : Boolean;
    FStreamInterfaces       : IArrayList<TGUID>;

  public // ISerializable
    procedure SerializationRead( const AReader : IReader ); virtual;
    procedure SerializationWrite( const AWriter : IWriter; const ASelectedObjects : IObjectArrayList; const AMember : IMemberInfo = NIL ); virtual;

  protected // ITypeInfoChangeNotify
    procedure TypeInfoChange( AObject : TObject );

  protected
    function  GetOwnerPinList() : TOWPinList; virtual;
    function  GetOwnerComponent() : TComponent; override;
    function  GetOwnerProperty() : TPersistent; virtual;
    function  RootInDestroying() : Boolean; virtual;
    function  OwnerInLoading() : Boolean; virtual;
    procedure IntDisconnect( const AOtherPin : TOWBasicPin; ADesignFormClosing : Boolean ); virtual;
    procedure IntConnect( const ASinkPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID; AFromOther : Boolean ); virtual;
    procedure CheckRemove(); virtual;
    procedure ApplyFormName( var AIdent : String );
    function  CanConnectToInt( const AOtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; AUseConverters : Boolean; const ADataType : TGUID ) : Boolean; virtual;
    procedure BeforeDisconnect(); virtual;
    procedure BeforeDisconnectFrom( const APin : TOWBasicPin ); virtual;
    function  GetNameInt() : String; virtual; abstract;
    function  GetFullIdentNameInt( AIncludeRootForm : Boolean; ALoadIndexed : Boolean ) : String; virtual; abstract;
    function  GetFullIdentsInt() : IPropertyElements; virtual; abstract;
    procedure PopulateNameCache(); virtual;
    function  GetIsCached() : Boolean; virtual;
    function  GetIsCachedInternal() : Boolean;
    function  MakeShortName( const AName : String ) : String; virtual;
    procedure RemoveNotifyEntry( const AEntry : IOWNotifyPinEntry ); virtual;
    procedure AddNotifyEntry( const AEntry : IOWNotifyPinEntry ); virtual;
    procedure UnlodedPinRemoved( const APin : TOWBasicPin ); virtual;
    procedure SetOwnerPinList( AValue : TOWPinList ); virtual;
    procedure InvalidateCaches( AObject : TObject ); override;

  protected
    procedure AddPinList( APinList : TOWPinList );
    procedure RemovePinList( APinList : TOWPinList ); virtual;

  protected
    function  GetPinType() : TOWPinType; virtual; abstract;
    function  GetConnectedAfterForPin( const AOtherPin : TOWBasicPin ) : TOWBasicPin; virtual;

  protected
    function  GetInputOutputImage( out AImage : IGPBitmap; AForInput : Boolean; AForOutput : Boolean ) : Boolean; virtual;

  protected
    function IntGetPNGResImageByName( AHInstance : THandle; const AName : String; out ABitmap : IGPBitmap ) : Boolean; virtual;
    class function IntGetPNGResImageByNameClass( AHInstance : THandle; const AName : String; out ABitmap : IGPBitmap ) : Boolean; virtual;

  public
    function  GetEmbeddedOwner() : TComponent; virtual;
    function  GetImage( out AImage : IGPBitmap ) : Boolean; virtual;
    function  IsPreviewPin() : Boolean; virtual;
    function  IsDebugPin() : Boolean; virtual;
    function  IsBindingPin() : Boolean; virtual;

  public
    function  DirectDependsOn( const AOtherPin : TOWBasicPin ) : Boolean; virtual;
    function  GetConnectionID( const AOtherPin : TOWBasicPin; AReturnConvertedID : Boolean = False ) : TGUID; overload; virtual;
    function  GetConnectionID( const ADispatcher : TOWBasicStateDispatcher; AReturnConvertedID : Boolean = False ) : TGUID; overload; virtual;
    function  GetIsRealPin() : Boolean; virtual;
    function  GetRootName() : String; virtual;
    function  GetRoot() : TComponent; virtual;
    function  GetName() : String; virtual;
    function  GetOnlyName() : String;
    function  GetShortName() : String; virtual;
    function  GetSaveName() : String; virtual;
    function  GetPinPropertyName( ASaveName : Boolean ) : String; virtual;
    function  GetPinName( ASaveName : Boolean ) : String; virtual;
    function  GetOwner() : TPersistent; override;
    function  GetOwnerName( AIncludeRootForm : Boolean ) : String; virtual;
    function  GetFullName( AIncludeRootForm : Boolean ) : String; virtual; abstract; // Used by Debugger/Visualizer!
    function  GetFullIdentName( AIncludeRootForm : Boolean; ALoadIndexed : Boolean ) : String;
    function  GetFullIdents( AIncludeRootForm : Boolean ) : IPropertyElements;
    function  DependsOn( const AOtherPin : TOWBasicPin ) : Boolean; virtual; abstract;
    // Wether or not the OtherPin is compatible with the entire data chain of already connected slots.
    function  CanConnectByType( const AType : TGUID; AUseConverters : Boolean = True ) : Boolean; virtual;
    function  CanConnectTo( const AOtherPin : TOWBasicPin; AUseConverters : Boolean = True ) : Boolean; virtual;
    function  IsCompatible( const AOtherPin : TOWBasicPin; AUseConverters : Boolean = True ) : Boolean; virtual; abstract;
    function  IsConnected() : Boolean; override;
    function  IsStateConnected() : Boolean; virtual;
    function  IsConnectedByIDs( const AIDs : TArray<TGUID> ) : Boolean; overload; virtual;//const;
    function  IsConnectedByIDs( const AIDs : ISet<TGUID> ) : Boolean; overload; virtual;//const;
    function  IsConnectedTo( const AOtherPin : TOWBasicPin ) : Boolean; virtual;//const;
    function  IsConnectedAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin ) : Boolean; virtual;//const;
    function  IsConnectedToState( const ADispatcher : TOWBasicStateDispatcher ) : Boolean; virtual;
    function  IsConnectedByStateTo( const AOtherPin : TOWBasicPin ) : Boolean; virtual;//const;
    function  IsConnectedByStateAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin ) : Boolean; virtual;//const;
    function  IsConnectedByConverterTo( const AOtherPin : TOWBasicPin ) : Boolean; virtual;//const;
    function  GetConnectionConverter( const AOtherPin : TOWBasicPin; out AConverter : IOWFormatConverter ) : Boolean; virtual;//const;

    function  ConnectByState( const AOtherPin : TOWBasicPin ) : Boolean; virtual;
    function  ConnectByStateAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin ) : Boolean; virtual;
    function  ConnectByStateAfterByType( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID ) : Boolean; virtual;
    function  Connect( const AOtherPin : TOWBasicPin ) : Boolean; virtual;
    function  ConnectAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin ) : Boolean; virtual;
    function  ConnectAfterByType( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID ) : Boolean; virtual;
    function  ConnectByType( const AOtherPin : TOWBasicPin; const ADataType : TGUID ) : Boolean; virtual;
    function  ConnectByStateByType( const AOtherPin : TOWBasicPin; const ADataType : TGUID ) : Boolean; virtual;
    function  CanConnectAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; AUseConverters : Boolean = True ) : Boolean; virtual;
    procedure Disconnect(); virtual;
    procedure DisconnectFrom( const AOtherPin : TOWBasicPin ); virtual;
    procedure DisconnectFromState(); virtual;
    function  NotifyPin( const APin : TOWBasicPin; const AOperation : IOWNotifyOperation ) : TOWNotifyResult; virtual;
    function  Notify( const AOperation : IOWNotifyOperation ) : TOWNotifyResult; virtual;

  protected
    procedure LinkToStateByName( const AIdentName : String ); virtual;
    function  CheckVirtualList( AForceCheck : Boolean ) : Boolean; virtual;
    function  DoStateWrite() : Boolean; virtual;
    function  DoStateConverterWrite() : Boolean; virtual;
    function  DoFormWrite() : Boolean; virtual;
    procedure ReadConnectionsData( AReader : TReader );
    procedure ReadConnectionsDataInternal( AReader : TReader; ASkipConnections : Boolean ); virtual;
    procedure ReadFormName( AReader : TReader );
    procedure WriteFormName( AWriter : TWriter );
    procedure ReadStateConnectionsData( AReader : TReader );
    procedure ReadStateConnectionsDataInternal( AReader : TReader; ASkipConnections : Boolean ); virtual;
    procedure WriteStateConnectionsData( AWriter : TWriter ); virtual;
    procedure WriteListEntry( AWriter : TWriter ); virtual;
    procedure ReadListEntry( AReader : TReader; ASkipConnections : Boolean ); virtual;
    function  WriteNoStateListEntry( AWriter : TWriter ) : Boolean; virtual;
    procedure ReadNoStateListEntry( AReader : TReader; const AIdent : String; ASkipConnections : Boolean ); virtual;
    function  GetConnectedPinCount() : Integer; virtual;  // Used by Debugger/Visualizer!
    function  GetConnectedPin( AIndex : Integer ) : TOWBasicPin; virtual;  // Used by Debugger/Visualizer!
    function  GetConnectedAfterPin( AIndex : Integer ) : TOWBasicPin; virtual;  // Used by Debugger/Visualizer!
    function  GetDispatcherCount() : Integer; virtual;  // Used by Debugger/Visualizer!
    function  GetDispatcher( AIndex : Integer ) : TOWBasicStateDispatcher; virtual;  // Used by Debugger/Visualizer!
    function  GetDataTypesCount() : Integer; virtual;
    function  GetDataType( AIndex : Integer ) : TGUID; virtual;
    procedure SetInEditor( AValue : Boolean ); virtual;
    function  CanConnectToStateInt( const ADispatcher : TOWBasicStateDispatcher; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; AUseConverters : Boolean; const ADataType : TGUID ) : Boolean; virtual;
    procedure IntStateDisconnect(); virtual;
    function  GetEditorString() : String; virtual;
    function  SetEditorString( ARoot : TComponent; const AValue : String ) : Boolean; virtual;

  public
    function  GetStreamInterfaces() : IArrayList<TGUID>; virtual;
    function  GetStreamDataList() : IArrayList<TDataStreamInfo>; virtual; // Used by Debugger/Visualizer!

  public
    function  IsLinkedTo( const APinName : String ) : Boolean; virtual;
    procedure SetOwnerComponent( AComponent : TComponent ); virtual;
    procedure SetRootAndName( ARoot : TComponent; const AName : String; AInDesignMode : Boolean ); virtual;

  public // State support
    function  ConnectToState( ADispatcher : TOWBasicStateDispatcher ) : Boolean; virtual;
    function  ConnectToStateAfter( ADispatcher : TOWBasicStateDispatcher; ANotifyAfterPin : TOWBasicPin ) : Boolean; virtual;
    function  CanConnectToState( const ADispatcher : TOWBasicStateDispatcher ) : Boolean;

  protected
    function  CreateDispatcher( AOwner : TComponent; AFromConverter : Boolean = False ) : TOWStateDispatcher; virtual;
    function  CreateNamedDispatcher( const AName : String; ADesignTime : Boolean; AFromConverter : Boolean = False ) : TOWStateDispatcher; virtual;

  protected
    function  OwnerInDesigning( ACheckForDispatchers : Boolean ) : Boolean; virtual;
    function  FindConnectionID( const AOtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; AUseConverters : Boolean; const ADataType : TGUID ) : TGUID; virtual;
    function  NotifyDispatcher( const AOperation : IOWNotifyOperation; AState : TOWNotifyState; const APinToNotify : TOWBasicPin ) : TOWNotifyResult; virtual;
    procedure UpdateStateValue(); virtual;

  public
    procedure AfterConstruction(); override;
    procedure BeforeDestruction(); override;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock );
    destructor  Destroy(); override;

  public
    [ExternalLink]
    property OwnerPinList                             : TOWPinList              read GetOwnerPinList;   // If owned by pin list.

    [ExternalLink]
    property Owner;

    [ExternalLink]
    property OwnerProperty                            : TPersistent             read GetOwnerProperty;

    property Name                                     : String                  read GetName;
    property ShortName                                : String                  read GetShortName;
    property ConnectedPinCount                        : Integer                 read GetConnectedPinCount;
    property ConnectedPin[ AIndex : Integer ]         : TOWBasicPin             read GetConnectedPin;
    property AfterPin[ AIndex : Integer ]             : TOWBasicPin             read GetConnectedAfterPin;
    property ConnectedDispatcherCount                 : Integer                 read GetDispatcherCount;
    property ConnectedDispatcher[ AIndex : Integer ]  : TOWBasicStateDispatcher read GetDispatcher;
    property DataTypesCount                           : Integer                 read GetDataTypesCount;
    property DataType[ AIndex : Integer ]             : TGUID                   read GetDataType;

  end;
//---------------------------------------------------------------------------
  TOWUnloadedPin = class( TOWBasicPin )
  protected
    FDisplayName    : String;
    FIdentName      : String;
    [Weak] FRoot    : TComponent;
    FType           : TOWPinType;
    FDesignTime     : Boolean;

    [AutoManage]
    FConnectedPins  : IOWPinEntryList;

    FCreatedFrom    : String;
    FOwnedByList    : Boolean;
    FInRemoveCount  : Integer;
    FInEditor       : Boolean;

  public
    function  IsCompatible( const AOtherPin : TOWBasicPin; AUseConverters : Boolean = True ) : Boolean; override;
    function  ConnectAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin ) : Boolean; override;
    procedure Disconnect(); override;
    function  DependsOn( const AOtherPin : TOWBasicPin ) : Boolean; override;
    function  IsConnected() : Boolean; override;
    function  IsConnectedTo( const AOtherPin : TOWBasicPin ) : Boolean; override; //const;

  protected
    function  OwnerInDesigning( ACheckForDispatchers : Boolean ) : Boolean; override;
    function  FindConnectionID( const AOtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; AUseConverters : Boolean; const ADataType : TGUID ) : TGUID; override;
    function  NotifyDispatcher( const AOperation : IOWNotifyOperation; AState : TOWNotifyState; const APinToNotify : TOWBasicPin ) : TOWNotifyResult; override;
    procedure PinDeletedNotify( const ADeletedPin : TOWBasicPin ); override;
    procedure IntDisconnect( const AOtherPin : TOWBasicPin; ADesignFormClosing : Boolean ); override;
    procedure IntConnect( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID; AFromOther : Boolean ); override;
    function  GetPinType() : TOWPinType; override;
    procedure CheckRemove(); override;
    procedure PinReplacedNotify( const AOldPin : TOWBasicPin; const ANewPin : TOWBasicPin ); override;
    procedure SetInEditor( AValue : Boolean ); override;
    function  CanConnectToInt( const AOtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; AUseConverters : Boolean; const ADataType : TGUID ) : Boolean; override;
    function  GetNameInt() : String; override;
    function  GetFullIdentNameInt( AIncludeRootForm : Boolean; ALoadIndexed : Boolean ) : String; override;
    function  GetFullIdentsInt() : IPropertyElements; override;
    function  GetConnectedPinCount() : Integer; override;
    function  GetConnectedPin( AIndex : Integer ) : TOWBasicPin; override;
    procedure InvalidateCaches( AObject : TObject ); override;

  public
    function  GetRoot() : TComponent; override;
    function  GetFullName( AIncludeRootForm : Boolean ) : String; override;

  public
    procedure PopulatePinAndDestroy( APin : TOWBasicPin );

  public
    constructor Create( ARoot : TComponent; ALoadIndexed : Boolean; AType : TOWPinType; const APinIdentName : String; const APinDisplayName : String; const ACreatedFrom : String );

  end;
//---------------------------------------------------------------------------
  TOWPin = class( TOWBasicPin )
  protected
    [Weak] FOwner         : TComponent;
    [Weak] FOwnerProperty : TPersistent;
    FLastRootName         : String;

    [AutoManage]
    FStreamType           : IOWPinStreamType;

    FInSending            : Integer;
    FIsLoaded             : Boolean;
    FIsBinding            : Boolean;
    FOverrideName         : String;
    FOverrideSaveName     : String;

    FCustomNotifications  : TArray<TOWCustomNotificationAttribute>;

  protected // Temporary values used in case the Owner is not set in the constructor
    FRoot     : TComponent;
    FLoadName : String;

  public
    class function PinNullSetter<T : TOWPin>( var APin : T ) : TProc<TOWPin>; overload; static;
    class function PinOwnerSetter<T : TOWPin>( var APin : T; AOwner : TComponent; AOwnerProperty : TPersistent ) : TProc<TOWPin>; overload; static;
    class function PinOwnerSetter( AOwner : TComponent; AOwnerProperty : TPersistent ) : TProc<TOWPin>; overload; static;
    class function PinBindingOwnerSetter<T : TOWPin>( var APin : T; AOwner : TComponent; AOwnerProperty : TPersistent ) : TProc<TOWPin>; overload; static;
    class function PinBindingOwnerSetter( AOwner : TComponent; AOwnerProperty : TPersistent ) : TProc<TOWPin>; overload; static;
    class function PinPathSetter<T : TOWPin>( var APin : T; const APath : IPropertyElements; const APinName : String ) : TProc<TOWPin>; overload; static;
    class function PinPathSetter( const APath : IPropertyElements; const APinName : String ) : TProc<TOWPin>; overload; static;
    class function PinListAddSetter( APinList : TOWPinList ) : TProc<TOWPin>; overload; static;
    class function PinListAddSetter<T : TOWPin>( var APin : T; APinList : TOWPinList ) : TProc<TOWPin>; overload; static;
    class function PinListInsertSetter( APinList : TOWPinList; AIndex : Integer ) : TProc<TOWPin>; overload; static;
    class function PinListInsertSetter<T : TOWPin>( var APin : T; APinList : TOWPinList; AIndex : Integer ) : TProc<TOWPin>; overload; static;
    class function PinListAddNamedSetter( APinList : TOWPinList; const APinName : String ) : TProc<TOWPin>; overload; static;
    class function PinListAddNamedSetter<T : TOWPin>( var APin : T; APinList : TOWPinList; const APinName : String ) : TProc<TOWPin>; overload; static;
    class function PinListInsertNamedSetter( APinList : TOWPinList; AIndex : Integer; const APinName : String ) : TProc<TOWPin>; overload; static;
    class function PinListInsertNamedSetter<T : TOWPin>( var APin : T; APinList : TOWPinList; AIndex : Integer; const APinName : String ) : TProc<TOWPin>; overload; static;
    class function PinCustomOwnerSetter( const AProc : TProc<TOWPin>; AOwner : TComponent; AOwnerProperty : TPersistent ) : TProc<TOWPin>; static;
    class function PinCustomOwnerOverrideNameSetter( const AProc : TProc<TOWPin>; AOwner : TComponent; AOwnerProperty : TPersistent; const AOverrideName : String ) : TProc<TOWPin>; static;
    class function PinCustomPathSetter( const AProc : TProc<TOWPin>; const APath : IPropertyElements; const APinName : String ) : TProc<TOWPin>; static;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock );

  public
    procedure AfterConstruction(); override;
    procedure BeforeDestruction(); override;

  protected
    function  NotificationCall( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual;
    function  Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult; virtual;

  protected
    function  RootInDestroying() : Boolean; override;
    function  OwnerInLoading() : Boolean; override;
    function  OwnerInDesigning( ACheckForDispatchers : Boolean ) : Boolean; override;

  public // ISerializable
    procedure SerializationRead( const AReader : IReader ); override;
    procedure SerializationWrite( const AWriter : IWriter; const ASelectedObjects : IObjectArrayList; const AMember : IMemberInfo = NIL ); override;

  protected
    procedure DefineProperties( AFiler : TFiler ); override;

  protected // State support
    function  FindConnectionID( const AOtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; AUseConverters : Boolean; const ADataType : TGUID ) : TGUID; override;

  protected
    procedure RemovePinList( APinList : TOWPinList ); override;

  protected
    procedure AddType( const AID : TGUID; AOverrride : Boolean; AReorder : Boolean = False );  overload;
    procedure AddType( const AID : TGUID; ASubmitFunction : TOWSubmit; AOverrride : Boolean; AReorder : Boolean = False ); overload;

    procedure RemoveType( const AID : TGUID );
    procedure ClearTypes();

  public
    function  DefaultNotifyDispatcher( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;

  protected
    procedure OrderStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted );

  public
    function  GetConnectionID( const AOtherPin : TOWBasicPin; AReturnConvertedID : Boolean = False ) : TGUID; overload; override;
    function  GetConnectionName( const AOtherPin : TOWBasicPin; AReturnConvertedID : Boolean = False ) : String;
    function  GetPrimaryConnectionID() : TGUID; virtual;

  protected
    function  GetSubmitFunctionID( const IID : TGUID ) : TOWSubmit;
    function  GetLinkNameID( const IID : TGUID ) : String;
    function  CheckVirtualList( AForceCheck : Boolean ) : Boolean; override;
    function  CanConnectToInt( const AOtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; AUseConverters : Boolean; const ADataType : TGUID ) : Boolean; override;
    function  GetNameInt() : String; override;
    function  GetFullIdentNameInt( AIncludeRootForm : Boolean; ALoadIndexed : Boolean ) : String; override;
    function  GetFullIdentsInt() : IPropertyElements; override;
    function  UpdateOnConnect() : Boolean;
    procedure SetOwnerPinList( AValue : TOWPinList ); override;
    procedure PopulateNameCache(); override;

  protected
    function  GetStateSubmitID( const AOtherPin : TOWBasicPin ) : TGUID; virtual;

  protected
    function  GetOwnerComponent() : TComponent; override;
    function  GetOwnerProperty() : TPersistent; override;

  public
    procedure SetOwnerComponent( AComponent : TComponent ); override;
    procedure SetRootAndName( ARoot : TComponent; const AName : String; AInDesignMode : Boolean ); override;

  public
    function  ReadLock() : ILockSection; override;
    function  WriteLock() : ILockSection; override;

  public
    function  GetEmbeddedOwner() : TComponent; override;
    function  GetRoot() : TComponent; override;
    function  GetRootName() : String; override;
    function  GetSaveName() : String; override;
    function  GetFullName( AIncludeRootForm : Boolean ) : String; override;
    function  GetDataTypesCount() : Integer; override;
    function  GetDataType( AIndex : Integer ) : TGUID; override;
    function  GetOwner() : TPersistent; override;
    function  IsBindingPin() : Boolean; override;

  protected
    function  NotifyDispatcher( const AOperation : IOWNotifyOperation; AState : TOWNotifyState; const APinToNotify : TOWBasicPin ) : TOWNotifyResult; override;

  protected
    procedure PopulateTypes( AAttributeClass : TOWBasicDataTypeAttributeClass; ASubmit : TOWSubmit; AOverrride : Boolean );

  public
    function  NotifyPin( const APin : TOWBasicPin; const AOperation : IOWNotifyOperation ) : TOWNotifyResult; override;
    function  Notify( const AOperation : IOWNotifyOperation ) : TOWNotifyResult; override;

  public
    function  IsCompatible( const AOtherPin : TOWBasicPin; AUseConverters : Boolean = True ) : Boolean; override;

  end;
//---------------------------------------------------------------------------
  IOWObjectList = interface( IArrayList<TOWObject> )
    ['{C70686F4-A9C3-491D-B036-F95D02C24BEB}']
  end;
//---------------------------------------------------------------------------
  TOWObjectList = class( TObjectArrayList<TOWObject>, IOWObjectList );
//---------------------------------------------------------------------------
//  TOWObjectListList = class( IObjectOwnerArrayList<TOWObjectList> );
//---------------------------------------------------------------------------
  IOWStateDispatcherList = interface( IArrayList<TOWBasicStateDispatcher> )
    ['{08EF908F-CCEA-4F42-9CBC-5A7B861F4C24}']
  end;
//---------------------------------------------------------------------------
  TOWStateDispatcherList = class( TObjectArrayList<TOWBasicStateDispatcher>, IOWStateDispatcherList );
//---------------------------------------------------------------------------
  TOWStreamPin = class( TOWPin )
  protected
    [AutoManage]
    FConnectionPoints : IOWPinNotifyEntryList;

    [AutoManage( TCriticalSection )] // Needs TCriticalSection to work around Android compiler bug
    FPointsSection    : ICriticalSection;

  protected
    procedure DownStreamFillPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin; AOtherPin : TOWBasicPin ); virtual;
    procedure UpStreamFillPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin ); virtual;
    function  DownStreamQueryPossybleInterface( const IID : TGUID ) : HResult; virtual;
    function  UpStreamQueryPossybleInterface( const IID : TGUID ) : HResult; virtual;
    procedure RemoveNotifyEntry( const AEntry : IOWNotifyPinEntry ); override;
    procedure AddNotifyEntry( const AEntry : IOWNotifyPinEntry ); override;

  protected
    procedure BackPopulateStreamChains( const AChain : IArrayList<IOWObjectList>; const AList : IOWObjectList ); virtual;

  public
    // Fixes a misterious internal bug in the 64 bit Delphi compiler!
    function  IsConnectedByConverterTo( const AOtherPin : TOWBasicPin ) : Boolean; override;
    function  GetConnectionConverter( const AOtherPin : TOWBasicPin; out AConverter : IOWFormatConverter ) : Boolean; override;

  end;
//---------------------------------------------------------------------------
  IOWFormatConverter = interface
    ['{F8E1AE7F-ABD3-4BC0-984D-2CC34D2D83CB}']

    [Result : Weak]
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
    function  SourceOperationEvent( ASender : TOWBasicPin; AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;

  protected
    [Result : Weak]
    function  GetInstance() : TOWFormatConverter;

  protected
    function  _AddRef() : Integer; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};
    function  _Release() : Integer; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};

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
    procedure SetPinName( const AName : String ); virtual;

  public
    function  GetPin() : TOWPin; virtual; abstract;

  end;
//---------------------------------------------------------------------------
  TOWBasicPinProxy = class( TOWPinProxy )
  protected
    FPin : TOWPin;

  public
    function  GetPin() : TOWPin; override;

  public
    destructor  Destroy(); override;

  end;
//---------------------------------------------------------------------------
  TOWPinListProxy = class( TComponent )
  protected
    procedure SetPinListName( const AName : String ); virtual;

  public
    function  GetPinList() : TOWPinList; virtual; abstract;

  public
    function  CreatePinProxy( const AProxyClassName : String; const APinName : String ) : TOWPinProxy;

  end;
//---------------------------------------------------------------------------
  TOWBasicPinListProxy = class( TOWPinListProxy )
  protected
    FPinList : TOWPinList;

  public
    function  GetPinList() : TOWPinList; override;

  public
    destructor  Destroy(); override;

  end;
//---------------------------------------------------------------------------
  EOWException = class( Exception );
//---------------------------------------------------------------------------
  [CreateType( System.TypeInfo( TOWFormatConverterList ))]
  IOWFormatConverterList = interface( IArrayList<IOWFormatConverter> )
    ['{6789D032-B4CA-4080-A6C2-0195A6A073D6}']
  end;
//---------------------------------------------------------------------------
  TOWFormatConverterList = class( TInterfaceArrayList<IOWFormatConverter>, IOWFormatConverterList );
//---------------------------------------------------------------------------
  IOWSinkPinListCopy = interface;
//---------------------------------------------------------------------------
  IOWSinkPinList = interface
    ['{76FAAE45-97EA-44B4-BB46-7D0AB29D5A9F}']

    function  GetList() : IOWSinkPinListCopy;

    procedure Add( APin : TOWBasicSinkPin );
    procedure Remove( APin : TOWBasicSinkPin );

  end;
//---------------------------------------------------------------------------
  IOWSinkPinListCopy = interface( IArrayList<TOWBasicSinkPin> )
    ['{1BB88165-C682-490F-B8E4-FF2990AB4638}']

  end;
//---------------------------------------------------------------------------
  TOWSinkPinList = class( TBasicInterfacedObject, IOWSinkPinList )
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
    FInputOwnerLock   : IBasicLock; // The input side lock of the component that owns the pin.

    [AutoManage]
    FSinkPins         : IOWPinEntryList;

    [AutoManage]
    FFormatConverters : IOWFormatConverterList;

    FFunctionSources  : IOWSinkPinList;
    FDataTypeSources  : IOWSinkPinList;
    FInDependOn       : Boolean;
    FInDisconnect     : Boolean;
    FInEditor         : Boolean;
    FMaxConnections   : Integer;

  protected
    procedure IntConnect( const ASinkPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID; AFromOther : Boolean ); override;
    procedure IntDisconnect( const AOtherPin : TOWBasicPin; ADesignFormClosing : Boolean ); override;
    procedure PinDeletedNotify( const ADeletedPin : TOWBasicPin ); override;
    procedure PinReplacedNotify( const AOldPin : TOWBasicPin; const ANewPin : TOWBasicPin ); override;
    procedure UnlodedPinRemoved( const APin : TOWBasicPin ); override;
    function  GetPinType() : TOWPinType; override;
    function  GetConnectedAfterForPin( const AOtherPin : TOWBasicPin ) : TOWBasicPin; override;
    function  GetConnectedPinCount() : Integer; override;
    function  GetConnectedPin( AIndex : Integer ) : TOWBasicPin; override;
    function  GetEditorString() : String; override;
    function  SetEditorString( ARoot : TComponent; const AValue: String ) : Boolean; override;
    procedure SetInEditor( AValue : Boolean ); override;

  public
    function  GetImage( out AImage : IGPBitmap ) : Boolean; override;

  public
    function  IsLinkedTo( const APinName : String ) : Boolean; override;

  protected
    function  GetSinkCount() : Integer;                           virtual; // const;
    function  GetSink( AIndex : Integer ) : TOWBasicPin;           virtual;

    function  GetConverterCount() : Integer;
    function  GetConverter( AIndex : Integer ) : IOWFormatConverter;

  //  procedure SinkChangedData( AIndex : Integer );
    procedure ReorderChangedData();

  protected
    function  RequestInterface( const IID : TGUID; out Obj ): HResult; override; stdcall;

  protected
    function  GetLinkStr( AItem : Integer ) : String;

  protected
    function  CheckDownStreamInterfaces( const AOtherPin : TOWBasicPin; AUseConverters : Boolean ) : Boolean; virtual;
    procedure DownStreamBackRestrictPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin );
    procedure UpStreamBackRestrictPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin );
    procedure DownStreamForthRestrictPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin );
    procedure UpStreamForthRestrictPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin );
    procedure DownStreamFillPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin; AOtherPin : TOWBasicPin ); override;
    procedure UpStreamFillPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin ); override;

    function  DownStreamQueryPossybleInterface( const IID : TGUID ) : HResult; override;
    function  UpStreamQueryPossybleInterface( const IID : TGUID ) : HResult; override;
    function  DownStreamBackQueryPossybleInterface( const IID : TGUID; AForPin : TOWPin ) : HResult;
    function  UpStreamBackQueryPossybleInterface( const IID : TGUID; AForPin : TOWPin ) : HResult;
    function  DownStreamForthQueryPossybleInterface( const IID : TGUID; AForPin : TOWPin ) : HResult;
    function  UpStreamForthQueryPossybleInterface( const IID : TGUID; AForPin : TOWPin ) : HResult;

    function  DownStreamFindConnectionID( const AOtherPin : TOWBasicPin; AUseConverters : Boolean; ARequestConverters : Boolean; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; const ADataType : TGUID ) : TGUID;

  //  procedure ChainReconnect( const DownIID : TGUID; const UpIID : TGUID );
    procedure BackChainReconnect( const ADownIID : TGUID; const AUpIID : TGUID );
    procedure ForthChainReconnect( const ADownIID : TGUID; const AUpIID : TGUID );

  protected
    procedure BackPopulateStreamChains( const AChain : IArrayList<IOWObjectList>; const AList : IOWObjectList ); override;

  protected
    procedure NewConnection( const ASinkPin : TOWBasicPin; ASubmitFunctionIn : TOWSubmitLink ); overload; virtual;
    procedure NewConnection( const ASinkPin : TOWBasicPin ); overload; virtual;

  protected
    procedure ReadConnectionsDataInternal( AReader : TReader; ASkipConnections : Boolean ); override;
    procedure WriteConnectionsData( AWriter : TWriter ); virtual;
    function  WriteNoStateListEntry( AWriter : TWriter ) : Boolean; override;
    procedure ReadNoStateListEntry( AReader : TReader; const AIdent : String; ASkipConnections : Boolean ); override;

    function  DoFormWrite() : Boolean; override;
    function  DoWrite() : Boolean; virtual;

    procedure DefineProperties( AFiler : TFiler ); override;

  public // ISerializable
    procedure SerializationRead( const AReader : IReader ); override;
    procedure SerializationWrite( const AWriter : IWriter; const ASelectedObjects : IObjectArrayList; const AMember : IMemberInfo = NIL ); override;

  protected
    procedure SetNotifyAfterByName( const APin : TOWPin; const AAfterPinName : String ); override;

  protected
    function  TryLinkTo( ARoot : TComponent; const ASinkIdent : String; const ASinkName : String; const AReadIdentAfter : String; ASaveForm : Boolean ) : Boolean;

  protected
//    procedure TryLinkToList( Root : TComponent; SinkIdents : TStringList; SinkNames : TStringList );
  //  procedure DisconnectFromPinName( OtherPinName : String );
    function  IntConnectAfter( AOtherPin : TOWBasicPin; ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID ) : Boolean; virtual;
    function  CanConnectToInt( const AOtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; AUseConverters : Boolean; const ADataType : TGUID ) : Boolean; override;
    procedure IntDisconnectFrom( AOtherPin : TOWBasicPin; AFromConnecting : Boolean );

  protected
    procedure UpdateStateValue(); override;

  protected
    procedure InitInstance( AMaxConnections : Integer );

  public
    function  CanConnectByType( const AType : TGUID; AUseConverters : Boolean = True ) : Boolean; override;

  public
    function  GetConnectionID( const AOtherPin : TOWBasicPin; AReturnConvertedID : Boolean = False ) : TGUID; overload; override;
    function  GetPrimaryConnectionID() : TGUID; override;

  public
    function  GetAfterPinDisplayName( APin : TOWPin ) : String; override;

  public
    function  ConnectAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin ) : Boolean; override;
    function  CanConnectAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; AUseConverters : Boolean = True ) : Boolean; override;
    procedure Disconnect(); override;
    procedure DisconnectFrom( const AOtherPin : TOWBasicPin ); override;

    function  IsCompatible( const AOtherPin : TOWBasicPin; AUseConverters : Boolean = True ) : Boolean; override;
    function  DependsOn( const AOtherPin : TOWBasicPin ) : Boolean; override;
    function  DirectDependsOn( const AOtherPin : TOWBasicPin ) : Boolean; override;
    function  IsConnected() : Boolean; override;

    function  IsConnectedTo( const AOtherPin : TOWBasicPin ) : Boolean; override; //const;
    function  IsConnectedAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin ) : Boolean; override;
    function  IsConnectedByConverterTo( const AOtherPin : TOWBasicPin ) : Boolean; override;
    function  GetConnectionConverter( const AOtherPin : TOWBasicPin; out AConverter : IOWFormatConverter ) : Boolean; override;

  public
    function  NotifyPin( const APin : TOWBasicPin; const AOperation : IOWNotifyOperation ) : TOWNotifyResult; override;
    function  Notify( const AOperation : IOWNotifyOperation ) : TOWNotifyResult; override;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; AMaxConnections : Integer = -1 );
    destructor  Destroy(); override;

  public
    property SinkCount : Integer                                  read GetSinkCount;
    property Sinks[ AIndex : Integer ] : TOWBasicPin              read GetSink;           default;

    property ConverterCount : Integer                             read GetConverterCount;
    property Converters[ AIndex : Integer ] : IOWFormatConverter  read GetConverter;

    // Describes the functions sources for the output within the component.
    property FunctionSources : IOWSinkPinList                     read FFunctionSources;

    // Describes the data type sources for the output within the component( The output should be of the same type as them ).
    property DataTypeSources : IOWSinkPinList                     read FDataTypeSources;

  end;
//---------------------------------------------------------------------------
  [CreateType( System.TypeInfo( TOWSourcePinList ))]
  IOWSourcePinList = interface( ILinkedList<TOWSourcePin> )
    ['{C3F75C80-3C8C-4D83-BC9F-D9CDA671D971}']
  end;
//---------------------------------------------------------------------------
  TOWSourcePinList = class( TObjectLinkedList<TOWSourcePin>, IOWSourcePinList );
//---------------------------------------------------------------------------
  TOWBasicSinkPin = class( TOWStreamPin )
  protected
    [AutoManage]
    FDataTypeDependants : IOWSourcePinList;

    FIgnoreUpstream     : Boolean;

  protected
    procedure DownStreamForthRestrictPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin );
    procedure DownStreamBackRestrictPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin ); virtual; abstract;
    procedure UpStreamForthRestrictPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin );
    procedure UpStreamBackRestrictPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin ); virtual; abstract;
    function  DownStreamForthQueryPossybleInterface( const AIID : TGUID; AForPin : TOWPin ) : HResult;
    function  UpStreamForthQueryPossybleInterface( const AIID : TGUID; AForPin : TOWPin ) : HResult;
    function  UpStreamBackQueryPossybleInterface( const AIID : TGUID; AForPin : TOWPin ) : HResult; virtual; abstract;
    function  DownStreamBackQueryPossybleInterface( const AIID : TGUID; AForPin : TOWPin ) : HResult; virtual; abstract;
    procedure BackChainReconnect( const ADownIID : TGUID; const AUpIID : TGUID ); virtual; abstract;
    procedure ForthChainReconnect( const ADownIID : TGUID; const AUpIID : TGUID ); virtual; abstract;
    function  UpStreamFindConnectionID( const AOtherPin : TOWSourcePin; const APreferedID : TGUID ) : TGUID;
    procedure ChainReconnect( const ADownIID : TGUID; const AUpIID : TGUID ); virtual;
    function  CanConnectToInt( const AOtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; AUseConverters : Boolean; const ADataType : TGUID ) : Boolean; override;
    function  CheckUpStreamInterfaces( const AOtherPin : TOWSourcePin; AUseConverters : Boolean ) : Boolean; virtual;

    function  HasToIgnoreUpstream() : Boolean;

  protected
    procedure IntAddDataTypeDependance( ADataTypeDependancePin : TOWSourcePin );
    procedure IntRemoveDataTypeDependance( ADataTypeDependancePin : TOWSourcePin );
    function  GetUpStreamLinkName() : String; virtual; abstract;
    function  GetDownStreamLinkName() : String; virtual; abstract;

  public
    function  GetImage( out AImage : IGPBitmap ) : Boolean; override;

  public
    function  IsCompatible( const AOtherPin : TOWBasicPin; AUseConverters : Boolean = True ) : Boolean; override;
    function  CanConnectByType( const AType : TGUID; AUseConverters : Boolean = True ) : Boolean; override;

  public
    procedure BeforeDestruction(); override;

  public
    constructor Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock );

  public
//    property IgnoreUpstream     : Boolean read FIgnoreUpstream        write FIgnoreUpstream;
    property DownStreamLinkName : String  read GetDownStreamLinkName;
    property UpStreamLinkName : String    read GetUpStreamLinkName;

  end;
//---------------------------------------------------------------------------
  TOWMultiSinkPin = class( TOWBasicSinkPin )
  protected
    [AutoManage]
    FSourcePins       : IOWPinEntryList;

    [AutoManage]
    FFormatConverters : IOWFormatConverterList;

    FInDisconnect     : Boolean;

  protected
    function  GetSourceCount() : Integer; virtual;
    function  GetSource( AIndex : Integer ) : TOWBasicPin; virtual;

    function  GetConverterCount() : Integer;
    function  GetConverter( AIndex : Integer ) : IOWFormatConverter;

    function  GetPinType() : TOWPinType; override;

  protected
    function  TryLinkTo( ARoot : TComponent; const ASourceIdent : String; const ASourceName : String; const AReadIdentAfter : String; ASaveForm : Boolean ) : Boolean;
    function  GetEditorString() : String; override;
    function  SetEditorString( ARoot : TComponent; const AValue: String ) : Boolean; override;

  protected
    procedure IntConnect( const ASourcePin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID; AFromOther : Boolean ); override;
    function  IntConnectAfter( AOtherPin : TOWBasicPin; ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID ) : Boolean; virtual;
    procedure IntDisconnect( const AOtherPin : TOWBasicPin; ADesignFormClosing : Boolean ); override;
    procedure IntDisconnectFrom( AOtherPin : TOWBasicPin; AFromConnecting : Boolean );
    procedure ReorderChangedData();
    procedure PinReplacedNotify( const AOldPin : TOWBasicPin; const ANewPin : TOWBasicPin ); override;
    procedure UnlodedPinRemoved( const APin : TOWBasicPin ); override;
    procedure BackChainReconnect( const ADownIID : TGUID; const AUpIID : TGUID ); override;
    procedure ForthChainReconnect( const ADownIID : TGUID; const AUpIID : TGUID ); override;
    function  GetUpStreamLinkName() : String; override;
    function  GetDownStreamLinkName() : String; override;

  protected
    procedure DownStreamBackRestrictPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin ); override;
    procedure UpStreamBackRestrictPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin ); override;
    function  UpStreamBackQueryPossybleInterface( const AIID : TGUID; AForPin : TOWPin ) : HResult; override;
    function  DownStreamBackQueryPossybleInterface( const AIID : TGUID; AForPin : TOWPin ) : HResult; override;

  public
    function  IsLinkedTo( const APinName : String ) : Boolean; override;

  public
    function  GetConnectionID( const AOtherPin : TOWBasicPin; AReturnConvertedID : Boolean = False ) : TGUID; overload; override;
    function  GetPrimaryConnectionID() : TGUID; override;

  public
    function  GetConnectedPinCount() : Integer; override;
    function  GetConnectedPin( AIndex : Integer ) : TOWBasicPin; override;

  public
    function  ConnectAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin ) : Boolean; override;
    function  CanConnectAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; AUseConverters : Boolean = True ) : Boolean; override;
    procedure Disconnect(); override;
    procedure DisconnectFrom( const AOtherPin : TOWBasicPin ); override;
    function  DependsOn( const AOtherPin : TOWBasicPin ) : Boolean; override;
    function  DirectDependsOn( const AOtherPin : TOWBasicPin ) : Boolean; override;
    function  IsConnected() : Boolean; override;
    function  IsConnectedTo( const AOtherPin : TOWBasicPin ) : Boolean; override; //const;
    function  IsConnectedByConverterTo( const AOtherPin : TOWBasicPin ) : Boolean; override; //const;
    function  GetConnectionConverter( const AOtherPin : TOWBasicPin; out AConverter : IOWFormatConverter ) : Boolean; override;

    procedure Assign( ASource : TPersistent ); override;

  public // ISerializable
    procedure SerializationRead( const AReader : IReader ); override;
    procedure SerializationWrite( const AWriter : IWriter; const ASelectedObjects : IObjectArrayList; const AMember : IMemberInfo = NIL ); override;

  protected
    function  DoFormWrite() : Boolean; override;
    function  DoWrite() : Boolean; virtual;

    procedure DefineProperties( AFiler : TFiler ); override;

    // TODO: Write state converters data.
    procedure ReadConnectionsDataInternal( AReader : TReader; ASkipConnections : Boolean ); override;
    procedure WriteConnectionsData( AWriter : TWriter ); virtual;
    function  WriteNoStateListEntry( AWriter : TWriter ) : Boolean; override;
    procedure ReadNoStateListEntry( AReader : TReader; const AIdent : String; ASkipConnections : Boolean ); override;

  public
    function  NotifyPin( const APin : TOWBasicPin; const AOperation : IOWNotifyOperation ) : TOWNotifyResult; override;
    function  Notify( const AOperation : IOWNotifyOperation ) : TOWNotifyResult; override;

  protected
    function  GetLinkStr( AItem : Integer ) : String;

  public
    destructor  Destroy(); override;

  public
    property SourceCount : Integer                                read GetSourceCount;
    property Sources[ AIndex : Integer ] : TOWBasicPin            read GetSource;         default;

    property ConverterCount : Integer                             read GetConverterCount;
    property Converters[ AIndex : Integer ] : IOWFormatConverter  read GetConverter;

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
    function  GetConnectedAfterForPin( const AOtherPin : TOWBasicPin ) : TOWBasicPin; override;
    function  GetConnectedPinCount() : Integer; override;
    function  GetConnectedPin( AIndex : Integer ) : TOWBasicPin; override;

  public
    function  TryLinkTo( ARoot : TComponent; const ASoutce : String; const ASoutceName : String; ASaveForm : Boolean ) : Boolean;

  protected
    function  RequestInterface(const IID : TGUID; out Obj): HResult; override; stdcall;

  protected
    procedure DownStreamBackRestrictPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin ); override;
    procedure UpStreamBackRestrictPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin ); override;
    procedure DownStreamFillPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin; AOtherPin : TOWBasicPin ); override;
    procedure UpStreamFillPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin ); override;

    function  DownStreamQueryPossybleInterface( const AIID : TGUID ) : HResult; override;
    function  UpStreamQueryPossybleInterface( const AIID : TGUID ) : HResult; override;
    function  DownStreamBackQueryPossybleInterface( const AIID : TGUID; AForPin : TOWPin ) : HResult; override;
    function  UpStreamBackQueryPossybleInterface( const AIID : TGUID; AForPin : TOWPin ) : HResult; override;

    procedure BackChainReconnect( const ADownIID : TGUID; const AUpIID : TGUID ); override;
    procedure ForthChainReconnect( const ADownIID : TGUID; const AUpIID : TGUID ); override;

  protected
    procedure BackPopulateStreamChains( const AChain : IArrayList<IOWObjectList>; const AList : IOWObjectList ); override;

  protected
    function  GetConnectedID() : TGUID;

  public // ISerializable
    procedure SerializationRead( const AReader : IReader ); override;
    procedure SerializationWrite( const AWriter : IWriter; const ASelectedObjects : IObjectArrayList; const AMember : IMemberInfo = NIL ); override;

  protected
    procedure SetSourcePin( ASourcePin : TOWBasicPin );
    function  GetSourcePin() : TOWBasicPin; virtual;
    function  GetFormatConverter() : IOWFormatConverter;

    function  GetUpStreamLinkName() : String; override;
    function  GetDownStreamLinkName() : String; override;
    function  GetUpStreamID() : TGUID;
    function  GetDownStreamID() : TGUID;

    function  WriteNoStateListEntry( AWriter : TWriter ) : Boolean; override;
    procedure ReadNoStateListEntry( AReader : TReader; const AIdent : String; ASkipConnections : Boolean ); override;
    procedure ReadConnectionsDataInternal( AReader : TReader; ASkipConnections : Boolean ); override;
    procedure WriteConnectionsData( AWriter : TWriter ); virtual;
    procedure ReadStateConverterConnectionsData( AReader : TReader ); virtual;
    procedure WriteStateConverterConnectionsData( AWriter : TWriter ); virtual;
    function  DoStateConverterWrite() : Boolean; override;

    function  DoFormWrite() : Boolean; override;
    function  DoWrite() : Boolean; virtual;

    procedure DefineProperties( AFiler : TFiler ); override;

    procedure IntDisconnect( const AOtherPin : TOWBasicPin; ADesignFormClosing : Boolean ); override;
    function  CanConnectToStateInt( const ADispatcher : TOWBasicStateDispatcher; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; AUseConverters : Boolean; const ADataType : TGUID ) : Boolean; override;
    procedure IntStateDisconnect(); override;
    function  GetEditorString() : String; override;
    function  SetEditorString( ARoot : TComponent; const AValue: String ) : Boolean; override;

  public
    function  IsLinkedTo( const APinName : String ) : Boolean; override;

  protected
    function  GetLinkStr() : String;

  protected
    procedure UpdateStateValue(); override;
    procedure SetDataTypeFor( const AOtherPin : TOWSourcePin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; ADataType : TGUID ); virtual;
    procedure IntConnectSourcePin( const AOtherPin : TOWSourcePin; const ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID ); virtual;

  public
    function  Notify( const AOperation : IOWNotifyOperation ) : TOWNotifyResult; override;

  public
    function  GetConnectionID( const AOtherPin : TOWBasicPin; AReturnConvertedID : Boolean = False ) : TGUID; overload; override;
    function  GetPrimaryConnectionID() : TGUID; override;

  public
    function  ConnectAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin ) : Boolean; override;
    function  ConnectAfterByType( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID ) : Boolean; override;
    function  ConnectByStateAfterByType( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID ) : Boolean; override;
    function  CanConnectAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; AUseConverters : Boolean = True ) : Boolean; override;
    procedure Disconnect(); override;
    procedure DisconnectFrom( const AOtherPin : TOWBasicPin ); override;

    function  DependsOn( const AOtherPin : TOWBasicPin ) : Boolean; override;
    function  DirectDependsOn( const AOtherPin : TOWBasicPin ) : Boolean; override;
    function  IsConnected() : Boolean; override;
    function  IsConnectedTo( const AOtherPin : TOWBasicPin ) : Boolean; override; //const;
    function  IsConnectedByConverterTo( const AOtherPin : TOWBasicPin ) : Boolean; override; //const;
    function  GetConnectionConverter( const AOtherPin : TOWBasicPin; out AConverter : IOWFormatConverter ) : Boolean; override;
    function  ConnectToStateAfter( ADispatcher : TOWBasicStateDispatcher; ANotifyAfterPin : TOWBasicPin ) : Boolean; override;

    procedure Assign( ASource : TPersistent ); override;

  public
    destructor  Destroy(); override;

  public
    [ExternalLink]
    property SourcePin : TOWBasicPin              read GetSourcePin write SetSourcePin;

    property FormatConverter : IOWFormatConverter read GetFormatConverter;

    property DownStreamID : TGUID                 read GetDownStreamID;
    property UpStreamID : TGUID                   read GetUpStreamID;

  end;
//---------------------------------------------------------------------------
  TOWStatePin = class( TOWPin )
  protected
    FInConnect  : Boolean;

  protected
    procedure UpdateStateValue(); override;
    function  CanConnectToInt( const AOtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; AUseConverters : Boolean; const ADataType : TGUID ) : Boolean; override;

  public
    function  IsCompatible( const AOtherPin : TOWBasicPin; AUseConverters : Boolean = True ) : Boolean; override;

  public
    function  TryLinkTo( ARoot : TComponent; const ASinkName : String ) : Boolean;

  protected
    function  GetPinType() : TOWPinType; override;

  protected
    function  GetLinkStr( AStatePin : TOWPin ) : String;
    function  GetEditorString() : String; override;
    function  SetEditorString( ARoot : TComponent; const AValue : String ) : Boolean; override;

  public
    function  GetImage( out AImage : IGPBitmap ) : Boolean; override;

  public
    function  GetConnectionID( const AOtherPin : TOWBasicPin; AReturnConvertedID : Boolean = False ) : TGUID; overload; override;
    function  DependsOn( const AOtherPin : TOWBasicPin ) : Boolean; override;
    function  DirectDependsOn( const AOtherPin : TOWBasicPin ) : Boolean; override;

  public
    function  ConnectToStateAfter( ADispatcher : TOWBasicStateDispatcher; ANotifyAfterPin : TOWBasicPin ) : Boolean; override;

  protected
    function  GetPinCount() : Integer; virtual; // const;
    function  GetPin( AIndex : Integer ) : TOWBasicPin; virtual;

  public
    property  PinCount : Integer                      read GetPinCount;
    property  Pins[ AIndex : Integer ] : TOWBasicPin  read GetPin;      default;

  end;
//---------------------------------------------------------------------------
// Internal storage class
  TOWDispatcherPinStorage = class( TBasicObject )
  protected
    ConnectionPin : TOWBasicPin;
    RealPin       : TOWBasicPin;
    AfterPin      : TOWBasicPin;

  end;
//---------------------------------------------------------------------------
  IDispatcherInstanceHolder = interface
    ['{0788C852-AD41-49E7-B6D2-A78E4E848C36}']
  end;
//---------------------------------------------------------------------------
  TOWBasicStateDispatcher = class( TOWPinObject )
  protected
    [AutoManage]
    FFormatConverters : IOWFormatConverterList;

    FInConnecting     : Integer;

  protected
    function  GetOwnerComponent() : TComponent; override;
    function  GetName() : String; virtual; abstract;
    procedure SetName( const AValue : String ); virtual; abstract;
    function  GetPinCount() : Integer; virtual; abstract; // const;
    function  GetPin( AIndex : Integer ) : TOWBasicPin; virtual; abstract;
    function  GetConnectionPin( AIndex : Integer ) : TOWBasicPin; virtual; abstract;
    function  GetAfterPin( AIndex : Integer ) : TOWBasicPin; virtual; abstract;
    function  GetConnectedAfterForPin( AOtherPin : TOWBasicPin ) : TOWBasicPin; virtual; abstract;

  protected
    procedure NewConnection( const APin : TOWPin ); virtual;

  public
    function  IsPreviewDispatcher() : Boolean;
    function  GetInstanceHolder() : IDispatcherInstanceHolder;

  public
    procedure AddPin( AConnectionPin : TOWBasicPin; ARealPin : TOWBasicPin ); virtual; abstract;
    procedure AddPinAfter( AConnectionPin : TOWBasicPin; ARealPin : TOWBasicPin; ANotifyAfterPin : TOWBasicPin ); virtual; abstract;
    procedure RemovePin( APin : TOWBasicPin ); virtual; abstract;
    function  IsConnectedTo( APin : TOWBasicPin ) : Boolean; virtual; abstract;
    procedure DisconnectAll(); virtual; abstract;
    function  CanConnectAfter( AOtherPin : TOWBasicPin; ANotifyAfterPin : TOWBasicPin; AUseConverters : Boolean = True ) : Boolean; virtual; abstract;

  public
    property PinCount : Integer                               read GetPinCount;
    property Pins[ AIndex : Integer ] : TOWBasicPin           read GetPin;          default;
    property ConnectionPins[ AIndex : Integer ] : TOWBasicPin read GetConnectionPin;
    property AfterPins[ AIndex : Integer ] : TOWBasicPin      read GetAfterPin;

  published
    property Name : String  read GetName  write SetName;

  end;
//---------------------------------------------------------------------------
  TOWStateDispatcher = class( TOWBasicStateDispatcher )
  protected
    FName           : String;
    FPins           : IObjectOwnerArrayList<TOWDispatcherPinStorage>;
    FSavedForms     : ILinkedList<TComponent>;

    FCountSaved     : Integer;
    FFromConverter  : Boolean;

  public
    procedure AfterConstruction(); override;
    procedure BeforeDestruction(); override;

  public
    constructor CreateNamed( const AName : String; ADesignTime : Boolean; AFromConverter : Boolean = False );
    constructor Create( AOwnerForm : TComponent; AFromConverter : Boolean = False );
    destructor  Destroy(); override;

  public
    function  ConnectedToForm( AOwnerComponent : TComponent ) : Boolean;

  protected
    procedure SetNotifyAfterByName( const APin : TOWPin; const AAfterPinName : String ); override;

  protected
    function  GetName() : String; override;
    procedure SetName( const AValue : String ); override;
    function  GetPinCount() : Integer; override; // const;
    function  GetPin( AIndex : Integer ) : TOWBasicPin; override;
    function  GetConnectionPin( AIndex : Integer ) : TOWBasicPin; override;
    function  GetAfterPin( AIndex : Integer ) : TOWBasicPin; override;
    function  GetConnectedAfterForPin( AOtherPin : TOWBasicPin ) : TOWBasicPin; override;

  protected
    procedure NewConnection( const APin : TOWPin ); override;
    procedure PinDeletedNotify( const ADeletedPin : TOWBasicPin ); override;

  public
    procedure AddPin( AConnectionPin : TOWBasicPin; ARealPin : TOWBasicPin ); override;
    procedure AddPinAfter( AConnectionPin : TOWBasicPin; ARealPin : TOWBasicPin; ANotifyAfterPin : TOWBasicPin ); override;
    procedure RemovePin( APin : TOWBasicPin ); override;
    function  IsConnectedTo( APin : TOWBasicPin ) : Boolean; override;
    procedure DisconnectAll(); override;
    function  CanConnectAfter( AOtherPin : TOWBasicPin; ANotifyAfterPin : TOWBasicPin; AUseConverters : Boolean = True ) : Boolean; override;

  public
    function  IsCrosForm() : Boolean;

  protected
    procedure ResetFormsSave();
    procedure AddFormSaved( AOwnerComponent : TComponent );
    function  IsFormSaved( AOwnerComponent : TComponent ) : Boolean;

  public
    class function GetByName( const AName : String; ADesignTime : Boolean ) : TOWStateDispatcher; static;
    class function GetByNameCreate( APin : TOWBasicPin; const AName : String; ADesignTime : Boolean ) : TOWStateDispatcher; static;
    class function GetUniqueName( AOwnerForm : TComponent; const APrefix : String ) : String; static;
    class function IsUniqueName( const AName : String; ADesignTime : Boolean ) : Boolean; static;

  public
    function GetAfterPinDisplayName( APin : TOWPin ) : String; override;

  end;
//---------------------------------------------------------------------------
  TOWBasicPinList = class( TOWPinTypeObject, ITypeInfoChangeNotify )
  protected
    FName                   : String;
    FShortName              : String;
    FFullIdentName          : String;
    [Weak] FOwnerProperty   : TPersistent;
    FPropertyElements       : IPropertyElements;
    FValidPropertyElements  : Boolean;

  protected // ITypeInfoChangeNotify
    procedure TypeInfoChange( AObject : TObject );

  protected
    function  GetCount() : Integer; virtual; abstract;
    procedure SetCount( ACount : Integer ); virtual; abstract;
    function  GetPin( AItem : Integer ) : TOWBasicPin; virtual; abstract;
    procedure SetPin( AItem : Integer; APin : TOWBasicPin ); virtual; abstract;
    function  GetName( AItem : Integer ) : String; virtual; abstract;
    procedure SetName( AItem : Integer; const AName : String ); virtual; abstract;
    function  GetOwnerProperty() : TPersistent; virtual;
    function  GetListName() : String; // virtual; abstract;
    function  GetListSaveName() : String; // virtual; abstract;
    function  GetShortName() : String; // virtual; abstract;
    function  GetPinCategories() : TOWPinCategories; virtual; abstract;
    function  GetRootName() : String; virtual;

  public
    function  GetPinPropertyName( ASaveName : Boolean ) : String; virtual;

  public
    function  IsPreviewPinList() : Boolean;
    function  IsConnected() : Boolean; override;
    function  GetRoot() : TComponent; virtual; abstract;

  public
    procedure Notify( const AOperation : IOWNotifyOperation );

  protected
    function  GetListSaveNameInt() : String; virtual; abstract;
    function  GetListNameInt() : String; virtual; abstract;
    function  GetFullIdentNameInt( AIncludeRootForm : Boolean ) : String; virtual;
    function  GetFullIdentsInt() : IPropertyElements; virtual;
    procedure PopulateNameCache(); virtual;
    function  GetIsCached() : Boolean; virtual;
    procedure InvalidateCaches( AObject : TObject ); override;

  public
    function  GetEmbeddedOwner() : TComponent; virtual; abstract;
    function  GetEnumerator() : ISizeEnumerator<TOWBasicPin>;
    function  GetIndexedEnumerator() : ISizeEnumerator<TIndexedItem<TOWBasicPin>>;
    function  GetReverseEnumerator() : ISizeEnumerator<TOWBasicPin>;
    function  GetIndexedReverseEnumerator() : ISizeEnumerator<TIndexedItem<TOWBasicPin>>;
    function  GetReverse() : ISizeEnumeratorHost<TOWBasicPin>;
    function  GetIndexed() : ISizeEnumeratorHost<TIndexedItem<TOWBasicPin>>;
    function  GetIndexedReverse() : ISizeEnumeratorHost<TIndexedItem<TOWBasicPin>>;
    function  Find( const ACompareFunc : TFunc<TOWBasicPin, Boolean> ) : TOWBasicPin; overload;
    function  Find( const ACompareFunc : TFunc<TOWBasicPin, Boolean>; out ARes : TOWBasicPin ) : Boolean; overload;
    function  Query( AReverse : Boolean = False ) : IContainerQuery<TOWBasicPinList, IArrayList<TOWBasicPin>, TOWBasicPin>;
    function  GetOwner() : TPersistent; override;
    function  GetOwnerName( AIncludeRootForm : Boolean ) : String; virtual;
    function  GetFullIdentName( AIncludeRootForm : Boolean ) : String; // virtual;
    function  GetFullIdents( AIncludeRootForm : Boolean ) : IPropertyElements;

  public
    constructor Create( const AOnCreated : TProc<TOWPinList> );
//    constructor CreatePath( const AOnCreated : TProc<TOWPin>; const APath : IPropertyElements; const APinName : String );
    destructor  Destroy(); override;

  public
    property Pins[ AItem : Integer ] : TOWBasicPin  read GetPin   write SetPin; default;
    property Names[ AItem : Integer ] : String      read GetName  write SetName;

  public
    property ShortName : String               read GetShortName;
    property Name : String                    read GetListName;
    property SaveName : String                read GetListSaveName;
    property OwnerProperty : TPersistent      read GetOwnerProperty;
    property PinCategories : TOWPinCategories read GetPinCategories;

  public
    property Count : Integer  read GetCount write SetCount stored False;

  end;
//---------------------------------------------------------------------------
  TOWPinList = class( TOWBasicPinList, ISerializable )
  protected
    [Weak] FOwner : TComponent;
    FOwnerLock    : IBasicLock; // The lock of the component that owns the pin.
    FPinsList     : IArrayList<ITuple<String,TOWBasicPin>>;
    FOverrideName : String;

  protected
    FPinsOwner  : Boolean;

  protected
    FLastIndicatedCount : Integer;
    FUnloadedCount      : Integer;
    FLoadFormName       : String;
    FInUnload           : Boolean;
    FPinCategories      : TOWPinCategories;

  public
    class function PinListOwnerSetter<T : TOWBasicPinList>( var APin : T; AOwner : TComponent; AOwnerProperty : TPersistent ) : TProc<TOWPinList>; overload; static;
    class function PinListOwnerSetter( var APin : TOWBasicPinList; AOwner : TComponent; AOwnerProperty : TPersistent ) : TProc<TOWPinList>; overload; static;
    class function PinListOwnerSetter( var APin : TOWPinList; AOwner : TComponent; AOwnerProperty : TPersistent ) : TProc<TOWPinList>; overload; static;
    class function PinListOwnerSetter( var APin : TOWPinListOwner; AOwner : TComponent; AOwnerProperty : TPersistent ) : TProc<TOWPinList>; overload; static;
    class function PinListOwnerSetter( AOwner : TComponent; AOwnerProperty : TPersistent ) : TProc<TOWPinList>; overload; static;
    class function PinListPathSetter<T : TOWBasicPinList>( var APin : T; const APath : IPropertyElements; const APinName : String ) : TProc<TOWPinList>; overload; static;
    class function PinListPathSetter( var APin : TOWBasicPinList; const APath : IPropertyElements; const APinName : String ) : TProc<TOWPinList>; overload; static;
    class function PinListPathSetter( var APin : TOWPinList; const APath : IPropertyElements; const APinName : String ) : TProc<TOWPinList>; overload; static;
    class function PinListPathSetter( var APin : TOWPinListOwner; const APath : IPropertyElements; const APinName : String ) : TProc<TOWPinList>; overload; static;
    class function PinListPathSetter( const APath : IPropertyElements; const APinName : String ) : TProc<TOWPinList>; overload; static;
    class function PinListCustomOwnerSetter( const AProc : TProc<TOWPinList>; AOwner : TComponent; AOwnerProperty : TPersistent ) : TProc<TOWPinList>; static;
    class function PinListCustomPathSetter( const AProc : TProc<TOWPinList>; const APath : IPropertyElements; const APinName : String ) : TProc<TOWPinList>; static;

  public
    constructor Create( const AOnCreated : TProc<TOWPinList>; const AOwnerLock : IBasicLock; APinCategories : TOWPinCategories; AIsPinsOwner : Boolean );
    destructor  Destroy(); override;

  public
    procedure AfterConstruction(); override;
    procedure BeforeDestruction(); override;

  public
    function  ReadLock() : ILockSection; override;
    function  WriteLock() : ILockSection; override;

  protected
    function  GetCount() : Integer; override;
    procedure SetCount( ACount : Integer ); override;
    function  GetPin( AItem : Integer ) : TOWBasicPin; override;
    procedure SetPin( AItem : Integer; APin : TOWBasicPin ); override;
    function  GetName( AItem : Integer ) : String; override;
    procedure SetName( AItem : Integer; const AName : String ); override;
    function  GetStoredName( AItem : Integer ) : String;
    function  GetPinCategories() : TOWPinCategories; override;

    function  GetListNameInt() : String; override;
    function  GetListSaveNameInt() : String; override;
    procedure CleanUnloaded();
    procedure ApplyFormName( var AIdent : String );

    function  GetOwnerComponent() : TComponent; override;

  protected // ISerializable
    procedure SerializationRead( const AReader : IReader ); virtual;
    procedure SerializationWrite( const AWriter : IWriter; const ASelectedObjects : IObjectArrayList; const AMember : IMemberInfo = NIL ); virtual;

  protected
    procedure SerializationReadPinsArray( const AArrayReader : ISequentialReader ); virtual;

  protected
    procedure InvalidatePinCaches( AObject : TObject );
    procedure ReadPinsOwner( AReader : TReader );
    procedure ReadConnectionsData( AReader : TReader ); virtual;
    procedure WriteConnectionsData( AWriter : TWriter ); virtual;

    procedure ReadFormName( AReader : TReader );
    procedure WriteFormName( AWriter : TWriter );

    function  DoWrite() : Boolean; virtual;

    procedure DefineProperties( AFiler : TFiler ); override;

    procedure ConnectPin( ACurrentPinIndex : Integer; AType : TOWPinType; AToType : TOWPinType; const AIdent : String; const AIdentName : String );

  public
    procedure SetOwnerComponent( AComponent : TComponent ); virtual;

  public
    function  GetEmbeddedOwner() : TComponent; override;

  public
    procedure Add( AItem : TOWBasicPin );
    procedure AddNamed( AItem : TOWBasicPin; const AName : String ); virtual;
    procedure Insert( AIndex : Integer; AItem : TOWBasicPin );
    procedure InsertNamed( AIndex : Integer; AItem : TOWBasicPin; const AName : String );
    procedure Remove( AItem : TOWBasicPin );
    procedure Delete( AIndex : Integer );
    procedure Swap( AIndex1 : Integer; AIndex2 : Integer );
    function  IndexOf( AItem : TOWBasicPin ) : Integer;

    procedure Clear();
    procedure Disconnect();
    function  GetRoot() : TComponent; override;

  public
    procedure SetPinName( APin : TOWPin; const AName : String );

  public
    property StoredNames[ AIndex : Integer ] : String read GetStoredName;

  public
    property PinsOwner : Boolean  read FPinsOwner write FPinsOwner;

  end;
//---------------------------------------------------------------------------
  TOWPinCreateFunction = reference to function ( APinListOwner : TOWPinList; const AOnCreated : TProc<TOWPin> ) : TOWPin;
  TOWPinDestroyFunction = reference to procedure ( APinListOwner : TOWPinList; APin : TOWBasicPin );
//---------------------------------------------------------------------------
  TOWPinListOwner = class( TOWPinList )
  protected
    FPinCreateFunction  : TOWPinCreateFunction;
    FPinDestroyFunction : TOWPinDestroyFunction;
    FPinAddedFunction   : TOWPinEvent;

    FMinPins            : Integer;
    FMaxPins            : Integer;
    FDefaultCount       : Integer;

  protected
    function  GetCount_Stored() : Boolean;
    procedure SetCount( ACount : Integer ); override;
    procedure ReadConnectionsData( AReader : TReader ); override;

  protected
    procedure SerializationReadPinsArray( const AArrayReader : ISequentialReader ); override;
  //  function  DoWrite() : Boolean; override;

  public
    class function DelegatePinDestroy( const ALamda : TProc ) : TOWPinDestroyFunction; static;

  public
    procedure AddNamed( AItem : TOWBasicPin; const AName : String ); override;

  public
    procedure BeforeDestruction(); override;

  public
    constructor Create( const AOnCreated : TProc<TOWPinList>; const AOwnerLock : IBasicLock; ADefaultCount : Integer; APinCategories : TOWPinCategories; const APinCreateFunction : TOWPinCreateFunction; const APinDestroyFunction : TOWPinDestroyFunction = NIL; const APinAddedFunction : TOWPinEvent = NIL );
    constructor CreateEx( const AOnCreated : TProc<TOWPinList>; const AOwnerLock : IBasicLock; ADefaultCount : Integer; APinCategories : TOWPinCategories; AMinPins : Integer; AMaxPins : Integer; const APinCreateFunction : TOWPinCreateFunction; const APinDestroyFunction : TOWPinDestroyFunction = NIL; const APinAddedFunction : TOWPinEvent = NIL );

  published
    property Count  stored GetCount_Stored;

  end;
//---------------------------------------------------------------------------
 TOWPinValueFilters = set of ( pvoFullList, pvoSaveValue, pvoExcludeDirectDependency );
//---------------------------------------------------------------------------
procedure OWRegisterDefaultHandler( const AStreamTypeID : TGUID; ASendFunction : TOWGlobalSubmit );
//---------------------------------------------------------------------------
function  OWValueToItems( APin : TOWPin; AAddRoot : Boolean ) : IPropertyElements; overload;
function  OWValueToItems( APinList : TOWBasicPinList; AAddRoot : Boolean ) : IPropertyElements; overload;
function  OWValueToString( APin : TOWBasicPin; AAddRoot : Boolean; ASaveValue : Boolean ) : String; overload;
function  OWValueToString( APinList : TOWBasicPinList; AAddRoot : Boolean; ASaveValue : Boolean ) : String; overload;
function  OWGetPinsValueList( AStreamPin : TOWPin; const ALink : String; AValueFilters : TOWPinValueFilters ) : IDictionary<String, TOWBasicPin>;
function  OWGetPinsValueStringList( AStreamPin : TOWPin; const ALink : String; AValueFilters : TOWPinValueFilters ) : IStringArrayList;
function  OWGetPinsValueListSingle( AOwnerComponent : TComponent; APin : TOWPin; const ALink : String; const ARootName : String; AValueFilters : TOWPinValueFilters ) : IDictionary<String, TOWBasicPin>;
procedure OWGetPinsValueListSingleRoot( const ACollection : IPairCollection<String, TOWBasicPin>; AOwnerComponent : TComponent; APin : TOWPin; const ALink : String; const ARootName : String; AValueFilters : TOWPinValueFilters );
function  OWGetStreamTypeFromID( const AStreamTypeID : TGUID; out AResult : String ) : Boolean; overload;
function  OWGetStreamTypeFromID( const AStreamTypeID : TGUID ) : String; overload;
function  OWGetDebugStreamTypeFromID( const AStreamTypeID : TGUID; AIncludeGUID : Boolean = False ) : String;
function  OWGetAllLinked() : Boolean;
procedure OWGetClassPropertiesOfType( const ACollection : IPairCollection<String, TObject>; AObject : TObject; AType : TClass; ASaveValue : Boolean );
procedure OWCheckUnloadedLinks( ARoot : TComponent; AForceCheck : Boolean = False );
procedure OWClearPendingLinks( AForceCheck : Boolean = False; ARoot : TComponent = NIL );
procedure OWClearPendingPasteLinks();
procedure OWSetCheckPartialPinNames( AValue : Boolean );
function  OWGetClassPropertyNameForPropertyObject( AObject : TObject; APinObject : TObject; ASaveValue : Boolean; AIncludeInjecetd : Boolean ) : String;
function  OWGetInjectedObject( AClass : TObject; APinObject : TObject; AReturnType : TBindingValueType; var AResultName : String ) : Boolean;
function  OWGetInjectedClassPropertiesOfType( AClass : TObject; AType : TClass; const ACollection : IPairCollection<String, TObject>; ASaveValue : Boolean ) : Boolean;
//---------------------------------------------------------------------------
procedure OWRegisterPinProxyClass( AClass : TOWPinProxyClass );
function  OWCreatePinProxy( const AProxyClassName : String; const APinName : String ) : TOWPinProxy;
//---------------------------------------------------------------------------
procedure OWRegisterPinListProxyClass( AClass : TOWPinListProxyClass );
function  OWCreatePinListProxy( const AProxyClassName : String; const APinName : String ) : TOWPinListProxy;
//---------------------------------------------------------------------------
type TOWGetInjectedObjectFunc = function( AClass : TObject; APinObject : TObject; AReturnType : TBindingValueType; var AResultName : String ) : Boolean;
var GOWGetInjectedObjectFunc : TOWGetInjectedObjectFunc = NIL;
//---------------------------------------------------------------------------
type TOWGetInjectedClassPropertiesOfType = reference to function( AClass : TObject; AType : TClass; const ACollection : IPairCollection<String, TObject>; ASaveValue : Boolean ) : Boolean;
var GOWGetInjectedClassPropertiesOfTypeFunc : TOWGetInjectedClassPropertiesOfType = NIL;
//---------------------------------------------------------------------------
var GOWNeedsOwnerName : Boolean = True;
//---------------------------------------------------------------------------
function  OWDispatchers( ADesignTime : Boolean ) : IOWStateDispatcherList;
//---------------------------------------------------------------------------
type
  IOWPinNotifier = interface
    ['{EEFCD8A1-9AD8-4326-97BF-F537E5EAF366}']

    procedure AddPin( APin : TOWBasicPin; AIsUnloadingPin : Boolean );
    procedure RemovePin( APin : TOWBasicPin; AIsUnloadingPin : Boolean; ADesignFormClosing : Boolean );
    procedure ChangePin( APin : TOWBasicPin; AIsUnloadingPin : Boolean; AIsDebugPinChange : Boolean );
    procedure DynamicPinsSwapped( APin1 : TOWBasicPin; APin2 : TOWBasicPin );
    procedure DynamicPinsMoved( APin1 : TOWBasicPin; APin2 : TOWBasicPin );

    procedure Connected( AObject1 : TOWPinTypeObject; AObject2 : TOWPinTypeObject );
    procedure DisconnectingPin( AObject1 : TOWPinTypeObject; AFromConnect : Boolean );
    procedure DisconnectedPin( AObject1 : TOWPinTypeObject; AFromConnect : Boolean );
    procedure Disconnecting( AObject1 : TOWPinTypeObject; AObject2 : TOWPinTypeObject; AFromConnect : Boolean );
    procedure Disconnected( AObject1 : TOWPinTypeObject; AFromConnect : Boolean );

    procedure AddPinList( APinList : TOWBasicPinList );
    procedure RemovePinList( APinList : TOWBasicPinList );
    procedure ChangePinList( APinList : TOWBasicPinList );

    procedure PinListPinAdded( APinList : TOWBasicPinList; APin : TOWBasicPin; AIndex : Integer );
    procedure PinListPinRemoved( APinList : TOWBasicPinList; APin : TOWBasicPin; AIndex : Integer );
    procedure PinListPinsSwapped( APinList : TOWBasicPinList; APin1 : TOWBasicPin; AIndex1 : Integer; APin2 : TOWBasicPin; AIndex2 : Integer );

    procedure AddDispatcher( ADispatcher : TOWBasicStateDispatcher );
    procedure RemoveDispatcher( ADispatcher : TOWBasicStateDispatcher; DesignFormClosing : Boolean );
    procedure ChangeDispatcher( ADispatcher : TOWBasicStateDispatcher );

    procedure NestedComponentRegistered( const AClass : IClassTypeInfo );
    procedure ComponentOwnerChanged( AComponent : TComponent );
    procedure ComponentIndexChanged( AComponent : TComponent; AIndex : Integer );

  end;
//---------------------------------------------------------------------------
type
  IOWStreamInfoExtention = interface
    ['{A4E3AC9E-29CE-4F0D-B270-05A356339310}']

    function GetExtentionId() : TGUID;
    function IsInModule( AHInstance : NativeInt ) : Boolean;

  end;
//---------------------------------------------------------------------------
  TOWStreamInfoExtention = class( TBasicInterfacedObject, IOWStreamInfoExtention )
  protected
    FExtentionId : TGUID;

  public
    function GetExtentionId() : TGUID;
    function IsInModule( AHInstance : NativeInt ) : Boolean; virtual;

  public
    class function Make( const AExtentionId : TGUID ) : IOWStreamInfoExtention;

  public
    constructor CreateObject( const AExtentionId : TGUID );

  end;
//---------------------------------------------------------------------------
  IEnumeratePins = interface
    ['{666DB7D4-725A-4573-946B-5BBBF5EC6568}']

    procedure EnumeratePins( const ACollection : IPairCollection<String, TObject>; AType : TClass; ASaveValue : Boolean );

  end;
//---------------------------------------------------------------------------
  //##NOEXPORT##
  IOpenWriteEditorCache = interface
    ['{F5FC1C06-7D8F-44A4-981F-C244B5B8DD07}']

    function  AddInvalidateCache( const AProc : TProc ) : TProc;
    procedure RemoveInvalidateCache( const AProc : TProc );

  end;
//---------------------------------------------------------------------------
procedure OWRegisterStreamExtention( const AStreamTypeID : TGUID; const AExtention : IOWStreamInfoExtention );
function  OWGetStreamExtentionFromID( const AStreamTypeID : TGUID; const AExtentionID : TGUID; out AExtention : IOWStreamInfoExtention ) : Boolean;
function  OWGetStreamIsCoreInterface( const AStreamTypeID : TGUID ) : Boolean;
function  OWGetIsStreamInterface( const AStreamTypeID : TGUID ) : Boolean;
//---------------------------------------------------------------------------
function  OWMakeShortName( const AName : String ) : String;
//---------------------------------------------------------------------------
procedure OWAddPinNotifier( const ANotifyItem : IOWPinNotifier );
procedure OWRemovePinNotifier( const ANotifyItem : IOWPinNotifier );

procedure OWGlobalLock();
procedure OWGlobalUnlock();

function  OWGetPinCount() : Integer;
function  OWGetPin( AIndex : Integer ) : TOWBasicPin;

function  OWGetPinListCount() : Integer;
function  OWGetPinList( AIndex : Integer ) : TOWBasicPinList;

procedure OWSetIgnoreDesignMode( AIgnore : Boolean );
procedure OWSetIgnorePinChangeNotifications( AIgnore : Boolean );

// State pins support.
function  OWGetDispatcherCount() : Integer;
function  OWGetDispatcher( AIndex : Integer ) : TOWBasicStateDispatcher;

procedure OWInitGlobals();
function  OWGetSubObject( AObject : TObject; const AObjectName : String ) : TObject;
function  OWGetPropValue( AInstance : TObject; const APropName : String; APreferStrings : Boolean; out AResult : TValue ) : Boolean;
function  OWGetPropValueAndRealName( AInstance : TObject; const APropName : String; APreferStrings : Boolean; out AName : String; var ADisplayName : String; out AResult : TValue ) : Boolean;

procedure OWNotifyDynamicPinsSwapped( APin1 : TOWBasicPin; APin2 : TOWBasicPin );
procedure OWNotifyDynamicPinsMoved( APin1 : TOWBasicPin; APin2 : TOWBasicPin );

procedure OWSetNeedsOwnerName( AValue : Boolean );

procedure OWNotifyChangePin( APin : TOWBasicPin; ADebugPinChange : Boolean );

function  OWHasConnectedPins( AObject : TObject ) : Boolean;

procedure OWRemovePinFromDictionaries( APin : TOWBasicPin );
procedure OWRemoveComponentFromDictionaries( AComponent : TComponent );

procedure OWAddRootAlias( const ARootName : String; const AAliasName : String );
procedure OWRemoveRootAlias( const ARootName : String; const AAliasName : String );
procedure OWClearRootAliases();
procedure OWInvalidateCaches( AObject : TObject );
//---------------------------------------------------------------------------
const
  GOWDISCONNECTED = '(Disconnected)';

var
  GBasicPinTypeInfo       : IClassTypeInfo;
  GPinObjectTypeInfo      : IClassTypeInfo;
  GPinTypeInfo            : IClassTypeInfo;
  GSourcePinTypeInfo      : IClassTypeInfo;
  GPinListTypeInfo        : IClassTypeInfo;
  GPinListOwnerTypeInfo   : IClassTypeInfo;
  GBasicSinkPinTypeInfo   : IClassTypeInfo;
  GSinkPinTypeInfo        : IClassTypeInfo;
  GMultiSinkPinTypeInfo   : IClassTypeInfo;
  GPinTypeObjectTypeInfo  : IClassTypeInfo;

implementation

{$T-}

uses
  System.SyncObjs, System.Math, System.StrUtils, Mitov.ClassManagement,
  Mitov.Utils, Mitov.Design.Components, System.Character, OpenWire.TypeConverters;

var
  GIOWStream                : IInterfaceTypeInfo;
  GObjectInUseGetter        : TFunc<TObject, Boolean>;
  GSerializationLoadingEnd  : TProc;
  GPendingExtensions        : TMultiProc;
  GCheckPartialPinNames     : Boolean = True;
  GRootAliasDictionary      : IDictionary<String, ILinkedList<String>>;
  GComponentDestroyNotify   : TProc<TComponent>;

type
  PGUID = ^TGUID;
//---------------------------------------------------------------------------
  TExposedPersistent = class( TPersistent );
//---------------------------------------------------------------------------
  TDispatcherInstanceHolder = class( TBasicInterfacedObject, IDispatcherInstanceHolder )
  protected
    FOwner  : TOWBasicStateDispatcher;

  public
    constructor Create( AOwner : TOWBasicStateDispatcher );
    destructor  Destroy(); override;

  end;
//---------------------------------------------------------------------------
  TOWSinkPinListCopy = class( TArrayList<TOWBasicSinkPin>, IOWSinkPinListCopy )
  public
    constructor Create( AOwner : TOWSinkPinList );

  end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TDispatcherInstanceHolder.Create( AOwner : TOWBasicStateDispatcher );
begin
  inherited Create();
  FOwner := AOwner;
  Inc( FOwner.FInConnecting );
end;
//---------------------------------------------------------------------------
destructor TDispatcherInstanceHolder.Destroy();
begin
  Dec( FOwner.FInConnecting );
  inherited;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function PreviewConnected( const APin1 : TOWBasicPin; const APin2 : TOWBasicPin ) : Boolean;
begin
  if( ( APin1 <> NIL ) and ( APin2 <> NIL )) then
    begin
    var AOtherRoot := APin2.GetRoot();
    if( AOtherRoot <> NIL ) then
      begin
      var ARoot := APin1.GetRoot();
      if( ARoot <> NIL ) then
        if( csDesigning in ARoot.ComponentState ) then
          if( csDesigning in ARoot.ComponentState ) then
            if( ARoot <> AOtherRoot ) then
              if( String( ARoot.Name ).StartsWith( AOtherRoot.Name + '_' ) or String( AOtherRoot.Name ).StartsWith( ARoot.Name + '_' )) then
                if( ARoot.InheritsFrom( AOtherRoot.ClassType() ) or AOtherRoot.InheritsFrom( ARoot.ClassType() )) then
                  Exit( True );


      end;
    end;

  Result := False;
end;
//---------------------------------------------------------------------------
function SubstringFrom( const AText : String; const ASeparator : String ) : String;
begin
  var APos := AText.IndexOf( ASeparator );
  if( APos < 0 ) then
    Exit( AText );

  Result := AText.Substring( APos );
end;
//---------------------------------------------------------------------------
{$IFNDEF MSWINDOWS}
function Succeeded(Status: HRESULT): Boolean;
begin
  Result := Status and HRESULT($80000000) = 0;
end;
{$ENDIF}
//---------------------------------------------------------------------------
function GOWIsStringValueType( AValue : TValueType ) : Boolean;
begin
  Result := AValue in [vaString, vaUTF8String, vaLString, vaWString];
end;
//---------------------------------------------------------------------------
type
  TOWUnloadedPastePin = class( TOWUnloadedPin );
//---------------------------------------------------------------------------
  IOWPinListBasic<T : TOWBasicPin> = interface( IObjectOwnerArrayList<T> )
    ['{8DECA0C0-E04E-4A1E-A0A8-729FCC21A043}']

    function  RemoveNoList( APin : T ) : Boolean;

  end;
//---------------------------------------------------------------------------
  TOWPinListBasic<T : TOWBasicPin> = class( TObjectOwnerArrayList<T>, IOWPinListBasic<T> )
  public
    function  Add( const AItem : T; ACount : Cardinal = 1 ) : IArrayList<T>; override;
    function  RemoveNoList( APin : T ) : Boolean; // virtual;

//    function GetByDisplayName( ARoot : TComponent; APinName : String; out AResult : T ) : Boolean;

  public
    constructor CreateObject( AOwnsObjects : Boolean = True );

  end;
//---------------------------------------------------------------------------
  IOWUnloadedPinList = interface( IOWPinListBasic<TOWUnloadedPin> )
    ['{503A0B25-7700-42EB-A5FE-2283B7BF3099}']

    function  GetByIdentName( ARoot : TComponent; const APinName : String; out AResult : TOWUnloadedPin ) : Boolean;
    function  Contains( APin : TOWUnloadedPin ) : Boolean;
    function  Add( ARoot : TComponent; const AItem : TOWUnloadedPin ) : IArrayList<TOWUnloadedPin>;

  end;
//---------------------------------------------------------------------------
  TOWUnloadedPinList = class( TOWPinListBasic<TOWUnloadedPin>, IOWUnloadedPinList )
  protected
    FDictionary : IDictionary<String,TOWUnloadedPin>;

  public
    function  Add( ARoot : TComponent; const AItem : TOWUnloadedPin ) : IArrayList<TOWUnloadedPin>; reintroduce;
//    function  RemoveNoList( APin : TOWUnloadedPin ) : Boolean; override;
    function  RemoveOne( const AItem : TOWUnloadedPin ) : Integer; overload; override;
    function  Delete( AIndex : Integer ) : IArrayList<TOWUnloadedPin>; overload; override;

  protected
    function  GetByIdentName( ARoot : TComponent; const APinName : String; out AResult : TOWUnloadedPin ) : Boolean;
    function  Contains( APin : TOWUnloadedPin ) : Boolean;

  public
    class function Make() : IOWUnloadedPinList;

  public
    constructor CreateObject();

  end;
//---------------------------------------------------------------------------
  IOWInternalPinList = interface( IOWPinListBasic<TOWBasicPin> )
    ['{8DECA0C0-E04E-4A1E-A0A8-729FCC21A043}']

    function GetByIdentName( ARoot : TComponent; const APinName : String; out AResult : TOWBasicPin ) : Boolean;
    function GetByNameCreate( ARoot : TComponent; ACheckLoadIndex : Boolean; AType : TOWPinType; const APinIdentName : String; const APinDisplayName : String; const ACreatedFrom : String ) : TOWBasicPin;
    function GetRootPinsList( ARoot : TComponent ) : ILinkedList<TOWBasicPin>;

  end;
//---------------------------------------------------------------------------
  TOWInternalPinList = class( TOWPinListBasic<TOWBasicPin>, IOWInternalPinList )
  protected
    FDictionary : IDictionary<TComponent, ILinkedList<TOWBasicPin>>;

  protected
    function InternalGetByIdentName( ARoot : TComponent; const APinName : String; out AResult : TOWBasicPin ) : Boolean;

  public
    function  Add( const AItem : TOWBasicPin; ACount : Cardinal = 1 ) : IArrayList<TOWBasicPin>; override;
    function  RemoveOne( const AItem : TOWBasicPin ) : Integer; overload; override;

  public
    function GetByIdentName( ARoot : TComponent; const APinName : String; out AResult : TOWBasicPin ) : Boolean;
    function GetRootPinsList( ARoot : TComponent ) : ILinkedList<TOWBasicPin>;

  public
    function GetByNameCreate( ARoot : TComponent; ACheckLoadIndex : Boolean; AType : TOWPinType; const APinIdentName : String; const APinDisplayName : String; const ACreatedFrom : String ) : TOWBasicPin;

  public
    class function Make() : IOWInternalPinList;

  public
    constructor CreateObject(); overload;

  end;
//---------------------------------------------------------------------------
  TOWStreamTypeEntry = class( TBasicObject )
  protected
    FIsCoreInterface        : Boolean;
    FIsCoreInterfaceCached  : Boolean;

    FID                     : TGUID;

  public
    Extentions    : IDictionary<TGUID, IOWStreamInfoExtention>;
    SendFunction  : TOWGlobalSubmit;

  public
    function  GetIsCoreInterface() : Boolean;

  public
    constructor Create( const AID : TGUID );

  end;
//---------------------------------------------------------------------------
  IOWComponentsListItem = interface
    ['{5A2D9A85-70E6-47B4-9983-5F31A37F2FAA}']

    function  GetComponent() : TComponent;
    function  GetPinsDictionary() : IDictionary<String, TOWBasicPin>;
    function  GetLoadPinsDictionary() : IDictionary<String, TOWBasicPin>;
    procedure ClearLoading();

  end;
//---------------------------------------------------------------------------
  TOWBasicComponentsListItem = class( TBasicInterfacedObject )
  protected
    FComponent : TComponent;

  protected
    function  GetComponent() : TComponent;

  public
    constructor Create( AComponent : TComponent );

  end;
//---------------------------------------------------------------------------
  TOWComponentsListItem = class( TOWBasicComponentsListItem, IOWComponentsListItem )
  protected
    FPinsDictionary     : IDictionary<String, TOWBasicPin>;
    FLoadPinsDictionary : IDictionary<String, TOWBasicPin>;

  protected
    function  GetPinsDictionary() : IDictionary<String, TOWBasicPin>;
    function  GetLoadPinsDictionary() : IDictionary<String, TOWBasicPin>;
    procedure ClearLoading();

  public
    constructor Create( AComponent : TComponent );

  end;
//---------------------------------------------------------------------------
  IOWRootListItem = interface
    ['{771CA8DF-C062-445E-9A73-E230177DA49E}']

    function  GetComponent() : TComponent;
    function  GetComponentsList() : IArrayList<IOWComponentsListItem>;

  end;
//---------------------------------------------------------------------------
  TOWRootListItem = class( TOWBasicComponentsListItem, IOWRootListItem )
  protected
    FComponent      : TComponent;
    FComponentsList : IArrayList<IOWComponentsListItem>;

  protected
    function  GetComponentsList() : IArrayList<IOWComponentsListItem>;

  public
    constructor Create( AComponent : TComponent );

  end;
//---------------------------------------------------------------------------
var
  GlobalStorageSection  : ICriticalSection;
  GOWRootList           : IArrayList<IOWRootListItem>;
  GOWPins               : IOWInternalPinList;
  GOWPinLists           : IArrayList<TOWBasicPinList>;
  GOWUnloadedPins       : array [ Boolean ] of IOWUnloadedPinList;

  GOWStreamTypes        : IObjectOwnerDictionary<TGUID, TOWStreamTypeEntry>;
  GOWNullEntry          : TOWStreamTypeEntry;

  GOWNotifyList         : ILinkedList<IOWPinNotifier>;
  GOWNotifySection      : ICriticalSection;

{$IF DEFINED(LINUX64) or DEFINED(CPUARM64) or DEFINED(OSX64)}
  GOWOperationID        : Integer;
{$ELSE}
  GOWOperationID        : LongInt;
{$ENDIF}

var
  GLoaded     : Boolean;
  GUnloading  : Boolean = False;

//var
//  __OWCountLockObjects  : Integer = 0;

var // State pins support
  GDesignDispatchers          : IOWStateDispatcherList;
  GRunDispatchers             : IOWStateDispatcherList;
  GIgnoreDesignMode           : Boolean;
  GIgnoreChangeNotifications  : Boolean;

//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function ReplaceComponentOwnerName( const AName : String; const ARenameMap : IDictionary<String, String> ) : String;
begin
  var AList := AName.Split( [ '.' ] );

  if( Length( AList ) > 2 ) then
    ARenameMap.ForItem( AList[ 1 ],
        procedure( const AValue : String )
        begin
          AList[ 1 ] := AValue;
        end
      );

  Result := String.Join( '.', AList );
end;
//---------------------------------------------------------------------------
function OWMakeShortName( const AName : String ) : String;
begin
  Result := AName;
  if( Result.EndsWith( 'Pin' )) then
    Delete( Result, Length( Result ) - 2, 3 )

  else if( Result.EndsWith( 'Pins' )) then
    Delete( Result, Length( Result ) - 3, 4 )

  else
    Exit;

  if( Result.EndsWith( 'Output' )) then
    begin
    if( Result = 'Output' ) then
      Result := 'Out'

    else if( Result.EndsWith( '.Output' )) then
      Delete( Result, Length( Result ) - 2, 3 )

    else
      Delete( Result, Length( Result ) - 5, 6 )

    end

  else if( Result.EndsWith( 'Input' )) then
    begin
    if( Result = 'Input' ) then
      Result := 'In'

    else if( Result.EndsWith( '.Input' )) then
      Delete( Result, Length( Result ) - 2, 3 )

    else
      Delete( Result, Length( Result ) - 4, 5 );

    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure OWSetNeedsOwnerName( AValue : Boolean );
begin
  GOWNeedsOwnerName := AValue;
end;
//---------------------------------------------------------------------------
procedure OWAddPinNotifier( const ANotifyItem : IOWPinNotifier );
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
procedure OWRemovePinNotifier( const ANotifyItem : IOWPinNotifier );
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
              for var AItem in GOWNotifyList do
                try
                  AItem.AddPin( APin, APin is TOWUnloadedPin );
                except;
                  end;

        except
          end;

      end
    );

end;
//---------------------------------------------------------------------------
procedure OWNotifyRemovePin( APin : TOWBasicPin; ADesignFormClosing : Boolean );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        for var AItem in GOWNotifyList do
          try
            AItem.RemovePin( APin, APin is TOWUnloadedPin, ADesignFormClosing );
          except;
            end;

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyChangePin( APin : TOWBasicPin; ADebugPinChange : Boolean );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        for var AItem in GOWNotifyList do
          try
            AItem.ChangePin( APin, APin is TOWUnloadedPin, ADebugPinChange );
          except;
            end;

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyConnected( AObject1 : TOWPinObject; AObject2 : TOWPinObject );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        for var AItem in GOWNotifyList do
          try
            AItem.Connected( AObject1, AObject2 );
          except;
            end;

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyDisconnectingPin( AObject1 : TOWPinTypeObject; AFromConnect : Boolean );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        for var AItem in GOWNotifyList do
          try
            AItem.DisconnectingPin( AObject1, AFromConnect );
          except;
            end;

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyDisconnectedPin( AObject1 : TOWPinTypeObject; AFromConnect : Boolean );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        for var AItem in GOWNotifyList do
          try
            AItem.DisconnectedPin( AObject1, AFromConnect );
          except;
            end;

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyDisconnecting( AObject1 : TOWPinTypeObject; AObject2 : TOWPinTypeObject; AFromConnect : Boolean );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        for var AItem in GOWNotifyList do
          try
            AItem.Disconnecting( AObject1, AObject2, AFromConnect );
          except;
            end;

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyDisconnected( AObject1 : TOWPinTypeObject; AFromConnect : Boolean );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        for var AItem in GOWNotifyList do
          try
            AItem.Disconnected( AObject1, AFromConnect );
          except;
            end;

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
        for var AItem in GOWNotifyList do
          try
            AItem.AddDispatcher( ADispatcher );
          except;
            end;

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
        for var AItem in GOWNotifyList do
          try
            AItem.RemoveDispatcher( ADispatcher, DesignFormClosing );
          except;
            end;

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
        for var AItem in GOWNotifyList do
          try
            AItem.ChangeDispatcher( ADispatcher );
          except;
            end;


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
        for var AItem in GOWNotifyList do
          try
            AItem.AddPinList( APinList );
          except;
            end;

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
        for var AItem in GOWNotifyList do
          try
            AItem.RemovePinList( APinList );
          except;
            end;

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
        for var AItem in GOWNotifyList do
          try
            AItem.ChangePinList( APinList );
          except;
            end;


  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyPinListPinAdded( APinList : TOWPinList; APin : TOWBasicPin; AIndex : Integer );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        for var AItem in GOWNotifyList do
          try
            AItem.PinListPinAdded( APinList, APin, AIndex );
          except;
            end;


  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyPinListPinRemoved( APinList : TOWPinList; APin : TOWBasicPin; AIndex : Integer );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        for var AItem in GOWNotifyList do
          try
            AItem.PinListPinRemoved( APinList, APin, AIndex );
          except;
            end;

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyPinListPinsSwapped( APinList : TOWPinList; APin1 : TOWBasicPin; AIndex1 : Integer; APin2 : TOWBasicPin; Index2 : Integer );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        for var AItem in GOWNotifyList do
          try
            AItem.PinListPinsSwapped( APinList, APin1, AIndex1, APin2, Index2 );
          except;
            end;

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyDynamicPinsSwapped( APin1 : TOWBasicPin; APin2 : TOWBasicPin );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        for var AItem in GOWNotifyList do
          try
            AItem.DynamicPinsSwapped( APin1, APin2 );
          except;
            end;

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWNotifyDynamicPinsMoved( APin1 : TOWBasicPin; APin2 : TOWBasicPin );
begin
  GOWNotifySection.Enter();
  try
    if( not GIgnoreChangeNotifications ) then
      if( GOWNotifyList <> NIL ) then
        for var AItem in GOWNotifyList do
          try
            AItem.DynamicPinsMoved( APin1, APin2 );
          except;
            end;

  except
    end;

  GOWNotifySection.Leave();
end;
//---------------------------------------------------------------------------
procedure ProcessPendingExtensions();
begin
  GPendingExtensions.Notify();
  GPendingExtensions.Clear();
end;
//---------------------------------------------------------------------------
function GetStreamTypeEntry( const AID : TGUID ) : TOWStreamTypeEntry;
begin
  if( GOWStreamTypes.GetValue( AID, Result )) then
    Exit;

  var AText : String;
  if( TRttiInfo.GetInterfaceTypeName( AID, AText )) then
    begin
    Result := TOWStreamTypeEntry.Create( AID );
    GOWStreamTypes.Add( AID, Result );
    Exit;
    end;

  Result := GOWStreamTypes.GetOrAddValue( AID,
      function() : TOWStreamTypeEntry
      begin
        Result := TOWStreamTypeEntry.Create( AID );
      end
    );

end;
//---------------------------------------------------------------------------
procedure OWRegisterStreamExtention( const AStreamTypeID : TGUID; const AExtention : IOWStreamInfoExtention );
begin
  GPendingExtensions.Add(
      procedure()
      begin
        GetStreamTypeEntry( AStreamTypeID ).Extentions[ AExtention.GetExtentionId() ] := AExtention;
      end
    );

end;
//---------------------------------------------------------------------------
function OWGetStreamIsCoreInterface( const AStreamTypeID : TGUID ) : Boolean;
var
  AEntry  : TOWStreamTypeEntry;

begin
  ProcessPendingExtensions();
  if( GOWStreamTypes.GetValue( AStreamTypeID, AEntry )) then
    Exit( AEntry.GetIsCoreInterface() );

  Exit( False );
end;
//---------------------------------------------------------------------------
function OWGetIsStreamInterface( const AStreamTypeID : TGUID ) : Boolean;
begin
  ProcessPendingExtensions();
  Result := GOWStreamTypes.ContainsKey( AStreamTypeID );
end;
//---------------------------------------------------------------------------
function OWGetStreamExtentionFromID( const AStreamTypeID : TGUID; const AExtentionID : TGUID; out AExtention : IOWStreamInfoExtention ) : Boolean;
var
  AEntry  : TOWStreamTypeEntry;

begin
  ProcessPendingExtensions();
  if( GOWStreamTypes.GetValue( AStreamTypeID, AEntry )) then
    if( AEntry.Extentions.GetValue( AExtentionID, AExtention )) then
      Exit( True );

  AExtention := NIL;
  Result := False;
end;
//---------------------------------------------------------------------------
procedure OWRegisterDefaultHandler( const AStreamTypeID : TGUID; ASendFunction : TOWGlobalSubmit );
begin
  GPendingExtensions.Add(
      procedure()
      begin
        GetStreamTypeEntry( AStreamTypeID ).SendFunction := ASendFunction;
      end
    );

end;
//---------------------------------------------------------------------------
procedure OWRegisterPinProxyClass( AClass : TOWPinProxyClass );
begin
  System.Classes.RegisterClass( AClass );
end;
//---------------------------------------------------------------------------
function OWCreatePinProxy( const AProxyClassName : String; const APinName : String ) : TOWPinProxy;
begin
  var AClass := TOWPinProxyClass( System.Classes.GetClass( AProxyClassName ));
  Result := TOWPinProxy( AClass.Create( NIL ));
  Result.SetPinName( APinName );
end;
//---------------------------------------------------------------------------
procedure OWRegisterPinListProxyClass( AClass : TOWPinListProxyClass );
begin
  System.Classes.RegisterClass( AClass );
end;
//---------------------------------------------------------------------------
function OWCreatePinListProxy( const AProxyClassName : String; const APinName : String ) : TOWPinListProxy;
begin
  var AClass := TOWPinListProxyClass( System.Classes.GetClass( AProxyClassName ));
  Result := TOWPinListProxy( AClass.Create( NIL ));
  Result.SetPinListName( APinName );
end;
//---------------------------------------------------------------------------
function OWGetStreamTypeFromID( const AStreamTypeID : TGUID; out AResult : String ) : Boolean;
begin
  Result := TRttiInfo.GetInterfaceDisplayName( AStreamTypeID, AResult );
end;
//---------------------------------------------------------------------------
function OWGetStreamTypeFromID( const AStreamTypeID : TGUID ) : String;
begin
  if( TRttiInfo.GetInterfaceDisplayName( AStreamTypeID, Result )) then
    Exit;

  Result := GUIDToString( AStreamTypeID );
end;
//---------------------------------------------------------------------------
function OWGetDebugStreamTypeFromID( const AStreamTypeID : TGUID; AIncludeGUID : Boolean = False ) : String;
begin
  var ATypeName : String;
  var AHasDisplayName : Boolean;
  var ADisplayName : String;
  if( TRttiInfo.GetInterfaceTypeAndDisplayName( AStreamTypeID, ATypeName, AHasDisplayName, ADisplayName )) then
    begin
    if( AIncludeGUID ) then
      begin
      if( AHasDisplayName ) then
        Exit( ATypeName + '(' + ADisplayName + ') - ' + GUIDToString( AStreamTypeID ) );

      Exit( ATypeName + ' - ' + GUIDToString( AStreamTypeID ) );
      end;

    if( AHasDisplayName ) then
      Exit( ATypeName + '(' + ADisplayName + ')' );

    Exit( ATypeName );
    end;

  Result := GUIDToString( AStreamTypeID );
end;
//---------------------------------------------------------------------------
function OWGetAllLinked() : Boolean;
begin
  GlobalStorageSection.Enter();
  try
    Result := (( GOWUnloadedPins[ False ].Count = 0 ) and ( GOWUnloadedPins[ True ].Count = 0 ));
  except
    Result := True;
    end;

  GlobalStorageSection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWCheckUnloadedLinks( ARoot : TComponent; AForceCheck : Boolean = False );
begin
  GlobalStorageSection.Enter();
  try
    if(( GOWUnloadedPins[ False ].Count <> 0 ) or ( GOWUnloadedPins[ True ].Count <> 0 )) then
      begin
      if( ARoot = NIL ) then
        begin
        for var APin in GOWPins.GetReverse() do
          if( not APin.CheckVirtualList( AForceCheck )) then
            Break;

        end

      else
        for var APin in GOWPins.GetRootPinsList( ARoot ) do
          if( not APin.CheckVirtualList( AForceCheck )) then
            Break;

      end;

  except
    end;

  GlobalStorageSection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWClearLoadingMaps();
begin
  GlobalStorageSection.Enter();
  try
    for var ARoot in GOWRootList do
      for var AComponent in ARoot.GetComponentsList() do
        AComponent.ClearLoading();

  except
    end;

  GlobalStorageSection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWInvalidateCaches( AObject : TObject );
begin
  GlobalStorageSection.Enter();
  try
    for var APin in GOWPins do
      APin.InvalidateCaches( AObject );

  except
    end;

  GlobalStorageSection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWClearPendingLinks( AForceCheck : Boolean = False; ARoot : TComponent = NIL );
begin
  GlobalStorageSection.Enter();
  try
    if(( GOWUnloadedPins[ False ].Count <> 0 ) or ( GOWUnloadedPins[ True ].Count <> 0 )) then
      begin
      if( ARoot = NIL ) then
        begin
        for var APin in GOWPins.GetReverse() do
          if( not APin.CheckVirtualList( AForceCheck )) then
            Break;

        end

      else
        begin
        for var APin in GOWPins.GetRootPinsList( ARoot ) do
          if( not APin.CheckVirtualList( AForceCheck )) then
            Break;

        end;

      for var AIndex := False to True do
        while( True ) do
          try
            var ACount := GOWUnloadedPins[ AIndex ].Count;
            if( ACount <= 0 ) then
              Break;

            var AUnloadedPins := GOWUnloadedPins[ AIndex ];
            Dec( ACount );
            var APinList := AUnloadedPins[ ACount ].FOwnerPinList;
            if( APinList <> NIL ) then
              APinList.FUnloadedCount := 0;

            AUnloadedPins.Delete( ACount );
          except
            end;
      end;

    OWClearLoadingMaps();
  except
    end;

  GlobalStorageSection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWSetCheckPartialPinNames( AValue : Boolean );
begin
  GCheckPartialPinNames := AValue;
end;
//---------------------------------------------------------------------------
procedure OWClearPendingPasteLinks();
begin
  GlobalStorageSection.Enter();
  try
    if(( GOWUnloadedPins[ False ].Count <> 0 ) or ( GOWUnloadedPins[ True ].Count <> 0 )) then
      begin
      for var APin in GOWPins.GetReverse() do
        if( not APin.CheckVirtualList( False )) then
          Break;

      for var AIndex := False to True do
        for var I := GOWUnloadedPins[ AIndex ].Count - 1 downto 0 do
          begin
          var APin := GOWUnloadedPins[ AIndex ][ I ];
          if( APin is TOWUnloadedPastePin ) then
            begin
            var APinList := GOWUnloadedPins[ AIndex ][ I ].FOwnerPinList;
            if( APinList <> NIL ) then
              Dec( APinList.FUnloadedCount );

            GOWUnloadedPins[ AIndex ].Delete( I );
            end;
          end;

      end;

  except
    end;

  GlobalStorageSection.Leave();
end;
//---------------------------------------------------------------------------
function OWGetFormName( const APinName : String ) : String;
begin
  var APosition := Pos( '.', APinName );
  if( APosition <= 0 ) then
    Exit( '' );

  Result := APinName;
  var ASubNode := Result;
  Delete( ASubNode, 1, APosition );
  APosition := Pos( '.', ASubNode );

  if( APosition <= 0 ) then
    Exit( '' );

  Delete( ASubNode, 1, APosition );
  APosition := Pos( '_Pin', Result );
  if( APosition = 0 ) then
    Delete( Result, APosition, 100000 ) // ????

  else
    begin
    APosition := Pos( '.', ASubNode );
    if( APosition <= 0 ) then
      Exit( '' );

    Delete( Result, APosition, 100000 )
    end;

end;
//---------------------------------------------------------------------------
function OWRemoveFormName( const APinName : String ) : String;
begin
  var APosition := Pos( '.', APinName );
  if( APosition <= 0 ) then
    Exit( '' );

  Result := APinName;
  Delete( Result, 1, APosition );
end;
//---------------------------------------------------------------------------
function OWHasConnectedPins( AObject : TObject ) : Boolean;
begin
  for var AItem in AObject.TypeInfo().GetSinglePropertiesRecursive( AObject, [ mvPublished ], TOWPinTypeObject ) do
    begin
    var APinObject := AItem.Value.AsType<TOWPinTypeObject>();
    if( APinObject <> NIL ) then
      if( APinObject.IsConnected() ) then
        Exit( True );

    end;

  Result := False;
end;
//---------------------------------------------------------------------------
procedure OWRemoveComponentFromDictionaries( AComponent : TComponent );
begin
  GlobalStorageSection.Enter();
  try
    var AFound := False;
    for var I : Integer := 0 to GOWRootList.Count - 1 do
      begin
      var ARootItem := GOWRootList[ I ];
      var AComponentList := ARootItem.GetComponentsList();
      for var J : Integer := 0 to AComponentList.Count - 1 do
        if( AComponentList[ J ].GetComponent() = AComponent ) then
          begin
          Assert( False, 'Component with no pins still in OpenWire Dictionaries!' );
          AComponentList.Delete( J );
          if( AComponentList.Count = 0 ) then
            GOWRootList.Delete( I );

          AFound := True;
          Break;
          end;

      if( AFound ) then
        Break;

      end;

  except
    end;

  GlobalStorageSection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWRemovePinFromDictionaries( APin : TOWBasicPin );
begin
  GlobalStorageSection.Enter();
  try
//    var ARoot := GetRoot();
    var AFound := False;
    for var I : Integer := 0 to GOWRootList.Count - 1 do
      begin
      var ARootItem := GOWRootList[ I ];
//      if( ARootItem.GetComponent() = ARoot ) then
        begin
        var AOwner := APin.Owner;

        var AComponentList := ARootItem.GetComponentsList();
        for var J : Integer := 0 to AComponentList.Count - 1 do
          begin
          var AComponentItem := AComponentList[ J ];
          if( AComponentItem.GetComponent() = AOwner ) then
            begin
            var ADictionary := AComponentItem.GetPinsDictionary();
            ADictionary.RemoveAll(
                function( const AKey : String; const AValue : TOWBasicPin ) : Boolean
                begin
                  Result := ( AValue = APin );
                end
              );

            if( ADictionary.Count = 0 ) then
              begin
              AComponentList.Delete( J );
              if( AComponentList.Count = 0 ) then
                GOWRootList.Delete( I );

              end;

            AFound := True;
            Break;
            end;
          end;

        if( AFound ) then
          Break;

        end;
      end;

  except
    end;

  GlobalStorageSection.Leave();
end;
//---------------------------------------------------------------------------
procedure OWAddRootAlias( const ARootName : String; const AAliasName : String );
begin
  GlobalStorageSection.Enter();
  try
    if( GRootAliasDictionary = NIL ) then
      GRootAliasDictionary := TDictionary<String, ILinkedList<String>>.Create();

    GRootAliasDictionary.GetOrAddValue( ARootName,
        function() : ILinkedList<String>
        begin
          Result := TLinkedList<String>.Create();
        end
      ).Add( AAliasName );

  finally
    GlobalStorageSection.Leave();
    end;

end;
//---------------------------------------------------------------------------
procedure OWRemoveRootAlias( const ARootName : String; const AAliasName : String );
begin
  GlobalStorageSection.Enter();
  try
    if( GRootAliasDictionary <> NIL ) then
      begin
      var AList : ILinkedList<String>;
      if( GRootAliasDictionary.GetValue( ARootName, AList )) then
        begin
        AList.RemoveOne( AAliasName );
        if( AList.Count = 0 ) then
          GRootAliasDictionary.Remove( ARootName );

        end;

      if( GRootAliasDictionary.Count = 0 ) then
        GRootAliasDictionary := NIL;

      end;

  finally
    GlobalStorageSection.Leave();
    end;

end;
//---------------------------------------------------------------------------
procedure OWClearRootAliases();
begin
  GlobalStorageSection.Enter();
  try
    if( GRootAliasDictionary <> NIL ) then
      GRootAliasDictionary.Clear();

  finally
    GlobalStorageSection.Leave();
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWObject.ReadLock() : ILockSection;
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
function TOWPinTypeObject.IsConnected() : Boolean;
begin
  Result := False;
end;
//---------------------------------------------------------------------------
function TOWPinTypeObject.QueryInterface({$IFDEF FPC_HAS_CONSTREF}constref{$ELSE}const{$ENDIF} IID : TGUID; out Obj) : HResult; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};
begin
  if( GetInterface( IID, Obj )) then
    Exit( S_OK );

  Result := E_NOINTERFACE;
end;
//---------------------------------------------------------------------------
function TOWPinTypeObject.RequestInterface( const IID : TGUID; out Obj ) : HResult; stdcall;
begin
  Result := QueryInterface( IID, Obj );
end;
//---------------------------------------------------------------------------
function TOWPinTypeObject._AddRef() : Integer; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};
begin
  _AddRef := 1;
end;
//---------------------------------------------------------------------------
function TOWPinTypeObject._Release() : Integer; {$IFDEF INTERFACE_USE_STDCALL} stdcall {$ELSE} cdecl {$ENDIF};
begin
  _Release := 1;
end;
//---------------------------------------------------------------------------
procedure TOWPinTypeObject.InvalidateCaches( AObject : TObject );
begin
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
function TOWFakeLock.UnlockAllLockInOrder( const AFirstLock : IBasicLock ) : ILockSection;
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

    FThreadID := TBasicThread.GetCurrentThreadId();
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
begin
  var ACount : LongInt := TInterlocked.Exchange( FDestroying, 0 );
  Result := TOWDestroyLockUnlockSection.Create( Self, ACount );
//  FUnlockSection := FOwner.UnlockAll();
end;
//---------------------------------------------------------------------------
function TOWDestroyLock.GetInstance() : TOWDestroyLock;
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
  FLock.GetInstance().Unlock();
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
  FLock.GetInstance().DestroyUnlock();
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
  FLock.GetInstance().DestroyLockNum( FCount );
//  FLock.GetInstance().FUnlockSection := NIL;
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
procedure TOWPinObject.SetNotifyAfterByName( const APin : TOWPin; const AAfterPinName : String );
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
constructor TOWBasicPin.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock );
begin
  inherited Create();
  FOnCreated := AOnCreated;
  FPinLists := TArrayList<TOWPinList>.Create();

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

  AddTypeInfoMemberValueChangeNotify( Self );
end;
//---------------------------------------------------------------------------
destructor TOWBasicPin.Destroy();
var
  ADestroyLock : IOWDestroyLockSection;

begin
  ADestroyLock := FDestroyLock.DestroyLock();
  for var APinList in FPinLists.GetReverse() do
    if( APinList <> FOwnerPinList ) then
//      if( not APinList.PinsOwner ) then
      begin
      var AWasOwner := APinList.PinsOwner;
      APinList.PinsOwner := False;
      APinList.Remove( Self );
      APinList.PinsOwner := AWasOwner;
      end;

  RemoveTypeInfoMemberValueChangeNotify( Self );
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

  if( Assigned( FOnCreated )) then
    FOnCreated( TOWPin( Self ) );

  OWNotifyAddPin( Self );
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.BeforeDestruction();
var
  AWriteLock    : ILockSection;
  ADestroyLock  : IOWDestroyLockSection;

begin
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();
  Disconnect();
  var ADesignFormClosing := False;
  if( OwnerInDesigning( False ) ) then
    if( RootInDestroying() ) then
      ADesignFormClosing := True;

  ADestroyLock := NIL;
  AWriteLock := NIL;
  AWriteLock := UnlockAll(); // Unlock the pin before getting GlobalStorageSection

  OWNotifyRemovePin( Self, ADesignFormClosing );

  GlobalStorageSection.Access.Execute(
      procedure()
      begin
        GOWPins.RemoveOne( Self );
        for var I : Integer := GOWPins.Count - 1 downto 0 do
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
function TOWBasicPin.GetRootName() : String;
begin
  Result := GetFullIdentName( True, False );
  var APosition := Pos( '.', Result );
  if( APosition = 0 ) then
    Exit( '' );

  Delete( Result, APosition, 20000 )
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetOwner() : TPersistent;
begin
  var AOwnerName := GetOwnerName( False );
  if( AOwnerName = '' ) then
    Exit( GetOwnerComponent() );

  var AValue : TValue;
  if( OWGetPropValue( GetOwnerComponent(), AOwnerName, False, AValue )) then
    Exit( AValue.AsType<TPersistent>());

  Result := NIL;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetOwnerName( AIncludeRootForm : Boolean ) : String;
begin
  Result := GetFullIdentName( AIncludeRootForm, False );
  var APosition := Pos( '.', Result );
  if( APosition = 0 ) then
    Exit( '' );

  Delete( Result, 1, APosition );
  APosition := LastDelimiter( '.', Result );
  if( APosition = 0 ) then
    Exit( '' );

  Delete( Result, APosition, 20000 )
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetIsCachedInternal() : Boolean;
begin
//  if( FPropertyElements = NIL ) then
//    Exit( False );
  if( FName = '' ) then
    Exit( False );

  if( FShortName = '' ) then
    Exit( False );

  if( GOWNeedsOwnerName ) then
    if( FFullIdentName.StartsWith( '.' )) then
      Exit( False );

  if( FFullIdentName.EndsWith( '.' )) then
    Exit( False );

  if( FFullIdentName.Contains( '..' )) then
    Exit( False );

  var AOwner := Owner;
  if( AOwner <> NIL ) then
    if( AOwner.Name <> '' ) then
      if( not FFullIdentName.StartsWith( AOwner.Name + '.' )) then
        Exit( False );

{
  if( FPropertyElements <> NIL ) then
    for var AItem in FPropertyElements do
      if( AItem.Persistent = NIL ) then
        Exit( False );
}
  Result := True;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetIsCached() : Boolean;
begin
//  if( FOwnerPinList <> NIL ) then
//    Exit( False );
{
  if( FPropertyElements <> NIL ) then
    begin
    var AOwner := Owner;
    if( AOwner <> NIL ) then
      if( ( csDestroying in AOwner.ComponentState ) or ( csLoading in AOwner.ComponentState ) ) then
        Exit( True );

    end;
}
//  Result := ( FName <> '' );
//  if( Result ) then
//    Result := ( Pos( '[', FName ) <= 0 );

  Result := GetIsCachedInternal();
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.PopulateNameCache();
var
  APropertyInfo   : ISinglePropertyInfo;
  ANameAtrribute  : NameAttribute;
  APostfixAttr    : NamePostfixAttribute;

begin
  if( GetIsCached() ) then
    Exit;

  var AOwner := Owner;

  if( AOwner = NIL ) then
    Exit;

  if( GOWNeedsOwnerName ) then
    if( AOwner.Name = '' ) then
      Exit;

  var APinListName : String;

  if( FOwnerPinList <> NIL ) then
    APinListName := FOwnerPinList.Name;

  FPropertyElements := GetFullIdentsInt();
  FFullIdentName := GetFullIdentNameInt( False, False );
  FFullLoadIdentName := GetFullIdentNameInt( False, True );

  var ALoadIdent : String;
  var APos := FFullLoadIdentName.IndexOf( '.' );
  if( APos = 0 ) then
    ALoadIdent := FFullLoadIdentName

  else
    ALoadIdent := FFullLoadIdentName.SubString( APos + 1 );

  if( FFullLoadIdentName <> '' ) then
    if( not ( csDestroying in AOwner.ComponentState )) then
      begin
      var ARoot := GetRoot();
      var ARootItem := GOWRootList.FindOrAdd(
          function( const AItem : IOWRootListItem ) : Boolean
          begin
            Result := ( AItem.GetComponent() = ARoot );
          end
        ,
          function() : IOWRootListItem
          begin
            Result := TOWRootListItem.Create( ARoot );
          end
        );

      var ARootComponentItem := ARootItem.GetComponentsList().FindOrAdd(
          function( const AItem : IOWComponentsListItem ) : Boolean
          begin
            Result := ( AItem.GetComponent() = AOwner );
          end
        ,
          function() : IOWComponentsListItem
          begin
            Result := TOWComponentsListItem.Create( AOwner );
          end
        );

      var ADictionary := ARootComponentItem.GetLoadPinsDictionary();
      ADictionary[ ALoadIdent ] := Self;
      end;

  FName := GetNameInt();

  var AAssigned := False;
  var AIsFixedName := False;
  if( FPropertyElements.Count > 1 ) then
    begin
    var APersistent := FPropertyElements[ FPropertyElements.Count - 2 ].Persistent;
    if( APersistent <> NIL ) then
      if( APersistent.TypeInfo().GetSingleProperty( FPropertyElements[ FPropertyElements.Count - 1 ].IdentName, APropertyInfo )) then
        begin
        if( APropertyInfo.HasCustomAttribute( FixedNameAttribute, True )) then
          AIsFixedName := True;

        if( APropertyInfo.AccessAttributes.Get<NameAttribute>( False, ANameAtrribute )) then
          begin
          FShortName := ANameAtrribute.Value;
          AAssigned := True;
          end;
        end;

    end;

  if( not AAssigned ) then
    begin
    FShortName := FName;

    if( FOwnerPinList <> NIL ) then
      begin
      if( FShortName.StartsWith( APinListName ) ) then
        Delete( FShortName, 1, Length( APinListName ) + 1 );

      end

    else
      begin
      APos := LastDelimiter( '.', FShortName );
      if( APos > 0 ) then
        Delete( FShortName, 1, APos );

      end;

    FShortName := MakeShortName( FShortName );
    for var I : Integer := 0 to FShortName.Length - 1 do
      if( not FShortName.Chars[ I ].IsLetterOrDigit ) then
        begin
        AIsFixedName := True;
        Break;
        end;

    if( not AIsFixedName ) then
      for var I : Integer := FShortName.Length - 1 downto 1 do
        if(( FShortName.Chars[ I - 1 ].IsLower ) and ( FShortName.Chars[ I ].IsUpper )) then
          FShortName := FShortName.Insert( I, ' ' );

    end;

  if( APropertyInfo <> NIL ) then
    if( APropertyInfo.AccessAttributes.Get<NamePostfixAttribute>( APostfixAttr )) then
      FShortName := FShortName + ' ' + APostfixAttr.Value;

end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.RemoveNotifyEntry( const AEntry : IOWNotifyPinEntry );
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.AddNotifyEntry( const AEntry : IOWNotifyPinEntry );
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.UnlodedPinRemoved( const APin : TOWBasicPin );
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.SetOwnerPinList( AValue : TOWPinList );
begin
  if( FOwnerPinList = AValue ) then
    Exit;

  FOwnerPinList := AValue;
  InvalidateCaches( NIL );
//  CheckVirtualList();
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.InvalidateCaches( AObject : TObject );
begin
  if( FFullIdentName <> '' ) then
    if( AObject <> NIL ) then
      if( FPropertyElements <> NIL ) then
        if( not FPropertyElements.Query().Contains(
            function( const AItem : IPropertyElement ) : Boolean
            begin
              Result := ( AItem.Persistent = AObject );
            end
          )) then
          Exit;

  FIsRegistered := False;
  FName := '';
  FShortName := '';
  FFullIdentName := '';
  FFullLoadIdentName := '';
  FValidPropertyElements := False;
  FPropertyElements := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.AddPinList( APinList : TOWPinList );
begin
  FPinLists.Add( APinList );
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.RemovePinList( APinList : TOWPinList );
begin
  FPinLists.RemoveOne( APinList );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.MakeShortName( const AName : String ) : String;
begin
  if( FDoNotShortName ) then
    Exit( AName );

  Result := OWMakeShortName( AName );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetName() : String;
begin
  PopulateNameCache();
  Result := FName;
  if( FName <> '' ) then
    begin
    var AOwner := Owner;
    if( AOwner <> NIL ) then
      begin
      var AOwnerName := AOwner.Name;
      if( not GOWNeedsOwnerName ) then
        if( AOwnerName = '' ) then
          Exit;

      Result := AOwnerName + '.' + Result;
      end;

    if( Result.StartsWith( '.' )) then
      Result := '__Unknown__' + Result;

    end;

end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetOnlyName() : String;
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
function TOWBasicPin.GetFullIdentName( AIncludeRootForm : Boolean; ALoadIndexed : Boolean ) : String;
begin
  PopulateNameCache();

//  if( AIncludeRootForm ) then
//    Result := FFullIdentNameIncludeRoot

//  else
  if( ALoadIndexed ) then
    begin
    if( FFullLoadIdentName = '' ) then
      begin
      FValidPropertyElements := False;
      if( FOwnerPinList <> NIL ) then
        FOwnerPinList.InvalidateCaches( NIL );

      FPropertyElements := GetFullIdentsInt();
      FFullLoadIdentName := GetFullIdentNameInt( False, True );
      end;

    Result := FFullLoadIdentName
    end

  else
    Result := FFullIdentName;

  if( AIncludeRootForm ) then
    if( GetRoot() <> Owner ) then
      Result := GetRootName() + '.' + Result;

end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetFullIdents( AIncludeRootForm : Boolean ) : IPropertyElements;
begin
//  Result := GetFullIdentsInt( False );
//  Exit;

  PopulateNameCache();

  if( FPropertyElements = NIL ) then
    Exit( TPropertyElements.Create());

  Result := TPropertyElements.CreateCopy( FPropertyElements );

  if( AIncludeRootForm ) then
    if( GetRoot() <> Owner ) then
      Result.Add( TPropertyElement.Create( GetRoot(), GetRootName() ));
//      Result := GetRootName() + '.' + Result;

end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetPinPropertyName( ASaveName : Boolean ) : String;
begin
  if( ASaveName ) then
    Result := GetFullIdentName( False, False )

  else
    Result := GetFullName( False );

  var APosition := Pos( '.', Result );
  if( APosition <> 0 ) then
    Delete( Result, 1, APosition );

end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetPinName( ASaveName : Boolean ) : String;
begin
  if( ASaveName ) then
    Result := GetFullIdentName( False, False )

  else
    Result := GetFullName( False );

  var APosition := Result.LastDelimiter( '.' );
  if( APosition >= 0 ) then
    Delete( Result, 1, APosition + 1 );

end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetRoot() : TComponent;
begin
  var AOwner := GetOwnerComponent();
  Result := AOwner;
  if( Result <> NIL ) then
    begin
    Result := GetMainOwnerComponent( Result );

    // Do not ignore the Owner to allow live binding to the owner form
//    if( not AIncludeFormPins ) then
//      if( Result = AOwner ) then
//        if( not ( AOwner is TOWFormatConverter )) then
//          Result := NIL;

    end;

end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetConnectedAfterForPin( const AOtherPin : TOWBasicPin ) : TOWBasicPin;
begin
  if( FDispatcher = NIL ) then
    Exit( NIL );

  Result := FDispatcher.GetConnectedAfterForPin( AOtherPin )
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IntGetPNGResImageByName( AHInstance : THandle; const AName : String; out ABitmap : IGPBitmap ) : Boolean;
begin
  Result := IntGetPNGResImageByNameClass( AHInstance, AName, ABitmap );
end;
//---------------------------------------------------------------------------
class function TOWBasicPin.IntGetPNGResImageByNameClass( AHInstance : THandle; const AName : String; out ABitmap : IGPBitmap ) : Boolean;
begin
  Result := GetPNGResImageByName( AHInstance, TypeString( AName ).ToUpperCase(), ABitmap );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetInputOutputImage( out AImage : IGPBitmap; AForInput : Boolean; AForOutput : Boolean ) : Boolean;
begin
  // Try to get connection type image
  if( ConnectedPinCount > 0 ) then
    begin
    if( AForOutput ) then
      if( TRttiInfo.GetInterfaceImage( GetConnectionID( ConnectedPin[ 0 ] ), FImage )) then
        begin
        AImage := FImage;
        Exit( True );
        end;

    if( AForInput ) then
      if( TRttiInfo.GetInterfaceImage( ConnectedPin[ 0 ].GetConnectionID( Self ), FImage )) then
        begin
        AImage := FImage;
        Exit( True );
        end;

    Exit( False );
    end;

  // Try to get the first type image
  if( AForOutput ) then
    if( DataTypesCount > 0 ) then
      if( TRttiInfo.GetInterfaceImage( DataType[ DataTypesCount - 1 ], FImage )) then
        begin
        AImage := FImage;
        Exit( True );
        end;

  // Try to get the first interface type image
  if( AForInput ) then
    begin
    var AClass := ClassType();
    while( AClass <> NIL ) do
      begin
      var AIntfTable := AClass.GetInterfaceTable();
      if( AIntfTable <> NIL ) then
        for var I : Integer := 0 to AIntfTable.EntryCount - 1 do
          if( TRttiInfo.GetInterfaceImage( AIntfTable.Entries[ I ].IID, FImage )) then
            begin
            AImage := FImage;
            Exit( True );
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
  if( IntGetPNGResImageByName( FindClassHInstance( ClassType() ), ClassName(), FImage )) then
    begin
    AImage := FImage;
    Exit( True );
    end;

  var AImageAttribute : ImageAttribute;
  if( TypeInfo().AccessAttributes.Get<ImageAttribute>( AImageAttribute )) then
    if( AImageAttribute.GetImage( FImage )) then
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
function TOWBasicPin.DirectDependsOn( const AOtherPin : TOWBasicPin ) : Boolean;
begin
  Result := DependsOn( AOtherPin );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetConnectionID( const AOtherPin : TOWBasicPin; AReturnConvertedID : Boolean = False ) : TGUID;
begin
  Result := GUID_NULL;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetConnectionID( const ADispatcher : TOWBasicStateDispatcher; AReturnConvertedID : Boolean = False ) : TGUID;
begin
  if( ADispatcher <> NIL ) then
    for var I : Integer := 0 to ADispatcher.PinCount - 1 do
      begin
      var AOtherPin : TOWBasicPin;
      if( AReturnConvertedID ) then
        AOtherPin := ADispatcher.GetConnectionPin( I )

      else
        AOtherPin := ADispatcher[ I ];

      if( AOtherPin <> Self ) then
        if( CanConnectTo( AOtherPin )) then
          Exit( GetConnectionID( AOtherPin, AReturnConvertedID ))

        else if( AOtherPin.CanConnectTo( Self )) then
          Exit( AOtherPin.GetConnectionID( Self, AReturnConvertedID ));

      end;

  Result := GUID_NULL;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsBindingPin() : Boolean;
begin
  Result := False;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsDebugPin() : Boolean;
begin
  if( GUnloading ) then
    Exit( True );

  var ARoot := GetRoot();
  if( ARoot = NIL ) then
    Exit( True );

  if( ARoot.ClassTypeInfo().HasCustomAttribute( OWDebugPinsAttribute )) then
    Exit( True );

  if( IsPreviewPin()) then
    Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsPreviewPin() : Boolean;
begin
  var AComponent := GetOwnerComponent();
  if( AComponent = NIL ) then
    Exit( False );

  if( not( csDesigning in AComponent.ComponentState )) then
    Exit( False );

  var ARoot := GetMainOwnerComponent( AComponent );
  if( ARoot = NIL ) then
    Exit( False );

  if( InheritsFromClassName( ARoot.TypeInfo(), 'TPreviewForm' )) then
    Exit( True );

  if( ARoot.Name = 'Root' ) then
    if( ARoot.ClassName().StartsWith( ARoot.ClassParent().ClassName() + '_' )) then
      Exit( True );

  Exit( False );
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.SerializationRead( const AReader : IReader );
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.SerializationWrite( const AWriter : IWriter; const ASelectedObjects : IObjectArrayList; const AMember : IMemberInfo = NIL );
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.TypeInfoChange( AObject : TObject );
begin
  InvalidateCaches( AObject );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetOwnerPinList() : TOWPinList;
begin
  Result := FOwnerPinList;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetEmbeddedOwner() : TComponent;
begin
  Result := NIL;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetOwnerComponent() : TComponent;
begin
  Result := NIL;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetOwnerProperty() : TPersistent;
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
procedure TOWBasicPin.IntDisconnect( const AOtherPin : TOWBasicPin; ADesignFormClosing : Boolean );
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.IntConnect( const ASinkPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID; AFromOther : Boolean );
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.CheckRemove();
begin
end;
//---------------------------------------------------------------------------
function TOWBasicPin.CanConnectToInt( const AOtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; AUseConverters : Boolean; const ADataType : TGUID ) : Boolean;
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
procedure TOWBasicPin.ApplyFormName( var AIdent : String );
begin
  if( FLoadFormName <> '' ) then
    if( AIdent.StartsWith( FLoadFormName + '.' )) then
      begin
      Delete( AIdent, 1, Length( FLoadFormName ));
      AIdent := GetRootName() + AIdent;
      end;
     
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.SetOwnerComponent( AComponent : TComponent );
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.SetRootAndName( ARoot : TComponent; const AName : String; AInDesignMode : Boolean );
begin
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsLinkedTo( const APinName : String ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( FDispatcher = NIL ) then
    Exit( False );

  for var I : Integer := 0 to FDispatcher.PinCount - 1 do
    if( FDispatcher.Pins[ I ].GetFullName( True ) = APinName ) then
      Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.ConnectToState( ADispatcher : TOWBasicStateDispatcher ) : Boolean;
begin
  Result := ConnectToStateAfter( ADispatcher, NIL );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.ConnectToStateAfter( ADispatcher : TOWBasicStateDispatcher; ANotifyAfterPin : TOWBasicPin ) : Boolean;
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

  ADispatcher.AddPinAfter( Self, Self, ANotifyAfterPin );
  FDispatcher := ADispatcher;
  UpdateStateValue();

  OWNotifyConnected( Self, ADispatcher );
  OWNotifyChangePin( Self, IsDebugPin() );

  Result := True;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.CanConnectToState( const ADispatcher : TOWBasicStateDispatcher ) : Boolean;
var
  AConverter      : IOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;

begin
  Result := CanConnectToStateInt( ADispatcher, AConverter, AConverterClass, True, GUID_NULL );
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.IntStateDisconnect();
begin
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetEditorString() : String;
begin
  if( FDispatcher = NIL ) then
    Exit( GOWDISCONNECTED );

  if( FDispatcher.PinCount = 2 ) then
    begin
    var AFirstPin := FDispatcher.Pins[ 0 ];
    if( AFirstPin.GetFullIdentName( True, False ) = GetSaveName() ) then
      Exit( FDispatcher.Pins[ 1 ].GetFullName( True ));

    Exit( AFirstPin.GetFullName( True ));
    end;

  Result := FDispatcher.Name;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.SetEditorString( ARoot : TComponent; const AValue : String ) : Boolean;
begin
  Result := False;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetStreamInterfaces() : IArrayList<TGUID>;
begin
  if( FStreamInterfaces = NIL ) then
    begin
    if( GIOWStream = NIL ) then
      GIOWStream := TRttiInfo.GetInterfaceTypes( IOWStream )[ 0 ];

    FStreamInterfaces := TArrayList<TGUID>.Create();
    var AIntfTable := ClassType().GetInterfaceTable();
    if( AIntfTable <> NIL ) then
      for var I : Integer := 0 to AIntfTable.EntryCount - 1 do
        begin
        var AGUID := AIntfTable.Entries[ I ].IID;
        var AList := TRttiInfo.GetInterfaceTypes( AGUID );
        if( AList.Count > 0 ) then
          if( AList[ 0 ].InheritsFrom( GIOWStream, False )) then
            FStreamInterfaces.Add( AGUID );

        end;

    end;

  Result := FStreamInterfaces;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetStreamDataList() : IArrayList<TDataStreamInfo>;
begin
  Result := TArrayList<TDataStreamInfo>.Create();

  var AIntfTable := ClassType().GetInterfaceTable();
  if( AIntfTable <> NIL ) then
    begin
    if( GIOWStream = NIL ) then
      GIOWStream := TRttiInfo.GetInterfaceTypes( IOWStream )[ 0 ];

    for var I : Integer := 0 to AIntfTable.EntryCount - 1 do
      begin
      var AGUID := AIntfTable.Entries[ I ].IID;
      var AList := TRttiInfo.GetInterfaceTypes( AGUID );
      if( AList.Count > 0 ) then
        if( AList[ 0 ].InheritsFrom( GIOWStream, False )) then
          Result.Add( TDataStreamInfo.Create( AGUID, True, False ) );

      end;
    end;

  var AUpstreamOnly : IArrayList<TDataStreamInfo> := TArrayList<TDataStreamInfo>.Create();
  for var I : Integer := 0 to DataTypesCount - 1 do
    begin
    var ADownstreamID := DataType[ I ];
    var AFound := False;
    for var J : Integer := 0 to Result.Count - 1 do
      begin
      var AEntry := Result[ J ];
      if( IsEqualGUID( AEntry.ID, ADownstreamID )) then
        begin
        AEntry.Sends := True;
        Result[ J ] := AEntry;
        AFound := True;
        Break;
        end;
      end;

    if( not AFound ) then
      AUpstreamOnly.Add( TDataStreamInfo.Create( ADownstreamID, False, True ) );

    end;

  Result.Append( AUpstreamOnly );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.CanConnectToStateInt( const ADispatcher : TOWBasicStateDispatcher; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; AUseConverters : Boolean; const ADataType : TGUID ) : Boolean;
var
  AReadLock : ILockSection;

begin
  if( ADispatcher = NIL ) then
    Exit( False );

  AReadLock := ReadLock();
  if( ADispatcher = FDispatcher ) then
    Exit( True );

  for var I : Integer := 0 to ADispatcher.PinCount - 1 do
    if( not CanConnectToInt( ADispatcher[ I ], AConverter, AConverterClass, AUseConverters, ADataType )) then
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
function TOWBasicPin.CanConnectByType( const AType : TGUID; AUseConverters : Boolean = True ) : Boolean;
begin
  Result := True;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.CanConnectTo( const AOtherPin : TOWBasicPin; AUseConverters : Boolean = True ) : Boolean;
var
  AConverter      : IOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  
begin
  Result := CanConnectToInt( AOtherPin, AConverter, AConverterClass, AUseConverters, GUID_NULL );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsConnectedByIDs( const AIDs : TArray<TGUID> ) : Boolean;
begin
  for var I : Integer := 0 to ConnectedPinCount - 1 do
    begin
    var AConnectID := GetConnectionID( ConnectedPin[ I ] );
    for var AID in AIDs do
      if( AID = AConnectID ) then
        Exit( True );

    end;

  Exit( False );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsConnectedByIDs( const AIDs : ISet<TGUID> ) : Boolean;
begin
  for var I : Integer := 0 to ConnectedPinCount - 1 do
    if( AIDs.Contains( GetConnectionID( ConnectedPin[ I ] ) )) then
      Exit( True );

  Exit( False );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsStateConnected() : Boolean;
begin
  Result := ( FDispatcher <> NIL );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsConnectedTo( const AOtherPin : TOWBasicPin ) : Boolean;
begin
  Result := IsConnectedByStateTo( AOtherPin );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsConnectedAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin ) : Boolean;
begin
  Result := IsConnectedByStateAfter( AOtherPin, ANotifyAfterPin );
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
function TOWBasicPin.IsConnectedByStateTo( const AOtherPin : TOWBasicPin ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( FDispatcher <> NIL ) then
    for var I : Integer := 0 to FDispatcher.GetPinCount() - 1 do
      if( FDispatcher.Pins[ I ] = AOtherPin ) then
        Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsConnectedByStateAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( FDispatcher <> NIL ) then
    for var I : Integer := 0 to FDispatcher.PinCount - 1 do
      if( ( FDispatcher.Pins[ I ] = AOtherPin ) and ( FDispatcher.AfterPins[ I ] = ANotifyAfterPin ) ) then
        Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.IsConnectedByConverterTo( const AOtherPin : TOWBasicPin ) : Boolean;
begin
  Result := False;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetConnectionConverter( const AOtherPin : TOWBasicPin; out AConverter : IOWFormatConverter ) : Boolean;
begin
  AConverter := NIL;
  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.SetInEditor( AValue : Boolean );
begin
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetConnectedPinCount() : Integer;
begin
  Result := 0;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetConnectedPin( AIndex : Integer ) : TOWBasicPin;
begin
  Result := NIL;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetConnectedAfterPin( AIndex : Integer ) : TOWBasicPin;
begin
  Result := GetConnectedAfterForPin( GetConnectedPin( AIndex ));
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetDispatcherCount() : Integer;
begin
  if( FDispatcher <> NIL ) then 
    Exit( 1 );

  Result := 0;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetDispatcher( AIndex : Integer ) : TOWBasicStateDispatcher;
begin
  Result := FDispatcher;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetDataTypesCount() : Integer;
begin
  Result := 0;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.GetDataType( AIndex : Integer ) : TGUID;
begin
  Result := GUID_NULL;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.ConnectByState( const AOtherPin : TOWBasicPin ) : Boolean;
begin
  Result := ConnectByStateAfter( AOtherPin, NIL );
end;
//---------------------------------------------------------------------------
function  TOWBasicPin.ConnectByStateByType( const AOtherPin : TOWBasicPin; const ADataType : TGUID ) : Boolean;
begin
  Result := ConnectByStateAfterByType( AOtherPin, NIL, ADataType );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.Connect( const AOtherPin : TOWBasicPin ) : Boolean;
begin
  Result := ConnectAfter( AOtherPin, NIL );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.ConnectByType( const AOtherPin : TOWBasicPin; const ADataType : TGUID ) : Boolean;
begin
  Result := ConnectAfterByType( AOtherPin, NIL, ADataType );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.ConnectAfterByType( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID ) : Boolean;
begin
  if( AOtherPin = Self ) then
    Exit( False );

  if( PreviewConnected( Self, AOtherPin )) then
    Exit( False );

  Result := ConnectByStateAfterByType( AOtherPin, ANotifyAfterPin, ADataType );
  FImageCached := False;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.ConnectAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin ) : Boolean;
begin
  if( AOtherPin = Self ) then
    Exit( False );

  if( PreviewConnected( Self, AOtherPin )) then
    Exit( False );

  Result := ConnectByStateAfter( AOtherPin, ANotifyAfterPin );
  FImageCached := False;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.CanConnectAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; AUseConverters : Boolean ) : Boolean;
begin
  if( ANotifyAfterPin = NIL ) then
    Exit( CanConnectTo( AOtherPin, AUseConverters ) );

  if( FDispatcher <> NIL ) then
    Exit( FDispatcher.CanConnectAfter( AOtherPin, ANotifyAfterPin, AUseConverters ));

  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.Disconnect();
var
  AWriteLock    : ILockSection;
  ADestroyLock  : IOWDestroyLockSection;

begin
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();

  FImageCached := False;
  var AWasConnected := ( FDispatcher <> NIL );
  if( AWasConnected ) then
    begin
    OWNotifyDisconnectingPin( Self, False );
    OWNotifyDisconnecting( Self, FDispatcher, False );
    end;

  try
    if( FDispatcher <> NIL ) then
      begin
      for var I : Integer := FDispatcher.PinCount - 1 downto 0 do
        if( FDispatcher[ I ] <> Self ) then
          begin
          BeforeDisconnectFrom( FDispatcher[ I ] );
          FDispatcher[ I ].BeforeDisconnectFrom( Self );
          end;

      FDispatcher.RemovePin( Self );
      end;

    if( FConverterDispatcher <> NIL ) then
      begin
      for var I : Integer := FConverterDispatcher.PinCount - 1 downto 0 do
        begin
        var APin := FConverterDispatcher[ I ];
        if( APin <> Self ) then
          begin
          BeforeDisconnectFrom( APin );
          APin.BeforeDisconnectFrom( Self );
          end;
        end;

      FConverterDispatcher.RemovePin( Self );
      end;

    FDispatcher := NIL;
    FConverterDispatcher := NIL;
  finally
    AWriteLock := NIL;

    if( AWasConnected ) then
      begin
      OWNotifyDisconnected( Self, False );
      OWNotifyDisconnectedPin( Self, False );
      OWNotifyChangePin( Self, IsDebugPin() );
      end;
    end;

end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.DisconnectFrom( const AOtherPin : TOWBasicPin );
var
  AWriteLock    : ILockSection;
  ADestroyLock  : IOWDestroyLockSection;

begin
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();

  OWNotifyDisconnecting( Self, FDispatcher, False );

  if( FConverterDispatcher <> NIL ) then
    FConverterDispatcher.RemovePin( AOtherPin );

  if( FDispatcher <> NIL ) then
    FDispatcher.RemovePin( AOtherPin );

  FConverterDispatcher := NIL;

  OWNotifyDisconnected( Self, False );

  AWriteLock := NIL;

  var AIsDebugConnection := IsDebugPin();
  if( not AIsDebugConnection ) then
    if( AOtherPin <> NIL ) then
      AIsDebugConnection := AOtherPin.IsDebugPin();

  OWNotifyChangePin( Self, AIsDebugConnection );
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

  if( FConverterDispatcher <> NIL ) then
    FConverterDispatcher.RemovePin( Self );

  FDispatcher.RemovePin( Self );
  FDispatcher := NIL;
  FConverterDispatcher := NIL;

  OWNotifyDisconnected( Self, False );

  AWriteLock := NIL;

  OWNotifyChangePin( Self, IsDebugPin() );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.NotifyPin( const APin : TOWBasicPin; const AOperation : IOWNotifyOperation ) : TOWNotifyResult;
begin
  Result := [];
end;
//---------------------------------------------------------------------------
function TOWBasicPin.Notify( const AOperation : IOWNotifyOperation ) : TOWNotifyResult;
begin
  Result := [];
end;
//---------------------------------------------------------------------------
function TOWBasicPin.DoStateWrite() : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

//  Result := ( FDispatcher <> NIL ) and ( not DoStateConverterWrite());
  Result := ( FDispatcher <> NIL );
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
function TOWBasicPin.CheckVirtualList( AForceCheck : Boolean ) : Boolean;
begin
  Result := True;
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.ReadConnectionsData( AReader : TReader );
begin
  ReadConnectionsDataInternal( AReader, False );
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.ReadConnectionsDataInternal( AReader : TReader; ASkipConnections : Boolean );
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.LinkToStateByName( const AIdentName : String );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if( IsPreviewPin() ) then
    Exit;

  var ADispatcher := TOWStateDispatcher.GetByNameCreate( Self, AIdentName, OwnerInDesigning( True ) );
  ConnectToState( ADispatcher );
//  FDispatcher.AddPin( Self, Self );
//  OWNotifyConnected( Self, FDispatcher );
//  UpdateStateValue();
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.ReadFormName( AReader : TReader );
begin
  FLoadFormName := AReader.ReadIdent();
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.WriteFormName( AWriter : TWriter );
begin
  AWriter.WriteIdent( GetRootName() );
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.ReadStateConnectionsData( AReader : TReader );
begin
  ReadStateConnectionsDataInternal( AReader, False );
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.ReadStateConnectionsDataInternal( AReader : TReader; ASkipConnections : Boolean );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  CheckVirtualList( False );

  if( AReader.NextValue() = vaList ) then
    begin
    AReader.ReadListBegin();
    var AReadName := AReader.ReadString();
    if( not ASkipConnections ) then
      LinkToStateByName( AReadName );

    while( not AReader.EndOfList ) do
      begin
      var AAfterReadIdent := '';
      var AAfterReadName := '';
//      AReadName := '';
      if( AReader.NextValue() = vaList ) then
        begin
        AReader.ReadListBegin();
//        var AReadIdent := AReader.ReadIdent();
        AReader.ReadIdent();
        if( AReader.NextValue() = vaIdent ) then
          AAfterReadIdent := AReader.ReadIdent();

        if( GOWIsStringValueType( AReader.NextValue() ) ) then
//          AReadName := AReader.ReadString();
          AReader.ReadString();

        if( GOWIsStringValueType( AReader.NextValue() ) ) then
//          AAfterReadName := AReader.ReadString();
          AReader.ReadString();

        AReader.ReadListEnd();
        end

      else
        AReadName := AReader.ReadIdent();
        
      end;
      
    AReader.ReadListEnd();
    end

  else
    begin
    var AReadName := AReader.ReadString();
    if( not ASkipConnections ) then
      LinkToStateByName( AReadName );

    end;

  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.WriteStateConnectionsData( AWriter : TWriter );
var
  AExternalLink : Boolean;
  AReadLock     : ILockSection;

begin
  AReadLock := ReadLock();

  if( FDispatcher = NIL ) then
    Exit;

  var AIsSaved := False;
  var AThePinOwner := GetRoot();
  if( TOWStateDispatcher( FDispatcher ).FCountSaved = 0 ) then
    TOWStateDispatcher( FDispatcher ).ResetFormsSave(); // It's the first pin to save.

  if( ( AThePinOwner = NIL ) or ( not TOWStateDispatcher( FDispatcher ).IsFormSaved( AThePinOwner ))) then
    if( TOWStateDispatcher( FDispatcher ).IsCrosForm()) then
      begin
      AWriter.WriteListBegin();
      AWriter.WriteString( FDispatcher.Name );
      AIsSaved := True;
      var APinRootName := GetRootName();
      for var I : Integer := 0 to FDispatcher.PinCount - 1 do
        begin
        var APin := FDispatcher.Pins[ I ];
        if( APin = NIL ) then
          AExternalLink := True

        else if( APinRootName <> APin.GetRootName() ) then
          AExternalLink := True

        else
          AExternalLink := False;

        if( AExternalLink ) then
          begin
          var AIdent := APin.GetFullIdentName( True, False );
          if( AIdent = APin.GetFullName( True ) ) then
            AWriter.WriteIdent( AIdent )

          else
            begin
            var AIdentName := APin.GetFullName( True );
            AWriter.WriteListBegin();
            AWriter.WriteIdent( AIdent );
            AWriter.WriteString( AIdentName );
            AWriter.WriteListEnd();
            end;

          end;
        end;

      AWriter.WriteListEnd();
      end;

//  if( FDispatcher[ FDispatcher.PinCount - 1 ] = Self ) then
  if( TOWStateDispatcher( FDispatcher ).FCountSaved = FDispatcher.PinCount ) then
    TOWStateDispatcher( FDispatcher ).ResetFormsSave() // It's the last pin. We are done with saving.

  else
    TOWStateDispatcher( FDispatcher ).AddFormSaved( AThePinOwner );

  if( not AIsSaved ) then
    AWriter.WriteString( FDispatcher.Name );

end;
//---------------------------------------------------------------------------
function TOWBasicPin.WriteNoStateListEntry( AWriter : TWriter ) : Boolean;
begin
  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.ReadNoStateListEntry( AReader : TReader; const AIdent : String; ASkipConnections : Boolean );
begin
end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.WriteListEntry( AWriter : TWriter );
begin
  if( DoStateWrite() ) then
    begin
    // Write all the pin connections under the State indicator !
    AWriter.WriteIdent( 'State' );
    AWriter.WriteListBegin();
    WriteStateConnectionsData( AWriter );
    WriteNoStateListEntry( AWriter );
    AWriter.WriteListEnd();
    end

  else if( not WriteNoStateListEntry( AWriter ) ) then
    AWriter.WriteIdent( 'nil' );

end;
//---------------------------------------------------------------------------
procedure TOWBasicPin.ReadListEntry( AReader : TReader; ASkipConnections : Boolean );
begin
  var AOldIgnoreDesignMode := GIgnoreDesignMode;
  GIgnoreDesignMode := True;
  if( AReader.NextValue() = vaList ) then
    ReadNoStateListEntry( AReader, '', ASkipConnections )

  else if( not ( AReader.NextValue() in [ vaIdent, vaNil ] )) then
    ReadNoStateListEntry( AReader, '', ASkipConnections )

  else
    begin
    var AIdent := AReader.ReadIdent();
    if( AIdent = 'nil' ) then
      begin
      GIgnoreDesignMode := AOldIgnoreDesignMode;
      Exit;
      end;

    if( AIdent = 'State' ) then
      begin
      AReader.ReadListBegin();
      ReadStateConnectionsDataInternal( AReader, ASkipConnections );
      if( AReader.NextValue() = vaList ) then
        ReadNoStateListEntry( AReader, '', ASkipConnections )

      else if( AReader.NextValue() = vaIdent ) then
        begin
        AIdent := AReader.ReadIdent();
        ReadNoStateListEntry( AReader, AIdent, ASkipConnections );
        end;

      AReader.ReadListEnd();
      end

    else
      ReadNoStateListEntry( AReader, AIdent, ASkipConnections );

    end;

  GIgnoreDesignMode := AOldIgnoreDesignMode;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.ConnectByStateAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin ) : Boolean;
begin
  if( PreviewConnected( Self, AOtherPin )) then
    Exit( False );

  Result := ConnectByStateAfterByType( AOtherPin, ANotifyAfterPin, GUID_NULL );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.ConnectByStateAfterByType( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID ) : Boolean;
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

  var AIsDebugConnection := IsDebugPin();
  if( not AIsDebugConnection ) then
    if( AOtherPin <> NIL ) then
      AIsDebugConnection := AOtherPin.IsDebugPin();

  if( IsConnectedTo( AOtherPin )) then
    begin
    if( not OwnerInLoading() ) then
      Exit;

    if( not CanConnectToInt( AOtherPin, AConverter, AConverterClass, True, ADataType )) then
      Exit;

    if( csLoading in GetOwnerComponent().ComponentState ) then
      Exit;

    if( AOtherPin is TOWStatePin ) then
      DisconnectFromState();

    end;

  if( not CanConnectToInt( AOtherPin, AConverter, AConverterClass, True, ADataType ) ) then // ???????
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
        
      AConverter.GetInstance().FOutputPin.ConnectAfter( AOtherPin, ANotifyAfterPin );
      AConverter.GetInstance().FInputPin.FDispatcher := FDispatcher;
      FDispatcher.AddPin( AConverter.GetInstance().FInputPin, AOtherPin );
//      PEntry.ConnectionPin := AConverter.FInputPin;
      AConverter.GetInstance().FInputPin.FConnectionSourcePin := Self; // AConverter.FOutputPin;
      TOWSinkPin( AOtherPin ).FRealSourcePin := Self;
      TOWSinkPin( AOtherPin ).FIntRealSourcePin := Self;
//      TOWSinkPin( AConverter.FInputPin ).FConnectionSourcePin := AConverter.FOutputPin;
      AOtherPin.FDispatcher := FDispatcher;
      OWNotifyConnected( AOtherPin, FDispatcher );
      OWNotifyChangePin( AOtherPin, AIsDebugConnection );
      Result := True;
      end
      
    else
      Result := AOtherPin.ConnectToState( FDispatcher );
      
    UpdateStateValue();
    OWNotifyChangePin( Self, AIsDebugConnection );
    end

  else if( AOtherPin.FDispatcher <> NIL ) then
    begin
    Result := ConnectToState( AOtherPin.FDispatcher );
    UpdateStateValue();
    OWNotifyChangePin( Self, AIsDebugConnection );
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

    if( AConverter = NIL ) then
      if( GetOwnerComponent() is TOWFormatConverter ) then
        AConverter := GetOwnerComponent() as IOWFormatConverter;

    if( AConverter <> NIL ) then
      begin
      AConverter.GetInstance().FOutputPin.ConnectAfterByType( AOtherPin, ANotifyAfterPin, ADataType );
      AConverter.GetInstance().FInputPin.FDispatcher := FDispatcher;
      FDispatcher.AddPin( AConverter.GetInstance().FInputPin, AOtherPin );
//      PEntry.ConnectionPin := AConverter.FInputPin;
      AConverter.GetInstance().FInputPin.FConnectionSourcePin := Self; // AConverter.FOutputPin;
      TOWSinkPin( AOtherPin ).FRealSourcePin := Self;
      TOWSinkPin( AOtherPin ).FIntRealSourcePin := Self;
//      TOWSinkPin( AConverter.FInputPin ).FConnectionSourcePin := AConverter.FOutputPin;
      if( AOtherPin is TOWSinkPin ) then
        TOWSinkPin( AOtherPin ).FConnectionSourcePin := AConverter.GetInstance().FOutputPin;

      AOtherPin.FConverterDispatcher := AOtherPin.FDispatcher;
      AOtherPin.FDispatcher := FDispatcher;
      end

    else
      begin
      AOtherPin.FDispatcher := FDispatcher;
      FDispatcher.AddPin( AOtherPin, AOtherPin );
      end;

//    OWNotifyAddDispatcher( FDispatcher );
    UpdateStateValue();
    OWNotifyConnected( AOtherPin, FDispatcher );
    OWNotifyConnected( Self, FDispatcher );
    OWNotifyChangePin( AOtherPin, AIsDebugConnection );
    OWNotifyChangePin( Self, IsDebugPin() or AOtherPin.IsDebugPin() );
    Result := True;
    end;

  FImageCached := False;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.CreateDispatcher( AOwner : TComponent; AFromConverter : Boolean ) : TOWStateDispatcher;
begin
  Result := TOWStateDispatcher.Create( AOwner, AFromConverter );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.CreateNamedDispatcher( const AName : String; ADesignTime : Boolean; AFromConverter : Boolean ) : TOWStateDispatcher;
begin
  Result := TOWStateDispatcher.CreateNamed( AName, ADesignTime, AFromConverter );
end;
//---------------------------------------------------------------------------
function TOWBasicPin.OwnerInDesigning( ACheckForDispatchers : Boolean ) : Boolean;
begin
  Result := FInDesignMode;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.FindConnectionID( const AOtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; AUseConverters : Boolean; const ADataType : TGUID ) : TGUID;
begin
  Result := GUID_NULL;
end;
//---------------------------------------------------------------------------
function TOWBasicPin.NotifyDispatcher( const AOperation : IOWNotifyOperation; AState : TOWNotifyState; const APinToNotify : TOWBasicPin ) : TOWNotifyResult;
begin
  Result := [];
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWPin.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock );
var
  AWriteLock : ILockSection;

begin
  inherited Create( AOnCreated, AOwnerLock );

  FCustomNotifications := TypeInfo().AccessAttributes.GetAll<TOWCustomNotificationAttribute>().ToArray();

  AWriteLock := WriteLock();

  GPinsNeedRefresh := True;
  FInSending := 0;
//  GetRootName();
  PopulateTypes( OWDataTypeAttribute, NotificationCall, False );
end;
//---------------------------------------------------------------------------
class function TOWPin.PinNullSetter<T>( var APin : T ) : TProc<TOWPin>;
var
  APtr : ^T;

begin
  Assert( APin = NIL );
  APtr := @APin;
  Result :=
    procedure( AInstance : TOWPin )
    begin
      APtr^ := T( AInstance );
    end;

end;
//---------------------------------------------------------------------------
class function TOWPin.PinOwnerSetter<T>( var APin : T; AOwner : TComponent; AOwnerProperty : TPersistent ) : TProc<TOWPin>;
var
  APtr : ^T;

begin
  Assert( APin = NIL );
  APtr := @APin;
  Result :=
    procedure( AInstance : TOWPin )
    begin
      AInstance.FOwner := TClassManagement.GetRealComponent( AOwner );
      AInstance.FOwnerProperty := AOwnerProperty;
      APtr^ := T( AInstance );
    end;

end;
//---------------------------------------------------------------------------
class function TOWPin.PinOwnerSetter( AOwner : TComponent; AOwnerProperty : TPersistent ) : TProc<TOWPin>;
begin
  Result :=
    procedure( AInstance : TOWPin )
    begin
      AInstance.FOwner := TClassManagement.GetRealComponent( AOwner );
      AInstance.FOwnerProperty := AOwnerProperty;
    end;

end;
//---------------------------------------------------------------------------
class function TOWPin.PinBindingOwnerSetter<T>( var APin : T; AOwner : TComponent; AOwnerProperty : TPersistent ) : TProc<TOWPin>;
var
  APtr : ^T;

begin
  Assert( APin = NIL );
  APtr := @APin;
  Result :=
    procedure( AInstance : TOWPin )
    begin
      AInstance.FOwner := TClassManagement.GetRealComponent( AOwner );
      AInstance.FOwnerProperty := AOwnerProperty;
      AInstance.FIsBinding := True;
      APtr^ := T( AInstance );
    end;

end;
//---------------------------------------------------------------------------
class function TOWPin.PinBindingOwnerSetter( AOwner : TComponent; AOwnerProperty : TPersistent ) : TProc<TOWPin>;
begin
  Result :=
    procedure( AInstance : TOWPin )
    begin
      AInstance.FOwner := TClassManagement.GetRealComponent( AOwner );
      AInstance.FOwnerProperty := AOwnerProperty;
      AInstance.FIsBinding := True;
    end;

end;
//---------------------------------------------------------------------------
class function TOWPin.PinPathSetter<T>( var APin : T; const APath : IPropertyElements; const APinName : String ) : TProc<TOWPin>;
var
  APtr : ^T;

begin
  Assert( APin = NIL );
  APtr := @APin;
  Result :=
    procedure( AInstance : TOWPin )
    begin
      AInstance.FPropertyElements := APath;
      AInstance.FPropertyElements.Add( TPropertyElement.Create( AInstance, APinName ));
      AInstance.FValidPropertyElements := True;

      AInstance.FPropertyElements := AInstance.GetFullIdentsInt();
      AInstance.FFullIdentName := AInstance.GetFullIdentNameInt( False, False );
      AInstance.FFullLoadIdentName := AInstance.GetFullIdentNameInt( False, True );
      AInstance.FName := AInstance.GetNameInt();

      var APathCount := APath.Count;
      if( APathCount > 0 ) then
        begin
        if( APath[ 0 ].Persistent is TComponent ) then
          AInstance.FOwner := TClassManagement.GetRealComponent( TComponent( APath[ 0 ].Persistent ));

        if( APathCount > 1 ) then
          AInstance.FOwnerProperty := APath[ APathCount - 2 ].Persistent

        else
          AInstance.FOwnerProperty := AInstance.FOwner;

        end;

      APtr^ := T( AInstance );
    end;

end;
//---------------------------------------------------------------------------
class function TOWPin.PinPathSetter( const APath : IPropertyElements; const APinName : String ) : TProc<TOWPin>;
begin
  Result :=
    procedure( AInstance : TOWPin )
    begin
      AInstance.FPropertyElements := APath;
      AInstance.FPropertyElements.Add( TPropertyElement.Create( AInstance, APinName ));
      AInstance.FValidPropertyElements := True;

      AInstance.FPropertyElements := AInstance.GetFullIdentsInt();
      AInstance.FFullIdentName := AInstance.GetFullIdentNameInt( False, False );
      AInstance.FFullLoadIdentName := AInstance.GetFullIdentNameInt( False, True );
      AInstance.FName := AInstance.GetNameInt();

      var APathCount := APath.Count;
      if( APathCount > 0 ) then
        begin
        if( APath[ 0 ].Persistent is TComponent ) then
          AInstance.FOwner := TClassManagement.GetRealComponent( TComponent( APath[ 0 ].Persistent ));

        if( APathCount > 1 ) then
          AInstance.FOwnerProperty := APath[ APathCount - 2 ].Persistent

        else
          AInstance.FOwnerProperty := AInstance.FOwner;

        end;

    end;

end;
//---------------------------------------------------------------------------
class function TOWPin.PinListAddSetter( APinList : TOWPinList ) : TProc<TOWPin>;
begin
  Result :=
    procedure( AInstance : TOWPin )
    begin
      if( APinList <> NIL ) then
        begin
        AInstance.FOwner := APinList.Owner;
        AInstance.FOwnerProperty := APinList;
        APinList.Add( AInstance );
        end;

//      AInstance.FOwnerProperty := APinList;
//      AInstance.FOwnerPinList := APinList;
    end;

end;
//---------------------------------------------------------------------------
class function TOWPin.PinListAddSetter<T>( var APin : T; APinList : TOWPinList ) : TProc<TOWPin>;
var
  APtr : ^T;

begin
  Assert( APin = NIL );
  APtr := @APin;
  Result :=
    procedure( AInstance : TOWPin )
    begin
      APtr^ := T( AInstance );
      if( APinList <> NIL ) then
        begin
        AInstance.FOwner := APinList.Owner;
        AInstance.FOwnerProperty := APinList;
        APinList.Add( AInstance );
        end;

    end;

end;
//---------------------------------------------------------------------------
class function TOWPin.PinListInsertSetter( APinList : TOWPinList; AIndex : Integer ) : TProc<TOWPin>;
begin
  Result :=
    procedure( AInstance : TOWPin )
    begin
      if( APinList <> NIL ) then
        begin
        AInstance.FOwner := APinList.Owner;
        AInstance.FOwnerProperty := APinList;
        APinList.Insert( AIndex, AInstance );
        end;

//      AInstance.FOwnerProperty := APinList;
//      AInstance.FOwnerPinList := APinList;
    end;

end;
//---------------------------------------------------------------------------
class function TOWPin.PinListInsertSetter<T>( var APin : T; APinList : TOWPinList; AIndex : Integer ) : TProc<TOWPin>;
var
  APtr : ^T;

begin
  Assert( APin = NIL );
  APtr := @APin;
  Result :=
    procedure( AInstance : TOWPin )
    begin
      APtr^ := T( AInstance );
      if( APinList <> NIL ) then
        begin
        AInstance.FOwner := APinList.Owner;
        AInstance.FOwnerProperty := APinList;
        APinList.Insert( AIndex, AInstance );
        end;

    end;

end;
//---------------------------------------------------------------------------
class function TOWPin.PinListAddNamedSetter( APinList : TOWPinList; const APinName : String ) : TProc<TOWPin>;
begin
  Result :=
    procedure( AInstance : TOWPin )
    begin
      if( APinList <> NIL ) then
        begin
        AInstance.FOwner := APinList.Owner;
        AInstance.FOwnerProperty := APinList;
        APinList.AddNamed( AInstance, APinName );
        end;

    end;

end;
//---------------------------------------------------------------------------
class function TOWPin.PinListAddNamedSetter<T>( var APin : T; APinList : TOWPinList; const APinName : String ) : TProc<TOWPin>;
var
  APtr : ^T;

begin
  Assert( APin = NIL );
  APtr := @APin;
  Result :=
    procedure( AInstance : TOWPin )
    begin
      APtr^ := T( AInstance );
      if( APinList <> NIL ) then
        begin
        AInstance.FOwner := APinList.Owner;
        AInstance.FOwnerProperty := APinList;
        APinList.AddNamed( AInstance, APinName );
        end;

    end;

end;
//---------------------------------------------------------------------------
class function TOWPin.PinListInsertNamedSetter( APinList : TOWPinList; AIndex : Integer; const APinName : String ) : TProc<TOWPin>;
begin
  Result :=
    procedure( AInstance : TOWPin )
    begin
      if( APinList <> NIL ) then
        begin
        AInstance.FOwner := APinList.Owner;
        AInstance.FOwnerProperty := APinList;
        APinList.InsertNamed( AIndex, AInstance, APinName );
        end;

    end;

end;
//---------------------------------------------------------------------------
class function TOWPin.PinListInsertNamedSetter<T>( var APin : T; APinList : TOWPinList; AIndex : Integer; const APinName : String ) : TProc<TOWPin>;
var
  APtr : ^T;

begin
  Assert( APin = NIL );
  APtr := @APin;
  Result :=
    procedure( AInstance : TOWPin )
    begin
      APtr^ := T( AInstance );
      if( APinList <> NIL ) then
        begin
        AInstance.FOwner := APinList.Owner;
        AInstance.FOwnerProperty := APinList;
        APinList.InsertNamed( AIndex, AInstance, APinName );
        end;

    end;

end;
//---------------------------------------------------------------------------
class function TOWPin.PinCustomOwnerSetter( const AProc : TProc<TOWPin>; AOwner : TComponent; AOwnerProperty : TPersistent ) : TProc<TOWPin>;
begin
  Result :=
    procedure( AInstance : TOWPin )
    begin
      AInstance.FOwner := TClassManagement.GetRealComponent( AOwner );
      AInstance.FOwnerProperty := AOwnerProperty;
      if( Assigned( AProc )) then
        AProc( AInstance );

    end;

end;
//---------------------------------------------------------------------------
class function TOWPin.PinCustomOwnerOverrideNameSetter( const AProc : TProc<TOWPin>; AOwner : TComponent; AOwnerProperty : TPersistent; const AOverrideName : String ) : TProc<TOWPin>;
begin
  Result :=
    procedure( AInstance : TOWPin )
    begin
      AInstance.FOwner := TClassManagement.GetRealComponent( AOwner );
      AInstance.FOwnerProperty := AOwnerProperty;
      AInstance.FOverrideName := AOverrideName;
      AInstance.FDoNotShortName := True;
      if( Assigned( AProc )) then
        AProc( AInstance );

    end;

end;
//---------------------------------------------------------------------------
class function TOWPin.PinCustomPathSetter( const AProc : TProc<TOWPin>; const APath : IPropertyElements; const APinName : String ) : TProc<TOWPin>;
begin
  Result :=
    procedure( AInstance : TOWPin )
    begin
      AInstance.FPropertyElements := APath;
      AInstance.FPropertyElements.Add( TPropertyElement.Create( AInstance, APinName ));
      AInstance.FValidPropertyElements := True;

      AInstance.FPropertyElements := AInstance.GetFullIdentsInt();
      AInstance.FFullIdentName := AInstance.GetFullIdentNameInt( False, False );
      AInstance.FFullLoadIdentName := AInstance.GetFullIdentNameInt( False, True );
      AInstance.FName := AInstance.GetNameInt();

      var APathCount := APath.Count;
      if( APathCount > 0 ) then
        begin
        if( APath[ 0 ].Persistent is TComponent ) then
          AInstance.FOwner := TClassManagement.GetRealComponent( TComponent( APath[ 0 ].Persistent ));

        if( APathCount > 1 ) then
          AInstance.FOwnerProperty := APath[ APathCount - 2 ].Persistent

        else
          AInstance.FOwnerProperty := AInstance.FOwner;

        end;

      if( Assigned( AProc )) then
        AProc( AInstance );

    end;

end;
//---------------------------------------------------------------------------
{
class function TOWPin.SetPin<T>( var APin : T ) : TProc<TOWBasicPin>;
var
  APtr : ^T;

begin
  APtr := @APin;
  Result :=
    procedure( AInstance : TOWBasicPin )
    begin
      APtr^ := T( AInstance );
    end;

end;
}
//---------------------------------------------------------------------------
procedure TOWPin.AfterConstruction();
begin
  inherited;
  TInterface.IfSupports<IOWComponentPinNotify>( FOwner,
      procedure( const AIntf : IOWComponentPinNotify )
      begin
        AIntf.PinAdded( Self );
      end
    );

end;
//---------------------------------------------------------------------------
procedure TOWPin.BeforeDestruction();
begin
  TInterface.IfSupports<IOWComponentPinNotify>( FOwner,
      procedure( const AIntf : IOWComponentPinNotify )
      begin
        AIntf.PinRemoved( Self );
      end
    );

  OWRemovePinFromDictionaries( Self );
  inherited;
end;
//---------------------------------------------------------------------------
procedure TOWPin.PopulateTypes( AAttributeClass : TOWBasicDataTypeAttributeClass; ASubmit : TOWSubmit; AOverrride : Boolean );
begin
  for var AAttribute in ClassType().ClassTypeInfo().AccessAttributes.GetAll<TOWBasicDataTypeAttribute>() do
    if( AAttribute is AAttributeClass ) then
      AddType( AAttribute.Value, ASubmit, AOverrride, AAttribute.Reorder );

end;
//---------------------------------------------------------------------------
function TOWPin.RootInDestroying() : Boolean;
var
  AWriteLock : ILockSection;
  
begin
  AWriteLock := WriteLock();

  var ARoot := GetRoot();

  if( ARoot <> NIL ) then
    Exit( csDestroying in ARoot.ComponentState );

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWPin.NotificationCall( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
begin
  for var AItem in FCustomNotifications do
    if( AItem.Notification( Self, AOtherPin, AHandler, ADataTypeID, AOperation, AState, Result )) then
      Exit;

  Result := Notification( AOtherPin, AHandler, ADataTypeID, AOperation, AState );
end;
//---------------------------------------------------------------------------
function TOWPin.Notification( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
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
    Exit( ( csLoading in FOwner.ComponentState ));

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

  if( FPropertyElements.Count <= 1 ) then
    Exit( OWValueToString( Self, False, False ));

  Result := FPropertyElements[ 1 ].DisplayName;
  for var I : Integer := 2 to FPropertyElements.Count - 1 do
    begin
    var ADisplayName := FPropertyElements[ I ].DisplayName;
    if( ADisplayName = '' ) then
      Continue;

    if( ADisplayName.StartsWith( '[' )) then
      Result := Result + ADisplayName

    else
      Result := Result + '.' + ADisplayName;

    end;

end;
//---------------------------------------------------------------------------
function TOWPin.UpdateOnConnect() : Boolean;
begin
  if( TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
    Exit( False );

  if( Owner <> NIL ) then
    if( Owner.TypeInfo().HasCustomAttribute( OWDontUpdateOnConnectAttribute )) then
      Exit( False );

  Result := True;
end;
//---------------------------------------------------------------------------
procedure TOWPin.SetOwnerPinList( AValue : TOWPinList );
begin
  if( FOwnerPinList = AValue ) then
    Exit;

  FOwnerPinList := AValue;
  InvalidateCaches( NIL );
  if( AValue <> NIL ) then
    CheckVirtualList( False );

end;
//---------------------------------------------------------------------------
procedure TOWPin.PopulateNameCache();
begin
  inherited;
  if( FIsRegistered ) then
    Exit;

  if( not GetIsCachedInternal() ) then
    Exit;

  GlobalStorageSection.Enter();
  try
    var ARoot := GetRoot();
    var AOwner := Owner;
    if( AOwner <> NIL ) then
      begin
      var ARootItem := GOWRootList.FindOrAdd(
          function( const AItem : IOWRootListItem ) : Boolean
          begin
            Result := ( AItem.GetComponent() = ARoot );
          end
        ,
          function() : IOWRootListItem
          begin
            Result := TOWRootListItem.Create( ARoot );
          end
        );

      var ARootComponentItem := ARootItem.GetComponentsList().FindOrAdd(
          function( const AItem : IOWComponentsListItem ) : Boolean
          begin
            Result := ( AItem.GetComponent() = AOwner );
          end
        ,
          function() : IOWComponentsListItem
          begin
            Result := TOWComponentsListItem.Create( AOwner );
          end
        );

      var AIdents := FFullIdentName.Split( [ '.' ] );
      if( Length( AIdents ) > 1 ) then
        System.Delete( AIdents, 0, 1 );

      var APinIdent := String.Join( '.', AIdents );

      FIsRegistered := True;
      ARootComponentItem.GetPinsDictionary()[ APinIdent ] := Self;
      end;

  except
    end;

  GlobalStorageSection.Leave();
end;
//---------------------------------------------------------------------------
procedure TOWPin.SetOwnerComponent( AComponent : TComponent );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  AComponent := TClassManagement.GetRealComponent( AComponent );
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
      for var I : Integer := 0 to ConnectedDispatcherCount - 1 do
        begin
        var ADispatcher := ConnectedDispatcher[ I ];
        if( GRunDispatchers.Query().Contains( ADispatcher ) ) then
          begin
          var AFound := False;
          var ADispatcherName := ADispatcher.Name;
          for var J : Integer := GDesignDispatchers.Count - 1 downto 0 do
            begin
            var ADispatcherItem := GDesignDispatchers[ J ];
            if( ADispatcherItem.Name = ADispatcherName ) then
              begin
              ConnectToState( ADispatcherItem );
              AFound := True;
              Break;
              end;
            end;

          if( not AFound ) then
            begin
            GRunDispatchers.RemoveOne( ADispatcher );
            GDesignDispatchers.Add( ADispatcher )
            end;
          end;
        end;

//  GetRootName();
  OWNotifyAddPin( Self );
end;
//---------------------------------------------------------------------------
procedure TOWPin.SetRootAndName( ARoot : TComponent; const AName : String; AInDesignMode : Boolean );
begin
  FRoot := ARoot;
  FLoadName := AName;
  FInDesignMode := AInDesignMode;
end;
//---------------------------------------------------------------------------
function TOWPin.GetOwnerComponent() : TComponent;
begin
  Assert( FOwner = TClassManagement.GetRealComponent( FOwner ) );
  Result := FOwner;
end;
//---------------------------------------------------------------------------
function TOWPin.GetOwnerProperty() : TPersistent;
begin
  if( OwnerPinList <> NIL ) then
    Exit( OwnerPinList.OwnerProperty );

  Result := FOwnerProperty;
end;
//---------------------------------------------------------------------------
function TOWPin.GetEmbeddedOwner() : TComponent;
begin
  Result := FOwner;
end;
//---------------------------------------------------------------------------
function TOWPin.GetFullName( AIncludeRootForm : Boolean ) : String;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( FOverrideName = '' ) then
    Result := GetName()

  else
    begin
    var AOwnerName := Owner.Name;
    if( AOwnerName = '' ) then
      Result := '__Unknown__.' + FOverrideName

    else
      Result := AOwnerName + '.' + FOverrideName;

    end;

  if( AIncludeRootForm ) then
    if( GetRoot() <> Owner ) then
      Result := GetRootName() + '.' + Result;

end;
//---------------------------------------------------------------------------
function TOWPin.GetFullIdentNameInt( AIncludeRootForm : Boolean; ALoadIndexed : Boolean ) : String;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( FOverrideSaveName = '' ) then
    begin
    if( FPropertyElements.Count <= 1 ) then
      Exit( OWValueToString( Self, AIncludeRootForm, True ) );

    if( ALoadIndexed ) then
      begin
      Result := FPropertyElements[ 0 ].PinPath;
      if( FPropertyElements.Count > 1 ) then
        begin
        var AInExpandableFixedCollection := False;
        for var I : Integer := 1 to FPropertyElements.Count - 2 do
          begin
          var AElement := FPropertyElements[ I ];
          var ALoadIdentName := AElement.LoadIdentName;
          if( ALoadIdentName = '' ) then
            begin
            if( not AInExpandableFixedCollection ) then
              Exit( '' );

            ALoadIdentName := AElement.IdentName;
            if( ALoadIdentName = '' ) then
              Exit( '' );

            end;

          AInExpandableFixedCollection := AElement.Persistent.TypeInfo().HasCustomAttribute( ExpandableFixedCollectionAttribute );
          Result := Result + '.' + ALoadIdentName;
          end;

        Result := Result + '.' + FPropertyElements[ FPropertyElements.Count - 1 ].PinPath;
        end;
      end

    else
      begin
      Result := FPropertyElements[ 0 ].PinPath;
      for var I : Integer := 1 to FPropertyElements.Count - 1 do
        Result := Result + '.' + FPropertyElements[ I ].PinPath;

      end;

{
    var ATest1 := OWValueToString( Self, AIncludeRootForm, True );
    if( not ATest1.StartsWith( '.' )) then
      if( not ATest1.EndsWith( '.' )) then
        if( ATest1 <> Result ) then
          begin
          ATest1 := ATest1;
          GetFullIdentsInt();
//          Result := ATest1;
          end;
}
    if( Result.StartsWith( '.' )) then
      Result := '__Unknown__' + Result;

    Exit;
    end;

  var AOwnerName := Owner.Name;
  if( AOwnerName = '' ) then
    Result := '__Unknown__.' + FOverrideSaveName

  else
    Result := Owner.Name + '.' + FOverrideSaveName;

  if( AIncludeRootForm ) then
    if( GetRoot() <> Owner ) then
      Result := GetRootName() + '.' + Result;

end;
//---------------------------------------------------------------------------
function TOWPin.GetFullIdentsInt() : IPropertyElements;
begin
//  if( FOwnerProperty.ClassName() = 'TArduinoRemoteXYGraphElement' ) then
//    FOwnerProperty := FOwnerProperty;
  if( FValidPropertyElements ) then
    Exit( FPropertyElements );

  Result := OWValueToItems( Self, False );
end;
//---------------------------------------------------------------------------
function TOWPin.GetDataTypesCount() : Integer;
begin
  Result := FStreamType.Count;
end;
//---------------------------------------------------------------------------
function TOWPin.GetDataType( AIndex : Integer ) : TGUID;
begin
  Result := FStreamType[ AIndex ].ID;
end;
//---------------------------------------------------------------------------
function TOWPin.GetOwner() : TPersistent;
begin
  if( FOwnerPinList <> NIL ) then
    Exit( FOwnerPinList );

  if( FOwnerProperty <> NIL ) then
    Exit( FOwnerProperty );

  Result := inherited;
end;
//---------------------------------------------------------------------------
function TOWPin.IsBindingPin() : Boolean;
begin
  Result := FIsBinding;
end;
//---------------------------------------------------------------------------
function TOWPin.GetSaveName() : String;
begin
  Result := GetFullIdentName( False, False );
  Delete( Result, 1, Pos( '.', Result ) );
end;
//---------------------------------------------------------------------------
function TOWPin.GetRoot() : TComponent;
begin
  if( FRoot <> NIL ) then
    Exit( FRoot );

  Result := inherited;
end;
//---------------------------------------------------------------------------
function TOWPin.GetRootName() : String;
begin
  if( FRoot <> NIL ) then
    begin
    FLastRootName := FRoot.Name;
    Exit( FLastRootName );
    end;

  if( Owner <> NIL ) then
    begin
    if( Owner.Owner = NIL ) then
      FLastRootName := Owner.Name

    else
      begin
      var ARoot := GetRoot();
      if( ARoot <> NIL ) then
        FLastRootName := ARoot.Name

      end;

    Exit( FLastRootName );
    end;

  Result := inherited GetRootName();
end;
//---------------------------------------------------------------------------
function TOWPin.ReadLock() : ILockSection;
begin
  Result := TSimpleReadLockSection.Create( FIntLock, FOwnerLock );
//  if( Result <> NIL ) then
//    if( FIntLock.GetInstance().FPairLock <> NIL ) then
//      FIntLock.GetInstance().FPairUnlock := FIntLock.GetInstance().FPairLock.UnlockAll();

end;
//---------------------------------------------------------------------------
function TOWPin.WriteLock() : ILockSection;
begin
  Result := TSimpleWriteLockSection.Create( FIntLock, FOwnerLock );
//  if( Result <> NIL ) then
//    if( FIntLock.GetInstance().FPairLock <> NIL ) then
//      FIntLock.GetInstance().FPairUnlock := FIntLock.GetInstance().FPairLock.UnlockAll();

end;
//---------------------------------------------------------------------------
function TOWPin.NotifyDispatcher( const AOperation : IOWNotifyOperation; AState : TOWNotifyState; const APinToNotify : TOWBasicPin ) : TOWNotifyResult;
var
  AReadLock     : ILockSection;
  ADestroyLock  : IOWDestroyLockSection;
  AConverter    : IOWFormatConverter;

begin
  AReadLock := ReadLock();

  Result := [];
  if( FDispatcher = NIL ) then
    Exit;

  var ADispatcher := FDispatcher;
  AReadLock := NIL;
  
  for var I : Integer := 0 to ADispatcher.PinCount - 1 do
    begin
    AReadLock := ADispatcher.ReadLock();
    if( I >= ADispatcher.PinCount ) then // Just in case a pin has been deleted from the dispatcher
      Break;

    if( APinToNotify <> NIL ) then
      begin
      if( APinToNotify <> ADispatcher[ I ] ) then
        Continue

      else
        AState := AState + [nsLastIteration];

      end

    else if( I >= ADispatcher.PinCount - 1 ) then
      AState := AState + [nsLastIteration];
//      AState := AState + []

//    else

    if( ( I = ADispatcher.PinCount - 2 ) and ( ADispatcher[ ADispatcher.PinCount - 1 ] = Self ) ) then
      AState := AState + [nsLastIteration];

    if( ADispatcher[ I ] <> Self ) then // Don't send to my self
      begin
      var ADataTypeID := GetStateSubmitID( ADispatcher.ConnectionPins[ I ] );
      var ASubmitFunction := GetSubmitFunctionID( ADataTypeID );
      var APin := ADispatcher.ConnectionPins[ I ];
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
                ASubmitFunction( Self, APin, ADataTypeID, AOperation, AState );
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
function TOWPin.NotifyPin( const APin : TOWBasicPin; const AOperation : IOWNotifyOperation ) : TOWNotifyResult;
begin
  Result := NotifyDispatcher( AOperation, [], APin );
end;
//---------------------------------------------------------------------------
function TOWPin.Notify( const AOperation : IOWNotifyOperation ) : TOWNotifyResult;
begin
  Result := NotifyDispatcher( AOperation, [], NIL );
end;
//---------------------------------------------------------------------------
function TOWPin.GetStateSubmitID( const AOtherPin : TOWBasicPin ) : TGUID;
var
  AConverter      : IOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  
begin
  Result := FindConnectionID( AOtherPin, AConverter, AConverterClass, True, GUID_NULL );
end;
//---------------------------------------------------------------------------
function TOWPin.CheckVirtualList( AForceCheck : Boolean ) : Boolean;
begin
  if( not AForceCheck ) then
    if( GetIsSerializationLoading() ) then
      Exit( False );

  for var AIndex := False to True do
    if( GOWUnloadedPins[ AIndex ].Count <> 0 ) then
      try
        var AIdentName := GetFullIdentName( False, AIndex );
        if( AIdentName = '' ) then
          Exit( True );

        var AIdentName_Root := GetFullIdentName( True, AIndex );
        var ARoot := GetRoot();

        while True do
          begin
          var AUnloadedPin : TOWUnloadedPin;
          if( not GOWUnloadedPins[ AIndex ].GetByIdentName( ARoot, AIdentName_Root, AUnloadedPin )) then
            begin
            if( not GCheckPartialPinNames ) then
              Break;

            if( not GOWUnloadedPins[ AIndex ].GetByIdentName( ARoot, AIdentName, AUnloadedPin )) then
              Break;

            end;

          AUnloadedPin.PopulatePinAndDestroy( Self )
          end;

      except
        end;

  Result := (( GOWUnloadedPins[ False ].Count <> 0 ) or ( GOWUnloadedPins[ True ].Count <> 0 ));
end;
//---------------------------------------------------------------------------
procedure TOWPin.DefineProperties( AFiler : TFiler );
begin
  inherited;
  AFiler.DefineProperty( 'Form', ReadFormName, WriteFormName, DoFormWrite() );
  AFiler.DefineProperty( 'State', ReadStateConnectionsData, WriteStateConnectionsData, DoStateWrite());
end;
//---------------------------------------------------------------------------
procedure TOWPin.SerializationRead( const AReader : IReader );
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  inherited;

  AReader.ReadString( 'Form', FLoadFormName );
  AReader.ReadString( 'StateName',
      procedure( const AName : String )
      begin
        CheckVirtualList( False );
        LinkToStateByName( AName );
      end
    );

end;
//---------------------------------------------------------------------------
procedure TOWPin.SerializationWrite( const AWriter : IWriter; const ASelectedObjects : IObjectArrayList; const AMember : IMemberInfo = NIL );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  inherited;

  if( FDispatcher = NIL ) then
    Exit;

  if( csWriting in GetOwnerComponent().ComponentState ) then
    Exit;

//  AIsSaved := False;
  if( DoFormWrite() ) then
    AWriter.WriteString( 'Form', GetRootName() );

  if( DoStateWrite() ) then
    AWriter.WriteString( 'StateName', FDispatcher.Name );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWStreamPin.IsConnectedByConverterTo( const AOtherPin : TOWBasicPin ) : Boolean;
begin
  // Fixes a misterious internal bug in the 64 bit Delphi compiler!
  Result := inherited;
end;
//---------------------------------------------------------------------------
function TOWStreamPin.GetConnectionConverter( const AOtherPin : TOWBasicPin; out AConverter : IOWFormatConverter ) : Boolean;
begin
  // Fixes a misterious internal bug in the 64 bit Delphi compiler!
  Result := inherited;
end;
//---------------------------------------------------------------------------
procedure TOWStreamPin.UpStreamFillPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  for var AItem in FStreamType do
    APossibleStreamTypes.AddType( AItem.ID, AItem.SubmitFunction, True );
    
end;
//---------------------------------------------------------------------------
function TOWStreamPin.DownStreamQueryPossybleInterface( const IID : TGUID ) : HResult;
begin
  Result := S_OK;
end;
//---------------------------------------------------------------------------
procedure TOWStreamPin.DownStreamFillPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin; AOtherPin : TOWBasicPin );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  for var AItem in FStreamType do
    APossibleStreamTypes.AddType( AItem.ID, AItem.SubmitFunction, True );

end;
//---------------------------------------------------------------------------
procedure TOWStreamPin.BackPopulateStreamChains( const AChain : IArrayList<IOWObjectList>; const AList : IOWObjectList );
begin
  AList.Add( Self )
end;
//---------------------------------------------------------------------------
function TOWStreamPin.UpStreamQueryPossybleInterface( const IID : TGUID ) : HResult;
begin
  Result := S_OK;
//  Result := DownStreamQueryPossybleInterface( IID );
end;
//---------------------------------------------------------------------------
procedure TOWStreamPin.RemoveNotifyEntry( const AEntry : IOWNotifyPinEntry );
var
  APointsSection    : ICriticalSection;
  AConnectionPoints : IOWPinNotifyEntryList;

begin
  APointsSection := FPointsSection;
  AConnectionPoints := FConnectionPoints;
  AEntry.GetInstance().Section.Leave();
  try
    APointsSection.Enter();
    try
      AConnectionPoints.RemoveAll( AEntry );
    except
      end;
    APointsSection.Leave();
  finally
    AEntry.GetInstance().Section.Enter();
    end;

end;
//---------------------------------------------------------------------------
procedure TOWStreamPin.AddNotifyEntry( const AEntry : IOWNotifyPinEntry );
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
procedure TOWPin.OrderStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  
  if( APossibleStreamTypes.GetOrdered() ) then
    Exit;

  var ACalcIndex := 0;
  for var AItem in FStreamType do
    for var I : Integer := 0 to APossibleStreamTypes.Count - 1 do
      if( APossibleStreamTypes[ I ].ID = AItem.ID ) then
        begin
        if( ACalcIndex <> I ) then
          APossibleStreamTypes.Swap( ACalcIndex, I );

        Inc( ACalcIndex );
        end;

  APossibleStreamTypes.SetOrdered( True );
end;
//---------------------------------------------------------------------------
procedure TOWPin.AddType( const AID : TGUID; AOverrride : Boolean; AReorder : Boolean = False );
var
  AWriteLock  : ILockSection;
  AAttribute  : OWExcludeStreamTypeAttribute;

begin
  AWriteLock := WriteLock();

  if( TypeInfo.AccessAttributes.Get<OWExcludeStreamTypeAttribute>( AAttribute )) then
    if( AAttribute.Value = AID ) then
      Exit;

  FStreamType.AddType( AID, DefaultNotifyDispatcher, AOverrride, AReorder );
end;

//---------------------------------------------------------------------------
procedure TOWPin.AddType( const AID : TGUID; ASubmitFunction : TOWSubmit; AOverrride : Boolean; AReorder : Boolean = False );
var
  AWriteLock  : ILockSection;
  AAttribute  : OWExcludeStreamTypeAttribute;

begin
  AWriteLock := WriteLock();

  if( TypeInfo.AccessAttributes.Get<OWExcludeStreamTypeAttribute>( AAttribute )) then
    if( AAttribute.Value = AID ) then
      Exit;

  FStreamType.AddType( AID, ASubmitFunction, AOverrride, AReorder );
end;
//---------------------------------------------------------------------------
procedure TOWPin.RemoveType( const AID : TGUID );
var
  AWriteLock : ILockSection;
  
begin
  AWriteLock := WriteLock();
  
  FStreamType.RemoveType( AID );
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
function TOWPin.GetConnectionID( const AOtherPin : TOWBasicPin; AReturnConvertedID : Boolean = False ) : TGUID;
begin
  Result := GetStateSubmitID( AOtherPin );
end;
//---------------------------------------------------------------------------
function TOWPin.GetConnectionName( const AOtherPin : TOWBasicPin; AReturnConvertedID : Boolean = False ) : String;
begin
  Result := GetLinkNameID( GetConnectionID( AOtherPin ));
end;
//---------------------------------------------------------------------------
function TOWPin.GetPrimaryConnectionID() : TGUID;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( IsConnected() ) then
    if( FDispatcher <> NIL ) then
      if( FDispatcher.PinCount > 1 ) then
        begin
        var AFirstPin := FDispatcher.Pins[ 0 ];
        if( AFirstPin = Self ) then
          Exit( GetConnectionID( FDispatcher.Pins[ 1 ] ));

        Exit( GetConnectionID( AFirstPin ));
        end;


  Result := GUID_NULL;
end;
//---------------------------------------------------------------------------
function TOWPin.DefaultNotifyDispatcher( AOtherPin : TOWBasicPin; const AHandler : IOWStream; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
var
  AEntry    : TOWStreamTypeEntry;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  ProcessPendingExtensions();
  if( GOWStreamTypes.GetValue( ADataTypeID, AEntry )) then
    if( Assigned( AEntry.SendFunction )) then
      begin
      var ASubmit : TOWGlobalSubmit := AEntry.SendFunction;
      AReadLock := NIL;
      Exit( ASubmit( Self, AOtherPin, AHandler, ADataTypeID, AOperation, AState ));
      end;

  Result := [];
end;
//---------------------------------------------------------------------------
function TOWPin.GetSubmitFunctionID( const IID : TGUID ) : TOWSubmit;
var
  AReadLock : ILockSection;

begin
  Result := NIL;
  if( IID <> GUID_NULL ) then
    begin
    AReadLock := ReadLock();
    for var AItem in FStreamType do
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
  if( IID = GUID_NULL ) then
    Exit( '' );

  Result := OWGetStreamTypeFromID( IID );
end;
//---------------------------------------------------------------------------
function TOWPin.CanConnectToInt( const AOtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; AUseConverters : Boolean; const ADataType : TGUID ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( PreviewConnected( Self, AOtherPin )) then
    Exit( False );

  if( not( FOwner is TOWFormatConverter ) and not( AOtherPin.Owner is TOWFormatConverter )) then
    begin
    if( AOtherPin.OwnerInDesigning( False ) and ( not OwnerInDesigning( False ))) then
      Exit( False );

    if( ( not ( AOtherPin.OwnerInDesigning( False ) )) and OwnerInDesigning( False ) ) then
      Exit( False );

    end;

  if( AOtherPin is TOWStatePin ) then
    Exit( not IsEqualGUID( FindConnectionID( AOtherPin, AConverter, AConverterClass, AUseConverters, ADataType ), GUID_NULL ));

  if( AOtherPin is TOWUnloadedPin ) then
    Exit( AOtherPin.CanConnectTo( Self, AUseConverters ));

  if( FOwner = NIL ) then
    Exit( True );

  if( csLoading in FOwner.ComponentState ) then
    Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWPin.IsCompatible( const AOtherPin : TOWBasicPin; AUseConverters : Boolean ) : Boolean;
var
  AConverter      : IOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  AReadLock       : ILockSection;

begin
  AReadLock := ReadLock();

  if( not ( AOtherPin is TOWStatePin )) then
    Exit( False );

  var AStatePin := TOWStatePin( AOtherPin );

  Result := not IsEqualGUID( FindConnectionID( AStatePin, AConverter, AConverterClass, AUseConverters, GUID_NULL ), GUID_NULL );
  if( Result ) then
    Exit( not IsEqualGUID( AStatePin.FindConnectionID( Self, AConverter, AConverterClass, AUseConverters, GUID_NULL ), GUID_NULL ));

end;
//---------------------------------------------------------------------------
procedure TOWPin.RemovePinList( APinList : TOWPinList );
begin
  inherited;
  if( FOwnerProperty = APinList ) then
    FOwnerProperty := NIL;

end;
//---------------------------------------------------------------------------
function TOWPin.FindConnectionID( const AOtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; AUseConverters : Boolean; const ADataType : TGUID ) : TGUID;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  for var I : Integer := FStreamType.Count - 1 downto 0 do
    begin
    var AID := FStreamType[ I ].ID;
    if( Supports( AOtherPin, AID )) then
      begin
      if( ADataType = GUID_NULL ) then
        Exit( AID );

      if( AID = ADataType ) then
        Exit( AID );

      end;
    end;

  if( AUseConverters ) then
    if( AOtherPin.GetPinType() in [ ptSink, ptMultiSink ] ) then
      begin
      if( FDispatcher <> NIL ) then
        for var I : Integer := FDispatcher.FFormatConverters.Count - 1 downto 0 do
          begin
          var AID := FDispatcher.FFormatConverters[ I ].GetInstance().FOutputPin.DownStreamFindConnectionID( AOtherPin, False, False, AConverter, AConverterClass, ADataType );
          if( AID <> GUID_NULL ) then
            if( Supports( AOtherPin, AID )) then
              begin
              AConverter := FDispatcher.FFormatConverters[ I ].GetInstance();
              Exit( AID );
              end;

          end;

      for var J : Integer := FStreamType.Count - 1 downto 0 do
        begin
        var AID := FStreamType[ J ].ID;
        if(( ADataType = GUID_NULL ) or ( AID = ADataType )) then
          begin
          var AClass := AOtherPin.ClassType();
          while( AClass <> NIL ) do
            begin
            var AIntfTable := AClass.GetInterfaceTable();
            if( AIntfTable <> NIL ) then
              for var I : Integer := 0 to AIntfTable.EntryCount - 1 do
                if( OWGetConverter( AID, AIntfTable.Entries[ I ].IID, AConverterClass )) then
                  Exit( AID );

            AClass := AClass.ClassParent;
            end;
          end;
        end;
      end;

  Result := GUID_NULL;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWSourcePin.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock; AMaxConnections : Integer );
begin
  inherited Create( AOnCreated, AOwnerLock );
  InitInstance( AMaxConnections );
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
procedure TOWSourcePin.InitInstance( AMaxConnections : Integer );
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  FMaxConnections := AMaxConnections;
  if( AMaxConnections <= 0 ) then
    TypeInfo( False ).AccessAttributes.ForLast<OWMaxConnectionsAttribute>(
        procedure( AMaxConnectionsAttr : OWMaxConnectionsAttribute )
        begin
          FMaxConnections := AMaxConnectionsAttr.Value;
        end
      );

  FInDependOn := False;
  FFunctionSources := TOWFunctionSinkPinList.Create( Self );
  FDataTypeSources := TOWDataTypeSinkPinList.Create( Self );
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.ReadConnectionsDataInternal( AReader : TReader; ASkipConnections : Boolean );
var
  AReadIdent    : String;
  AReadName     : String;
  AWriteLock    : ILockSection;
  ABasePinAfter : TOWBasicPin;

begin
  AWriteLock := WriteLock();
  CheckVirtualList( False );

  AReader.ReadListBegin();
  while not AReader.EndOfList do
    begin
    var AReadIdentAfter := '';
    ABasePinAfter := NIL;
    if( AReader.NextValue() = vaList ) then
      begin
      AReader.ReadListBegin();
      AReadIdent := AReader.ReadIdent();
      if( AReader.NextValue() = vaIdent ) then
        begin
        AReadIdentAfter := AReader.ReadIdent();
        if( not IsPreviewPin() ) then
          if( not ASkipConnections ) then
            begin
            ApplyFormName( AReadIdentAfter );
            ABasePinAfter := GOWPins.GetByNameCreate( GetRoot(), False, ptSink, AReadIdentAfter, AReadIdentAfter, GetFullName( True ) );
            end;

        end;

      AReadName := AReadIdent;
      if( GOWIsStringValueType( AReader.NextValue() ) ) then
        AReadName := AReader.ReadString();

      AReader.ReadListEnd();
      end

    else
      begin
      AReadIdent := AReader.ReadIdent();
      AReadName := AReadIdent;
      end;

    if( not ASkipConnections ) then
      if( not IsPreviewPin() ) then
        begin
        ApplyFormName( AReadIdent );
        ApplyFormName( AReadName );
        var ABasePin := GOWPins.GetByNameCreate( GetRoot(), False, ptSink, AReadIdent, AReadName, GetFullName( True ) );
        IntConnectAfter( ABasePin, ABasePinAfter, GUID_NULL );
        end;

    end;

  AReader.ReadListEnd();

  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.TryLinkTo( ARoot : TComponent; const ASinkIdent : String; const ASinkName : String; const AReadIdentAfter : String; ASaveForm : Boolean ) : Boolean;
var
  ADictionary       : IDictionary<String, TOWBasicPin>;
  APinValueFilters  : TOWPinValueFilters;
  AWriteLock        : ILockSection;

begin
  if( ASaveForm ) then
    APinValueFilters := [ pvoFullList, pvoSaveValue ]

  else
    APinValueFilters := [ pvoFullList ];

  Result := True;
  if( ASinkIdent = '' ) then
    begin
    if( not ASaveForm ) then
      Disconnect();

    Exit;
    end;

  AWriteLock := WriteLock();

  Result := False;

  var AMyRoot := GetRoot();
  if( ( AMyRoot <> ARoot ) and ( ARoot <> NIL )) then
    begin
    var ARootName := ARoot.Name;
    ADictionary := OWGetPinsValueListSingle( ARoot, Self, '.', ARootName, APinValueFilters );
    end

  else
    ADictionary := OWGetPinsValueList( Self, '.', APinValueFilters );

  var APin : TOWBasicPin;
  if( ADictionary.GetValue( ASinkIdent, APin )) then
    begin
    Connect( APin );
    Result := True;
    end;

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.SetNotifyAfterByName( const APin : TOWPin; const AAfterPinName : String );
begin
  var AAfterPin : TOWBasicPin := NIL;
  for var AEntry in FSinkPins do
    if( ( AEntry.RealPin.GetFullName( False ) = AAfterPinName ) or ( AEntry.RealPin.GetFullName( True ) = AAfterPinName )) then
      begin
      AAfterPin := AEntry.RealPin;
      Break;
      end;

  if( AAfterPin <> NIL ) then
    for var AEntry in FSinkPins do
      if( AEntry.RealPin = APin ) then
        begin
        AEntry.NotifyAfterPin := AAfterPin;
        Break;
        end;

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.WriteConnectionsData( AWriter : TWriter );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  AWriter.WriteListBegin();
  for var I : Integer := 0 to SinkCount - 1 do
    begin
    var ASink := Sinks[ I ];
    if( ASink.IsDebugPin()) then
      Continue;

    var AIdent := ASink.GetFullIdentName( True, False ).Replace( '*._', '_Item' ); // GetLinkStr( I, True );
    var AIdentName := ASink.GetFullName( True ).Replace( '*._', '_Item' ); // GetLinkStr( I, False );
    var ANotifyAfterPin := FSinkPins[ I ].NotifyAfterPin;
    if( AIdent = AIdentName ) then
      begin
      if( ANotifyAfterPin <> NIL ) then
        begin
        var AIdentAfter := ANotifyAfterPin.GetFullIdentName( True, False ); // GetLinkAfterStr( I );

        AWriter.WriteListBegin();
        AWriter.WriteIdent( AIdent );
        AWriter.WriteIdent( AIdentAfter );
        AWriter.WriteListEnd();
        end

      else
        AWriter.WriteIdent( AIdent );

      end

    else
      begin
      AWriter.WriteListBegin();
      if( ANotifyAfterPin <> NIL ) then
        begin
        var AIdentAfter := ANotifyAfterPin.GetFullIdentName( True, False ); // GetLinkAfterStr( I );
//        AIdentAfter := GetLinkAfterStr( I );

//        AWriter.WriteListBegin();
        AWriter.WriteIdent( AIdent );
        AWriter.WriteIdent( AIdentAfter );
//        AWriter.WriteListEnd();
        end

      else
        AWriter.WriteIdent( AIdent );

      AWriter.WriteString( AIdentName );
      AWriter.WriteListEnd();
      end;

    end;

  AWriter.WriteListEnd();
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
function TOWSourcePin.WriteNoStateListEntry( AWriter : TWriter ) : Boolean;
begin
  Result := DoWrite();
  if( Result ) then
    begin
    AWriter.WriteIdent( 'Sinks' );
    WriteConnectionsData( AWriter );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.ReadNoStateListEntry( AReader : TReader; const AIdent : String; ASkipConnections : Boolean );
begin
//  if( AIdent = 'Sinks' ) then
  ReadConnectionsData( AReader );
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.DefineProperties( AFiler : TFiler );
begin
  inherited;
  AFiler.DefineProperty( 'SinkPins', ReadConnectionsData, WriteConnectionsData, DoWrite());
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.SerializationRead( const AReader : IReader );
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  inherited;

  if( IsPreviewPin() ) then
    Exit;

  var AOptions := AReader.GetOptions();

  AReader.ReadArray( 'SinkPins',
      procedure( const AArrayReader : ISequentialReader )
      begin
        CheckVirtualList( False );
        AArrayReader.ReadNextNesteds(
            procedure( const AReader : IReader )
            begin
              AReader.ReadString( 'ID',
                  procedure( const AID : String )
                  var
                    AName     : String;
                    AFullName : String; // Delphi 11 Bug

                  begin
                    var ALocalID := AID;
                    ApplyFormName( ALocalID );
                    if( AReader.ReadString( 'Name', AName )) then
                      ApplyFormName( AName )

                    else
                      AName := ALocalID;

                    ALocalID := ReplaceComponentOwnerName( ALocalID, AReader.Access.GetRenameMap() );
                    AName := ReplaceComponentOwnerName( AName, AReader.Access.GetRenameMap() );

                    if( TDeserializeOption.FromPaste in AOptions ) then
                      begin
                      var ARootName := GetRootName();
                      if( not ALocalID.StartsWith( ARootName + '.' )) then
                        begin
                        ALocalID := ARootName + SubstringFrom( ALocalID, '.' );
                        AName := ARootName + SubstringFrom( AName, '.' );
//                        Exit;
                        end;

                      end;

                    var ABasePinAfter : TOWBasicPin := NIL;
                    var ARoot := GetRoot();
                    AFullName := GetFullName( True );
                    AReader.ReadString( 'SaveAfter',
                        procedure( const AID : String )
                        begin
                          var ALocalID := AID;
                          ApplyFormName( ALocalID );
                          ALocalID := ReplaceComponentOwnerName( ALocalID, AReader.Access.GetRenameMap() );
                          ABasePinAfter := GOWPins.GetByNameCreate( ARoot, True, ptSink, ALocalID, ALocalID, AFullName );
                        end
                      );

                    var ABasePin := GOWPins.GetByNameCreate( ARoot, True, ptSink, ALocalID, AName, AFullName );
                    IntConnectAfter( ABasePin, ABasePinAfter, GUID_NULL );
                  end
                );

            end
          );

      end
    );

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.SerializationWrite( const AWriter : IWriter; const ASelectedObjects : IObjectArrayList; const AMember : IMemberInfo = NIL );
var
  AReadLock  : ILockSection;

begin
  AReadLock := ReadLock();
  inherited;

  if( csWriting in GetOwnerComponent().ComponentState ) then
    Exit;

  if( not DoWrite() ) then
    Exit;

  var AOptions := AWriter.GetOptions();
  if( TSerializeOption.NoLinks in AOptions ) then
    Exit;

  AWriter.WriteArray( 'SinkPins',
      procedure( const AArrayWriter : ISequentialWriter )
      var
        AIdent      : String; // Keep here due to Delphi 10.4 compiler bug!
        AIdentName  : String; // Keep here due to Delphi 10.4 compiler bug!

      begin
        for var I : Integer := 0 to SinkCount - 1 do
          begin
          var ASink := Sinks[ I ];
          if( ASink.IsDebugPin()) then
            Continue;

          if( ASelectedObjects <> NIL ) then
            if( not ASelectedObjects.Query().Contains( ASink.GetOwnerComponent() )) then
              Continue;

          var AIncludeRoot := not ( TSerializeOption.LocalScope in AWriter.GetOptions() );
          AIdent := ASink.GetFullIdentName( AIncludeRoot, False ); // GetLinkStr( I, True );
          AIdentName := ASink.GetFullName( AIncludeRoot ); // GetLinkStr( I, False );
          AArrayWriter.WriteNested(
              procedure( const AWriter : IWriter )
              begin
                AWriter.WriteString( 'ID', AIdent );

                if( AIdent <> AIdentName ) then
                  AWriter.WriteString( 'Name', AIdentName );

                var ANotifyAfterPin := FSinkPins[ I ].NotifyAfterPin;
                if( ANotifyAfterPin <> NIL ) then
                  AWriter.WriteString( 'SaveAfter', ANotifyAfterPin.GetFullIdentName( AIncludeRoot, False ) ); // GetLinkAfterStr( I );

              end
            );

          end;

      end
    );

end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetLinkStr( AItem : Integer ) : String;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  var AAddRoot := False;
  if( SinkCount > 0 ) then
    AAddRoot := Sinks[ AItem ].GetRoot() <> GetRoot();

//  Result := Sinks[ AItem ].GetFullName( ( AAddRoot ) or (( Sinks[ AItem ].Owner = NIL ) or ( Sinks[ AItem ].Owner.Owner = NIL )) );
  Result := Sinks[ AItem ].GetFullName( AAddRoot );
{
  if(( AAddRoot ) and ( Sinks[ AItem ].Owner.Owner = NIL )) then
    Result := Sinks[ AItem ].GetRootName() + '.' + OWValueToString( Sinks[ AItem ], '.', False, False )

  else
    Result := OWValueToString( Sinks[ AItem ], '.', AAddRoot, SaveFormat );
}
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.IntConnect( const ASinkPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID; AFromOther : Boolean );
var
  AWriteLock      : ILockSection;
  AConverterClass : TOWFormatConverterClass;
  AConverter      : IOWFormatConverter;

begin
  AWriteLock := WriteLock();

  if( FMaxConnections > 0 ) then
    if( SinkCount >= FMaxConnections ) then
      if( not IsConnectedTo( ASinkPin )) then
        IntDisconnectFrom( Sinks[ 0 ], True );

  var AEntry := FSinkPins.Add();
  AEntry.RealPin := ASinkPin;
  AEntry.NotifyAfterPin := ANotifyAfterPin;
  AEntry.ConnectionPin := NIL;
  AConverter := NIL;
  AEntry.ConnectedID := DownStreamFindConnectionID( ASinkPin, True, True, AConverter, AConverterClass, ADataType );
  AEntry.ModificationLevel := 0;
  AEntry.SubmitFunction := NIL;
  if( AConverterClass <> NIL ) then
    begin
    AConverter := AConverterClass.Create();
    FFormatConverters.Add( AConverter );
    end;

  if( AConverter <> NIL ) then
    begin
    AEntry.ConnectionPin := AConverter.GetInstance().FInputPin;

    var AConverterOutputPin := AConverter.GetInstance().FOutputPin;
    if( not AFromOther ) then
      AConverterOutputPin.ConnectAfter( ASinkPin, ANotifyAfterPin );

    if( ASinkPin is TOWSinkPin ) then
      TOWSinkPin( ASinkPin ).FConnectionSourcePin := AConverterOutputPin

    else if( ASinkPin is TOWMultiSinkPin ) then
      begin
      var ASourcePins := TOWMultiSinkPin( ASinkPin ).FSourcePins;
      for var I : Integer := 0 to ASourcePins.Count - 1 do
        begin
        var ASourcePin := ASourcePins[ I ];
        if( ASourcePin.RealPin = Self ) then
          begin
          ASourcePin.ConnectionPin := AConverterOutputPin;
          Break;
          end;
        end;
      end;
    end

  else
    AEntry.ConnectionPin := ASinkPin;

  AEntry.SubmitFunction := GetSubmitFunctionID( AEntry.ConnectedID );
  AEntry.ModificationLevel := 0;
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.IntDisconnect( const AOtherPin : TOWBasicPin; ADesignFormClosing : Boolean );
var
  ADestroyLock  : IOWDestroyLockSection;
  AWriteLock    : ILockSection;

begin
  if( FInDisconnect ) then
    Exit;

  ADestroyLock := FDestroyLock.DestroyLock();
  AWriteLock := WriteLock();
  FInDisconnect := True;
  FImageCached := False;

  if( ADesignFormClosing ) then
    if( not RootInDestroying()) then
      begin
      var ALinkIdent := AOtherPin.GetFullIdentName( True, False ); //GetLinkStr( AIndex, True ); //OWValueToString( FSourcePin, '.', True, True );
      var ALinkIdentName := AOtherPin.GetFullName( True ); // GetLinkStr( AIndex, False );
      var ATmpPin := TOWUnloadedPin.Create( GetRoot(), False, ptSink, ALinkIdent, ALinkIdentName, GetFullName( True ) );
      Connect( ATmpPin );
      end;

  FInDisconnect := False;

  for var AIndex := GetSinkCount() - 1 downto 0 do
    begin
    var AEntry := FSinkPins[ AIndex ];
    if( AEntry.RealPin = AOtherPin ) then
      begin
      if( AEntry.RealPin <> AEntry.ConnectionPin ) then
        for var I : Integer := FFormatConverters.Count - 1 downto 0 do
          begin
          var APutputPin := FFormatConverters[ I ].GetInstance().FOutputPin;
          APutputPin.IntDisconnect( AOtherPin, False );
          if( not APutputPin.IsConnected() ) then
            FFormatConverters.Delete( I );

          end;

//      ANotifyAfterPin := AEntry.NotifyAfterPin;
//      Dispose( AEntry );
      FSinkPins.Delete( AIndex );

      AWriteLock := NIL;
      ADestroyLock := NIL;

      var AIsDebugConnection := IsDebugPin();
      if( not AIsDebugConnection ) then
        if( AOtherPin <> NIL ) then
          AIsDebugConnection := AOtherPin.IsDebugPin();

      OWNotifyChangePin( Self, AIsDebugConnection );
      AOtherPin.CheckRemove();
      Exit;
      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.NotifyPin( const APin : TOWBasicPin; const AOperation : IOWNotifyOperation ) : TOWNotifyResult;
var
  ALock         : ILockSection;
  AInUnlock     : ILockSection;
  AUnlock       : ILockSection;
  ADestroyLock  : IOWDestroyLockSection;

begin
  if( FInputOwnerLock <> NIL ) then
    begin
    AInUnlock := FInputOwnerLock.UnlockAll();
    AUnlock := FOwnerLock.UnlockAllLockInOrder( FInputOwnerLock );
    end

  else
    AUnlock := FOwnerLock.UnlockAll();

  ALock := ReadLock();

  var ASinksCount := FSinkPins.Count;

  var ASinksList : IOWPinNotifyEntryList := TOWPinNotifyEntryList.Create();
  try
    for var ASinkEntry in FSinkPins do
      begin
      var ANotifyEntry := TOWNotifyPinEntry.Create();
      var AEntryntf : IOWNotifyPinEntry := ANotifyEntry;

      ANotifyEntry.Section.Enter();
      try
        ANotifyEntry.Entry.Assign( ASinkEntry );
        if( ASinkEntry.ConnectionPin.GetOwnerComponent() is TOWFormatConverter ) then
          ASinkEntry.ConnectionPin.GetOwnerComponent().GetInterface( IOWFormatConverter, ANotifyEntry.Converter ); // Hold the converter in existance while we iterate.

        ANotifyEntry.Entry.ConnectionPin.AddNotifyEntry( AEntryntf );
        ASinksList.Add( AEntryntf );
      except
        end;

      ANotifyEntry.Section.Leave();
      end;

    for var I : Integer := ASinksCount - 1 downto 0 do
      begin
      var ANotifyEntry := ASinksList[ I ].GetInstance();
      if( Assigned( ANotifyEntry.Entry.SubmitFunction )) then
        if( ANotifyEntry.Entry.ConnectionPin <> ANotifyEntry.Entry.RealPin ) then
          for var J : Integer := I - 1 downto 0 do
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
      Result := inherited Notify( AOperation );

      for var I : Integer := 0 to ASinksCount - 1 do
        begin
        var AState : TOWNotifyState;
        if( I < ASinksCount - 1 ) then
          AState := []

        else
          AState := [nsLastIteration];

        var ANotifyEntry := ASinksList[ I ].GetInstance();
        ANotifyEntry.Section.Enter();
        try
          var ASinkEntry := ASinksList[ I ].GetInstance().Entry;

          var ADataTypeID := ASinkEntry.ConnectedID;
          var ASinkPin := ASinkEntry.ConnectionPin;
          var ARealSinkPin := ASinkEntry.RealPin;
          if(( APin = NIL ) or ( APin = ARealSinkPin )) then
            begin
            if( Assigned( ASinkEntry.SubmitFunction )) then
              begin
                var AStatus : TOWNotifyResult;

                try
                  ALock := NIL;
                  ADestroyLock := FDestroyLock.Lock();
                  if( ADestroyLock <> NIL ) then
                    begin
    //                  AUnlock := FOwnerLock.UnlockAllLockInOrder( FInputOwnerLock );

                    AStatus := ASinkEntry.SubmitFunction( Self, ASinkPin, ADataTypeID, AOperation, AState );
    //                AUnlock := NIL;
                    end;

                finally
                  ALock := ReadLock();

                if( nrDataChanged in AStatus ) then
                  ASinkEntry.IncrementModificationLevel();
//                  if( ASinkEntry.ModificationLevel < 10000 ) then
//                    Inc( ASinkEntry.ModificationLevel, 4 );

                end;
              end;


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
      for var AEntry in ASinksList do
        AEntry.GetInstance().Converter := NIL;

      AUnlock := NIL;
    end;

  finally
    for var AEntry in ASinksList do
      AEntry.RemoveNotifyEntry();

    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.Notify( const AOperation : IOWNotifyOperation ) : TOWNotifyResult;
begin
  Result := NotifyPin( NIL, AOperation );
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
function TOWSourcePin.GetSink( AIndex : Integer ) : TOWBasicPin;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FSinkPins[ AIndex ].RealPin;
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
function TOWSourcePin.GetConverter( AIndex : Integer ) : IOWFormatConverter;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FFormatConverters[ AIndex ];
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.ReorderChangedData();
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  FSinkPins.Sort();
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.DownStreamBackRestrictPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( AForPin = Self ) then
    begin
    for var AEntry in FSinkPins do
      if( AEntry.ConnectionPin is TOWBasicSinkPin ) then
        TOWBasicSinkPin( AEntry.ConnectionPin ).DownStreamForthRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );

    Exit;
    end;

  var ADataTypeSources := FDataTypeSources.GetList();
  if( ADataTypeSources.Count > 0 ) then
    begin
    for var I : Integer := 0 to ADataTypeSources.Count - 1 do
      ADataTypeSources[ I ].DownStreamBackRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );

    end

  else
    begin
    if( not APossibleStreamTypes.GetOrdered() ) then
      OrderStreamTypes( APossibleStreamTypes );

    DownStreamForthRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );
    end;
    
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.UpStreamBackRestrictPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( AForPin = Self ) then
    begin
    for var AEntry in FSinkPins do
      if( AEntry.ConnectionPin is TOWBasicSinkPin ) then
        TOWBasicSinkPin( AEntry.ConnectionPin ).UpStreamForthRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );

    Exit;
    end;

  var ADataTypeSources := FDataTypeSources.GetList();
  if( ADataTypeSources.Count > 0 ) then
    begin
    for var I : Integer := 0 to ADataTypeSources.Count - 1 do
      ADataTypeSources[ I ].UpStreamBackRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );

    end

  else
    begin
//    if( not APossibleStreamTypes.Ordered ) then
//      OrderStreamTypes( APossibleStreamTypes );

    UpStreamForthRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );
    end;
    
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.DownStreamForthRestrictPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( AForPin = Self ) then
    Exit;

  var I := 0;
  while( I < APossibleStreamTypes.Count ) do
    begin
    var AEntryFound := False;
    var APossibleStreamTypeID := APossibleStreamTypes[ I ].ID;
    for var AItem in FStreamType do
      if( AItem.ID = APossibleStreamTypeID ) then
        begin
        AEntryFound := True;
        Break;
        end;

    if( AEntryFound ) then
      Inc( I )

    else
      APossibleStreamTypes.RemoveType( APossibleStreamTypeID );

    end;

  for var AEntry in FSinkPins do
    if( AEntry.ConnectionPin is TOWBasicSinkPin ) then
      TOWBasicSinkPin( AEntry.ConnectionPin ).DownStreamForthRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.UpStreamForthRestrictPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( AForPin = Self ) then
    Exit;

  var I := 0;
  
  while( I < APossibleStreamTypes.Count ) do
    begin
    var APossibleStreamTypeID := APossibleStreamTypes[ I ].ID;
    if( Supports( Self, APossibleStreamTypeID )) then
      Inc( I )

    else
      APossibleStreamTypes.RemoveType( APossibleStreamTypeID );

    end;

  for var AEntry in FSinkPins do
    if( AEntry.ConnectionPin is TOWBasicSinkPin ) then
      TOWBasicSinkPin( AEntry.ConnectionPin ).UpStreamForthRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );
    
end;
//---------------------------------------------------------------------------
function TOWSourcePin.DownStreamQueryPossybleInterface( const IID : TGUID ) : HResult;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  Result := inherited DownStreamQueryPossybleInterface( IID );

  if( Result = S_OK ) then
    begin
    var ADataTypeSources := FDataTypeSources.GetList();
    for var I : Integer := 0 to ADataTypeSources.Count - 1 do
      begin
      Result := ADataTypeSources[ I ].DownStreamForthQueryPossybleInterface( IID, Self );
      if( Result <> S_OK ) then
        Exit;

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.UpStreamQueryPossybleInterface( const IID : TGUID ) : HResult;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  Result := inherited UpStreamQueryPossybleInterface( IID );

  var ADataTypeSources := FDataTypeSources.GetList();
  for var I : Integer := 0 to ADataTypeSources.Count - 1 do
    begin
    Result := ADataTypeSources[ I ].UpStreamForthQueryPossybleInterface( IID, Self );
    if( Result <> S_OK ) then
      Exit;

    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.UpStreamBackQueryPossybleInterface( const IID : TGUID; AForPin : TOWPin ) : HResult;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  Result := S_OK;

  if( AForPin = Self ) then
    begin
    for var AEntry in FSinkPins do
      begin
      if( AEntry.ConnectionPin is TOWBasicSinkPin ) then
        Result := TOWBasicSinkPin( AEntry.ConnectionPin ).UpStreamForthQueryPossybleInterface( IID, AForPin );

      if( Result <> S_OK ) then
        Break;

      end;

    Exit;
    end;

  var ADataTypeSources := FDataTypeSources.GetList();
  if( ADataTypeSources.Count <= 0 ) then
    Exit( UpStreamForthQueryPossybleInterface( IID, AForPin ));

  for var I : Integer := 0 to ADataTypeSources.Count - 1 do
    begin
    Result := ADataTypeSources[ I ].UpStreamBackQueryPossybleInterface( IID, AForPin );
    if( Result <> S_OK ) then
      Break;

    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.DownStreamBackQueryPossybleInterface( const IID : TGUID; AForPin : TOWPin ) : HResult;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  Result := S_OK;
  if( AForPin = Self ) then
    begin
    for var AEntry in FSinkPins do
      begin
      if( AEntry.ConnectionPin is TOWBasicSinkPin ) then
        Result := TOWBasicSinkPin( AEntry.ConnectionPin ).DownStreamForthQueryPossybleInterface( IID, AForPin );

      if( Result <> S_OK ) then
        Break;

      end;

    Exit;
    end;

  var ADataTypeSources := FDataTypeSources.GetList();
  if( ADataTypeSources.Count <= 0 ) then
    Exit( DownStreamForthQueryPossybleInterface( IID, AForPin ));

  for var I : Integer := 0 to ADataTypeSources.Count - 1 do
    begin
    Result := ADataTypeSources[ I ].DownStreamBackQueryPossybleInterface( IID, AForPin );
    if( Result <> S_OK ) then
      Break;

    end;

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.BackChainReconnect( const ADownIID : TGUID; const AUpIID : TGUID );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();

  var ADataTypeSources := FDataTypeSources.GetList();
  if( ADataTypeSources.Count > 0 ) then
    begin
    for var I : Integer := 0 to ADataTypeSources.Count - 1 do
      ADataTypeSources[ I ].BackChainReconnect( ADownIID, AUpIID );

    end

  else
    ForthChainReconnect( ADownIID, AUpIID );

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.ForthChainReconnect( const ADownIID : TGUID; const AUpIID : TGUID );

  procedure ChangeConnectionType( AEntry : TOWPinEntry );
  var
    AConverterClass : TOWFormatConverterClass;
    AConverter      : IOWFormatConverter;

  begin
    if( AEntry.ConnectedID <> ADownIID ) then
      begin
      AEntry.ConnectedID := DownStreamFindConnectionID( AEntry.RealPin, True, False, AConverter, AConverterClass, GUID_NULL );
      AEntry.SubmitFunction := GetSubmitFunctionID( AEntry.ConnectedID );
      NewConnection( AEntry.RealPin, TOWSubmitLink( AEntry.SubmitFunction ));
      end;

  end;

var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();

  for var AEntry in FSinkPins do
    begin
    ChangeConnectionType( AEntry );
    if( AEntry.ConnectionPin is TOWBasicSinkPin ) then
      TOWBasicSinkPin( AEntry.ConnectionPin ).ForthChainReconnect( ADownIID, AUpIID );
      
    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.CanConnectByType( const AType : TGUID; AUseConverters : Boolean = True ) : Boolean;
begin
  var APossibleStreamTypes : IOWPinTypeRestricted := TOWPinTypeRestricted.Create();
  DownStreamFillPossibleStreamTypes( APossibleStreamTypes, Self, Self );

  for var AItem in APossibleStreamTypes do
    if( AItem.ID = AType ) then
      Exit( True );

  if( AUseConverters ) then
    for var J : Integer := APossibleStreamTypes.Count - 1 downto 0 do
      if( OWCanConvert( APossibleStreamTypes[ J ].ID, AType )) then
        Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.DownStreamFindConnectionID( const AOtherPin : TOWBasicPin; AUseConverters : Boolean; ARequestConverters : Boolean; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; const ADataType : TGUID ) : TGUID;
var
  AUnknown  : IUnknown;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  Result := GUID_NULL;
  AConverterClass := NIL;
  AConverter := NIL;
  if( AOtherPin <> NIL ) then
    begin
    var APossibleStreamTypes : IOWPinTypeRestricted := TOWPinTypeRestricted.Create();

    DownStreamFillPossibleStreamTypes( APossibleStreamTypes, Self, AOtherPin );

    for var I : Integer := APossibleStreamTypes.Count - 1 downto 0 do
      if( Succeeded( AOtherPin.QueryInterface( APossibleStreamTypes[ I ].ID, AUnknown ))) then
        Exit( APossibleStreamTypes[ I ].ID );

    if( AUseConverters ) then
      begin
      for var I : Integer := FFormatConverters.Count - 1 downto 0 do
        begin
        var AId := FFormatConverters[ I ].GetInstance().FOutputPin.DownStreamFindConnectionID( AOtherPin, False, False, AConverter, AConverterClass, ADataType );
        if( AId <> GUID_NULL ) then
          if( Succeeded( AOtherPin.QueryInterface( AId, AUnknown ))) then
            begin
            Result := DownStreamFindConnectionID( FFormatConverters[ I ].GetInstance().FInputPin, False, False, AConverter, AConverterClass, ADataType );
            AConverter := FFormatConverters[ I ];
            Exit;
            end;

        end;

      if( ARequestConverters ) then
        for var J : Integer := APossibleStreamTypes.Count - 1 downto 0 do
          begin
          var AInputID := APossibleStreamTypes[ J ].ID;
          var AClass := AOtherPin.ClassType();
          while( AClass <> NIL ) do
            begin
            var AIntfTable := AClass.GetInterfaceTable();
            if( AIntfTable <> NIL ) then
              for var I : Integer := 0 to AIntfTable.EntryCount - 1 do
                if( OWGetConverter( AInputID, AIntfTable.Entries[ I ].IID, AConverterClass )) then
                  Exit( AInputID );

            AClass := AClass.ClassParent;
            end;
          end;

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.UpStreamForthQueryPossybleInterface( const IID : TGUID; AForPin : TOWPin ) : HResult;
var
  AUnknown  : IUnknown;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( AForPin = Self ) then
    Exit( S_OK );

  Result := inherited RequestInterface( IID, AUnknown );
  if( Result <> S_OK ) then
    Exit;

  for var AEntry in FSinkPins do
    begin
    if( AEntry.ConnectionPin is TOWBasicSinkPin ) then
      Result := TOWBasicSinkPin( AEntry.ConnectionPin ).UpStreamForthQueryPossybleInterface( IID, AForPin );

    if( Result <> S_OK ) then
      Exit;

    end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.DownStreamForthQueryPossybleInterface( const IID : TGUID; AForPin : TOWPin ) : HResult;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  
  if( AForPin = Self ) then
    Exit( S_OK );

  var AEntryFound := False;

  for var AItem in FStreamType do
    if( IID = AItem.ID ) then
      begin
      AEntryFound := True;
      Break;
      end;

  if( not AEntryFound ) then
    Exit( E_NOINTERFACE );

  for var AEntry in FSinkPins do
    if( AEntry.ConnectionPin is TOWBasicSinkPin ) then
      begin
      Result := TOWBasicSinkPin( AEntry.ConnectionPin ).DownStreamForthQueryPossybleInterface( IID, AForPin );
      if( Result <> S_OK ) then
        Exit;

      end;

  Result := S_OK;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.RequestInterface(const IID : TGUID; out Obj): HResult;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  Result := inherited RequestInterface( IID, Obj );
  if( Result = S_OK ) then
    Result := UpStreamQueryPossybleInterface( IID );

end;

//---------------------------------------------------------------------------
procedure TOWSourcePin.DownStreamFillPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin; AOtherPin : TOWBasicPin );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  inherited;

  var ADataTypeSources := FDataTypeSources.GetList();
  for var I : Integer := 0 to ADataTypeSources.Count - 1 do
    ADataTypeSources[ I ].DownStreamBackRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.UpStreamFillPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  inherited;

  var ADataTypeSources := FDataTypeSources.GetList();
  for var I : Integer := 0 to ADataTypeSources.Count - 1 do
    ADataTypeSources[ I ].UpStreamBackRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.PinDeletedNotify( const ADeletedPin : TOWBasicPin );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();

  inherited;
  if( ADeletedPin is TOWBasicSinkPin ) then
    begin
    FFunctionSources.Remove( TOWBasicSinkPin( ADeletedPin ) );
    FDataTypeSources.Remove( TOWBasicSinkPin( ADeletedPin ) );
    end;

  for var I : Integer := SinkCount - 1 downto 0 do
    begin
    var ASink := Sinks[ I ];
    if( ASink = ADeletedPin ) then
      IntDisconnect( ASink, False );

    end;
    
  for var AEntry in FSinkPins do
    if( AEntry.NotifyAfterPin = ADeletedPin ) then
      AEntry.NotifyAfterPin := NIL;
  
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.PinReplacedNotify( const AOldPin : TOWBasicPin; const ANewPin : TOWBasicPin );
var
  AWriteLock  : ILockSection;
  
begin
  AWriteLock := WriteLock();
  for var AEntry in FSinkPins do
    if( AEntry.NotifyAfterPin = AOldPin ) then
      AEntry.NotifyAfterPin := ANewPin;
       
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.UnlodedPinRemoved( const APin : TOWBasicPin );
begin
  for var I : Integer := FSinkPins.Count - 1 downto 0 do
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
function TOWSourcePin.GetConnectedPin( AIndex : Integer ) : TOWBasicPin;
begin
  Result := Sinks[ AIndex ];
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetEditorString() : String;
begin
  var ALinksCount := SinkCount;
  if( ALinksCount = 0 ) then
    Exit( inherited GetEditorString() );

  if( ALinksCount = 1 ) then
    begin
    if( FDispatcher = NIL ) then
      begin
      if( SinkCount = 1 ) then
        Exit( GetLinkStr( 0 ) );

      Exit( '( ' + IntToStr( ALinksCount + FDispatcher.PinCount - 1 ) + ' Links )' );
      end;

    Exit( '( ' + IntToStr( ALinksCount + FDispatcher.PinCount - 1 ) + ' Links )' );
    end;

  if( FDispatcher = NIL ) then
    Exit( '( ' + ALinksCount.ToString() + ' Links )' );

  Result := '( ' + IntToStr( ALinksCount + FDispatcher.PinCount - 1 ) + ' Links )';
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
function TOWSourcePin.GetConnectedAfterForPin( const AOtherPin : TOWBasicPin ) : TOWBasicPin;
begin
  var AEntry := FSinkPins.GetItemByPin( AOtherPin );
  if( AEntry <> NIL ) then
    Exit( AEntry.NotifyAfterPin );

  Result := NIL;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.ConnectAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin ) : Boolean;
begin
  if( AOtherPin = Self ) then
    Exit( False );

  FImageCached := False;
  if( AOtherPin <> NIL ) then
    if( not CanConnectAfter( AOtherPin, ANotifyAfterPin ) ) then
      Exit( False );

  Result := IntConnectAfter( AOtherPin, ANotifyAfterPin, GUID_NULL );
  FImageCached := False;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.IntConnectAfter( AOtherPin : TOWBasicPin; ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID ) : Boolean;
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  Result := False;

  if( AOtherPin <> NIL ) then
    if( ( AOtherPin is TOWBasicSinkPin ) or ( AOtherPin is TOWStatePin ) or ( AOtherPin is TOWUnloadedPin )) then
      begin
      if( FMaxConnections > 0 ) then
        if( SinkCount >= FMaxConnections ) then
          if( not IsConnectedTo( AOtherPin )) then
            IntDisconnectFrom( Sinks[ 0 ], True );

//      Result := True;

      Result := AOtherPin.ConnectAfter( Self, ANotifyAfterPin );
      end;

  FImageCached := False;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.CanConnectAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; AUseConverters : Boolean ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( PreviewConnected( Self, AOtherPin )) then
    Exit( False );

  Result := inherited CanConnectAfter( AOtherPin, ANotifyAfterPin, AUseConverters );
  if( Result ) then
    Exit;

  if( AOtherPin = ANotifyAfterPin ) then
    Exit;

  if( ( not Result ) and ( OwnerInLoading() or FInEditor ) ) then
    Exit( True );

  for var AEntry in FSinkPins do
    if( AEntry.RealPin = ANotifyAfterPin ) then
      begin
      if( AEntry.NotifyAfterPin <> NIL ) then
        Exit( CanConnectAfter( AOtherPin, AEntry.NotifyAfterPin, AUseConverters ));

      Exit( True );
      end;

end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.NewConnection( const ASinkPin : TOWBasicPin );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();

  var AEntry := FSinkPins.GetItemByPin( ASinkPin );
  NewConnection( AEntry.ConnectionPin, TOWSubmitLink( AEntry.SubmitFunction ));
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.BackPopulateStreamChains( const AChain : IArrayList<IOWObjectList>; const AList : IOWObjectList );
var
  ASubList  : IOWObjectList;

begin
  AList.Add( Self );
  var AFunctionSources := FFunctionSources.GetList();
  for var I : Integer := 0 to AFunctionSources.Count - 1 do
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
  AWriteLock      : ILockSection;
  ASelfUnlockLock : ILockSection;
  AConverterClass : TOWFormatConverterClass;
  AConverter      : IOWFormatConverter;
  ADestroyLock    : IOWDestroyLockSection;

begin
  if( not Assigned( ASubmitFunctionIn )) then
    Exit;

  var ASubmitFunction : TOWSubmit := TOWSubmit( ASubmitFunctionIn );
  AWriteLock := WriteLock();
  if( FInSending > 10 ) then
    raise EOWException.Create( 'The pin depends on itself. Please protect with functional dependency.' );

  Inc( FInSending );
  var ADataTypeID := DownStreamFindConnectionID( ASinkPin, True, False, AConverter, AConverterClass, GUID_NULL );
  AWriteLock := NIL;
  ASelfUnlockLock := UnlockAll();

  ADestroyLock := FDestroyLock.Lock();
  if( ADestroyLock <> NIL ) then
    if( Assigned( ASubmitFunction ) ) then
      begin
      FOwnerLock.ExecuteUnlockAllLockInOrder( FInputOwnerLock,
          procedure()
          begin
            ASubmitFunction( Self, ASinkPin, ADataTypeID, TOWNotifyOperation.Make(), [ nsNewLink, nsLastIteration ] );
          end
        );

      end;

  ASelfUnlockLock := NIL;
  
  AWriteLock := NIL;
//  AUnlock := NIL;

//    AUnlock := FOwnerLock.UnlockAllLockInOrder( FInputOwnerLock );

  AWriteLock := WriteLock();

  var AIsDebugConnection := IsDebugPin();
  if( not AIsDebugConnection ) then
    if( ASinkPin <> NIL ) then
      AIsDebugConnection := ASinkPin.IsDebugPin();

  OWNotifyChangePin( Self, AIsDebugConnection );
  Dec( FInSending );
end;
//---------------------------------------------------------------------------
function TOWSourcePin.IsCompatible( const AOtherPin : TOWBasicPin; AUseConverters : Boolean ) : Boolean;
var
  AConverter      : IOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  AReadLock       : ILockSection;

begin
  AReadLock := ReadLock();

  if( AOtherPin is TOWBasicSinkPin ) then
    begin
    var ASinkPin := TOWBasicSinkPin( AOtherPin );
    Exit( ASinkPin.IsCompatible( Self, AUseConverters ) );
    end;

  if( AOtherPin is TOWStatePin ) then
    begin
    var AStatePin := TOWStatePin( AOtherPin );

    Exit( not IsEqualGUID( FindConnectionID( AStatePin, AConverter, AConverterClass, AUseConverters, GUID_NULL ), GUID_NULL ));
//    if( Result ) then
//      Result := not IsEqualGUID( AStatePin.FindConnectionID( Self ), GUID_NULL );

    end;

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.CanConnectToInt( const AOtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; AUseConverters : Boolean; const ADataType : TGUID ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( PreviewConnected( Self, AOtherPin )) then
    Exit( False );

  if( not( FOwner is TOWFormatConverter )) then
    begin
    if( ( AOtherPin.OwnerInDesigning( False ) ) and ( not OwnerInDesigning( False ) )) then
      Exit( False );

    if( ( not ( AOtherPin.OwnerInDesigning( False ) )) and OwnerInDesigning( False ) ) then
      Exit( False );

    end;

  if( inherited CanConnectToInt( AOtherPin, AConverter, AConverterClass, AUseConverters, ADataType )) then
    Exit( True );

  var AOtherPinLocal := AOtherPin;
  if( AOtherPinLocal <> NIL ) then
    if( AOtherPinLocal <> Self ) then
      if( AOtherPinLocal is TOWBasicSinkPin ) then
        begin
        AReadLock := NIL;
        Exit( AOtherPinLocal.CanConnectTo( Self, AUseConverters ));
        end;

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.IsConnected() : Boolean;
begin
  Result := ( FSinkPins.Count > 0 ) or inherited IsConnected();
end;
//---------------------------------------------------------------------------
function TOWSourcePin.DirectDependsOn( const AOtherPin : TOWBasicPin ) : Boolean;
var
  AReadLock         : ILockSection;
  AFunctionSources  : IOWSinkPinListCopy;

begin
  AReadLock := ReadLock();
  if( FInDependOn ) then
    Exit( False );

  FInDependOn := True;
  if( AOtherPin <> NIL ) then
    begin
    AFunctionSources := FFunctionSources.GetList();
    for var I : Integer := 0 to AFunctionSources.Count - 1 do
      if( AFunctionSources[ I ] = AOtherPin ) then
        begin
        FInDependOn := False;
        Exit( True );
        end;

    end;

  FInDependOn := False;
  Result := False;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.DependsOn( const AOtherPin : TOWBasicPin ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( FInDependOn ) then
    Exit( False );

  FInDependOn := True;
  if( AOtherPin <> NIL ) then
    begin
    var AFunctionSources := FFunctionSources.GetList();
    for var I : Integer := 0 to AFunctionSources.Count - 1 do
      if( AFunctionSources[ I ] = AOtherPin ) then
        begin
        FInDependOn := False;
        Exit( True );
        end;

    AReadLock := NIL;
    try
      for var I : Integer := 0 to AFunctionSources.Count - 1 do
        if( AFunctionSources[ I ].DependsOn( AOtherPin ) ) then
          begin
          AReadLock := ReadLock();
          FInDependOn := False;
          Exit( True );
          end;

    except
      end;

    AReadLock := ReadLock();
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
    NotifyDispatcher( TOWNotifyOperation.Make(), [nsNewLink], NIL );
    
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetAfterPinDisplayName( APin : TOWPin ) : String;
begin
  Result := '';
  for var AEntry in FSinkPins do
    if( AEntry.RealPin = APin ) then
      begin
      if( AEntry.NotifyAfterPin <> NIL ) then
        Exit( AEntry.NotifyAfterPin.GetFullName( GetRoot() <> APin.GetRoot() ));

      Exit;
      end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetConnectionID( const AOtherPin : TOWBasicPin; AReturnConvertedID : Boolean = False ) : TGUID;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  var AEntry := FSinkPins.GetItemByPin( AOtherPin );
  if( AEntry <> NIL ) then
    begin
    if( AReturnConvertedID ) then
      begin
      if( AEntry.ConnectionPin <> AEntry.RealPin ) then
        begin
        for var AConverterIntf in FFormatConverters do
          begin
          var AConverter := AConverterIntf.GetInstance();
          if( AConverter.OutputPin.IsConnectedTo( AOtherPin )) then
            Exit( AConverter.OutputPin.GetConnectionID( AOtherPin, True ));

          end;
        end;
      end;

    Exit( AEntry.ConnectedID );
    end;

  Result := inherited;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetPrimaryConnectionID() : TGUID;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( GetSinkCount() > 0 ) then
    Exit( FSinkPins[ 0 ].ConnectedID );

  Result := inherited;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.IsConnectedTo( const AOtherPin : TOWBasicPin ) : Boolean; //const;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  for var I : Integer := 0 to GetSinkCount() - 1 do
    if( AOtherPin = GetSink( I ) ) then
      Exit( True );

  Result := inherited;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.IsConnectedAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  for var I : Integer := 0 to GetSinkCount() - 1 do
    if( ( AOtherPin = GetSink( I ) ) and ( FSinkPins[ I ].NotifyAfterPin = ANotifyAfterPin ) ) then
      Exit( True );

  Result := inherited;
end;
//---------------------------------------------------------------------------
function TOWSourcePin.IsConnectedByConverterTo( const AOtherPin : TOWBasicPin ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( inherited ) then
    Exit( True );

  // Fixes 64 bit compiler bug! // Do not change to Exit(  )
  Result := False;
  if( IsConnectedTo( AOtherPin )) then
    for var I : Integer := FFormatConverters.Count - 1 downto 0 do
      if( FFormatConverters[ I ].GetInstance().OutputPin.IsConnectedTo( AOtherPin )) then
        begin
        // Fixes 64 bit compiler bug! // Do not change to Exit(  )
        Result := True;
        Break;
        end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetConnectionConverter( const AOtherPin : TOWBasicPin; out AConverter : IOWFormatConverter ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( inherited ) then
    Exit( True );

  // Fixes 64 bit compiler bug! // Do not change to Exit(  )
  Result := False;
  AConverter := NIL;
  if( IsConnectedTo( AOtherPin )) then
    for var I : Integer := FFormatConverters.Count - 1 downto 0 do
      begin
      var AConverterItem := FFormatConverters[ I ];
      if( AConverterItem.GetInstance().OutputPin.IsConnectedTo( AOtherPin )) then
        begin
        AConverter := AConverterItem;
        // Fixes 64 bit compiler bug! // Do not change to Exit(  )
        Result := True;
        Break;
        end;
      end;

end;
//---------------------------------------------------------------------------
function TOWSourcePin.CheckDownStreamInterfaces( const AOtherPin : TOWBasicPin; AUseConverters : Boolean ) : Boolean;
var
  AConverterClass : TOWFormatConverterClass;
  AConverter      : IOWFormatConverter;
  
begin
  Result := not IsEqualGUID( DownStreamFindConnectionID( AOtherPin, AUseConverters, True, AConverter, AConverterClass, GUID_NULL ), GUID_NULL );
end;
//---------------------------------------------------------------------------
function TOWSourcePin.GetImage( out AImage : IGPBitmap ) : Boolean;
begin
  if( FImageCached ) then
    begin
    AImage := FImage;
    Exit( AImage <> NIL );
    end;

  if( not IsConnected()) then
    if( inherited ) then
      Exit( True );

  FImageCached := True;
  Result := GetInputOutputImage( AImage, False, True );
end;
//---------------------------------------------------------------------------
function TOWSourcePin.IsLinkedTo( const APinName : String ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  for var I : Integer := 0 to GetSinkCount() - 1 do
    begin
    var ASink := Sinks[ I ];
    if( APinName = ASink.GetFullName( True )) then // GetLinkStr( I, False )) then
      Exit( True );

    if( ASink.GetRootName() = GetRootName() ) then
      if( APinName = ASink.GetFullName( False )) then
        Exit( True );

    end;

  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.Disconnect();
var
  ADestroyLock : IOWDestroyLockSection;
  AWriteLock   : ILockSection;

begin
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();
  FImageCached := False;
  var AWasConnected := IsConnected();
  if( AWasConnected ) then
    begin
    BeforeDisconnect();
    OWNotifyDisconnectingPin( Self, False );
    end;

  try
    inherited Disconnect();
    for var I : Integer := GetSinkCount() - 1 downto 0 do
      begin
      var ASink := GetSink( I );
      BeforeDisconnectFrom( ASink );
      ASink.BeforeDisconnect();
      IntDisconnectFrom( ASink, False );
      end;

  finally
    if( AWasConnected ) then
      OWNotifyDisconnectedPin( Self, False );

    end;

  FSinkPins.Clear();
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.IntDisconnectFrom( AOtherPin : TOWBasicPin; AFromConnecting : Boolean );
begin
  var ADesignFormClosing := False;
  FImageCached := False;
  if( OwnerInDesigning( False ) ) then
    if( RootInDestroying() ) then
      ADesignFormClosing := True;

  OWNotifyDisconnecting( Self, AOtherPin, AFromConnecting );
  IntDisconnect( AOtherPin, ADesignFormClosing );
  AOtherPin.IntDisconnect( Self, ADesignFormClosing );
  AOtherPin.CheckRemove();
  OWNotifyDisconnected( Self, False );
end;
//---------------------------------------------------------------------------
procedure TOWSourcePin.DisconnectFrom( const AOtherPin : TOWBasicPin );
var
  ADestroyLock : IOWDestroyLockSection;
  AWriteLock   : ILockSection;

begin
  BeforeDisconnect();
  FImageCached := False;
  BeforeDisconnectFrom( AOtherPin );
  if( not IsConnectedTo( AOtherPin ) ) then
    inherited DisconnectFrom( AOtherPin )

  else
    begin
    AWriteLock := WriteLock();
    ADestroyLock := FDestroyLock.DestroyLock();
    IntDisconnectFrom( AOtherPin, False );
    end;
    
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWBasicSinkPin.Create( const AOnCreated : TProc<TOWPin>; const AOwnerLock : IBasicLock );
begin
  inherited;
  FIgnoreUpstream := TypeInfo().HasCustomAttribute( OWIgnoreUpstreamAttribute );
end;
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
begin
  if( FImageCached ) then
    begin
    AImage := FImage;
    Exit( AImage <> NIL );
    end;

  if( not IsConnected()) then
    if( inherited ) then
      Exit( True );

  FImageCached := True;

  try
    Result := GetInputOutputImage( AImage, True, False );
  except
    Result := False;
    end;

end;
//---------------------------------------------------------------------------
function TOWBasicSinkPin.IsCompatible( const AOtherPin : TOWBasicPin; AUseConverters : Boolean ) : Boolean;
var
  AConverter  : IOWFormatConverter;
  AReadLock   : ILockSection;

begin
  if( AOtherPin = NIL ) then
    Exit( True );

  Result := False;

  AReadLock := ReadLock();
  if( AOtherPin is TOWSourcePin ) then
    begin
    var ASourcePin := TOWSourcePin( AOtherPin );

    Result := ASourcePin.CheckDownStreamInterfaces( Self, AUseConverters );

    if( Result and not FIgnoreUpstream) then
      Result := CheckUpStreamInterfaces( ASourcePin, AUseConverters );

    end

  else if( AOtherPin is TOWStatePin ) then
    begin
    var AStatePin := TOWStatePin( AOtherPin );
    var AConverterClass : TOWFormatConverterClass;
    Result := not IsEqualGUID( AStatePin.FindConnectionID( Self, AConverter, AConverterClass, AUseConverters, GUID_NULL ), GUID_NULL );
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
procedure TOWBasicSinkPin.DownStreamForthRestrictPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( AForPin = Self ) then
    Exit;

  var I := 0;
  while( I < APossibleStreamTypes.Count ) do
    begin
    var APossibleStreamTypesID := APossibleStreamTypes[ I ].ID;
    if( Supports( Self, APossibleStreamTypesID )) then
      Inc( I )

    else
      APossibleStreamTypes.RemoveType( APossibleStreamTypesID );

    end;

  for var ATypeDep in FDataTypeDependants do
    ATypeDep.DownStreamForthRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );

end;
//---------------------------------------------------------------------------
procedure TOWBasicSinkPin.UpStreamForthRestrictPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( HasToIgnoreUpstream() ) then
    Exit;

  if( AForPin = Self ) then
    Exit;

  var I := 0;
  while( I < APossibleStreamTypes.Count ) do
    begin
    var AEntryFound := False;
    for var AItem in FStreamType do
      if( AItem.ID = APossibleStreamTypes[ I ].ID ) then
        begin
        AEntryFound := True;
        Break;
        end;

    if( AEntryFound ) then
      Inc( I )

    else
      APossibleStreamTypes.RemoveType( APossibleStreamTypes[ I ].ID );

    end;

  for var ATypeDep in FDataTypeDependants do
    ATypeDep.UpStreamForthRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );

end;
//---------------------------------------------------------------------------
function TOWBasicSinkPin.UpStreamForthQueryPossybleInterface( const AIID : TGUID; AForPin : TOWPin ) : HResult;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( AForPin = Self ) then
    Exit( S_OK );

  var AEntryFound := False;
  for var AItem in FStreamType do
    if( AIID = AItem.ID ) then
      begin
      AEntryFound := True;
      Break;
      end;

  if( not AEntryFound ) then
    Exit( E_NOINTERFACE );

  for var ATypeDep in FDataTypeDependants do
    begin
    Result := ATypeDep.UpStreamForthQueryPossybleInterface( AIID, AForPin );
    if( Result <> S_OK ) then
      Exit;

    end;

  Result := S_OK;
end;
//---------------------------------------------------------------------------
function TOWBasicSinkPin.DownStreamForthQueryPossybleInterface( const AIID : TGUID; AForPin : TOWPin ) : HResult;
var
  AUnknown  : IUnknown;
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( AForPin = Self ) then
    Exit( S_OK );

  Result := inherited RequestInterface( AIID, AUnknown );
  if( Result <> S_OK ) then
    Exit;

  for var ATypeDep in FDataTypeDependants do
    begin
    Result := ATypeDep.DownStreamForthQueryPossybleInterface( AIID, AForPin );
    if( Result <> S_OK ) then
      Exit;

    end;

end;
//---------------------------------------------------------------------------
procedure TOWBasicSinkPin.IntAddDataTypeDependance( ADataTypeDependancePin : TOWSourcePin );
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  FDataTypeDependants.Add( ADataTypeDependancePin );
end;
//---------------------------------------------------------------------------
procedure TOWBasicSinkPin.IntRemoveDataTypeDependance( ADataTypeDependancePin : TOWSourcePin );
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  FDataTypeDependants.RemoveOne( ADataTypeDependancePin );
end;
//---------------------------------------------------------------------------
function TOWBasicSinkPin.CanConnectByType( const AType : TGUID; AUseConverters : Boolean = True ) : Boolean;
begin
  var APossibleStreamTypes : IOWPinTypeRestricted := TOWPinTypeRestricted.Create();
//  UpStreamFillPossibleStreamTypes( APossibleStreamTypes, Self );
  var AClass := ClassType();
  while( AClass <> NIL ) do
    begin
    var AIntfTable := AClass.GetInterfaceTable();
    if( AIntfTable <> NIL ) then
      for var I : Integer := 0 to AIntfTable.EntryCount - 1 do
        APossibleStreamTypes.AddType( AIntfTable.Entries[ I ].IID, NIL, False );

    AClass := AClass.ClassParent;
    end;

  for var AItem in APossibleStreamTypes do
    if( AItem.ID = AType ) then
      Exit( True );

  if( AUseConverters ) then
    for var J : Integer := APossibleStreamTypes.Count - 1 downto 0 do
      if( OWCanConvert( AType, APossibleStreamTypes[ J ].ID )) then
        Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWBasicSinkPin.UpStreamFindConnectionID( const AOtherPin : TOWSourcePin; const APreferedID : TGUID ) : TGUID;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := GUID_NULL;
  if( AOtherPin <> NIL ) then
    begin
    var APossibleStreamTypes : IOWPinTypeRestricted := TOWPinTypeRestricted.Create();
    AOtherPin.UpStreamFillPossibleStreamTypes( APossibleStreamTypes, Self );

    for var I : Integer := APossibleStreamTypes.Count - 1 downto 0 do
      begin
      var AID := APossibleStreamTypes[ I ].ID;
      if( Supports( AOtherPin, AID )) then
        begin
        if( AID = APreferedID ) then
          Exit( AID );

        if( Result = GUID_NULL ) then
          Result := AID;

        end;
      end;
    end;

end;
//---------------------------------------------------------------------------
procedure TOWBasicSinkPin.ChainReconnect( const ADownIID : TGUID; const AUpIID : TGUID );
begin
  BackChainReconnect( ADownIID, AUpIID );
  FImageCached := False;
end;
//---------------------------------------------------------------------------
function TOWBasicSinkPin.CanConnectToInt( const AOtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; AUseConverters : Boolean; const ADataType : TGUID ) : Boolean;
var
  AReadLock : ILockSection;

begin
  if( PreviewConnected( Self, AOtherPin )) then
    Exit( False );

  if( not( FOwner is TOWFormatConverter ) and not( AOtherPin.Owner is TOWFormatConverter )) then
    begin
    if( ( AOtherPin.OwnerInDesigning( False ) ) and ( not OwnerInDesigning( False ) )) then
      Exit( False );

    if( ( not( AOtherPin.OwnerInDesigning( False ) ) and OwnerInDesigning( False ))) then
      Exit( False );

    end;

  AReadLock := ReadLock();
  Result := inherited CanConnectToInt( AOtherPin, AConverter, AConverterClass, AUseConverters, ADataType );
  if( Result ) then
    Exit;

  if( AOtherPin = NIL ) then
    Exit;

  if( AOtherPin = Self ) then
    Exit;

  if( IsCompatible( AOtherPin, AUseConverters )) then
    Result := not AOtherPin.DependsOn( Self );

end;
//---------------------------------------------------------------------------
function TOWBasicSinkPin.CheckUpStreamInterfaces( const AOtherPin : TOWSourcePin; AUseConverters : Boolean ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( HasToIgnoreUpstream() ) then
    Exit( True );

  var AConverterClass : TOWFormatConverterClass;
  var AConverter : IOWFormatConverter;
  Result := not IsEqualGUID( UpStreamFindConnectionID( AOtherPin, AOtherPin.DownStreamFindConnectionID( Self, AUseConverters, False, AConverter, AConverterClass, GUID_NULL ) ), GUID_NULL );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
destructor TOWMultiSinkPin.Destroy();
var
  ADestroyLock  : IOWDestroyLockSection;
  AWriteLock    : ILockSection;

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
function TOWMultiSinkPin.GetSource( AIndex : Integer ) : TOWBasicPin;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FSourcePins[ AIndex ].RealPin;
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
function TOWMultiSinkPin.GetConverter( AIndex : Integer ) : IOWFormatConverter;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FFormatConverters[ AIndex ];
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.GetPinType() : TOWPinType;
begin
  Result := ptMultiSink;
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.GetLinkStr( AItem : Integer ) : String;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  var AddRoot := False;
  if( SourceCount > 0 ) then
    AddRoot := Sources[ AItem ].GetRoot() <> GetRoot();

//  Result := Sinks[ AItem ].GetFullName( ( AddRoot ) or (( Sinks[ AItem ].Owner = NIL ) or ( Sinks[ AItem ].Owner.Owner = NIL )) );
  Result := Sources[ AItem ].GetFullName( AddRoot );
{
  if(( AddRoot ) and ( Sinks[ AItem ].Owner.Owner = NIL )) then
    Result := Sinks[ AItem ].GetRootName() + '.' + OWValueToString( Sinks[ AItem ], '.', False, False )

  else
    Result := OWValueToString( Sinks[ AItem ], '.', AddRoot, SaveFormat );
}
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.TryLinkTo( ARoot : TComponent; const ASourceIdent : String; const ASourceName : String; const AReadIdentAfter : String; ASaveForm : Boolean ) : Boolean;
var
  ADictionary       : IDictionary<String, TOWBasicPin>;
  APinValueFilters  : TOWPinValueFilters;
  AWriteLock        : ILockSection;

begin
  if( ASaveForm ) then
    APinValueFilters := [ pvoFullList, pvoSaveValue ]

  else
    APinValueFilters := [ pvoFullList ];

  if( ASourceIdent = '' ) then
    begin
    if( not ASaveForm ) then
      Disconnect();

//    CheckLinks();
    Exit( True );
    end;

  AWriteLock := WriteLock();

  var AMyRoot := GetRoot();
  if( ( AMyRoot <> ARoot ) and ( ARoot <> NIL )) then
    ADictionary := OWGetPinsValueListSingle( ARoot, Self, '.', ARoot.Name, APinValueFilters )

  else
    ADictionary := OWGetPinsValueList( Self, '.', APinValueFilters );

  var ASourcePin : TOWBasicPin;
  if( ADictionary.GetValue( ASourceIdent, ASourcePin )) then
    begin
    Connect( ASourcePin );
    Exit( True );
    end;

//    CheckLinks();
  Result := False;
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.GetEditorString() : String;
begin
  var ALinksCount := SourceCount;
  if( ALinksCount = 0 ) then
    Exit( inherited GetEditorString() );

  if( ALinksCount = 1 ) then
    begin
    if( FDispatcher = NIL ) then
      begin
      if( SourceCount = 1 ) then
        Exit( GetLinkStr( 0 ) );

      Exit( '( ' + IntToStr( ALinksCount + FDispatcher.PinCount - 1 ) + ' Links )' );
      end;

    Exit( '( ' + IntToStr( ALinksCount + FDispatcher.PinCount - 1 ) + ' Links )' );
    end;

  if( FDispatcher = NIL ) then
    Exit( '( ' + ALinksCount.ToString() + ' Links )' );

  Result := '( ' + IntToStr( ALinksCount + FDispatcher.PinCount - 1 ) + ' Links )';
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.SetEditorString( ARoot : TComponent; const AValue : String ) : Boolean;
begin
  Result := TryLinkTo( ARoot, AValue, AValue, '', False );
end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.DownStreamBackRestrictPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( AForPin = Self ) then
    begin
    for var ATypeDep in FDataTypeDependants do
      ATypeDep.DownStreamForthRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );

    Exit;
    end;

  var AProcessed := False;
  for var I := 0 to SourceCount do
    if( Sources[ I ] is TOWSourcePin ) then
      begin
      TOWSourcePin( Sources[ I ] ).DownStreamBackRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );
      AProcessed := True;
      end;

  if( not AProcessed ) then
    begin
    if( not APossibleStreamTypes.GetOrdered() ) then
      OrderStreamTypes( APossibleStreamTypes );

    DownStreamForthRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.UpStreamBackRestrictPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( AForPin = Self ) then
    begin
    for var ATypeDep in FDataTypeDependants do
      ATypeDep.UpStreamForthRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );

    Exit;
    end;

  if( HasToIgnoreUpstream() ) then
    Exit;

  var AProcessed := False;
  for var I := 0 to SourceCount do
    begin
    var ASource := Sources[ I ];
    if( ASource is TOWSourcePin ) then
      begin
      TOWSourcePin( ASource ).UpStreamBackRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );
      AProcessed := True;
      end;
    end;

  if( not AProcessed ) then
    begin
//    if( not APossibleStreamTypes.Ordered ) then
//      OrderStreamTypes( APossibleStreamTypes );

    UpStreamForthRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );
    end;

end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.UpStreamBackQueryPossybleInterface( const AIID : TGUID; AForPin : TOWPin ) : HResult;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := S_OK;

  if( AForPin = Self ) then
    begin
    for var ATypeDep in FDataTypeDependants do
      begin
      Result := ATypeDep.UpStreamForthQueryPossybleInterface( AIID, AForPin );
      if( Result <> S_OK ) then
        Break;

      end;

    Exit;
    end;

  var AProcessed := False;
  for var I := 0 to SourceCount do
    if( Sources[ I ] is TOWSourcePin ) then
      begin
      Result := TOWSourcePin( Sources[ I ] ).UpStreamBackQueryPossybleInterface( AIID, AForPin );
      AProcessed := True;
      end;

  if( not AProcessed ) then
    Result := UpStreamForthQueryPossybleInterface( AIID, AForPin );

end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.DownStreamBackQueryPossybleInterface( const AIID : TGUID; AForPin : TOWPin ) : HResult;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := S_OK;

  if( AForPin = Self ) then
    begin
    for var ATypeDep in FDataTypeDependants do
      begin
      Result := ATypeDep.DownStreamForthQueryPossybleInterface( AIID, AForPin );
      if( Result <> S_OK ) then
        Break;

      end;

    Exit;
    end;

  var AProcessed := False;
  for var I := 0 to SourceCount do
    begin
    var APin := Sources[ I ];
    if( APin is TOWSourcePin ) then
      begin
      Result := TOWSourcePin( APin ).DownStreamBackQueryPossybleInterface( AIID, AForPin );
      AProcessed := True;
      end;
    end;

  if( not AProcessed ) then
    Result := DownStreamForthQueryPossybleInterface( AIID, AForPin );

end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.IsLinkedTo( const APinName : String ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  for var I : Integer := 0 to GetSourceCount() - 1 do
    begin
    var ASource := Sources[ I ];
    if( APinName = ASource.GetFullName( True )) then // GetLinkStr( I, False )) then
      Exit( True );

    if( ASource.GetRootName() = GetRootName() ) then
      if( APinName = ASource.GetFullName( False )) then
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
function TOWMultiSinkPin.GetConnectedPin( AIndex : Integer ) : TOWBasicPin;
begin
  Result := Sources[ AIndex ];
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.ConnectAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin ) : Boolean;
begin
  if( AOtherPin = Self ) then
    Exit( False );

  FImageCached := False;
  if( AOtherPin <> NIL ) then
    if( not CanConnectAfter( AOtherPin, ANotifyAfterPin ) ) then
      Exit( False );

  Result := IntConnectAfter( AOtherPin, ANotifyAfterPin, GUID_NULL );
  FImageCached := False;
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.CanConnectAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; AUseConverters : Boolean ) : Boolean;
begin
  if( AOtherPin = NIL ) then
    Exit( True );

  if( AOtherPin is TOWBasicSinkPin ) then
    Exit( False );

  Result := AOtherPin.CanConnectAfter( Self, ANotifyAfterPin, AUseConverters );
end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.IntConnect( const ASourcePin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID; AFromOther : Boolean );
var
  AWriteLock      : ILockSection;
  AConverterClass : TOWFormatConverterClass;

begin
  AWriteLock := WriteLock();

  var AEntry := FSourcePins.Add();
  AEntry.RealPin := ASourcePin;
  AEntry.NotifyAfterPin := NIL; // Only SourcePins use ANotifyAfterPin;
  AEntry.ConnectionPin := NIL;
  var AConverter : IOWFormatConverter := NIL;
  if( ASourcePin is TOWSourcePin ) then
    begin
    var ADataTypeID := TOWSourcePin( ASourcePin ).DownStreamFindConnectionID( Self, True, False, AConverter, AConverterClass, ADataType );
    AEntry.ConnectedID := UpStreamFindConnectionID( TOWSourcePin( ASourcePin ), ADataTypeID );
//  AEntry.ConnectedID := UpStreamFindConnectionID( TOWSourcePin( ASourcePin ), TOWSourcePin( ASourcePin ).GetConnectionID( Self ) ); //  UpStreamFindConnectionID( TOWSourcePin( ASourcePin ), True, True, AConverter, AConverterClass );

    var ADownStreamID := TOWSourcePin( ASourcePin ).DownStreamFindConnectionID( Self, True, False, AConverter, AConverterClass, ADataType );
    ChainReconnect( ADownStreamID, AEntry.ConnectedID );
    end;
  
  AEntry.ModificationLevel := 0;
  AEntry.SubmitFunction := NIL;
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
    AEntry.ConnectionPin := AConverter.FInputPin;
    AConverter.FOutputPin.ConnectAfter( ASourcePin, ANotifyAfterPin );
    TOWSourcePin( ASourcePin ).FConnectionSourcePin := AConverter.FOutputPin;
    end

  else
    AEntry.ConnectionPin := SinkPin;
}
  AEntry.SubmitFunction := GetSubmitFunctionID( AEntry.ConnectedID );
  AEntry.ModificationLevel := 0;

{
  if( Owner <> NIL ) then
    RootName := OWGetMainOwnerComponent( Owner ).Name

  else
    RootName := '';
}
////  SinkPin.FDownStreamLinkName := GetLinkNameID( AEntry.ConnectedID );

//  SinkPins.Add( AEntry );
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.IntConnectAfter( AOtherPin : TOWBasicPin; ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID ) : Boolean;
var
  AWriteLock  : ILockSection;

begin
  if( AOtherPin = NIL ) then
    Exit( False );

  if( PreviewConnected( Self, AOtherPin )) then
    Exit( False );

  FImageCached := False;
  var ARealSourcePin : TOWBasicPin := NIL;
  AWriteLock := WriteLock();
  for var AEntry in FSourcePins do
    begin
    if( AOtherPin = AEntry.RealPin ) then
      begin
      ARealSourcePin := AEntry.RealPin;
      Break;
      end;

    if( AOtherPin = AEntry.ConnectionPin ) then
      Exit( True );

    end;

  if( ARealSourcePin <> NIL ) then
    if( AOtherPin.GetConnectedAfterForPin( Self ) = ANotifyAfterPin ) then
      Exit( True );

  if( CanConnectTo( AOtherPin )) then
    begin
//    if( FDispatcher <> NIL ) then
//      Disconnect();
      
    if( AOtherPin is TOWSourcePin ) then
      begin
      IntDisconnectFrom( AOtherPin, True );
      var AEntry := FSourcePins.Add();
      AEntry.ConnectionPin := AOtherPin;
      AEntry.RealPin := AOtherPin;
      AEntry.NotifyAfterPin := NIL; // Only the Source Pin uses AfterPin
      AWriteLock := NIL;
      AWriteLock := AOtherPin.WriteLock();
      TOWSourcePin( AOtherPin ).IntConnect( Self, ANotifyAfterPin, ADataType, True );
      AWriteLock := NIL;
      AWriteLock := WriteLock();
      AEntry.RealPin := AOtherPin;
//      FRealSourcePin := TOWSourcePin( AOtherPin );
//      FIntRealSourcePin := TOWSourcePin( AOtherPin );

      Result := True;
      if( AEntry.RealPin is TOWSourcePin ) then
        begin
        var AConverterClass : TOWFormatConverterClass;
        var AConverter : IOWFormatConverter;

        var ADataTypeID := TOWSourcePin( AEntry.RealPin ).DownStreamFindConnectionID( Self, True, False, AConverter, AConverterClass, ADataType );
        AEntry.ConnectedID := UpStreamFindConnectionID( TOWSourcePin( AOtherPin ), ADataTypeID );
        AEntry.SubmitFunction := GetSubmitFunctionID( AEntry.ConnectedID );
        var ASourcePin := AEntry.RealPin;
        AWriteLock := NIL;
        AWriteLock := ASourcePin.WriteLock();
        TOWSourcePin( ASourcePin ).NewConnection( Self );

//      FSourcePin.NewConnection( Self, FSourcePin.GetSubmitFunctionID( ADataTypeID ));
        var ADownStreamID := TOWSourcePin( ASourcePin ).DownStreamFindConnectionID( Self, True, False, AConverter, AConverterClass, ADataType );
        AWriteLock := NIL;
        AWriteLock := WriteLock();
        ChainReconnect( ADownStreamID, AEntry.ConnectedID );
        end;        
      end

    else
      Result := AOtherPin.ConnectAfter( Self, ANotifyAfterPin );

    OWNotifyConnected( Self, AOtherPin );

    var AIsDebugConnection := IsDebugPin();
    if( not AIsDebugConnection ) then
      if( AOtherPin <> NIL ) then
        AIsDebugConnection := AOtherPin.IsDebugPin();

    OWNotifyChangePin( Self, AIsDebugConnection );
    Exit;
    end;

  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.Disconnect();
var
  ADestroyLock : IOWDestroyLockSection;
  AWriteLock   : ILockSection;

begin
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();

  var AWasConnected := IsConnected();
  if( AWasConnected ) then
    begin
    BeforeDisconnect();
    OWNotifyDisconnectingPin( Self, False );
    end;

  try
    inherited Disconnect();
    for var I : Integer := SourceCount - 1 downto 0 do
      begin
      var ASource := Sources[ I ];
      BeforeDisconnectFrom( ASource );
      ASource.BeforeDisconnect();
      DisconnectFrom( ASource );
      end;

    FSourcePins.Clear();
  finally
    if( AWasConnected ) then
      OWNotifyDisconnectedPin( Self, False );

    end;

end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.IntDisconnectFrom( AOtherPin : TOWBasicPin; AFromConnecting : Boolean );
begin
  FImageCached := False;
  var ADesignFormClosing := False;
  if( OwnerInDesigning( False ) ) then
    if( RootInDestroying() ) then
      ADesignFormClosing := True;

  OWNotifyDisconnecting( Self, AOtherPin, AFromConnecting );
//  OldInDisconnect := FInDisconnect;
//  FInDisconnect := True;
  IntDisconnect( AOtherPin, ADesignFormClosing );
//  FInDisconnect := OldInDisconnect;
  AOtherPin.IntDisconnect( Self, ADesignFormClosing );
  AOtherPin.CheckRemove();
  OWNotifyDisconnected( Self, False );
end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.DisconnectFrom( const AOtherPin : TOWBasicPin );
var
  ADestroyLock  : IOWDestroyLockSection;
  AWriteLock    : ILockSection;

begin
  FImageCached := False;
  if( not IsConnectedTo( AOtherPin ) ) then
    inherited DisconnectFrom( AOtherPin )

  else
    begin
    AWriteLock := WriteLock();
    ADestroyLock := FDestroyLock.DestroyLock();
    IntDisconnectFrom( AOtherPin, False );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.IntDisconnect( const AOtherPin : TOWBasicPin; ADesignFormClosing : Boolean );
var
  ADestroyLock  : IOWDestroyLockSection;
  AWriteLock    : ILockSection;

begin
  if( FInDisconnect ) then
    Exit;

  FImageCached := False;
  AWriteLock := WriteLock();
  ADestroyLock := FDestroyLock.DestroyLock();
  FInDisconnect := True;

  if( ADesignFormClosing ) then
    if( not RootInDestroying()) then
      begin
      var ALinkIdent := AOtherPin.GetFullIdentName( True, False ); //GetLinkStr( AIndex, True ); //OWValueToString( FSourcePin, '.', True, True );
      var ALinkIdentName := AOtherPin.GetFullName( True ); // GetLinkStr( AIndex, False );
      var ATmpPin := TOWUnloadedPin.Create( GetRoot(), False, ptSink, ALinkIdent, ALinkIdentName, GetFullName( True ) );
      Connect( ATmpPin );
      end;

  FInDisconnect := False;

  for var AIndex := SourceCount - 1 downto 0 do
    begin
    var AEntry := FSourcePins[ AIndex ];
    if( AEntry.RealPin = AOtherPin ) then
      begin
      if( AEntry.RealPin <> AEntry.ConnectionPin ) then
        begin
        for var I : Integer := FFormatConverters.Count - 1 downto 0 do
          begin
          var AOutputPin := FFormatConverters[ I ].GetInstance().FOutputPin;
          AOutputPin.IntDisconnect( AOtherPin, False );
          if( not AOutputPin.IsConnected() ) then
            FFormatConverters.Delete( I );
            
          end;
        end; 
//      ANotifyAfterPin := AEntry.NotifyAfterPin;
//      Dispose( AEntry );
      FSourcePins.Delete( AIndex );

      ADestroyLock := NIL;
      AWriteLock := NIL;
      var AIsDebugConnection := IsDebugPin();
      if( not AIsDebugConnection ) then
        if( AOtherPin <> NIL ) then
          AIsDebugConnection := AOtherPin.IsDebugPin();

      OWNotifyChangePin( Self, AIsDebugConnection );
      AOtherPin.CheckRemove();
      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.DependsOn( const AOtherPin : TOWBasicPin ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  for var AEntry in FSourcePins do
    begin
    if( AOtherPin = AEntry.RealPin ) then
      Exit( True );

    AReadLock := NIL;
    try
      if( AEntry.RealPin.DependsOn( AOtherPin ) ) then
        Exit( True );

    finally
      AReadLock := ReadLock();
      end;

    end;

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.DirectDependsOn( const AOtherPin : TOWBasicPin ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  for var AEntry in FSourcePins do
    if( AEntry.RealPin.DirectDependsOn( AOtherPin ) ) then
      Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.IsConnected() : Boolean;
begin
  Result := ( FSourcePins.Count > 0 ) or inherited IsConnected();
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.IsConnectedTo( const AOtherPin : TOWBasicPin ) : Boolean; //const;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  for var I : Integer := 0 to SourceCount - 1 do
    if( AOtherPin = Sources[ I ] ) then
      Exit( True );

  Result := inherited IsConnectedTo( AOtherPin );
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.IsConnectedByConverterTo( const AOtherPin : TOWBasicPin ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  
  Result := inherited IsConnectedByConverterTo( AOtherPin );
  if( Result ) then
    Exit;
    
  if( IsConnectedTo( AOtherPin )) then
    for var I : Integer := FFormatConverters.Count - 1 downto 0 do
      if( FFormatConverters[ I ].GetInstance().OutputPin.IsConnectedTo( AOtherPin )) then
        Exit( True );
    
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.GetConnectionConverter( const AOtherPin : TOWBasicPin; out AConverter : IOWFormatConverter ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  Result := inherited IsConnectedByConverterTo( AOtherPin );
  if( Result ) then
    Exit;

  if( IsConnectedTo( AOtherPin )) then
    for var I : Integer := FFormatConverters.Count - 1 downto 0 do
      begin
      var AConverterItem := FFormatConverters[ I ];
      if( AConverterItem.GetInstance().OutputPin.IsConnectedTo( AOtherPin )) then
        begin
        AConverter := AConverterItem;
        Exit( True );
        end;
      end;

end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.Assign( ASource : TPersistent );
begin
  if( ASource = NIL ) then
    Connect( NIL )

  else
    begin
    var AOtherPin := ASource as TOWMultiSinkPin;
    if( AOtherPin <> NIL ) then
      begin
      for var I : Integer := 0 to AOtherPin.SourceCount - 1 do
        Connect( AOtherPin.Sources[ I ] );
        
      end
      
    else
      inherited;
      
    end;
    
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.Notify( const AOperation : IOWNotifyOperation ) : TOWNotifyResult;
begin
  Result := NotifyPin( NIL, AOperation );
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.NotifyPin( const APin : TOWBasicPin; const AOperation : IOWNotifyOperation ) : TOWNotifyResult;
var
  AState        : TOWNotifyState;
  AStatus       : TOWNotifyResult;
  ALock         : ILockSection;
  ADestroyLock  : IOWDestroyLockSection;

begin
  ALock := ReadLock();

  var ASourcesCount := FSourcePins.Count;
//  SetLength( ASourcesList, ASourcesCount );

  var ASourcesList : IOWPinNotifyEntryList := TOWPinNotifyEntryList.Create();
  try
    for var ASourceEntry in FSourcePins do
      begin
      var ANotifyEntry := TOWNotifyPinEntry.Create();
      var AEntry := ANotifyEntry;
      ANotifyEntry.Section.Enter();
      try
        ANotifyEntry.Entry.Assign( ASourceEntry );
        if( ASourceEntry.ConnectionPin <> NIL ) then
          begin
          if( ASourceEntry.ConnectionPin.GetOwnerComponent() is TOWFormatConverter ) then
            ASourceEntry.ConnectionPin.GetOwnerComponent().GetInterface( IOWFormatConverter, ANotifyEntry.Converter ); // Hold the converter in existance while we iterate.

          ANotifyEntry.Entry.ConnectionPin.AddNotifyEntry( AEntry );
          end;

      except
        end;

      ANotifyEntry.Section.Leave();

      ASourcesList.Add( AEntry );
      end;

    for var I : Integer := ASourcesCount - 1 downto 0 do
      begin
      var ANotifyEntry := ASourcesList[ I ].GetInstance();
      if( Assigned( ANotifyEntry.Entry.SubmitFunction )) then
        if( ANotifyEntry.Entry.ConnectionPin <> ANotifyEntry.Entry.RealPin ) then
          for var J : Integer := I - 1 downto 0 do
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
      Result := inherited Notify( AOperation );

      for var I : Integer := 0 to ASourcesCount - 1 do
        begin
        if( I < ASourcesCount - 1 ) then
          AState := []

        else
          AState := [nsLastIteration];

        var ANotifyEntry := ASourcesList[ I ].GetInstance();
        var APinEntry := ANotifyEntry.Entry;
        ANotifyEntry.Section.Enter();
        try
          var ADataTypeID := APinEntry.ConnectedID;
          var ASourcePin := APinEntry.ConnectionPin;
          var ARealSourcePin := APinEntry.RealPin;
          if(( APin = NIL ) or ( APin = ARealSourcePin )) then
            begin
            if( Assigned( APinEntry.SubmitFunction )) then
              begin
                try
                  ALock := NIL;
                  ADestroyLock := FDestroyLock.Lock();
                  if( ADestroyLock <> NIL ) then
                    begin
                    FOwnerLock.ExecuteUnlockAll(
                        procedure()
                        begin
                          AStatus := TOWSubmit( APinEntry.SubmitFunction )( Self, ASourcePin, ADataTypeID, AOperation, AState );
                        end
                      );

                    end;

                finally
                  ALock := ReadLock();
                end;
              end;

            if( nrDataChanged in AStatus ) then
              begin
              if( APinEntry.ModificationLevel < 10000 ) then
                Inc( APinEntry.ModificationLevel, 4 );

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
    for var AEntry in ASourcesList do
      AEntry.RemoveNotifyEntry();

    end;

end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.ReorderChangedData();
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  FSourcePins.Sort();
end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.PinReplacedNotify( const AOldPin : TOWBasicPin; const ANewPin : TOWBasicPin );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  for var AEntry in FSourcePins do
    if( AEntry.NotifyAfterPin = AOldPin ) then
      AEntry.NotifyAfterPin := ANewPin;

end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.UnlodedPinRemoved( const APin : TOWBasicPin );
begin
  for var I : Integer := FSourcePins.Count - 1 downto 0 do
    if( FSourcePins[ I ].RealPin = APin ) then
      FSourcePins.Delete( I );

end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.BackChainReconnect( const ADownIID : TGUID; const AUpIID : TGUID );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();

  var AFound := False;
  for var AEntry in FSourcePins do
    if( AEntry.ConnectionPin is TOWSourcePin ) then
      begin
      TOWSourcePin( AEntry.ConnectionPin ).BackChainReconnect( ADownIID, AUpIID );
      AFound := True;
      end;

  if( not AFound ) then
    ForthChainReconnect( ADownIID, AUpIID );
    
end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.ForthChainReconnect( const ADownIID : TGUID; const AUpIID : TGUID );
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  for var AEntry in FSourcePins do
    if( AEntry.ConnectionPin is TOWSourcePin ) then
      begin
      AEntry.ConnectedID := UpStreamFindConnectionID( TOWSourcePin( AEntry.ConnectionPin ), AEntry.ConnectionPin.GetConnectionID( Self ) );
      AEntry.SubmitFunction := GetSubmitFunctionID( AEntry.ConnectedID );
      end;

end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.GetUpStreamLinkName() : String;
var
  AConverter  : IOWFormatConverter;
  AReadLock   : ILockSection;

begin
  AReadLock := ReadLock();

  Result := '';
  if( not IsConnected () ) then
    Exit;

  if( FDispatcher <> NIL ) then
    if( FDispatcher.PinCount > 1 ) then
      begin
      var AConverterClass : TOWFormatConverterClass;
      if( FDispatcher[ 0 ] = Self ) then
        Result := GetLinkNameID( FindConnectionID( FDispatcher[ 1 ], AConverter, AConverterClass, True, GUID_NULL ))

      else
        Result := GetLinkNameID( FindConnectionID( FDispatcher[ 0 ], AConverter, AConverterClass, True, GUID_NULL ));

      end;

  for var AEntry in FSourcePins do
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
  AConverter  : IOWFormatConverter;
  AReadLock   : ILockSection;
  
begin
  AReadLock := ReadLock();

  Result := '';
  if( not IsConnected () ) then
    Exit;

  if( FDispatcher <> NIL ) then
    begin
    if( FDispatcher.PinCount > 1 ) then
      begin
      var AConverterClass : TOWFormatConverterClass;
      if( FDispatcher[ 0 ] = Self ) then
        Result := GetLinkNameID( FindConnectionID( FDispatcher[ 1 ], AConverter, AConverterClass, True, GUID_NULL ))

      else
        Result := GetLinkNameID( FindConnectionID( FDispatcher[ 0 ], AConverter, AConverterClass, True, GUID_NULL ));

      end;
    end;

  for var AEntry in FSourcePins do
    begin
    var ADownStreamID := AEntry.RealPin.GetConnectionID( Self );

    if( Result <> '' ) then
      begin
      if( Result <> GetLinkNameID( ADownStreamID )) then
        Exit( 'Multiple...' );

      end

    else
      Result := GetLinkNameID( ADownStreamID );
      
    end;
   
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.GetConnectionID( const AOtherPin : TOWBasicPin; AReturnConvertedID : Boolean = False ) : TGUID;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  var AEntry := FSourcePins.GetItemByPin( AOtherPin );
  if( AEntry <> NIL ) then
    begin
    if( AReturnConvertedID and ( AEntry.ConnectionPin <> NIL )) then
      Exit( GetConnectionID( AEntry.ConnectionPin ))

    else
      Exit( AEntry.ConnectedID );

    end;
//  if( AEntry <> NIL ) then
//    Exit( AEntry.ConnectedID );

  Result := inherited;
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.GetPrimaryConnectionID() : TGUID;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( GetSourceCount() > 0 ) then
    Exit( FSourcePins[ 0 ].ConnectedID );

  Result := inherited;
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
procedure TOWMultiSinkPin.DefineProperties( AFiler : TFiler );
begin
  inherited;
  AFiler.DefineProperty( 'SourcePin', ReadConnectionsData, NIL, False );
  AFiler.DefineProperty( 'SourcePins', ReadConnectionsData, WriteConnectionsData, DoWrite());
//  AFiler.DefineProperty( 'StateConverter', ReadStateConverterConnectionsData, WriteStateConverterConnectionsData, DoStateConverterWrite());
end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.SerializationRead( const AReader : IReader );
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  inherited;

  CheckVirtualList( False );

  var AOptions := AReader.GetOptions();

  AReader.ReadNested( 'SourcePin',
      procedure( const AReader : IReader )
      begin
        AReader.ReadString( 'ID',
            procedure( const AID : String )
            var
              AName         : String;
              ABaseAfterPin : TOWBasicPin;

            begin
              var ALocalID := AID;
              ApplyFormName( ALocalID );
              if( AReader.ReadString( 'Name', AName )) then
                ApplyFormName( AName )

              else
                AName := ALocalID;

              ALocalID := ReplaceComponentOwnerName( ALocalID, AReader.Access.GetRenameMap() );
              AName := ReplaceComponentOwnerName( AName, AReader.Access.GetRenameMap() );

              var AFullName := GetFullName( True );

              ABaseAfterPin := NIL;
              AReader.ReadString( 'SaveAfter',
                  procedure( const AID : String )
                  begin
                    var ALocalID := AID;
                    ApplyFormName( ALocalID );
                    ALocalID := ReplaceComponentOwnerName( ALocalID, AReader.Access.GetRenameMap() );
                    ABaseAfterPin := GOWPins.GetByNameCreate( GetRoot(), True, ptSink, ALocalID, ALocalID, AFullName );
                  end
                );

              if( TDeserializeOption.FromPaste in AOptions ) then
                begin
                var ARootName := GetRootName();
                if( not ALocalID.StartsWith( ARootName + '.' )) then
                  begin
                  ALocalID := ARootName + SubstringFrom( ALocalID, '.' );
                  AName := ARootName + SubstringFrom( AName, '.' );
                  end;
                end;

              var ABasePin := GOWPins.GetByNameCreate( GetRoot(), True, ptSource, ALocalID, AName, AFullName );
              ConnectAfter( ABasePin, ABaseAfterPin );
            end
          );

      end
    );

  AReader.ReadArray( 'SourcePins',
      procedure( const AArrayReader : ISequentialReader )
      begin
        AArrayReader.ReadNextNesteds(
            procedure( const AReader : IReader )
            begin
              AReader.ReadString( 'ID',
                  procedure( const AID : String )
                  var
                    AName     : String;
                    AFullName : String; // Delphi 11 Bug

                  begin
                    var ALocalID := AID;
                    ApplyFormName( ALocalID );
                    if( AReader.ReadString( 'Name', AName )) then
                      ApplyFormName( AName )

                    else
                      AName := ALocalID;

                    ALocalID := ReplaceComponentOwnerName( ALocalID, AReader.Access.GetRenameMap() );
                    AName := ReplaceComponentOwnerName( AName, AReader.Access.GetRenameMap() );

                    if( TDeserializeOption.FromPaste in AOptions ) then
                      begin
                      var ARootName := GetRootName();
                      if( not ALocalID.StartsWith( ARootName + '.' )) then
                        begin
                        ALocalID := ARootName + SubstringFrom( ALocalID, '.' );
                        AName := ARootName + SubstringFrom( AName, '.' );
//                        Exit;
                        end;
                      end;

                    var ABasePinAfter : TOWBasicPin := NIL;
                    var ARoot := GetRoot();
                    AFullName := GetFullName( True );
                    AReader.ReadString( 'SaveAfter',
                        procedure( const AID : String )
                        begin
                          var ALocalID := AID;
                          ApplyFormName( ALocalID );
                          ALocalID := ReplaceComponentOwnerName( ALocalID, AReader.Access.GetRenameMap() );
                          ABasePinAfter := GOWPins.GetByNameCreate( ARoot, True, ptSink, ALocalID, ALocalID, AFullName );
                        end
                      );

                  var ABasePin := GOWPins.GetByNameCreate( ARoot, True, ptSource, ALocalID, AName, AFullName );
                  IntConnectAfter( ABasePin, ABasePinAfter, GUID_NULL );
                  end
                );

            end
          );

      end
    );

end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.SerializationWrite( const AWriter : IWriter; const ASelectedObjects : IObjectArrayList; const AMember : IMemberInfo = NIL );
var
  AReadLock  : ILockSection;

begin
  AReadLock := ReadLock();
  inherited;

  if( csWriting in GetOwnerComponent().ComponentState ) then
    Exit;

  if( not DoWrite() ) then
    Exit;

  var AOptions := AWriter.GetOptions();
  if( TSerializeOption.NoLinks in AOptions ) then
    Exit;

  AWriter.WriteArray( 'SourcePins',
      procedure( const AArrayWriter : ISequentialWriter )
      var
        AIdent      : String; // Keep here due to Delphi 10.4 compiler bug!
        AIdentName  : String; // Keep here due to Delphi 10.4 compiler bug!

      begin
        for var I : Integer := 0 to SourceCount - 1 do
          begin
          var ASource := Sources[ I ];
          if( ASource.IsDebugPin()) then
            Continue;

          var AIncludeRoot := not ( TSerializeOption.LocalScope in AWriter.GetOptions() );
          AIdent := ASource.GetFullIdentName( AIncludeRoot, False );
          AIdentName := ASource.GetFullName( AIncludeRoot );

          AArrayWriter.WriteNested(
              procedure( const AWriter : IWriter )
              begin
                AWriter.WriteString( 'ID', AIdent );
                if( AIdent <> AIdentName ) then
                  AWriter.WriteString( 'Name', AIdentName );

                var ANotifyAfterPin := FSourcePins[ I ].NotifyAfterPin;
                if( ANotifyAfterPin <> NIL ) then
                  AWriter.WriteString( 'SaveAfter', ANotifyAfterPin.GetFullIdentName( AIncludeRoot, False ) );

              end
            );

          end;

      end
    );

end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.ReadConnectionsDataInternal( AReader : TReader; ASkipConnections : Boolean );
var
  AReadIdent    : String;
  AReadName     : String;
  AWriteLock    : ILockSection;
  ABasePinAfter : TOWBasicPin;

begin
  AWriteLock := WriteLock();
  CheckVirtualList( False );

  if( AReader.NextValue() = vaIdent ) then
    begin
    AReadIdent := AReader.ReadIdent();
    AReadName := AReadIdent;
    if( not ASkipConnections ) then
      if( not IsPreviewPin() ) then
        begin
        ApplyFormName( AReadIdent );
        ApplyFormName( AReadName );
        var ABasePin := GOWPins.GetByNameCreate( GetRoot(), False, ptSink, AReadIdent, AReadName, GetFullName( True ) );
        IntConnectAfter( ABasePin, NIL, GUID_NULL );
        end;

    end

  else
    begin
    AReader.ReadListBegin();
    while not AReader.EndOfList do
      begin
      var AReadIdentAfter := '';
      ABasePinAfter := NIL;
      if( AReader.NextValue() = vaList ) then
        begin
        AReader.ReadListBegin();
        AReadIdent := AReader.ReadIdent();
        if( AReader.NextValue() = vaIdent ) then
          begin
          AReadIdentAfter := AReader.ReadIdent();
          if( not IsPreviewPin() ) then
            begin
            ApplyFormName( AReadIdentAfter );
            ABasePinAfter := GOWPins.GetByNameCreate( GetRoot(), False, ptSink, AReadIdentAfter, AReadIdentAfter, GetFullName( True ) );
            end;
          end;

        AReadName := AReadIdent;
        if( GOWIsStringValueType( AReader.NextValue() ) ) then
          AReadName := AReader.ReadString();

        AReader.ReadListEnd();
        end

      else
        begin
        AReadIdent := AReader.ReadIdent();
        if( GOWIsStringValueType( AReader.NextValue() ) ) then
          AReadName := AReader.ReadString()

        else
          AReadName := AReadIdent;
        end;

      if( not ASkipConnections ) then
        if( not IsPreviewPin() ) then
          begin
          ApplyFormName( AReadIdent );
          ApplyFormName( AReadName );
          var ABasePin := GOWPins.GetByNameCreate( GetRoot(), False, ptSink, AReadIdent, AReadName, GetFullName( True ) );
          IntConnectAfter( ABasePin, ABasePinAfter, GUID_NULL );
          end;

      end;

    AReader.ReadListEnd();
    end;
//  CheckLinks();

  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.WriteConnectionsData( AWriter : TWriter );
var
  AReadLock : ILockSection;

begin
  // TODO: Write state converters data.
  AReadLock := ReadLock();
  AWriter.WriteListBegin();
  try
    for var I : Integer := 0 to SourceCount - 1 do
      begin
      var ASource := Sources[ I ];
      if( ASource.IsDebugPin()) then
        Continue;

      var AIdent := ASource.GetFullIdentName( True, False ).Replace( '*._', '_Item' ); // GetLinkStr( I, True );
      var AIdentName := ASource.GetFullName( True ).Replace( '*._', '_Item' ); // GetLinkStr( I, False );
      var ASourcePinNotifyAfterPin := FSourcePins[ I ].NotifyAfterPin;
      if( AIdent = AIdentName ) then
        begin
        if( ASourcePinNotifyAfterPin <> NIL ) then
          begin
          var AIdentAfter := ASourcePinNotifyAfterPin.GetFullIdentName( True, False ); // GetLinkAfterStr( I );

          AWriter.WriteListBegin();
          AWriter.WriteIdent( AIdent );
          AWriter.WriteIdent( AIdentAfter );
          AWriter.WriteListEnd();
          end

        else
          AWriter.WriteIdent( AIdent );

        end

      else
        begin
        AWriter.WriteListBegin();
        if( ASourcePinNotifyAfterPin <> NIL ) then
          begin
          var AIdentAfter := ASourcePinNotifyAfterPin.GetFullIdentName( True, False ); // GetLinkAfterStr( I );
  //        AIdentAfter := GetLinkAfterStr( I );

  //        AWriter.WriteListBegin();
          AWriter.WriteIdent( AIdent );
          AWriter.WriteIdent( AIdentAfter );
  //        AWriter.WriteListEnd();
          end

        else
          AWriter.WriteIdent( AIdent );

        AWriter.WriteString( AIdentName );
        AWriter.WriteListEnd();
        end;

      end;

  except
    end;

  AWriter.WriteListEnd();
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPin.WriteNoStateListEntry( AWriter : TWriter ) : Boolean;
begin
  Result := DoWrite();
  if( Result ) then
    begin
    AWriter.WriteIdent( 'Sources' );
    WriteConnectionsData( AWriter );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPin.ReadNoStateListEntry( AReader : TReader; const AIdent : String; ASkipConnections : Boolean );
begin
  ReadConnectionsData( AReader );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
destructor TOWSinkPin.Destroy();
var
  ADestroyLock  : IOWDestroyLockSection;
  AWriteLock    : ILockSection;

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
    Exit( 1 );

  Result := 0;
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetConnectedPin( AIndex : Integer ) : TOWBasicPin;
begin
  Result := FIntRealSourcePin;
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetConnectedAfterForPin( const AOtherPin : TOWBasicPin ) : TOWBasicPin;
begin
  if( FIntRealSourcePin <> NIL ) then
    if( AOtherPin = FIntRealSourcePin ) then
      Exit( FIntRealSourcePin.GetConnectedAfterForPin( Self ));

  Result := inherited GetConnectedAfterForPin( AOtherPin );
end;
//---------------------------------------------------------------------------
function TOWSinkPin.Notify( const AOperation : IOWNotifyOperation ) : TOWNotifyResult;
var
  ADestroyLock    : IOWDestroyLockSection;
  AReadLock1      : ILockSection;
  AReadLock       : ILockSection;
//  ASubmitFunction : TOWSubmit;
  AConnectedID    : TGUID;
  AConverter      : IOWFormatConverter;

begin
  Result := [];

  AReadLock1 := FOwnerLock.ReadLock();
  if( AReadLock1 = NIL ) then
     Exit;

  AReadLock := ReadLock();
  if( AReadLock = NIL ) then
    Exit;
    
  if( ( SourcePin <> NIL ) and ( Assigned( FSubmitFunction ) ) ) then
    begin
    var ASourcePin := SourcePin;
    var ANotifyEntry := TOWNotifyPinEntry.Create();
    var AEntry : IOWNotifyPinEntry := ANotifyEntry;
    ANotifyEntry.Section.Enter();
    try
      ANotifyEntry.Entry.SubmitFunction := FSubmitFunction;
      ANotifyEntry.Entry.ConnectionPin := FRealSourcePin;
//          ASubmitFunction := FSubmitFunction;
      AConnectedID := FConnectedID;
      if( SourcePin.GetOwnerComponent() is TOWFormatConverter ) then
        SourcePin.GetOwnerComponent().GetInterface( IOWFormatConverter, AConverter ); // Hold the converter while the notification is sent

      ANotifyEntry.Entry.ConnectionPin.AddNotifyEntry( AEntry );
    except
      end;

    ANotifyEntry.Section.Leave();

    AReadLock := NIL;
    try
      ADestroyLock := FDestroyLock.Lock();
      if( ADestroyLock <> NIL ) then
        begin
        var AUnlock : ILockSection := FOwnerLock.UnlockAll();

        ANotifyEntry.Section.Enter();
        try
          Result := ANotifyEntry.Entry.SubmitFunction( Self, ASourcePin, AConnectedID, AOperation, [nsLastIteration] );
        except
          end;

        ANotifyEntry.Section.Leave();

        AUnlock := NIL;
        end;

    finally
      ANotifyEntry.RemoveNotifyEntry();
      end;

    end;

  AReadLock := NIL;
//  AUnlock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.IntDisconnect( const AOtherPin : TOWBasicPin; ADesignFormClosing : Boolean );
var
  ADestroyLock  : IOWDestroyLockSection;
  AWriteLock    : ILockSection;

begin
  AWriteLock := WriteLock();
  FImageCached := False;
  ADestroyLock := FDestroyLock.DestroyLock();
  if( ADesignFormClosing ) then
    if( FRealSourcePin <> NIL ) then
      begin
      if( not ( RootInDestroying() )) then
        begin
        var ALinkStorage := FRealSourcePin.GetFullIdentName( True, False ); // GetLinkStr( True ); //OWValueToString( FSourcePin, '.', True, True );
        var ALinkStorageName := FRealSourcePin.GetFullName( True ); // GetLinkStr( False );
        var ATmpPin := TOWUnloadedPin.Create( GetRoot(), False, ptSource, ALinkStorage, ALinkStorageName, GetFullName( True ) );
        FRealSourcePin.CheckRemove();
        FRealSourcePin := NIL;
        FIntRealSourcePin := NIL;
        FConnectionSourcePin := NIL;
        ATmpPin.Connect( Self );
        var AIsDebugConnection := IsDebugPin();
        if( not AIsDebugConnection ) then
          if( AOtherPin <> NIL ) then
            AIsDebugConnection := AOtherPin.IsDebugPin();

        OWNotifyChangePin( Self, AIsDebugConnection );
        Exit;
        end;
      end;

  FRealSourcePin := NIL;
  FIntRealSourcePin := NIL;
  FConnectionSourcePin := NIL;
end;
//---------------------------------------------------------------------------
function TOWSinkPin.ConnectByStateAfterByType( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID ) : Boolean;
begin
  if( AOtherPin is TOWBasicSinkPin ) then
    Exit( False );

  FImageCached := False;
  if( AOtherPin = NIL ) then
    begin
    Disconnect();
    Exit( True );
    end;

// This creates problems with converters!
//  if( csLoading in FOwner.ComponentState ) then
//    Exit( inherited );

  Result := AOtherPin.ConnectByStateAfterByType( Self, ANotifyAfterPin, ADataType );
  FImageCached := False;
end;
//---------------------------------------------------------------------------
function TOWSinkPin.CanConnectAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; AUseConverters : Boolean ) : Boolean;
begin
  if( AOtherPin = NIL ) then
    Exit( True );

  if( AOtherPin is TOWBasicSinkPin ) then
    Exit( False );

  Result := AOtherPin.CanConnectAfter( Self, ANotifyAfterPin, AUseConverters );
end;
//---------------------------------------------------------------------------
function TOWSinkPin.ConnectAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin ) : Boolean;
begin
  Result := ConnectAfterByType( AOtherPin, ANotifyAfterPin, GUID_NULL );
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.SetDataTypeFor( const AOtherPin : TOWSourcePin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; ADataType : TGUID );
begin
  var ADataTypeID := TOWSourcePin( FRealSourcePin ).DownStreamFindConnectionID( Self, True, False, AConverter, AConverterClass, ADataType );
  FConnectedID := UpStreamFindConnectionID( AOtherPin, ADataTypeID );
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.IntConnectSourcePin( const AOtherPin : TOWSourcePin; const ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID );
begin
//  AOtherPin.IntConnect( Self, ANotifyAfterPin, ADataType, True );
  AOtherPin.IntConnect( Self, ANotifyAfterPin, ADataType, False );
end;
//---------------------------------------------------------------------------
function TOWSinkPin.ConnectAfterByType( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID ) : Boolean;
var
  AWriteLock  : ILockSection;

begin
  if( AOtherPin = Self ) then
    Exit( False );

  if( AOtherPin is TOWBasicSinkPin ) then
    Exit( False );

  if( AOtherPin is TOWUnloadedPin ) then
    Exit( AOtherPin.Connect( Self ));

  if( PreviewConnected( Self, AOtherPin )) then
    Exit( False );

  var AIsDebugConnection := IsDebugPin();
  if( not AIsDebugConnection ) then
    if( AOtherPin <> NIL ) then
      AIsDebugConnection := AOtherPin.IsDebugPin();

  FImageCached := False;
  var ASourcePin : TOWBasicPin := NIL;
  AWriteLock := WriteLock();
  if( AOtherPin = FRealSourcePin ) then
    begin
    if( AOtherPin = NIL ) then
      Exit( True );

    if( AOtherPin.GetConnectedAfterForPin( Self ) = ANotifyAfterPin ) then
      Exit( True );

    end;

  if( AOtherPin <> NIL ) then
    if( AOtherPin = FConnectionSourcePin ) then
      Exit( True );
    
  if( AOtherPin = NIL ) then
    begin
    var ADesignFormClosing := False;
    if( OwnerInDesigning( False ) ) then
      if( RootInDestroying() ) then
        ADesignFormClosing := True;

    if( FRealSourcePin <> NIL ) then
      begin
      ASourcePin := FRealSourcePin; 
      AWriteLock := NIL;
      AWriteLock := ASourcePin.WriteLock();
      ASourcePin.IntDisconnect(Self, ADesignFormClosing);
      AWriteLock := NIL;
      AWriteLock := WriteLock();
      var AFromConnect := ( AOtherPin <> NIL );
      OWNotifyDisconnecting( Self, FRealSourcePin, AFromConnect );
      FRealSourcePin := NIL;
      FIntRealSourcePin := NIL;
      FConnectionSourcePin := NIL;
      OWNotifyDisconnected( Self, AFromConnect );
      end;

//    ASourcePin := FSourcePin;
    FSubmitFunction := NIL;

    OWNotifyChangePin( Self, AIsDebugConnection );

    AWriteLock := NIL;
    
    if( ASourcePin <> NIL ) then
      ASourcePin.CheckRemove();

    Exit( True );
    end;

  if( AOtherPin is TOWStatePin ) then
    Exit( AOtherPin.ConnectByType( Self, ADataType ) );

  if( CanConnectTo( AOtherPin )) then
    begin
    if( FDispatcher <> NIL ) then
      Disconnect();
      
    if( FRealSourcePin <> NIL ) then
      begin
      var ADesignFormClosing := False;
      if( OwnerInDesigning( False ) ) then
        if( RootInDestroying() ) then
          ADesignFormClosing := True;

      ASourcePin := FRealSourcePin;
      AWriteLock := NIL;
      AWriteLock := ASourcePin.WriteLock();
      ASourcePin.IntDisconnect(Self, ADesignFormClosing);
      var AFromConnect := ( AOtherPin <> NIL );
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

    if( AOtherPin is TOWSourcePin ) then
      begin
      FConnectionSourcePin := TOWSourcePin( AOtherPin );
      FIntRealSourcePin := TOWSourcePin( AOtherPin );
      AWriteLock := NIL;
      AWriteLock := AOtherPin.WriteLock();
      IntConnectSourcePin( TOWSourcePin( AOtherPin ), ANotifyAfterPin, ADataType );
      AWriteLock := NIL;
      AWriteLock := WriteLock();
      FRealSourcePin := TOWSourcePin( AOtherPin );
      FIntRealSourcePin := TOWSourcePin( AOtherPin );

      Result := True;
      if( FRealSourcePin is TOWSourcePin ) then
        begin
        var AConverterClass : TOWFormatConverterClass;
        var AConverter : IOWFormatConverter;

        SetDataTypeFor( TOWSourcePin( AOtherPin ), AConverter, AConverterClass, ADataType );
        FSubmitFunction := GetSubmitFunctionID( FConnectedID );
        ASourcePin := FRealSourcePin;
        AWriteLock := NIL;
        AWriteLock := ASourcePin.WriteLock();
        TOWSourcePin( ASourcePin ).NewConnection( Self );

//      FSourcePin.NewConnection( Self, FSourcePin.GetSubmitFunctionID( ADataTypeID ));
        var ADownStreamID := TOWSourcePin( ASourcePin ).DownStreamFindConnectionID( Self, True, False, AConverter, AConverterClass, ADataType );
        AWriteLock := NIL;
        AWriteLock := WriteLock();
        ChainReconnect( ADownStreamID, FConnectedID );
        end;

      IntConnect( AOtherPin, ANotifyAfterPin, ADataType, False );
      end

    else
      Result := AOtherPin.ConnectAfter( Self, ANotifyAfterPin );

    OWNotifyConnected( Self, AOtherPin );
    OWNotifyChangePin( Self, AIsDebugConnection );
    Exit;
    end;

  Result := False;
  FImageCached := False;
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.BackChainReconnect( const ADownIID : TGUID; const AUpIID : TGUID );
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();

  if(( FConnectionSourcePin <> NIL ) and ( FConnectionSourcePin is TOWSourcePin )) then
    TOWSourcePin( FConnectionSourcePin ).BackChainReconnect( ADownIID, AUpIID )

  else
    ForthChainReconnect( ADownIID, AUpIID );

end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.ForthChainReconnect( const ADownIID : TGUID; const AUpIID : TGUID );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if(( FConnectionSourcePin <> NIL ) and ( FConnectionSourcePin is TOWSourcePin )) then
    begin
    FConnectedID := UpStreamFindConnectionID( TOWSourcePin( FConnectionSourcePin ), FConnectionSourcePin.GetConnectionID( Self ) );
    FSubmitFunction := GetSubmitFunctionID( FConnectedID );
    end;
    
  for var ATypeDep in FDataTypeDependants do
    ATypeDep.ForthChainReconnect( ADownIID, AUpIID );

end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.BackPopulateStreamChains( const AChain : IArrayList<IOWObjectList>; const AList : IOWObjectList );
begin
  AList.Add( Self );
  if(( FConnectionSourcePin <> NIL ) and ( FConnectionSourcePin is TOWSourcePin )) then
    TOWSourcePin( FConnectionSourcePin ).BackPopulateStreamChains( AChain, AList );
  
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetConnectedID() : TGUID;
begin
  Result := FConnectedID;
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
  var AWasConnected := IsConnected();
  if( AWasConnected ) then
    begin
    BeforeDisconnect();
    OWNotifyDisconnectingPin( Self, False );
    end;

  try
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

  finally
    ADestroyLock := NIL;
    AUnlockLock := NIL;
    AWriteLock := NIL;
    ASourceDestroyLock := NIL;
    ASourceWriteLock := NIL;
    if( AWasConnected ) then
      OWNotifyDisconnectedPin( Self, False );

    end;

end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.DisconnectFrom( const AOtherPin : TOWBasicPin );
begin
  FImageCached := False;
  if( IsConnectedTo( AOtherPin )) then
    Disconnect()

  else
    inherited DisconnectFrom( AOtherPin );
    
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
    Exit( GetLinkStr() );

  Result := inherited GetEditorString();
end;
//---------------------------------------------------------------------------
function TOWSinkPin.SetEditorString( ARoot : TComponent; const AValue : String ) : Boolean;
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

  var ADispatcher := TOWStateDispatcher.GetByName( AValue, True );
  if( ConnectToState( ADispatcher )) then
    Result := True;

end;
//---------------------------------------------------------------------------
function TOWSinkPin.ConnectToStateAfter( ADispatcher : TOWBasicStateDispatcher; ANotifyAfterPin : TOWBasicPin ) : Boolean;
var
  AWriteLock  : ILockSection;

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
    try
      if( ADispatcher.PinCount = 0 ) then
        begin
        FDispatcher := ADispatcher;
        FDispatcher.AddPin( Self, Self );
        end

      else if( ADispatcher.PinCount = 1 ) then
        begin
//        var AStateName := ADispatcher.Name;
        var AOtherPin := ADispatcher[ 0 ];
        if( AOtherPin is TOWBasicSinkPin ) then
          begin
          FDispatcher := ADispatcher;
          FDispatcher.AddPin( Self, Self );
          end

        else
          begin
          ADispatcher.DisconnectAll();
          Result := ConnectByStateAfter( AOtherPin, ANotifyAfterPin );
          end;

        ADispatcher := FDispatcher;
        end

      else
        begin
        for var I : Integer := 0 to ADispatcher.PinCount - 1 do
          if( ConnectByStateAfter( ADispatcher[ I ], ANotifyAfterPin )) then
            begin
            Result := True;
            Break;
            end;

        if( not Result ) then
          if( csLoading in FOwner.ComponentState ) then
            begin
            FDispatcher := ADispatcher;
            FDispatcher.AddPin( Self, Self );
            end

        end;

    finally
      FInConnect := False;
      end;

    end

  else
    Result := inherited ConnectToStateAfter( ADispatcher, ANotifyAfterPin );
    
  UpdateStateValue();

  if( ADispatcher <> NIL ) then
    OWNotifyConnected( Self, ADispatcher );

end;
//---------------------------------------------------------------------------
function TOWSinkPin.CanConnectToStateInt( const ADispatcher : TOWBasicStateDispatcher; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; AUseConverters : Boolean; const ADataType : TGUID ) : Boolean;
var
  AReadLock : ILockSection;

begin
  if( ADispatcher = NIL ) then
    Exit( False );

  AReadLock := ReadLock();
  if( ADispatcher = FDispatcher ) then
    Exit( True );

  for var I : Integer := 0 to ADispatcher.PinCount - 1 do
    begin
    var ADispatcherItem := ADispatcher[ I ];
    if( not( ADispatcherItem is TOWBasicSinkPin )) then
      if( not CanConnectToInt( ADispatcherItem, AConverter, AConverterClass, AUseConverters, ADataType )) then
//      if( not CanConnectTo( ADispatcher[ I ] )) then
        Exit( False );

    end;

  Result := True;
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetPrimaryConnectionID() : TGUID;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FConnectedID;
  if( Result = GUID_NULL ) then
    Result := inherited GetPrimaryConnectionID();

end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetConnectionID( const AOtherPin : TOWBasicPin; AReturnConvertedID : Boolean = False ) : TGUID;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FConnectedID;
end;
//---------------------------------------------------------------------------
function TOWSinkPin.IsConnectedTo( const AOtherPin : TOWBasicPin ) : Boolean; //const;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  
  if( FIntRealSourcePin = AOtherPin ) then
    Exit( True );

  Result := inherited IsConnectedTo( AOtherPin );
end;
//---------------------------------------------------------------------------
function TOWSinkPin.IsConnectedByConverterTo( const AOtherPin : TOWBasicPin ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( FIntRealSourcePin = AOtherPin ) then
    Exit( FIntRealSourcePin <> FConnectionSourcePin );

  Result := inherited IsConnectedByConverterTo( AOtherPin );
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetConnectionConverter( const AOtherPin : TOWBasicPin; out AConverter : IOWFormatConverter ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := False;
  if( FIntRealSourcePin = AOtherPin ) then
    begin
    Result := ( FIntRealSourcePin <> FConnectionSourcePin );
    if( Result ) then
      AConverter := GetFormatConverter();

    end

  else if( not Result ) then
    Result := inherited GetConnectionConverter( AOtherPin, AConverter );

end;
//---------------------------------------------------------------------------
function TOWSinkPin.IsConnected() : Boolean;
begin
  Result := ( FIntRealSourcePin <> NIL ) or inherited IsConnected();
end;
//---------------------------------------------------------------------------
function TOWSinkPin.DirectDependsOn( const AOtherPin : TOWBasicPin ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  
{
  if( AOtherPin = FRealSourcePin ) then
    Exit( True );
}
  if( FIntRealSourcePin = NIL ) then
    Exit( False );

  Result := FIntRealSourcePin.DirectDependsOn( AOtherPin );
end;
//---------------------------------------------------------------------------
function TOWSinkPin.DependsOn( const AOtherPin : TOWBasicPin ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( AOtherPin = FIntRealSourcePin ) then
    Exit( True );

  if( FIntRealSourcePin = NIL ) then
    Exit( False );

  var AIntRealSourcePin := FIntRealSourcePin;
  AReadLock := NIL;

  Result := AIntRealSourcePin.DependsOn( AOtherPin );
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.Assign( ASource : TPersistent );
begin
  if( ASource = NIL ) then
    Connect( NIL )

  else
    begin
    var AOtherPin := ASource as TOWSinkPin;
    if( AOtherPin <> NIL ) then
      Connect( AOtherPin.SourcePin )

    else
      inherited;
      
    end;
    
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.DownStreamBackRestrictPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( AForPin = Self ) then
    begin
    for var ATypeDep in FDataTypeDependants do
      ATypeDep.DownStreamForthRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );

    Exit;
    end;

  if(( FRealSourcePin <> NIL ) and ( FRealSourcePin is TOWSourcePin )) then
    TOWSourcePin( FRealSourcePin ).DownStreamBackRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin )

  else
    begin
    if( not APossibleStreamTypes.GetOrdered() ) then
      OrderStreamTypes( APossibleStreamTypes );

    DownStreamForthRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.UpStreamBackRestrictPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( AForPin = Self ) then
    begin
    for var ATypeDep in FDataTypeDependants do
      ATypeDep.UpStreamForthRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );

    Exit;
    end;

  if( HasToIgnoreUpstream() ) then
    Exit;

  if(( FRealSourcePin <> NIL ) and ( FRealSourcePin is TOWSourcePin )) then
    TOWSourcePin( FRealSourcePin ).UpStreamBackRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin )

  else
    begin
//    if( not APossibleStreamTypes.Ordered ) then
//      OrderStreamTypes( APossibleStreamTypes );
      
    UpStreamForthRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );
    end;

end;
//---------------------------------------------------------------------------
function TOWSinkPin.RequestInterface(const IID : TGUID; out Obj) : HResult;
var
  AReadLock : ILockSection;
  
begin
  AReadLock := ReadLock();
  Result := inherited RequestInterface( IID, Obj );
  if( Result = S_OK ) then
    Result := DownStreamQueryPossybleInterface( IID );

end;

//---------------------------------------------------------------------------
function TOWSinkPin.UpStreamBackQueryPossybleInterface( const AIID : TGUID; AForPin : TOWPin ) : HResult;
var
  AReadLock : ILockSection;
  
begin
  AReadLock := ReadLock();
  Result := S_OK;

  if( AForPin = Self ) then
    begin
    for var ATypeDep in FDataTypeDependants do
      begin
      Result := ATypeDep.UpStreamForthQueryPossybleInterface( AIID, AForPin );
      if( Result <> S_OK ) then
        Break;

      end;

    Exit;
    end;

  if(( FRealSourcePin <> NIL ) and ( FRealSourcePin is TOWSourcePin )) then
    Exit( TOWSourcePin( FRealSourcePin ).UpStreamBackQueryPossybleInterface( AIID, AForPin ));

  Result := UpStreamForthQueryPossybleInterface( AIID, AForPin );
end;
//---------------------------------------------------------------------------
function TOWSinkPin.DownStreamBackQueryPossybleInterface( const AIID : TGUID; AForPin : TOWPin ) : HResult;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := S_OK;

  if( AForPin = Self ) then
    begin
    for var ATypeDep in FDataTypeDependants do
      begin
      Result := ATypeDep.DownStreamForthQueryPossybleInterface( AIID, AForPin );
      if( Result <> S_OK ) then
        Break;

      end;

    Exit;
    end;

  if(( FRealSourcePin <> NIL ) and ( FRealSourcePin is TOWSourcePin )) then
    Exit( TOWSourcePin( FRealSourcePin ).DownStreamBackQueryPossybleInterface( AIID, AForPin ));

  Result := DownStreamForthQueryPossybleInterface( AIID, AForPin );
end;
//---------------------------------------------------------------------------
function TOWSinkPin.DownStreamQueryPossybleInterface( const AIID : TGUID ) : HResult;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := inherited DownStreamQueryPossybleInterface( AIID );

  if( Result = S_OK ) then
    for var ATypeDep in FDataTypeDependants do
      begin
      Result := ATypeDep.DownStreamBackQueryPossybleInterface( AIID, Self );
      if( Result <> S_OK ) then
        Exit;

      end;

end;
//---------------------------------------------------------------------------
function TOWSinkPin.UpStreamQueryPossybleInterface( const AIID : TGUID ) : HResult;
var
  AReadLock : ILockSection;
  
begin
  AReadLock := ReadLock();
  Result := inherited UpStreamQueryPossybleInterface( AIID );

  for var ATypeDep in FDataTypeDependants do
    begin
    Result := ATypeDep.UpStreamBackQueryPossybleInterface( AIID, Self );
    if( Result <> S_OK ) then
      Exit;

    end;

end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.DownStreamFillPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin; AOtherPin : TOWBasicPin );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  inherited;
  for var ATypeDep in FDataTypeDependants do
    ATypeDep.DownStreamForthRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );

end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.UpStreamFillPossibleStreamTypes( const APossibleStreamTypes : IOWPinTypeRestricted; AForPin : TOWPin );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  inherited UpStreamFillPossibleStreamTypes( APossibleStreamTypes, AForPin );
  if( HasToIgnoreUpstream() ) then
    Exit;

  for var ATypeDep in FDataTypeDependants do
    ATypeDep.UpStreamForthRestrictPossibleStreamTypes( APossibleStreamTypes, AForPin );

end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.SetSourcePin( ASourcePin : TOWBasicPin );
begin
  Connect( ASourcePin );
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
  AReadLock : ILockSection;
  
begin
  AReadLock := ReadLock();
  
  if( FRealSourcePin <> NIL ) then
    Exit( GetLinkNameID( FConnectedID ));

  if( FDispatcher <> NIL ) then
    begin
    if( FDispatcher.PinCount > 1 ) then
      begin
      var AConverter : IOWFormatConverter;
      var AConverterClass : TOWFormatConverterClass;
      if( FDispatcher[ 0 ] = Self ) then
        Exit( GetLinkNameID( FindConnectionID( FDispatcher[ 1 ], AConverter, AConverterClass, True, GUID_NULL )));

      Exit( GetLinkNameID( FindConnectionID( FDispatcher[ 0 ], AConverter, AConverterClass, True, GUID_NULL )));
      end;
    end;

  Result := '';
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetDownStreamLinkName() : String;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  if( FRealSourcePin <> NIL ) then
    begin
    var ADownStreamID := FRealSourcePin.GetConnectionID( Self );
    Exit( GetLinkNameID( ADownStreamID ));
    end;

  if( FDispatcher <> NIL ) then
    begin
    if( FDispatcher.PinCount > 1 ) then
      begin
      var AConverterClass : TOWFormatConverterClass;
      var AConverter  : IOWFormatConverter;

      if( FDispatcher[ 0 ] = Self ) then
        Exit( GetLinkNameID( FindConnectionID( FDispatcher[ 1 ], AConverter, AConverterClass, True, GUID_NULL )));

      Exit( GetLinkNameID( FindConnectionID( FDispatcher[ 0 ], AConverter, AConverterClass, True, GUID_NULL )));
      end;
    end;

  Result := '';
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetUpStreamID() : TGUID;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( IsConnected() ) then
    Exit( FConnectedID );

  Result := GUID_NULL;
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetDownStreamID() : TGUID;
var
  AConverter      : IOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  AReadLock       : ILockSection;

begin
  AReadLock := ReadLock();
  if( FRealSourcePin <> NIL ) then
    Result := FRealSourcePin.GetConnectionID( Self )

  else if( FDispatcher <> NIL ) then
    begin
    if( FDispatcher.PinCount > 1 ) then
      begin
      for var I : Integer := 0 to FDispatcher.PinCount - 1 do
        if( FDispatcher.Pins[ I ] is TOWStatePin ) then
          begin
          Result := FDispatcher.Pins[ I ].FindConnectionID( Self, AConverter, AConverterClass, True, GUID_NULL );
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
      Result := GUID_NULL;
      
    end

  else
    Result := GUID_NULL;

  if( Result = GUID_NULL ) then
    if( FConnectionSourcePin <> NIL ) then 
      Result := FConnectionSourcePin.FindConnectionID( Self, AConverter, AConverterClass, True, GUID_NULL );

end;
//---------------------------------------------------------------------------
function TOWSinkPin.DoStateConverterWrite() : Boolean;
begin
  Result := ( FDispatcher <> NIL ) and ( FConnectionSourcePin <> NIL ); 
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.ReadStateConverterConnectionsData( AReader : TReader );
var
  AReadDispName   : String;
  AWriteLock      : ILockSection;
  AConverterClass : TOWFormatConverterClass;
  AConverter      : IOWFormatConverter;

begin
  AWriteLock := WriteLock();
  CheckVirtualList( False );

  AReader.ReadListBegin();
  if( AReader.NextValue() = vaList ) then
    begin
    AReader.ReadListBegin();
    AReadDispName := AReader.ReadString();

    while not AReader.EndOfList do
      begin
//      AAfterReadIdent := '';
//      AAfterReadName := '';
//      var AReadName := '';
      if( AReader.NextValue() = vaList ) then
        begin
        AReader.ReadListBegin();
//        AReadIdent := AReader.ReadIdent();
        AReader.ReadIdent();
        if( AReader.NextValue() = vaIdent ) then
          AReader.ReadIdent(); // AfterReadIdent
//          AAfterReadIdent := AReader.ReadIdent();

        if( GOWIsStringValueType( AReader.NextValue() ) ) then
          AReader.ReadString(); // Name
//          AReadName := AReader.ReadString();

        if( GOWIsStringValueType( AReader.NextValue() ) ) then
          AReader.ReadString(); // AfterReadName
//          AAfterReadName := AReader.ReadString();

        AReader.ReadListEnd();
        end

      else
        AReader.ReadIdent(); // ReadName
//        AReadName := AReader.ReadIdent();

      end;
      
    AReader.ReadListEnd();
    end

  else
    AReadDispName := AReader.ReadString();

  var AString := AReader.ReadString();
  var AGuidFrom := StringToGUID( AString );
  AString := AReader.ReadString();
  var AGuidTo := StringToGUID( AString );
  AConverter := NIL;

  if( OWGetConverter( AGuidFrom, AGuidTo, AConverterClass )) then
    begin
    var ADispatcher := TOWStateDispatcher.GetByNameCreate( Self, AReadDispName, OwnerInDesigning( False ) );
    var AInstanceHolder := ADispatcher.GetInstanceHolder();
    AConverter := ADispatcher.FFormatConverters.FindOrAdd(
        function( const AConverter : IOWFormatConverter ) : Boolean
        begin
          Result := ( AConverter.GetInstance().ClassType() = AConverterClass );
        end
      ,
        function() : IOWFormatConverter
        begin
          Result := AConverterClass.Create();
        end
      );

    AConverter.GetInstance().FOutputPin.ConnectAfter( Self, NIL );
    FDispatcher := ADispatcher;
    var AInputPin := AConverter.GetInstance().FInputPin;
    AInputPin.FDispatcher := FDispatcher;
    FDispatcher.AddPin( AInputPin, Self );
    FDispatcher.FFormatConverters.Add( AConverter );
    end;

  OWNotifyConnected( Self, FDispatcher );
  OWNotifyChangePin( Self, False );
  UpdateStateValue();
  
  AReader.ReadListEnd();
  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.WriteStateConverterConnectionsData( AWriter : TWriter );
var
  AExternalLink : Boolean;
  AReadLock     : ILockSection;

begin
  AReadLock := ReadLock();

  if( FDispatcher = NIL ) then
    Exit;
    
  var AIsSaved := False;
  var AThePinOwner := GetRoot();
  if( TOWStateDispatcher( FDispatcher ).FCountSaved = 0 ) then
    TOWStateDispatcher( FDispatcher ).ResetFormsSave(); // It's the first pin to save.

  AWriter.WriteListBegin();
  if( ( AThePinOwner = NIL ) or ( not TOWStateDispatcher( FDispatcher ).IsFormSaved( AThePinOwner ))) then
    begin
    if( TOWStateDispatcher( FDispatcher ).IsCrosForm()) then
      begin
      AWriter.WriteListBegin();
      AWriter.WriteString( FDispatcher.Name );
      AIsSaved := True;
      var APinRootName := GetRootName();
      for var I : Integer := 0 to FDispatcher.PinCount - 1 do
        begin
        var APin := FDispatcher.Pins[ I ];
        if( APin = NIL ) then
          AExternalLink := True

        else if( APinRootName <> APin.GetRootName() ) then
          AExternalLink := True

        else
          AExternalLink := False;

        if( AExternalLink ) then
          begin
          var AIdent := APin.GetFullIdentName( True, False );
          var AIdentName := APin.GetFullName( True );
          if( AIdent = AIdentName ) then
            AWriter.WriteIdent( AIdent )

          else
            begin
            AWriter.WriteListBegin();
            AWriter.WriteIdent( AIdent );
            AWriter.WriteString( AIdentName );
            AWriter.WriteListEnd();
            end;
          end;
        end;

      AWriter.WriteListEnd();
      end;
    end;

//  if( FDispatcher[ FDispatcher.PinCount - 1 ] = Self ) then
  if( TOWStateDispatcher( FDispatcher ).FCountSaved = FDispatcher.PinCount ) then
    TOWStateDispatcher( FDispatcher ).ResetFormsSave() // It's the last pin. We are done with saving.

  else
    TOWStateDispatcher( FDispatcher ).AddFormSaved( AThePinOwner );

  if( not AIsSaved ) then
    AWriter.WriteString( FDispatcher.Name );

  var AConverter := FConnectionSourcePin.Owner as TOWFormatConverter;
  var AGuidFrom := AConverter.GetInstance().InputPin.GetDownStreamID(); // FConnectedID;
  var AGuidTo := AConverter.GetInstance().OutputPin.GetPrimaryConnectionID();
  AWriter.WriteString( GUIDToString( AGuidFrom ) );
  AWriter.WriteString( GUIDToString( AGuidTo ) );
//  AGuid := GetPrimaryConnectionID(); // FConnectionSourcePin.;
  AWriter.WriteListEnd();
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.ReadConnectionsDataInternal( AReader : TReader; ASkipConnections : Boolean );
var
  AReadName   : String;
  AReadIdent  : String;
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  CheckVirtualList( False );

  var ABaseAfterPin : TOWBasicPin := NIL;
  if( AReader.NextValue() = vaList ) then
    begin
    AReader.ReadListBegin();
    if( AReader.NextValue() = vaList ) then
      begin
      AReader.ReadListBegin();
      if( AReader.NextValue() = vaList ) then
        begin
        AReader.ReadListBegin();
        AReadIdent := AReader.ReadIdent();
        AReadName := AReader.ReadString();
        AReader.ReadListEnd();
        end

      else
        begin
        AReadIdent := AReader.ReadIdent();
        AReadName := AReadIdent;
        end;

      if( AReader.NextValue() = vaIdent ) then
        begin
        var AIdentAfter := AReader.ReadIdent();
        if( not ASkipConnections ) then
          if( not IsPreviewPin() ) then
            begin
            ApplyFormName( AIdentAfter );
            ABaseAfterPin := GOWPins.GetByNameCreate( GetRoot(), False, ptSink, AIdentAfter, AIdentAfter, GetFullName( True ) );
            end;

        end;

      AReader.ReadListEnd();
      end

    else
      begin
      AReadIdent := AReader.ReadIdent();
      AReadName := AReader.ReadString();
      end;
      
    AReader.ReadListEnd();
    end

  else
    begin
    AReadIdent := AReader.ReadIdent();
    AReadName := AReadIdent;
    end;

  if( not ASkipConnections ) then
    if( not IsPreviewPin() ) then
      begin
      ApplyFormName( AReadIdent );
      ApplyFormName( AReadName );
      var ABasePin := GOWPins.GetByNameCreate( GetRoot(), False, ptSource, AReadIdent, AReadName, GetFullName( True ) );
      ConnectAfter( ABasePin, ABaseAfterPin );
      end;

  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
function TOWSinkPin.TryLinkTo( ARoot : TComponent; const ASoutce : String; const ASoutceName : String; ASaveForm : Boolean ) : Boolean;
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  if( ASoutce = 'nil' ) then
    begin
    Disconnect();
    Exit( True );
    end;

  if( not IsPreviewPin() ) then
    begin
    var ALocalSoutce := ASoutce;
    ApplyFormName( ALocalSoutce );

    var ALocalSoutceName := ASoutceName;
    ApplyFormName( ALocalSoutceName );
    var ASourcePin := GOWPins.GetByNameCreate( GetRoot(), False, ptSource, ALocalSoutce, ALocalSoutceName, GetFullName( True ) );
    Exit( Connect( ASourcePin ));
    end;

  Exit( False );
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.WriteConnectionsData( AWriter : TWriter );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  var AIdent := FRealSourcePin.GetFullIdentName( True, False ).Replace( '*._', '_Item' ); // GetLinkStr( True );
  var AIdentName := FRealSourcePin.GetFullName( True ).Replace( '*._', '_Item' ); // GetLinkStr( False );
  var AAfterPin := FRealSourcePin.GetConnectedAfterForPin( Self );
  if( AAfterPin <> NIL ) then
    begin
    var AIdentAfter := AAfterPin.GetFullIdentName( True, False );
    AWriter.WriteListBegin();
    AWriter.WriteListBegin();
    if( AIdent = AIdentName ) then
      begin
      AWriter.WriteIdent( AIdent );
      AWriter.WriteIdent( AIdentAfter );
      end

    else
      begin
      AWriter.WriteListBegin();
      AWriter.WriteIdent( AIdent );
      AWriter.WriteString( AIdentName );
      AWriter.WriteListEnd();
      AWriter.WriteIdent( AIdentAfter );
      end;

    AWriter.WriteListEnd();
    AWriter.WriteListEnd();
    end

  else
    begin
    if( AIdent = AIdentName ) then
      AWriter.WriteIdent( AIdent )

    else
      begin
      AWriter.WriteListBegin();
      AWriter.WriteIdent( AIdent );
      AWriter.WriteString( AIdentName );
      AWriter.WriteListEnd();
      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWSinkPin.WriteNoStateListEntry( AWriter : TWriter ) : Boolean;
begin
  Result := DoWrite();
  if( Result ) then
    WriteConnectionsData( AWriter );

end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.ReadNoStateListEntry( AReader : TReader; const AIdent : String; ASkipConnections : Boolean );
var
  AWriteLock  : ILockSection;

begin
  if( AIdent = '' ) then
    begin
    ReadConnectionsData( AReader );
    Exit;
    end;

  AWriteLock := WriteLock();
  CheckVirtualList( False );

  var AReadName := AIdent;

  if( not ASkipConnections ) then
    if( not IsPreviewPin() ) then
      begin
      var ALocalIdent := AIdent;
      ApplyFormName( ALocalIdent );
      ApplyFormName( AReadName );
      var ABasePin := GOWPins.GetByNameCreate( GetRoot(), False, ptSource, ALocalIdent, AReadName, GetFullName( True ) );
      ConnectAfter( ABasePin, NIL );
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
function TOWSinkPin.IsLinkedTo( const APinName : String ) : Boolean;
begin
  Result := ( GetLinkStr() = APinName );
end;
//---------------------------------------------------------------------------
function TOWSinkPin.GetLinkStr() : String;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( FRealSourcePin = NIL ) then
    Exit( '' );

  var AddRoot := FRealSourcePin.GetRootName() <> GetRootName();

  Result := FRealSourcePin.GetFullIdentName( AddRoot, False );
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
procedure TOWSinkPin.DefineProperties( AFiler : TFiler );
begin
  inherited;
  AFiler.DefineProperty( 'SourcePin', ReadConnectionsData, WriteConnectionsData, DoWrite());
  AFiler.DefineProperty( 'StateConverter', ReadStateConverterConnectionsData, WriteStateConverterConnectionsData, DoStateConverterWrite());
end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.SerializationRead( const AReader : IReader );
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  inherited;

  CheckVirtualList( False );

  var AOptions := AReader.GetOptions();

  AReader.ReadNested( 'SourcePin',
      procedure( const AReader : IReader )
      begin
        var AReaderAccess := AReader.Access;
        AReader.ReadString( 'ID',
            procedure( const AID : String )
            var
              AName : String;

            begin
              var ALocalID := AID;
              ApplyFormName( ALocalID );
              if( AReader.ReadString( 'Name', AName )) then
                ApplyFormName( AName )

              else
                AName := ALocalID;

              ALocalID := ReplaceComponentOwnerName( ALocalID, AReaderAccess.GetRenameMap() );
              AName := ReplaceComponentOwnerName( AName, AReaderAccess.GetRenameMap() );

              if( TDeserializeOption.FromPaste in AOptions ) then
                begin
                var ARootName := GetRootName();
                if( not ALocalID.StartsWith( ARootName + '.' )) then
                  begin
                  ALocalID := ARootName + SubstringFrom( ALocalID, '.' );
                  AName := ARootName + SubstringFrom( AName, '.' );
                  end;
                end;

              var ABaseAfterPin : TOWBasicPin := NIL;
              var AFullName := GetFullName( True );
              var ARoot := GetRoot();
              AReader.ReadString( 'SaveAfter',
                  procedure( const AID : String )
                  begin
                    var ALocalID := AID;
                    ApplyFormName( ALocalID );
                    ALocalID := ReplaceComponentOwnerName( ALocalID, AReaderAccess.GetRenameMap() );
                    ABaseAfterPin := GOWPins.GetByNameCreate( ARoot, True, ptSink, ALocalID, ALocalID, AFullName );
                  end
                );

              var ABasePin := GOWPins.GetByNameCreate( ARoot, True, ptSource, ALocalID, AName, AFullName );
              ConnectAfter( ABasePin, ABaseAfterPin );
            end
          );

      end
    );

  AReader.ReadNested( 'StateConverter',
      procedure( const AReader : IReader )
      begin
        AReader.ReadString( 'Name',
            procedure( const AName : String )
            var
              AFromText       : String;
              AToText         : String;
              AConverterClass : TOWFormatConverterClass;
//              AConverter      : IOWFormatConverter;

            begin
              if( not AReader.ReadString( 'From', AFromText )) then
                Exit;

              if( not AReader.ReadString( 'To', AToText )) then
                Exit;

              var AGuidFrom := StringToGUID( AFromText );
              var AGuidTo := StringToGUID( AToText );

              if( OWGetConverter( AGuidFrom, AGuidTo, AConverterClass )) then
                begin
                var ADispatcher := TOWStateDispatcher.GetByNameCreate( Self, AName, OwnerInDesigning( False ) );
                var AInstanceHolder := ADispatcher.GetInstanceHolder();
                var AConverter := ADispatcher.FFormatConverters.FindOrAdd(
                    function( const AConverter : IOWFormatConverter ) : Boolean
                    begin
                      Result := ( AConverter.GetInstance().ClassType() = AConverterClass );
                    end
                  ,
                    function() : IOWFormatConverter
                    begin
                      Result := AConverterClass.Create();
                    end
                  );

                AConverter.GetInstance().FOutputPin.ConnectAfter( Self, NIL );
                FDispatcher := ADispatcher;
                var AInputPin := AConverter.GetInstance().FInputPin;
                AInputPin.FDispatcher := FDispatcher;
                FDispatcher.AddPin( AInputPin, Self );
                FDispatcher.FFormatConverters.Add( AConverter );
                end;

              OWNotifyConnected( Self, FDispatcher );
              OWNotifyChangePin( Self, False );
              UpdateStateValue();
            end
          );

      end
    );

end;
//---------------------------------------------------------------------------
procedure TOWSinkPin.SerializationWrite( const AWriter : IWriter; const ASelectedObjects : IObjectArrayList; const AMember : IMemberInfo = NIL );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  inherited;

  if( csWriting in GetOwnerComponent().ComponentState ) then
    Exit;

  var AOptions := AWriter.GetOptions();
  if( TSerializeOption.NoLinks in AOptions ) then
    Exit;

  if( DoStateConverterWrite() ) then
    begin
    if( TOWStateDispatcher( FDispatcher ).FCountSaved = 0 ) then
      TOWStateDispatcher( FDispatcher ).ResetFormsSave(); // It's the first pin to save.

    var AThePinOwner := GetRoot();

    AWriter.WriteNested( 'StateConverter',
        procedure( const AWriter : IWriter )
        var
          AConverter    : IOWFormatConverter;
          AExternalLink : Boolean;

        begin
          AWriter.WriteString( 'Name', FDispatcher.Name );
          AConverter := FConnectionSourcePin.Owner as TOWFormatConverter;
          var AGuidFrom : TGUID := AConverter.GetInstance().InputPin.GetDownStreamID(); // FConnectedID;
          var AGuidTo : TGUID := AConverter.GetInstance().OutputPin.GetPrimaryConnectionID();
          AWriter.WriteString( 'From', GUIDToString( AGuidFrom ) );
          AWriter.WriteString( 'To', GUIDToString( AGuidTo ) );

          var AIncludeRoot := not ( TSerializeOption.LocalScope in AWriter.GetOptions() );
          if( ( AThePinOwner = NIL ) or ( not TOWStateDispatcher( FDispatcher ).IsFormSaved( AThePinOwner ))) then
            if( TOWStateDispatcher( FDispatcher ).IsCrosForm()) then
              begin
              AWriter.WriteArray( 'ExternalPins',
                  procedure( const AArrayWriter : ISequentialWriter )
                  begin
                    var APinRootName := GetRootName();
                    for var I : Integer := 0 to FDispatcher.PinCount - 1 do
                      begin
                      var APin := FDispatcher.Pins[ I ];
                      if( APin = NIL ) then
                        AExternalLink := True

                      else if( APinRootName <> APin.GetRootName() ) then
                        AExternalLink := True

                      else
                        AExternalLink := False;

                      if( AExternalLink ) then
                        begin
                        AArrayWriter.WriteNested(
                            procedure( const AWriter : IWriter )
                            begin
                              var AIdent := APin.GetFullIdentName( AIncludeRoot, False );
                              AWriter.WriteString( 'ID', AIdent );

                              var AIdentName := APin.GetFullName( AIncludeRoot );
                              if( AIdent <> AIdentName ) then
                                AWriter.WriteString( 'Name', AIdentName );

                            end
                          );

                        end;
                      end;

                  end
                );

              end;

        end
      );

    if( TOWStateDispatcher( FDispatcher ).FCountSaved = FDispatcher.PinCount ) then
      TOWStateDispatcher( FDispatcher ).ResetFormsSave() // It's the last pin. We are done with saving.

    else
      TOWStateDispatcher( FDispatcher ).AddFormSaved( AThePinOwner );

    end;

  if( DoWrite() ) then
    AWriter.WriteNested( 'SourcePin',
        procedure( const AWriter : IWriter )
        begin
          var AIdent := FRealSourcePin.GetFullIdentName( True, False ); // GetLinkStr( True );
          var AIdentName := FRealSourcePin.GetFullName( True ); // GetLinkStr( False );
          var AAfterPin := FRealSourcePin.GetConnectedAfterForPin( Self );

          AWriter.WriteString( 'ID', AIdent );
          if( AIdent <> AIdentName ) then
            AWriter.WriteString( 'Name', AIdentName );

          if( AAfterPin <> NIL ) then
            AWriter.WriteString( 'SaveAfter', AAfterPin.GetFullIdentName( True, False ));

        end
      );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function OWGetInjectedObject( AClass : TObject; APinObject : TObject; AReturnType : TBindingValueType; var AResultName : String ) : Boolean;
begin
  if( Assigned( GOWGetInjectedObjectFunc )) then
    Exit( GOWGetInjectedObjectFunc( AClass, APinObject, AReturnType, AResultName ));

  Result := False;
end;
//---------------------------------------------------------------------------
function OWGetInjectedClassPropertiesOfType( AClass : TObject; AType : TClass; const ACollection : IPairCollection<String, TObject>; ASaveValue : Boolean ) : Boolean;
begin
  if( Assigned( GOWGetInjectedClassPropertiesOfTypeFunc )) then
    Exit( GOWGetInjectedClassPropertiesOfTypeFunc( AClass, AType, ACollection, ASaveValue ));

  Result := False;
end;
//---------------------------------------------------------------------------
function OWGetClassPropertyNameForPropertyObject( AObject : TObject; APinObject : TObject; ASaveValue : Boolean; AIncludeInjecetd : Boolean ) : String;
var
  APropertySet  : ISet<TObject>;
  AClassType    : TClass;

{$IFDEF USE_NEW_RTTI}
  function GetClassPropertyNameForPropertyObjectPrefix( const APrefix : String; AObject : TObject; APinObject : TObject; ALevel : Integer; ASaveValue : Boolean ) : String;
  var
    AObjectStr    : String;
    AEnumChildren : IEnumerateChildren;
    ANamed        : INamedItem;

  begin
    Result := '';

    if( AObject is TComponent )then
      if( csDestroying in TComponent( AObject ).ComponentState ) then
        Exit;

    try
      for var AProperty in AObject.TypeInfo().GetSingleProperties( [ mvPublished ], [ tkClass ] ) do
        begin
        var APropertyObject := AProperty.GetValue( AObject ).AsObject();
        if( APropertyObject <> NIL ) then
          begin
          if( APropertyObject = APinObject ) then
            begin
            Result := APrefix + AProperty.Name;
            Break;
            end

          else if( APropertyObject is TOWPinList )then
            begin
            var ADoBreak := False;
            for var APinIndex := 0 to TOWPinList( APropertyObject ).Count - 1 do
              if( TClassManagement.IsDescendantOf( TOWPinList( APropertyObject ).Pins[ APinIndex ], AClassType )) then
                if( TOWPinList( APropertyObject ).Pins[ APinIndex ] = APinObject ) then
                  begin
                  Result := APrefix + AProperty.Name + '.' + TOWPinList( APropertyObject ).Names[ APinIndex ];
                  ADoBreak := True;
                  Break;
                  end;

            if( ADoBreak ) then
              Break;

            end

          else if( APropertyObject is TPersistent )then
            begin
            if( not ( APropertyObject is TComponent )) then
              if( not APropertySet.Contains( APropertyObject )) then
                begin
                APropertySet.Add( APropertyObject );
                Result := GetClassPropertyNameForPropertyObjectPrefix( APrefix + AProperty.Name + '.', APropertyObject, APinObject, ALevel + 1, ASaveValue );
                if( APropertyObject is TCollection ) then
                  begin
                  var ACollection := TCollection( APropertyObject );
                  for var J : Integer := 0 to ACollection.Count - 1 do
                    begin
                    APropertySet.Add( ACollection.Items[ J ] );
                    if( ASaveValue ) then
                      AObjectStr := AProperty.Name + '._Item' + J.ToString()

                    else
                      AObjectStr := AProperty.Name + '[' + J.ToString() + ']';

                    Result := GetClassPropertyNameForPropertyObjectPrefix( APrefix + AObjectStr + '.', ACollection.Items[ J ], APinObject, ALevel + 1, ASaveValue );
                    if( Result <> '' ) then
                      Break;

                    end;
                  end

                else if( APropertyObject.IfSupports<IEnumerateChildren>( AEnumChildren )) then
                  begin
                  var J := 0;
                  for var ASubObject in AEnumChildren do
                    begin
                    APropertySet.Add( ASubObject );
                    if( ASaveValue ) then
                      AObjectStr := AProperty.Name + '._Item' + J.ToString()

                    else if( TInterface.IfSupports<INamedItem>( ASubObject, ANamed )) then
                      begin
                      var ADisplayName := ANamed.GetDisplayName( False );
                      if( ADisplayName <> '' ) then
                        AObjectStr := AProperty.Name + '.' + ADisplayName

                      else
                        AObjectStr := AProperty.Name + '[' + J.ToString() + ']';

                      end

                    else
                      AObjectStr := AProperty.Name + '[' + J.ToString() + ']';

                    Result := GetClassPropertyNameForPropertyObjectPrefix( APrefix + AObjectStr + '.', ASubObject, APinObject, ALevel + 1, ASaveValue );
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
  function GetClassPropertyNameForPropertyObjectPrefix( const APrefix : String; AObject : TObject; APinObject : TObject; ALevel : Integer; ASaveValue : Boolean ) : String;
  var
    APropList     : PPropList;
    AObjectStr    : String;
    AEnumChildren : IEnumerateChildren;
    ANamed        : INamedItem;

  begin
    Result := '';

    if( AObject is TComponent )then
      if( csDestroying in TComponent( AObject ).ComponentState ) then
        Exit;

  // This method retrieves the property names and types for the given object
  //  and adds that information to the AStrings parameter.

    var AClassTypeInfo := PTypeInfo( AObject.ClassInfo() );
    var AClassTypeData := GetTypeData( AClassTypeInfo );

    if( AClassTypeData.PropCount <> 0 ) then
      begin
      // allocate the memory needed to hold the references to the TPropInfo
      // structures on the number of properties.
      GetMem( APropList, sizeof( PPropInfo ) * AClassTypeData.PropCount );
      try
        // fill APropList with the pointer references to the TPropInfo structures
        GetPropInfos( AClassTypeInfo, APropList);
        for var I : Integer := 0 to AClassTypeData.PropCount - 1 do
          begin
          var ATypeInfo := APropList[I].PropType^^;
          if( ATypeInfo.Kind = tkClass ) then
            begin
            var APropertyObject := GetObjectProp( AObject, APropList[I] );

            if( APropertyObject <> NIL ) then
              begin
              if( APropertyObject = APinObject ) then
                begin
                Result := APrefix + String(APropList[I].Name);
                Break;
                end

              else if( APropertyObject is TOWPinList ) then
                begin
                var ADoBreak := False;
                for var APinIndex := 0 to TOWPinList( APropertyObject ).Count - 1 do
                  if( TClassManagement.IsDescendantOf( TOWPinList( APropertyObject ).Pins[ APinIndex ], AClassType )) then
                    if( TOWPinList( APropertyObject ).Pins[ APinIndex ] = APinObject ) then
                      begin
                      Result := APrefix + String(APropList[I].Name) + '.' + TOWPinList( APropertyObject ).Names[ APinIndex ];
                      ADoBreak := True;
                      Break;
                      end;

                if( ADoBreak ) then
                  Break;

                end

              else if( APropertyObject is TPersistent )then
                begin
                if( not ( APropertyObject is TComponent )) then
                  begin
                  if( not APropertySet.Contains( APropertyObject )) then
                    begin
                    APropertySet.Add( APropertyObject );
                    Result := GetClassPropertyNameForPropertyObjectPrefix( APrefix + String(APropList[I].Name) + '.', APropertyObject, APinObject, ALevel + 1, ASaveValue );
                    if( APropertyObject is TCollection ) then
                      begin
                      var ACollection := TCollection( APropertyObject );
                      for var J : Integer := 0 to ACollection.Count - 1 do
                        begin
                        var ACollectionItem := ACollection.Items[ J ];
                        APropertySet.Add( ACollectionItem );
                        if( ASaveValue ) then
                          AObjectStr := String(APropList[I].Name) + '._Item' + J.ToString()

                        else
                          AObjectStr := String(APropList[I].Name) + '[' + J.ToString() + ']';

                        Result := GetClassPropertyNameForPropertyObjectPrefix( APrefix + AObjectStr + '.', ACollectionItem, APinObject, ALevel + 1, ASaveValue );
                        if( Result <> '' ) then
                          Break;

                        end;
                      end

                    else if( APropertyObject.IfSupports<IEnumerateChildren>( AEnumChildren )) then
                      begin
                      var J := 0;
                      for var ASubObject in AEnumChildren do
                        begin
                        APropertySet.Add( ASubObject );
                        if( ASaveValue ) then
                          AObjectStr := String(APropList[I].Name) + '._Item' + J.ToString()

                        else if( TInterface.IfSupports<INamedItem>( ASubObject, ANamed )) then
                          begin
                          var ADisplayName := ANamed.GetDisplayName( False );
                          if( ADisplayName <> '' ) then
                            AObjectStr := String(APropList[I].Name) + '.' + ADisplayName

                          else
                            AObjectStr := String(APropList[I].Name) + '[' + J.ToString() + ']';

                          end

                        else
                          AObjectStr := String(APropList[I].Name) + '[' + J.ToString() + ']';

                        if( ASubObject = APinObject ) then
                          begin
                          Result := APrefix + AObjectStr;
                          Break;
                          end;

                        Result := GetClassPropertyNameForPropertyObjectPrefix( APrefix + AObjectStr + '.', ASubObject, APinObject, ALevel + 1, ASaveValue );
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

      FreeMem( APropList );
      end;

  end;
{$ENDIF}
//---------------------------------------------------------------------------
var
  AReturnType : TBindingValueType;

begin
  if( ASaveValue ) then
    AReturnType := TBindingValueType.Save

  else
    AReturnType := TBindingValueType.Display;

  if( AIncludeInjecetd ) then
    if( OWGetInjectedObject( AObject, APinObject, AReturnType, Result )) then
      Exit;

  APropertySet := TSet<TObject>.Create();
  AClassType := APinObject.ClassType();
  Result := GetClassPropertyNameForPropertyObjectPrefix( '', AObject, APinObject, 0, ASaveValue );
  if( not ASaveValue ) then
    begin
    var APropertyInfo : TSingleSubPropertyInfo;
    var ANameAttribute : NameAttribute;
    if( AObject.TypeInfo().GetSingleSubProperty( AObject, Result, APropertyInfo )) then
      if( APropertyInfo.Member.AccessAttributes.Get<NameAttribute>( ANameAttribute )) then
        begin
        var APos := Result.LastDelimiter( '.' );
        if( APos < 0 ) then
          Exit( ANameAttribute.Value );

        Delete( Result, APos + 2, 10000 );
        Result := Result + ANameAttribute.Value;
        end;

    end;

end;
//---------------------------------------------------------------------------
function OWGetClassPropertiesOfTypePrefix( const APrefix : String; AObject : TObject; AType : TClass; const ACollection : IPairCollection<String, TObject>; ASaveValue : Boolean; ALevel : Integer; const APropertySet : ISet<TObject> ) : Boolean;
var
//  AContext      : TRttiContext;
  AEnumChildren : IEnumerateChildren;

begin
  Result := True;

  if( ALevel > 20 ) then
    Exit( False );

  if( AObject is TComponent )then
    if( csDestroying in TComponent( AObject ).ComponentState ) then
      Exit;

  try
    AObject := GetRealTypeInstance( AObject );
    var ARTType := AObject.TypeInfo();
    for var AProperty in ARTType.GetSingleProperties( [ mvPublished ], [ tkClass ] ) do
      begin
      var APropertyObject := AProperty.Value[ AObject ].AsObject();
      if( APropertyObject <> NIL ) then
        begin
        if( TClassManagement.IsDescendantOf( APropertyObject, AType )) then
          ACollection.AddPair( APrefix + AProperty.Name, APropertyObject );

        if( APropertyObject is TOWPinList )then
          begin
          for var APinIndex := 0 to TOWPinList( APropertyObject ).Count - 1 do
            begin
            if( TClassManagement.IsDescendantOf( TOWPinList( APropertyObject ).Pins[ APinIndex ], AType )) then
              begin
              if( ASaveValue ) then
                ACollection.AddPair( APrefix + AProperty.Name + '._Pin' + APinIndex.ToString(), TOWPinList( APropertyObject ).Pins[ APinIndex ] )

              else
                ACollection.AddPair( APrefix + AProperty.Name + '.' + TOWPinList( APropertyObject ).Names[ APinIndex ], TOWPinList( APropertyObject ).Pins[ APinIndex ] );

              end;
            end;
          end

        else if( APropertyObject is TPersistent )then
          begin
          if( not ( APropertyObject is TComponent )) then
            if( not APropertySet.Contains( APropertyObject )) then
              begin
              APropertySet.Add( APropertyObject );
              if( APropertyObject is TCollection )then
                begin
                for var J : Integer := 0 to TCollection( APropertyObject ).Count - 1 do
                  begin
                  var ASubObject := TCollection( APropertyObject ).Items[ J ];
                  var AName := APrefix + AProperty.Name + '[' + J.ToString() + ']';
                  APropertySet.Add( ASubObject );
                  if( TClassManagement.IsDescendantOf( ASubObject, AType )) then
                    ACollection.AddPair( AName, ASubObject );

                  if( OWGetClassPropertiesOfTypePrefix( AName + '.', ASubObject, AType, ACollection, ASaveValue, ALevel + 1, APropertySet )) then
                    Result := True;

                  end;
                end

              else if( TInterface.IfSupports<IEnumerateChildren>( APropertyObject, AEnumChildren )) then
                begin
                var J := 0;
                for var ASubObject in AEnumChildren do
                  begin
                  var AName := APrefix + AProperty.Name + '[' + J.ToString() + ']';
                  APropertySet.Add( ASubObject );
                  if( TClassManagement.IsDescendantOf( ASubObject, AType )) then
                    ACollection.AddPair( APrefix + AName, ASubObject );

                  if( OWGetClassPropertiesOfTypePrefix( AName + '.', ASubObject, AType, ACollection, ASaveValue, ALevel + 1, APropertySet )) then
                    Result := True;

                  Inc( J );
                  end;
                end;

              if( OWGetClassPropertiesOfTypePrefix( APrefix + AProperty.Name + '.', APropertyObject, AType, ACollection, ASaveValue, ALevel + 1, APropertySet )) then
                Result := True;

              end;

          end;
        end;
      end;

  except
    Result := False;
    end;

end;
//---------------------------------------------------------------------------
procedure OWGetClassPropertiesOfType( const ACollection : IPairCollection<String, TObject>; AObject : TObject; AType : TClass; ASaveValue : Boolean );
var
  AEnumeratePins : IEnumeratePins;

begin
  if( OWGetInjectedClassPropertiesOfType( AObject, AType, ACollection, ASaveValue ) ) then
    Exit;

  if( AObject.IfSupports<IEnumeratePins>( AEnumeratePins )) then
    if( AType.InheritsFrom( TOWBasicPin )) then
      begin
      AEnumeratePins.EnumeratePins( ACollection, AType, False );
      Exit;
      end;

  var APropertySet : ISet<TObject> := TSet<TObject>.Create();
  OWGetClassPropertiesOfTypePrefix( '', AObject, AType, ACollection, ASaveValue, 0, APropertySet );
end;
//---------------------------------------------------------------------------
{
function GetIdents( const AElements : IPropertyElements ) : String;
begin
  if( AElements.Count = 0 ) then
    Exit( '' );

  Result := AElements[ 0 ].IdentName;
  for var I : Integer := 1 to AElements.Count - 1 do
    Result := Result + '.' + AElements[ I ].IdentName;

end;
}
//---------------------------------------------------------------------------
function OWValueToItems( APin : TOWPin; AAddRoot : Boolean ) : IPropertyElements;
begin
  Result := TPropertyElements.Create();
  if( APin = NIL ) then
    Exit;

  var APinOwner := APin.Owner;
  var APinOwnerName := APinOwner.Name;

  if( APinOwner = NIL ) then
    Exit;

  if( TClassManagement.GetInjectedObjectPathItems( APinOwner, APin, Result ) ) then
    begin
    Result.Insert( 0, TPropertyElement.Create( APinOwner, APinOwnerName ));
    if( AAddRoot ) then
      begin
      var APinRoot := APin.GetRoot();
      if( APinRoot <> APinOwner ) then
        Result.Insert( 0, TPropertyElement.Create( APinRoot, APin.GetRootName() ));

      end;

    Exit;
    end;

  var AOwnerPinList := APin.FOwnerPinList;
  if( AOwnerPinList <> NIL ) then
    begin
//    if( APin.FOwnerProperty.ClassName() = 'TArduinoRemoteXYGraphElement' ) then
//      APin := APin;


    Result := AOwnerPinList.GetFullIdents( AAddRoot );
//    Result.Append( OWGetClassPropertyItemsForPropertyObject( APinOwner, AOwnerPinList, True ));

{
    var ATest1 := OWGetClassPropertyItemsForPropertyObject( APinOwner, AOwnerPinList, True );

    var AText1 := GetIdents( ATest1 );
    var AText2 := GetIdents( Result );
}
//    var AText2 := GetIdents( Result );

    for var APinIndex := 0 to AOwnerPinList.Count - 1 do
      if( AOwnerPinList.Pins[ APinIndex ] = APin ) then
        begin
        var AIdent := '_Pin' + APinIndex.ToString();
        Result.Add( TPropertyElement.Create( AOwnerPinList, AIdent, AIdent, AOwnerPinList.Names[ APinIndex ] ));
        Break;
        end;

    Exit;
    end

  else
    begin
    var APinObjectOwnerProperty := APin.FOwnerProperty;
    if( APinObjectOwnerProperty <> NIL ) then
      begin
      if( not TClassManagement.GetObjectOwnersList( APin, APinObjectOwnerProperty, APinOwner, Result )) then
        Exit;

      end

    else
      Result.Append( TClassManagement.GetClassPropertyItemsForPropertyObject( APinOwner, APin, True ) );

    end;

  Result.Insert( 0, TPropertyElement.Create( APinOwner, APinOwnerName ));
  if( AAddRoot ) then
    begin
    var APinRoot := APin.GetRoot();
    if( APinRoot <> APinOwner ) then
      Result.Add( TPropertyElement.Create( APinRoot, APin.GetRootName() ));

    end;

end;
//---------------------------------------------------------------------------
function OWValueToItems( APinList : TOWBasicPinList; AAddRoot : Boolean ) : IPropertyElements;
begin
  Result := TPropertyElements.Create();

  if( APinList = NIL ) then
    Exit;

  if( APinList.Owner = NIL ) then
    Exit;

  if( TClassManagement.GetInjectedObjectPathItems( APinList.Owner, APinList, Result ) ) then
    begin
    Result.Insert( 0, TPropertyElement.Create( APinList.Owner, APinList.Owner.Name ));
    Exit;
    end;

  var APinObjectOwnerProperty := APinList.FOwnerProperty;
  if( APinObjectOwnerProperty <> NIL ) then
    begin
    if( not TClassManagement.GetObjectOwnersList( APinList, APinObjectOwnerProperty, APinList.GetEmbeddedOwner(), Result )) then
      Exit;

    end

  else
    Result.Append( TClassManagement.GetClassPropertyItemsForPropertyObject( APinList.Owner, APinList, True ));

{
  var ATest1 := TClassManagement.GetClassPropertyItemsForPropertyObject( APinList.Owner, APinList, True );

  var AText1 := GetIdents( ATest1 );
  var AText2 := GetIdents( Result );

  if( AText1 <> AText2 ) then
    begin
    AText1 := AText1;
//    TClassManagement.GetClassPropertyItemsForPropertyObject( APinList.Owner, APinList, True );
//    OWValueToItems( APinList, AAddRoot );
    end;
}
  if( Result.Count > 0 ) then
    if( Result[ 0 ].Persistent = APinList.GetEmbeddedOwner() ) then
      Result.Delete( 0 );

  Result.Insert( 0, TPropertyElement.Create( APinList.Owner, APinList.Owner.Name ));

  if( AAddRoot ) then
    if( APinList.GetRoot() <> APinList.Owner ) then
      Result.Add( TPropertyElement.Create( APinList.GetRoot(), APinList.GetRootName() ));

end;
//---------------------------------------------------------------------------
function OWValueToString( APin : TOWBasicPin; AAddRoot : Boolean; ASaveValue : Boolean ) : String;
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
    Result := APin.Owner.Name + '.' + OWGetClassPropertyNameForPropertyObject( APin.Owner, APin.FOwnerPinList, ASaveValue, True );
    for var APinIndex := 0 to APin.FOwnerPinList.Count - 1 do
      if( APin.FOwnerPinList.Pins[ APinIndex ] = APin ) then
        begin
        if( ASaveValue ) then
          Result := Result + '._Pin' + APinIndex.ToString()

        else
          Result := Result + '.' + APin.FOwnerPinList.Names[ APinIndex ];

        Break;
        end;

    end

  else
    Result := APin.Owner.Name + '.' + OWGetClassPropertyNameForPropertyObject( APin.Owner, APin, ASaveValue, True );

  if( AAddRoot ) then
    if( APin.GetRoot() <> APin.Owner ) then
      Result := APin.GetRootName() + '.' + Result;

end;
//---------------------------------------------------------------------------
function OWValueToString( APinList : TOWBasicPinList; AAddRoot : Boolean; ASaveValue : Boolean ) : String;
begin
  if( APinList = NIL ) then
    Exit( '' );

  if( APinList.Owner = NIL ) then
    begin
{
    if( APinList is TOWPin ) then
      Exit( TOWPin( APinList ).FLoadName );
}
    Exit( '(No owner)' );
    end;

  Result := APinList.Owner.Name + '.' + OWGetClassPropertyNameForPropertyObject( APinList.Owner, APinList, ASaveValue, True );
  if( AAddRoot ) then
    if( APinList.GetRoot() <> APinList.Owner ) then
      Result := APinList.GetRootName() + '.' + Result;

end;
//---------------------------------------------------------------------------
function OWGetPinsValueListSingle( AOwnerComponent : TComponent; APin : TOWPin; const ALink : String; const ARootName : String; AValueFilters : TOWPinValueFilters ) : IDictionary<String, TOWBasicPin>;
begin
  AOwnerComponent := GetMainOwnerComponent( AOwnerComponent );
  Result := TDictionary<String, TOWBasicPin>.Create();
  OWGetPinsValueListSingleRoot( Result, AOwnerComponent, APin, ALink, ARootName, AValueFilters );
end;
//---------------------------------------------------------------------------
procedure OWGetPinsValueListSingleRoot( const ACollection : IPairCollection<String, TOWBasicPin>; AOwnerComponent : TComponent; APin : TOWPin; const ALink : String; const ARootName : String; AValueFilters : TOWPinValueFilters );
var
  ASaveValue : Boolean;

  procedure OWGetPinsValueListSingleRootInternal( AOwnerComponent : TComponent; AIncludeRoot : Boolean );
  var
    ACanConnect     : Boolean;
    AComponentsList : TArray<TComponent>;

  begin
    var AComponentCount := AOwnerComponent.ComponentCount;
    if( AIncludeRoot ) then
      begin
      SetLength( AComponentsList, AComponentCount + 1 );
      AComponentsList[ AComponentCount ] := AOwnerComponent;
      end

    else
      SetLength( AComponentsList, AComponentCount );

    for var I : Integer := 0 to AComponentCount - 1 do
      AComponentsList[ I ] := AOwnerComponent.Components[ I ];

    for var AComponent in AComponentsList do
      begin
      var AIntDictionary : IDictionary<String, TObject> := TDictionary<String, TObject>.Create();
      OWGetClassPropertiesOfType( AIntDictionary, AComponent, TOWPin, ASaveValue );

      for var AItem in AIntDictionary do
        begin
        if( TOWPin( AItem.Value ).Owner <> AComponent ) then
          Continue;

        if( pvoFullList in AValueFilters ) then
          begin
          ACanConnect := APin.IsCompatible( TOWBasicPin( AItem.Value ));
          if( ACanConnect and ( pvoExcludeDirectDependency in AValueFilters )) then
            ACanConnect := not APin.DirectDependsOn( TOWBasicPin( AItem.Value ));

          end

        else
          ACanConnect := APin.CanConnectTo( TOWBasicPin( AItem.Value ));

        if( ACanConnect ) then
          begin
          var AOtherPin := TOWBasicPin( AItem.Value );
          if( ASaveValue ) then
            ACollection.AddPair( AOtherPin.GetFullIdentName( ARootName <> '', False ), AOtherPin )

          else
            ACollection.AddPair( AOtherPin.GetFullName( ARootName <> '' ), AOtherPin );

          end;
        end;

      if( AComponent <> AOwnerComponent ) then
        if( AComponent.ComponentCount <> 0 ) then
          OWGetPinsValueListSingleRootInternal( AComponent, False );

      end;

  end;

begin
  ASaveValue := pvoSaveValue in AValueFilters;
  OWGetPinsValueListSingleRootInternal( AOwnerComponent, True );
end;

//---------------------------------------------------------------------------
function OWGetPinsValueList( AStreamPin : TOWPin; const ALink : String; AValueFilters : TOWPinValueFilters ) : IDictionary<String, TOWBasicPin>;
begin
  var AMainComponent := AStreamPin.GetRoot();
  Result := TDictionary<String, TOWBasicPin>.Create();
  OWGetPinsValueListSingleRoot( Result, AMainComponent, AStreamPin, ALink, '', AValueFilters );
end;
//---------------------------------------------------------------------------
function OWGetPinsValueStringList( AStreamPin : TOWPin; const ALink : String; AValueFilters : TOWPinValueFilters ) : IStringArrayList;
begin
  Result := TStringArrayList.CreateCopy( OWGetPinsValueList( AStreamPin, ALink, AValueFilters ).GetKeys());
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWStreamInfoExtention.CreateObject( const AExtentionId : TGUID );
begin
  inherited Create();
  FExtentionId := AExtentionId;
end;
//---------------------------------------------------------------------------
class function TOWStreamInfoExtention.Make( const AExtentionId : TGUID ) : IOWStreamInfoExtention;
begin
  Result := CreateObject( AExtentionId );
end;
//---------------------------------------------------------------------------
function TOWStreamInfoExtention.GetExtentionId() : TGUID;
begin
  Result := FExtentionId;
end;
//---------------------------------------------------------------------------
function TOWStreamInfoExtention.IsInModule( AHInstance : NativeInt ) : Boolean;
begin
  var AClass := ClassType();
  while( True ) do
    begin
    if( NativeInt( FindClassHInstance( AClass )) = AHInstance ) then
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
procedure TOWPinStreamType.AddType( const AID : TGUID; const ASubmitFunction : TOWSubmit; AOverrride : Boolean; AReorder : Boolean = False );
begin
  for var I : Integer := 0 to FSize - 1 do
    begin
    var AItem := Farray[ I ];
    if( AItem.ID = AID ) then
      begin
      if( AOverrride ) then
        AItem.SubmitFunction := ASubmitFunction;

      if( AReorder ) then
        Swap( I, FSize - 1 );

      Exit;
      end;
    end;

  var AItem := TOWPinTypeEntry.Create();
  AItem.ID := AID;
  AItem.SubmitFunction := ASubmitFunction;
  Add( AItem );
end;
//---------------------------------------------------------------------------
procedure TOWPinStreamType.RemoveType( const AID : TGUID );
begin
  for var I : Integer := 0 to FSize - 1 do
    if( FArray[ I ].ID = AID ) then
      begin
      Delete( I );
      Break;
      end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWPinTypeRestricted.GetOrdered() : Boolean;
begin
  Result := FOrdered;
end;
//---------------------------------------------------------------------------
procedure TOWPinTypeRestricted.SetOrdered( AValue : Boolean );
begin
  FOrdered := AValue;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWBasicPinList.Create( const AOnCreated : TProc<TOWPinList> );
begin
  inherited Create();
//  FOwnerProperty := AOwnerProperty;
  if( Assigned( AOnCreated )) then
    AOnCreated( TOWPinList( Self ));

  AddTypeInfoMemberValueChangeNotify( Self );
end;
//---------------------------------------------------------------------------
destructor TOWBasicPinList.Destroy();
begin
  RemoveTypeInfoMemberValueChangeNotify( Self );

  inherited;
  for var AIndex := False to True do
    for var APin in GOWUnloadedPins[ AIndex ] do
      if( APin.FOwnerPinList = Self ) then
        APin.SetOwnerPinList( NIL );

end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetPinPropertyName( ASaveName : Boolean ) : String;
begin
  if( ASaveName ) then
    Exit( GetListSaveName());

  Result := GetListName();
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.IsPreviewPinList() : Boolean;
begin
  var AComponent := GetOwnerComponent();
  if( AComponent = NIL ) then
    Exit( False );

  if( not( csDesigning in AComponent.ComponentState )) then
    Exit( False );

  var ARoot := GetMainOwnerComponent( AComponent );
  if( ARoot = NIL ) then
    Exit( False ); // Must return False to allow handling form close in the Delphi designer (The form will return NIL in this case!)

  if( InheritsFromClassName( ARoot.TypeInfo(), 'TPreviewForm' )) then
    Exit( True );

  if( ARoot.Name = 'Root' ) then
    if( ARoot.ClassName().StartsWith( ARoot.ClassParent().ClassName() + '_' )) then
      Exit( True );

  Exit( False );
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.IsConnected() : Boolean;
begin
  for var APin in Self do
    if( APin.IsConnected() ) then
      Exit( True );

  Exit( False );
end;
//---------------------------------------------------------------------------
procedure TOWBasicPinList.Notify( const AOperation : IOWNotifyOperation );
begin
  for var APin in Self do
    APin.Notify( AOperation );

end;
//---------------------------------------------------------------------------
procedure TOWBasicPinList.PopulateNameCache();
//  APinListName  : String;

begin
  if( GetIsCached() ) then
    Exit;

  if( Owner = NIL ) then
    Exit;

  if( GOWNeedsOwnerName ) then
    if( Owner.Name = '' ) then
      Exit;

  for var APin in Self do
    APin.InvalidateCaches( NIL );

  FPropertyElements := GetFullIdentsInt();
  FFullIdentName := GetFullIdentNameInt( False );
(*
//  if( FFullIdentName.Contains( 'Index' )) then
//    FFullIdentName := GetFullIdentNameInt( False );

//  FFullIdentNameIncludeRoot := GetFullIdentNameInt( True );
*)
  FName := GetListNameInt();
  FShortName := FName;

{
  APos := Pos( '.', FShortName );
  if( APos > 0 ) then
    Delete( FShortName, 1, APos );
}
  var APos := LastDelimiter( '.', FShortName );
  if( APos > 0 ) then
    Delete( FShortName, 1, APos );

  FShortName := OWMakeShortName( FShortName );
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetIsCached() : Boolean;
begin
//  if( FPropertyElements = NIL ) then
//    Exit( False );

  if( FName = '' ) then
    Exit( False );

  if( FShortName = '' ) then
    Exit( False );

//EXIT( False );
//  if( FOwnerPinList <> NIL ) then
//    Exit( False );
  if( GOWNeedsOwnerName ) then
    if( FFullIdentName.StartsWith( '.' )) then
      Exit( False );

  if( FFullIdentName.Contains( '..' )) then
    Exit( False );

  if( Owner <> NIL ) then
    if( not FFullIdentName.StartsWith( Owner.Name + '.' )) then
      Exit( False );
{
  if( FPropertyElements <> NIL ) then
    for var AItem in FPropertyElements do
      if( AItem.Persistent = NIL ) then
        Exit( False );
}
  Result := True;
//  if( Result ) then
//    Result := ( Pos( '[', FName ) <= 0 );

end;
//---------------------------------------------------------------------------
procedure TOWBasicPinList.InvalidateCaches( AObject : TObject );
begin
  if( FFullIdentName <> '' ) then
    if( AObject <> NIL ) then
      if( FPropertyElements <> NIL ) then
        if( not FPropertyElements.Query().Contains(
            function( const AItem : IPropertyElement ) : Boolean
            begin
              Result := ( AItem.Persistent = AObject );
            end
          )) then
          Exit;

  FName := '';
  FShortName := '';
  FFullIdentName := '';
  FValidPropertyElements := False;
  FPropertyElements := NIL;
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetEnumerator() : ISizeEnumerator<TOWBasicPin>;
begin
  Result := TBasicListEnumerator<TOWBasicPin>.Create( GetCount, GetPin );
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetIndexedEnumerator() : ISizeEnumerator<TIndexedItem<TOWBasicPin>>;
begin
  Result := TBasicListIndexedEnumerator<TOWBasicPin>.Create( GetCount, GetPin );
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetReverseEnumerator() : ISizeEnumerator<TOWBasicPin>;
begin
  Result := GetReverse().GetEnumerator();
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetIndexedReverseEnumerator() : ISizeEnumerator<TIndexedItem<TOWBasicPin>>;
begin
  Result := GetIndexedReverse().GetEnumerator();
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetReverse() : ISizeEnumeratorHost<TOWBasicPin>;
begin
  Result := TAutoReverseEnumeratorHost<TOWBasicPin>.Create( GetCount, GetPin );
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetIndexed() : ISizeEnumeratorHost<TIndexedItem<TOWBasicPin>>;
begin
  Result := TAutoIndexedEnumeratorHost<TOWBasicPin>.Create( GetCount, GetPin );
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetIndexedReverse() : ISizeEnumeratorHost<TIndexedItem<TOWBasicPin>>;
begin
  Result := TAutoIndexedEnumeratorHost<TOWBasicPin>.Create( GetCount, GetPin );
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.Find( const ACompareFunc : TFunc<TOWBasicPin, Boolean> ) : TOWBasicPin;
begin
  for var AItem in Self do
    if( ACompareFunc( AItem )) then
      Exit( AItem );

  Exit( NIL );
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.Find( const ACompareFunc : TFunc<TOWBasicPin, Boolean>; out ARes : TOWBasicPin ) : Boolean;
begin
  for var AItem in Self do
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
    Exit( TObjectArrayList<TOWBasicPin>.CreateQuery<TOWBasicPinList>( Self, GetReverseEnumerator ));

  Result := TObjectArrayList<TOWBasicPin>.CreateQuery<TOWBasicPinList>( Self, GetEnumerator );
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetOwner() : TPersistent;
begin
  if( FOwnerProperty <> NIL ) then
    Exit( FOwnerProperty );

  var AOwnerName := GetOwnerName( False );
  if( AOwnerName = '' ) then
    Exit( GetOwnerComponent() );

  var AValue : TValue;
  if( OWGetPropValue( GetOwnerComponent(), AOwnerName, False, AValue )) then
    Exit( AValue.AsType<TPersistent>() );

  Result := NIL;
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetOwnerName( AIncludeRootForm : Boolean ) : String;
begin
  Result := GetFullIdentName( AIncludeRootForm );
  var APosition := Pos( '.', Result );
  if( APosition = 0 ) then
    Exit( '' );

  Delete( Result, 1, APosition );
  APosition := LastDelimiter( '.', Result );
  if( APosition = 0 ) then
    Exit( '' );

  Delete( Result, APosition, 20000 )
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetFullIdentNameInt( AIncludeRootForm : Boolean ) : String;
begin
  if( FPropertyElements.Count <= 1 ) then
    Exit( OWValueToString( Self, AIncludeRootForm, True ) );

  Result := FPropertyElements[ 0 ].IdentName;
  for var I : Integer := 1 to FPropertyElements.Count - 1 do
    Result := Result + '.' + FPropertyElements[ I ].IdentName;

{
  var ATest1 := OWValueToString( Self, AIncludeRootForm, True );
  if( ATest1 <> Result ) then
    begin
    ATest1 := ATest1;
    end;
}
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetFullIdentName( AIncludeRootForm : Boolean ) : String;
begin
  PopulateNameCache();

//  if( AIncludeRootForm ) then
//    Result := FFullIdentNameIncludeRoot

//  else
  Result := FFullIdentName;

  if( AIncludeRootForm ) then
    if( GetRoot() <> Owner ) then
      Result := GetRootName() + '.' + Result;

end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetFullIdentsInt() : IPropertyElements;
begin
  if( FValidPropertyElements ) then
    Exit( FPropertyElements );

  Exit( OWValueToItems( Self, False ) );
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetFullIdents( AIncludeRootForm : Boolean ) : IPropertyElements;
begin
//  Result := GetFullIdentsInt( False );
//  Exit;

  PopulateNameCache();
  if( FPropertyElements = NIL ) then
    Result := TPropertyElements.Create()

  else
    Result := TPropertyElements.CreateCopy( FPropertyElements );

  if( AIncludeRootForm ) then
    if( GetRoot() <> Owner ) then
      Result.Add( TPropertyElement.Create( GetRoot(), GetRootName() ));
//      Result := GetRootName() + '.' + Result;

end;
//---------------------------------------------------------------------------
{
function TOWBasicPinList.GetListName() : String;
begin
  PopulateNameCache();
  Result := FName;
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetShortName() : String;
begin
  PopulateNameCache();
  Result := FShortName;
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetListSaveName() : String;
begin
  PopulateNameCache();
  Result := FFullIdentName;
end;
}
//---------------------------------------------------------------------------
procedure TOWBasicPinList.TypeInfoChange( AObject : TObject );
begin
  InvalidateCaches( AObject );
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetOwnerProperty() : TPersistent;
begin
  Result := FOwnerProperty;
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetListName() : String;
begin
  PopulateNameCache();
  Result := FName;
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetListSaveName() : String;
//var
//  ATest1 : String;

begin
//  Result := OWGetClassPropertyNameForPropertyObject( FOwner, Self, True );
  PopulateNameCache();

//  GetRootName();

  Result := FFullIdentName;

  System.Delete( Result, 1, Pos( '.', Result ) );
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetShortName() : String;
//var
//  APos : Integer;

begin
  PopulateNameCache();
  Result := FShortName;
{
  Result := GetListName();
  APos := Result.LastIndexOf( '.' );
  if( APos >= 0 ) then
    System.Delete( Result, 1, APos + 1 );

  Result := OWMakeShortName( Result );
}
end;
//---------------------------------------------------------------------------
function TOWBasicPinList.GetRootName() : String;
begin
  Result := GetFullIdentName( True );
  var APosition := Pos( '.', Result );
  if( APosition = 0 ) then
    Exit( '' );

  Delete( Result, APosition, 20000 )
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWPinList.Create( const AOnCreated : TProc<TOWPinList>; const AOwnerLock : IBasicLock; APinCategories : TOWPinCategories; AIsPinsOwner : Boolean );
var
  AWriteLock : ILockSection;

begin
  inherited Create( AOnCreated );

  AWriteLock := WriteLock();

  FPinCategories := APinCategories;

  if( AOwnerLock = NIL ) then
    FOwnerLock := TOWFakeLock.Create()

  else
    FOwnerLock := AOwnerLock;

//  FOwner := AOwner;
  FPinsList := TInterfaceArrayList<ITuple<String,TOWBasicPin>>.Create();
  FPinsOwner := AIsPinsOwner;
end;
//---------------------------------------------------------------------------
destructor TOWPinList.Destroy();
var
  AWriteLock : ILockSection;

begin
//  CheckLoaded();

  AWriteLock := WriteLock();
  Clear();

  AWriteLock := NIL;
  
  inherited;
end;
//---------------------------------------------------------------------------
class function TOWPinList.PinListOwnerSetter<T>( var APin : T; AOwner : TComponent; AOwnerProperty : TPersistent ) : TProc<TOWPinList>;
var
  APtr : ^T;

begin
//  AOwner := TClassManagement.GetRealComponent( AOwner );

  Assert( APin = NIL );
  APtr := @APin;
  Result :=
    procedure( AInstance : TOWPinList )
    begin
      AInstance.FOwnerProperty := AOwnerProperty;
      AInstance.FOwner := TClassManagement.GetRealComponent( AOwner );
      APtr^ := T( AInstance );
    end;

end;
//---------------------------------------------------------------------------
class function TOWPinList.PinListOwnerSetter( var APin : TOWBasicPinList; AOwner : TComponent; AOwnerProperty : TPersistent ) : TProc<TOWPinList>;
begin
  Assert( APin = NIL );
  Result := PinListOwnerSetter<TOWBasicPinList>( APin, AOwner, AOwnerProperty );
end;
//---------------------------------------------------------------------------
class function TOWPinList.PinListOwnerSetter( var APin : TOWPinList; AOwner : TComponent; AOwnerProperty : TPersistent ) : TProc<TOWPinList>;
begin
  Assert( APin = NIL );
  Result := PinListOwnerSetter<TOWPinList>( APin, AOwner, AOwnerProperty );
end;
//---------------------------------------------------------------------------
class function TOWPinList.PinListOwnerSetter( var APin : TOWPinListOwner; AOwner : TComponent; AOwnerProperty : TPersistent ) : TProc<TOWPinList>;
begin
  Assert( APin = NIL );
  Result := PinListOwnerSetter<TOWPinListOwner>( APin, AOwner, AOwnerProperty );
end;
//---------------------------------------------------------------------------
class function TOWPinList.PinListOwnerSetter( AOwner : TComponent; AOwnerProperty : TPersistent ) : TProc<TOWPinList>;
begin
//  AOwner := TClassManagement.GetRealComponent( AOwner );

  Result :=
    procedure( AInstance : TOWPinList )
    begin
      AInstance.FOwnerProperty := AOwnerProperty;
      AInstance.FOwner := TClassManagement.GetRealComponent( AOwner );
    end;

end;
//---------------------------------------------------------------------------
class function TOWPinList.PinListPathSetter<T>( var APin : T; const APath : IPropertyElements; const APinName : String ) : TProc<TOWPinList>;
var
  APtr : ^TOWBasicPinList;

begin
  Assert( APin = NIL );
  APtr := @APin;
  Result :=
    procedure( AInstance : TOWPinList )
    begin
      var AOwner : TComponent := NIL;
      var AOwnerProperty : TPersistent := NIL;
      var APathCount := APath.Count;
      if( APathCount > 0 ) then
        begin
        if( APath[ 0 ].Persistent is TComponent ) then
          AOwner := TComponent( APath[ 0 ].Persistent );

        if( APathCount > 1 ) then
          AOwnerProperty := APath[ APathCount - 2 ].Persistent

        else
          AOwnerProperty := AOwner;

        end;

      AInstance.FOwnerProperty := AOwnerProperty;
      AInstance.FOwner := TClassManagement.GetRealComponent( AOwner );
      APtr^ := TOWBasicPinList( AInstance );
    end;

end;
//---------------------------------------------------------------------------
class function TOWPinList.PinListPathSetter( var APin : TOWBasicPinList; const APath : IPropertyElements; const APinName : String ) : TProc<TOWPinList>;
begin
  Assert( APin = NIL );
  Result := PinListPathSetter<TOWBasicPinList>( APin, APath, APinName );
end;
//---------------------------------------------------------------------------
class function TOWPinList.PinListPathSetter( var APin : TOWPinList; const APath : IPropertyElements; const APinName : String ) : TProc<TOWPinList>;
begin
  Assert( APin = NIL );
  Result := PinListPathSetter<TOWPinList>( APin, APath, APinName );
end;
//---------------------------------------------------------------------------
class function TOWPinList.PinListPathSetter( var APin : TOWPinListOwner; const APath : IPropertyElements; const APinName : String ) : TProc<TOWPinList>;
begin
  Assert( APin = NIL );
  Result := PinListPathSetter<TOWPinListOwner>( APin, APath, APinName );
end;
//---------------------------------------------------------------------------
class function TOWPinList.PinListPathSetter( const APath : IPropertyElements; const APinName : String ) : TProc<TOWPinList>;
begin
  Result :=
    procedure( AInstance : TOWPinList )
    begin
      var AOwner : TComponent := NIL;
      var AOwnerProperty : TPersistent := NIL;
      var APathCount := APath.Count;
      if( APathCount > 0 ) then
        begin
        if( APath[ 0 ].Persistent is TComponent ) then
          AOwner := TComponent( APath[ 0 ].Persistent );

        if( APathCount > 1 ) then
          AOwnerProperty := APath[ APathCount - 2 ].Persistent

        else
          AOwnerProperty := AOwner;

        end;

      AInstance.FOwnerProperty := AOwnerProperty;
      AInstance.FOwner := TClassManagement.GetRealComponent( AOwner );
    end;

end;
//---------------------------------------------------------------------------
class function TOWPinList.PinListCustomOwnerSetter( const AProc : TProc<TOWPinList>; AOwner : TComponent; AOwnerProperty : TPersistent ) : TProc<TOWPinList>;
begin
//  AOwner := TClassManagement.GetRealComponent( AOwner );

  Result :=
    procedure( AInstance : TOWPinList )
    begin
      AInstance.FOwnerProperty := AOwnerProperty;
      AInstance.FOwner := TClassManagement.GetRealComponent( AOwner );
      if( Assigned( AProc )) then
        AProc( AInstance );

    end;

end;
//---------------------------------------------------------------------------
class function TOWPinList.PinListCustomPathSetter( const AProc : TProc<TOWPinList>; const APath : IPropertyElements; const APinName : String ) : TProc<TOWPinList>;
begin
  Result :=
    procedure( AInstance : TOWPinList )
    begin
      var AOwner : TComponent := NIL;
      var AOwnerProperty : TPersistent := NIL;
      var APathCount := APath.Count;
      if( APathCount > 0 ) then
        begin
        if( APath[ 0 ].Persistent is TComponent ) then
          AOwner := TComponent( APath[ 0 ].Persistent );

        if( APathCount > 1 ) then
          AOwnerProperty := APath[ APathCount - 1 ].Persistent

        else
          AOwnerProperty := AOwner;

        end;

      AInstance.FOwnerProperty := AOwnerProperty;
      AInstance.FOwner := TClassManagement.GetRealComponent( AOwner );
      if( Assigned( AProc )) then
        AProc( AInstance );

    end;

end;
{
class function TOWPinList.SetPinList( var APin : TOWBasicPinList ) : TProc<TOWBasicPinList>;
var
  APtr : ^TOWBasicPinList;

begin
  APtr := @APin;
  Result :=
    procedure( AInstance : TOWBasicPinList )
    begin
      APtr^ := TOWBasicPinList( AInstance );
    end;

end;
//---------------------------------------------------------------------------
class function TOWPinList.SetPinList( var APin : TOWPinList ) : TProc<TOWBasicPinList>;
begin
  Result := SetPinList( TOWBasicPinList( APin ));
end;
//---------------------------------------------------------------------------
class function TOWPinList.SetPinList( var APin : TOWPinListOwner ) : TProc<TOWBasicPinList>;
begin
  Result := SetPinList( TOWBasicPinList( APin ));
end;
}
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
function TOWPinList.ReadLock() : ILockSection;
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
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  for var I := FPinsList.Count - 1 downto 0 do
    begin
    var AItem := FPinsList[ I ];
    var APin := AItem.Item2;
    APin.RemovePinList( Self );
    if( APin is TOWUnloadedPin ) then
      begin
      GOWUnloadedPins[ False ].RemoveNoList( TOWUnloadedPin( APin ));
      GOWUnloadedPins[ True ].RemoveNoList( TOWUnloadedPin( APin ));
      FPinsList.Delete( I );
      end;

//    FPinsList[ I ].Item2.SetOwnerPinList( NIL );
    end;

//  AList := TObjectArrayList<TOWBasicPin>.Create();
  for var APin in Self do
    if( APin.FOwnerPinList = Self ) then
      begin
//      AList.Add( APin );
      APin.SetOwnerPinList( NIL );
      OWNotifyChangePin( APin, APin.IsDebugPin() );
      end;

//  for APin in AList do
//    OWNotifyChangePin( APin );

  if( FPinsOwner ) then
    begin
    FInUnload := True;
    for var APinItem in FPinsList.GetReverse() do
      begin
      var APin := APinItem.Item2;
      APin.SetOwnerPinList( NIL );
{$IFDEF RX12_0_Up}
      APin.Free();
{$ELSE}
      APin.DisposeOf();
{$ENDIF}
      end;

    FInUnload := False;
    end;

  FPinsList.Clear();

  FLastIndicatedCount := -1;

  OWNotifyChangePinList( Self );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.Disconnect();
begin
  var AWasConnected := IsConnected();
  if( AWasConnected ) then
    OWNotifyDisconnectingPin( Self, False );

  try
    for var APin in Self do
      APin.Disconnect();

  finally
    if( AWasConnected ) then
      OWNotifyDisconnectedPin( Self, False );

    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWPinList.GetListNameInt() : String;
begin
  if( FPropertyElements.Count <= 1 ) then
    Exit( OWGetClassPropertyNameForPropertyObject( FOwner, Self, False, True ));

  Result := FPropertyElements[ 1 ].DisplayName;
  for var I : Integer := 2 to FPropertyElements.Count - 1 do
    begin
    var ADisplayName := FPropertyElements[ I ].DisplayName;
    if( ADisplayName.StartsWith( '[' )) then
      Result := Result + ADisplayName

    else
      Result := Result + '.' + ADisplayName;

    end;
{
  var ATest1 := OWGetClassPropertyNameForPropertyObject( FOwner, Self, False, True );
  if( ATest1 <> Result ) then
    begin
    ATest1 := ATest1;
    end;
}
end;
//---------------------------------------------------------------------------
function TOWPinList.GetListSaveNameInt() : String;
begin
  if( FPropertyElements.Count <= 1 ) then
    Exit( OWGetClassPropertyNameForPropertyObject( FOwner, Self, True, True ));

  Result := FPropertyElements[ 0 ].IdentName;
  for var I : Integer := 1 to FPropertyElements.Count - 1 do
    Result := Result + '.' + FPropertyElements[ I ].IdentName;

{
  var ATest1 := OWGetClassPropertyNameForPropertyObject( FOwner, Self, True, True );
  if( ATest1 <> Result ) then
    begin
    ATest1 := ATest1;
    end;
}
end;
//---------------------------------------------------------------------------
procedure TOWPinList.CleanUnloaded();
begin
  if( FOwner <> NIL ) then
    if( not (( csDesigning in FOwner.ComponentState ) or ( csLoading in FOwner.ComponentState ))) then
      for var I : Integer := Count - 1 downto 0 do
        if( Pins[ I ] is TOWUnloadedPin ) then
          begin
          Delete( I );
          Dec( FUnloadedCount );
          if( FUnloadedCount = 0 ) then
            Break;

          end;

end;
//---------------------------------------------------------------------------
procedure TOWPinList.ApplyFormName( var AIdent : String );
begin
  if( FLoadFormName <> '' ) then
    if( AIdent.StartsWith( FLoadFormName )) then
      begin
      System.Delete( AIdent, 1, Length( FLoadFormName ));
      AIdent := GetRoot().Name + AIdent;
      end;
     
end;
//---------------------------------------------------------------------------
function TOWPinList.GetOwnerComponent() : TComponent;
begin
  Assert( FOwner = TClassManagement.GetRealComponent( FOwner ) );
  Result := FOwner;
end;
//---------------------------------------------------------------------------
function TOWPinList.GetEmbeddedOwner() : TComponent;
begin
  Result := FOwner;
end;
//---------------------------------------------------------------------------
procedure TOWPinList.SetOwnerComponent( AComponent : TComponent );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  AComponent := TClassManagement.GetRealComponent( AComponent );
  if( FOwner = AComponent ) then
    Exit;

  OWNotifyRemovePinList( Self );

  FOwner := AComponent;
{
  if( FOwner <> NIL ) then
    begin
    FRoot := NIL;
    FLoadName := '';
    end;

  if( AComponent <> NIL ) then
    if( csDesigning in AComponent.ComponentState ) then
      for var I : Integer := 0 to ConnectedDispatcherCount - 1 do
        begin
        var ADispatcher := ConnectedDispatcher[ I ];
        if( GRunDispatchers.Query().Contains( ADispatcher ) ) then
          begin
          var AFound := False;
          var ADispatcherName := ADispatcher.Name;
          for var J : Integer := GDesignDispatchers.Count - 1 downto 0 do
            begin
            var ADispatcherItem := GDesignDispatchers[ J ];
            if( ADispatcherItem.Name = ADispatcherName ) then
              begin
              ConnectToState( ADispatcherItem );
              AFound := True;
              Break;
              end;
            end;

          if( not AFound ) then
            begin
            GRunDispatchers.RemoveOne( ADispatcher );
            GDesignDispatchers.Add( ADispatcher )
            end;
          end;
        end;
}
//  GetRootName();
  OWNotifyAddPinList( Self );
end;
//---------------------------------------------------------------------------
function TOWPinList.GetRoot() : TComponent;
begin
  Result := FOwner;
  if( Result <> NIL ) then
    Result := GetMainOwnerComponent( Result );

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
function TOWPinList.GetPin( AItem : Integer ) : TOWBasicPin;
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

  Result := FPinsList[ AItem ].Item2;
end;
//---------------------------------------------------------------------------
procedure TOWPinList.SetPin( AItem : Integer; APin : TOWBasicPin );
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  var APinItem := FPinsList[ AItem ];
  var APinItemPin := APinItem.Item2;
  APinItemPin.RemovePinList( Self );
  GOWUnloadedPins[ False ].RemoveNoList( TOWUnloadedPin( APinItemPin ));
  GOWUnloadedPins[ True ].RemoveNoList( TOWUnloadedPin( APinItemPin ));
  FPinsList[ AItem ] := TTuple<String,TOWBasicPin>.Create( APinItem.Item1, APin );
  APinItemPin.AddPinList( Self );
  OWNotifyChangePin( APin, APin.IsDebugPin() );
end;
//---------------------------------------------------------------------------
function TOWPinList.GetName( AItem : Integer ) : String;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( FOverrideName <> '' ) then
    Exit( FOverrideName );

  Result := FPinsList[ AItem ].Item1;
  if( Result = '' )then
    Result := 'Pin [' + AItem.ToString() + ']';

end;
//---------------------------------------------------------------------------
procedure TOWPinList.SetPinName( APin : TOWPin; const AName : String );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  for var I : Integer := 0 to Count - 1 do
    if( Pins[ I ] = APin ) then
      begin
      Names[ I ] := AName;
      Exit;
      end;
      
end;
//---------------------------------------------------------------------------
function TOWPinList.GetStoredName( AItem : Integer ) : String;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FPinsList[ AItem ].Item1;
end;
//---------------------------------------------------------------------------
function TOWPinList.GetPinCategories() : TOWPinCategories;
begin
  Result := FPinCategories;
  for var APin in Self do
    case( APin.GetPinType() ) of
      ptSource :            Result := Result + [ pcSource ];
      ptSink, ptMultiSink : Result := Result + [ pcSink ];
      ptState :             Result := Result + [ pcState ];
      end;

end;
//---------------------------------------------------------------------------
procedure TOWPinList.SetName( AItem : Integer; const AName : String );
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  if( AItem >= FPinsList.Count ) then
    Exit;

  var ALocalName := AName;
  if( ALocalName = 'Pin [' + AItem.ToString() + ']' ) then
    ALocalName := '';

  var APinItem := FPinsList[ AItem ];
  if( APinItem.Item1 <> ALocalName ) then
    begin
    var APinItemPin := APinItem.Item2;
    FPinsList[ AItem ] := TTuple<String,TOWBasicPin>.Create( ALocalName, APinItemPin );
    APinItemPin.InvalidateCaches( NIL );
    FLastIndicatedCount := -1;
    var APin := Pins[ AItem ];
    OWNotifyChangePin( APin, APin.IsDebugPin() );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWPinList.Swap( AIndex1 : Integer; AIndex2 : Integer );
var
//  TmpObject   : TObject;
//  TmpName     : String;
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  var APinPair1 := FPinsList[ AIndex1 ];
  var APinPair2 := FPinsList[ AIndex2 ];
//  TmpName := FPinsList.Strings[ AIndex1 ];
//  TmpObject := FPinsList.Objects[ AIndex1 ];

  var APinPairPin1 := APinPair1.Item2;
  var APinPairPin2 := APinPair2.Item2;

  OWNotifyPinListPinsSwapped( Self, APinPairPin1, AIndex1, APinPairPin2, AIndex2 );


  FPinsList[ AIndex1 ] := APinPair2;
  FPinsList[ AIndex2 ] := APinPair1;
  APinPairPin1.InvalidateCaches( NIL );
  APinPairPin2.InvalidateCaches( NIL );

//  FPinsList.Strings[ AIndex1 ] := FPinsList.Strings[ AIndex2 ];
//  FPinsList.Objects[ AIndex1 ] := FPinsList.Objects[ AIndex2 ];

//  FPinsList.Strings[ AIndex2 ] := TmpName;
//  FPinsList.Objects[ AIndex2 ] := TmpObject;
  OWNotifyChangePinList( Self );
end;
//---------------------------------------------------------------------------
function TOWPinList.IndexOf( AItem : TOWBasicPin ) : Integer;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  for var I : Integer := 0 to FPinsList.Count - 1 do
    if( FPinsList[ I ].Item2 = AItem ) then
      Exit( I );

  Result := -1;
end;
//---------------------------------------------------------------------------
procedure TOWPinList.Add( AItem : TOWBasicPin );
begin
  AddNamed( AItem, '' );
  OWNotifyChangePin( AItem, AItem.IsDebugPin() );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.AddNamed( AItem : TOWBasicPin; const AName : String );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  var AWasAdded := False;
  if( AItem is TOWUnloadedPin ) then
    begin
    TOWUnloadedPin( AItem ).FOwnedByList := True;
    Inc( FUnloadedCount );
    end

  else if( FUnloadedCount > 0 ) then
    for var I : Integer := 0 to FPinsList.Count - 1 do
      begin
      var APin := Pins[ I ];
      if( APin is TOWUnloadedPin ) then
        begin
        var AUnloadedPin := TOWUnloadedPin( APin );
        FPinsList[ I ] := TTuple<String, TOWBasicPin>.Create( AName, AItem );
//        FPinsList.Strings[ I ] := AName;
//        FPinsList.Objects[ I ] := AItem;
        AWasAdded := True;
        if( AItem <> NIL ) then
          if( AItem.GetOwnerComponent() = FOwner ) then
            AItem.SetOwnerPinList( Self );

        if( GOWUnloadedPins[ False ].Contains( AUnloadedPin )) then
          AUnloadedPin.PopulatePinAndDestroy( AItem )

        else if( GOWUnloadedPins[ True ].Contains( AUnloadedPin )) then
          AUnloadedPin.PopulatePinAndDestroy( AItem );

        Dec( FUnloadedCount );
        Break;
        end;
      end;

  if( not AWasAdded ) then
    FPinsList.Add( TTuple<String, TOWBasicPin>.Create( AName, AItem ));
    
  if( AItem <> NIL ) then
    if( AItem.GetOwnerComponent() = GetOwnerComponent() ) then
      begin
      AItem.SetOwnerPinList( Self );
//      AItem.FName := '';
      OWNotifyChangePin( AItem, AItem.IsDebugPin() );
      end;

  OWNotifyChangePinList( Self );
  OWNotifyPinListPinAdded( Self, AItem, FPinsList.Count - 1 );
  AItem.AddPinList( Self );
  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWPinList.InsertNamed( AIndex : Integer; AItem : TOWBasicPin; const AName : String );
var
  AWriteLock : ILockSection;

begin
  AWriteLock := WriteLock();
  if( AIndex >= Count ) then
    begin
    AddNamed( AItem, AName );
    Exit;
    end;

  if( AItem is TOWUnloadedPin ) then
    begin
    TOWUnloadedPin( AItem ).FOwnedByList := True;
    Inc( FUnloadedCount );
    end;

  FPinsList.Insert( AIndex, TTuple<String, TOWBasicPin>.Create( AName, AItem ));
  if( AItem <> NIL ) then
    if( AItem.GetOwnerComponent() = GetOwnerComponent() ) then
      begin
      AItem.SetOwnerPinList( Self );
      OWNotifyChangePin( AItem, AItem.IsDebugPin() );
      end;

  OWNotifyChangePinList( Self );
  OWNotifyPinListPinAdded( Self, AItem, FPinsList.Count - 1 );
  AItem.AddPinList( Self );
  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWPinList.Insert( AIndex : Integer; AItem : TOWBasicPin );
begin
  InsertNamed( AIndex, AItem, '' );
  OWNotifyChangePin( AItem, AItem.IsDebugPin() );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.Delete( AIndex : Integer );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  var APinItemPin := FPinsList[ AIndex ].Item2;
  OWNotifyPinListPinRemoved( Self, APinItemPin, AIndex );

  if( APinItemPin.FOwnerPinList = Self ) then
    begin
    APinItemPin.SetOwnerPinList( NIL );
    OWNotifyChangePin( APinItemPin, APinItemPin.IsDebugPin() );
    end;

  GOWUnloadedPins[ False ].RemoveNoList( TOWUnloadedPin( APinItemPin ));
  GOWUnloadedPins[ True ].RemoveNoList( TOWUnloadedPin( APinItemPin ));

  APinItemPin.RemovePinList( Self );
  if( FPinsOwner ) then
{$IFDEF RX12_0_Up}
    APinItemPin.Free();
{$ELSE}
    APinItemPin.DisposeOf();
{$ENDIF}

  FPinsList.Delete( AIndex );
  InvalidatePinCaches( NIL );
  OWNotifyChangePinList( Self );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.Remove( AItem : TOWBasicPin );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  var I := 0;

  while( I < FPinsList.Count ) do
    begin
    var APinItem := FPinsList[ I ];
    var APinItemPin := APinItem.Item2;
    if( APinItemPin = AItem ) then
      begin
      AItem.RemovePinList( Self );
      OWNotifyPinListPinRemoved( Self, APinItemPin, I );
      var AFreeThePin := False;
      if( FPinsOwner ) then
        begin
        if( AItem.FOwnerPinList = Self ) then
          AItem.SetOwnerPinList( NIL );

        if( not ( AItem is TOWUnloadedPin )) then
          AFreeThePin := True;

        end

      else if( AItem.FOwnerPinList = Self ) then
        begin
        AItem.SetOwnerPinList( NIL );
        OWNotifyChangePin( AItem, AItem.IsDebugPin() );
        end;

      if( FOwner = NIL ) then
        begin
        GOWUnloadedPins[ False ].RemoveNoList( TOWUnloadedPin( APinItemPin ));
        GOWUnloadedPins[ True ].RemoveNoList( TOWUnloadedPin( APinItemPin ));
        FPinsList.Delete( I );
        end

      else if( csLoading in FOwner.ComponentState ) then
        begin
        var AIdent := AItem.GetFullIdentName( True, False );
        var ADisplayName := AItem.GetFullName( True );
        var APinType := AItem.GetPinType();

        var AUnlodedPin := TOWUnloadedPin.Create( GetRoot(), False, APinType, AIdent, ADisplayName, GetListName() );
        AUnlodedPin.SetOwnerPinList( Self );

        AUnlodedPin.FOwnedByList := True;
        Inc( FUnloadedCount );

        GOWUnloadedPins[ False ].RemoveNoList( TOWUnloadedPin( APinItemPin ));
        GOWUnloadedPins[ True ].RemoveNoList( TOWUnloadedPin( APinItemPin ));
        FPinsList[ I ] := TTuple<String,TOWBasicPin>.Create( APinItem.Item1, AUnlodedPin );
//        FPinsList.Objects[ I ] := AUnlodedPin;

        for var J : Integer := 0 to AItem.GetConnectedPinCount() - 1 do
          AUnlodedPin.ConnectAfter( AItem.GetConnectedPin( J ), AItem.GetConnectedAfterPin( J ));

        end

      else
        begin
        GOWUnloadedPins[ False ].RemoveNoList( TOWUnloadedPin( APinItemPin ));
        GOWUnloadedPins[ True ].RemoveNoList( TOWUnloadedPin( APinItemPin ));
        FPinsList.Delete( I );
        end;

      if( AFreeThePin ) then
{$IFDEF RX12_0_Up}
          AItem.Free();
{$ELSE}
          AItem.DisposeOf();
{$ENDIF}

      Break;
      end

    else
      Inc( I );

    end;

  InvalidatePinCaches( NIL );

  OWNotifyChangePinList( Self );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.InvalidatePinCaches( AObject : TObject );
begin
  for var APin in FPinsList do
    APin.Item2.InvalidateCaches( AObject );

end;
//---------------------------------------------------------------------------
procedure TOWPinList.ConnectPin( ACurrentPinIndex : Integer; AType : TOWPinType; AToType : TOWPinType; const AIdent : String; const AIdentName : String );
var
  ATmpPin : TOWBasicPin;

begin
  if( FPinsList.Count > ACurrentPinIndex ) then
    begin
    ATmpPin := Pins[ ACurrentPinIndex ];
    if( not ATmpPin.IsPreviewPin()) then
      begin
      var ABasePin : TOWUnloadedPin;
      if( not GOWUnloadedPins[ False ].GetByIdentName( GetRoot(), ATmpPin.GetFullIdentName( False, False ), ABasePin ) ) then
        if( not GOWUnloadedPins[ True ].GetByIdentName( GetRoot(), ATmpPin.GetFullIdentName( False, True ), ABasePin ) ) then
//        if( not GOWUnloadedPins.GetByDisplayName( GetRoot(), ATmpPin.GetFullName( False ), ABasePin ) ) then
          ABasePin := NIL;

      if( ABasePin <> NIL ) then
        if( ABasePin <> ATmpPin ) then
          ABasePin.PopulatePinAndDestroy( ATmpPin );

      end;
    end

  else
    begin
    ATmpPin := NIL;
    if( not IsPreviewPinList()) then
      while( FPinsList.Count <= ACurrentPinIndex ) do
        begin
        var ARoot := GetRoot();
        var ATmpIdent : String := ARoot.Name + '.' + FOwner.Name + '.' + GetListSaveName() + '._Pin' + FPinsList.Count.ToString();
        ApplyFormName( ATmpIdent );
        ATmpPin := GOWPins.GetByNameCreate( ARoot, False, AType, ATmpIdent, ATmpIdent, ATmpIdent );
        Add( ATmpPin );
        end;

    end;

  if( not IsPreviewPinList()) then
    begin
    var ALocalIdent := AIdent;
    ApplyFormName( ALocalIdent );
    var ALocalIdentName := AIdentName;
    ApplyFormName( ALocalIdentName );
    var ABasePin1 := GOWPins.GetByNameCreate( GetRoot(), False, AToType, ALocalIdent, ALocalIdentName, ATmpPin.GetFullName( True ) );
    ATmpPin.Connect( ABasePin1 );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWPinList.ReadPinsOwner( AReader : TReader );
begin
  AReader.ReadBoolean();
end;
//---------------------------------------------------------------------------
procedure TOWPinList.ReadConnectionsData( AReader : TReader );
var
  AIdentName  : String;
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();

  var ACurrentPinIndex := 0;
  AReader.ReadListBegin();
  while not AReader.EndOfList do
    begin
    if( AReader.NextValue() <> vaList ) then
      begin
      var AIdent := AReader.ReadIdent();
      if( AIdent <> 'nil' ) then
        begin
        if( AIdent = 'State' ) then
          begin
          AReader.ReadListBegin();
          if( ACurrentPinIndex < Count ) then
            Pins[ ACurrentPinIndex ].ReadStateConnectionsData( AReader )

          else
            begin
            while not AReader.EndOfList do
              begin
              if( AReader.NextValue = vaIdent ) then
                begin
                AIdent := AReader.ReadIdent();
                Break;
                end;

              AIdentName := AReader.ReadString();
              ConnectPin( ACurrentPinIndex, ptState, ptState, AIdent, AIdentName );
              end;

            end;

          if( AIdent = 'Sinks' ) then
            begin
            AReader.ReadListBegin();
            while not AReader.EndOfList do
              begin
              if( AReader.NextValue() = vaList ) then
                begin
                AReader.ReadListBegin();
                AIdent := AReader.ReadIdent();
                AIdentName := AReader.ReadString();
                AReader.ReadListEnd();
                end

              else
                begin
                AIdent := AReader.ReadIdent();
                AIdentName := AIdent;
                end;

              ConnectPin( ACurrentPinIndex, ptSource, ptSink, AIdent, AIdentName );
              end;

            AReader.ReadListEnd();
            end

          else if( AIdent = 'Sources' ) then
            begin
            AReader.ReadListBegin();
            while not AReader.EndOfList do
              begin
              if( AReader.NextValue() = vaList ) then
                begin
                AReader.ReadListBegin();
                AIdent := AReader.ReadIdent();
                AIdentName := AReader.ReadString();
                AReader.ReadListEnd();
                end

              else
                begin
                AIdent := AReader.ReadIdent();
                AIdentName := AIdent;
                end;

              ConnectPin( ACurrentPinIndex, ptMultiSink, ptSource, AIdent, AIdentName );
              end;

            AReader.ReadListEnd();
            end

          else
            begin
            if( AIdent <> 'State' ) then
              ConnectPin( ACurrentPinIndex, ptSink, ptSource, AIdent, AIdent );

            end;

          AReader.ReadListEnd();
          end

        else if( AIdent = 'Sinks' ) then
          begin
          AReader.ReadListBegin();
          while not AReader.EndOfList do
            begin
            if( AReader.NextValue() = vaList ) then
              begin
              AReader.ReadListBegin();
              AIdent := AReader.ReadIdent();
              AIdentName := AReader.ReadString();
              AReader.ReadListEnd();
              end

            else
              begin
              AIdent := AReader.ReadIdent();
              AIdentName := AIdent;
              end;

            ConnectPin( ACurrentPinIndex, ptSource, ptSink, AIdent, AIdentName );
            end;

          AReader.ReadListEnd();
          end

        else if( AIdent = 'Sources' ) then
          begin
          AReader.ReadListBegin();
          while not AReader.EndOfList do
            begin
            if( AReader.NextValue() = vaList ) then
              begin
              AReader.ReadListBegin();
              AIdent := AReader.ReadIdent();
              AIdentName := AReader.ReadString();
              AReader.ReadListEnd();
              end

            else
              begin
              AIdent := AReader.ReadIdent();
              AIdentName := AIdent;
              end;

            ConnectPin( ACurrentPinIndex, ptMultiSink, ptSource, AIdent, AIdentName );
            end;

          AReader.ReadListEnd();
          end

        else
          ConnectPin( ACurrentPinIndex, ptSink, ptSource, AIdent, AIdent );

        end;
      end

    else
      begin
      AReader.ReadListBegin();
      var AIdent := AReader.ReadIdent();
      AIdentName := AReader.ReadString();
      AReader.ReadListEnd();
      ConnectPin( ACurrentPinIndex, ptSink, ptSource, AIdent, AIdentName );
      end;

    Inc( ACurrentPinIndex );
    end;

  AReader.ReadListEnd();

  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWPinList.WriteConnectionsData( AWriter : TWriter );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  AWriter.WriteListBegin();
  for var APin in Self do
    APin.WriteListEntry( AWriter );

  AWriter.WriteListEnd();
end;
//---------------------------------------------------------------------------
function TOWPinList.DoWrite() : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  for var APin in Self do
    if( APin.IsConnected() ) then
      Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWPinList.ReadFormName( AReader : TReader );
begin
  FLoadFormName := AReader.ReadIdent();
end;
//---------------------------------------------------------------------------
procedure TOWPinList.WriteFormName( AWriter : TWriter );
begin
  AWriter.WriteIdent( GetRoot().Name );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.DefineProperties( AFiler : TFiler );
begin
  inherited;
  AFiler.DefineProperty( 'Form', ReadFormName, WriteFormName, DoWrite() );
  AFiler.DefineProperty( 'Pins', ReadConnectionsData, WriteConnectionsData, DoWrite());
  AFiler.DefineProperty( 'PinsOwner', ReadPinsOwner, NIL, False );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.SerializationReadPinsArray( const AArrayReader : ISequentialReader );
begin
  var ARoot := GetRoot();
  var ACurrentPinIndex := 0;
  AArrayReader.ReadNextNesteds(
      procedure( const AReader : IReader )
      var
        APinType      : TOWPinType;
//        ALoadFormName : String;

      begin
        if( ACurrentPinIndex >= Count ) then
          begin
          AReader.ReadString( 'ID',
              procedure( const AID : String )
              var
                AName : String;

              begin
                var ALocalID := AID;
                ApplyFormName( ALocalID );

                if( AReader.ReadString( 'Name', AName )) then
                  ApplyFormName( AName )

                else
                  AName := ALocalID;

                AReader.ReadString( 'Type',
                    procedure( const APinTypeText : String )
                    begin
                      TRttiInfo.ForEnumValue<TOWPinType>( APinTypeText,
                          procedure( APinType : TOWPinType )
                          begin
                            Add( GOWPins.GetByNameCreate( ARoot, True, APinType, ALocalID, AName, ALocalID ));
                          end
                        );

//                            ABasePin := GOWPins.GetByNameCreate( GetRoot(), APinType, ALocalID, AName, ATmpPin.GetFullName( True ) );
                    end
                  );

              end
            );

//                AIdentName := Reader.ReadString();
//                ConnectPin( ACurrentPinIndex, ptState, ptState, AIdent, AIdentName );
          end;

        if( ACurrentPinIndex < Count ) then
          Pins[ ACurrentPinIndex ].SerializationRead( AReader )

        else
          begin
          APinType := ptSink;
          AReader.ReadString( 'Type',
              procedure( const ATypeText : String )
              begin
                TRttiInfo.GetEnumValue<TOWPinType>( ATypeText, APinType );
              end
            );

//          AReader.ReadString( 'Form', ALoadFormName );
          AReader.ReadString( 'StateName',
              procedure( const AName : String )
              begin
                ConnectPin( ACurrentPinIndex, ptState, ptState, AName, AName );
              end
            );

          case( APinType ) of
            ptSink:
              begin
              AReader.ReadNested( 'SourcePin',
                  procedure( const AReader : IReader )
                  begin
                  AReader.ReadString( 'ID',
                      procedure( const AID : String )
                      var
                        AName : String;

                      begin
                        if( not AReader.ReadString( 'Name', AName )) then
                          AName := AID;

{
                        ABaseAfterPin := NIL;
                        AReader.ReadString( 'SaveAfter',
                            procedure( AID : String )
                            begin
//                              ApplyFormName( AID );
//                              ABaseAfterPin := GOWPins.GetByNameCreate( GetRoot(), ptSink, AID, AID, GetFullName( True ) );
                            end
                          );
}
                        ConnectPin( ACurrentPinIndex, ptSink, ptSource, AID, AName );
                      end
                    );

                  end
                );

              end;

            ptSource:
              begin
              AReader.ReadArray( 'SinkPins',
                  procedure( const AArrayReader : ISequentialReader )
                  begin
//                    CheckVirtualList();
                    AArrayReader.ReadNextNesteds(
                        procedure( const AReader : IReader )
                        begin
                          AReader.ReadString( 'ID',
                              procedure( const AID : String )
                              var
                                AName : String;

                              begin
                                if( not AReader.ReadString( 'Name', AName )) then
                                  AName := AID;

{
                                ABasePinAfter := NIL;
                                AReader.ReadString( 'SaveAfter',
                                    procedure( AID : String )
                                    begin
                                      ApplyFormName( AID );
                                      ABasePinAfter := GOWPins.GetByNameCreate( GetRoot(), ptSink, AID, AID, GetFullName( True ) );
                                    end
                                  );
}
                                ConnectPin( ACurrentPinIndex, ptSource, ptSink, AID, AName );
                              end
                            );

                        end
                      );

                  end
                );

              end;

            ptMultiSink:
              begin
              AReader.ReadArray( 'SinkPins',
                  procedure( const AArrayReader : ISequentialReader )
                  begin
//                    CheckVirtualList();
                    AArrayReader.ReadNextNesteds(
                        procedure( const AReader : IReader )
                        begin
                          AReader.ReadString( 'ID',
                              procedure( const AID : String )
                              var
                                AName : String;

                              begin
                                if( not AReader.ReadString( 'Name', AName )) then
                                  AName := AID;

{
                                ABasePinAfter := NIL;
                                AReader.ReadString( 'SaveAfter',
                                    procedure( const AID : String )
                                    begin
                                      ApplyFormName( AID );
                                      ABasePinAfter := GOWPins.GetByNameCreate( GetRoot(), ptSink, AID, AID, GetFullName( True ) );
                                    end
                                  );
}
                                ConnectPin( ACurrentPinIndex, ptSource, ptMultiSink, AID, AName );
                              end
                            );

                        end
                      );

                  end
                );

              AReader.ReadArray( 'SourcePins',
                  procedure( const AArrayReader : ISequentialReader )
                  begin
                    AArrayReader.ReadNextNesteds(
                        procedure( const AReader : IReader )
                        begin
                          AReader.ReadString( 'ID',
                              procedure( const AID : String )
                              var
                                AName : String;

                              begin
                                if( not AReader.ReadString( 'Name', AName )) then
                                  AName := AID;

{
                                  ABasePinAfter := NIL;
                                  AReader.ReadString( 'SaveAfter',
                                      procedure( const AID : String )
                                      begin
                                        ApplyFormName( AID );
                                        ABasePinAfter := GOWPins.GetByNameCreate( GetRoot(), ptSink, AID, AID, GetFullName( True ) );
                                      end
                                    );
}
                                ConnectPin( ACurrentPinIndex, ptSource, ptMultiSink, AID, AName );
                              end
                            );

                        end
                      );

                  end
                );
              end;

//            ptState:
//              begin
//              end;

            end;


{
          AReader.ReadString( 'Form', FLoadFormName );
          AReader.ReadString( 'StateName',
              procedure( const AName : String )
              begin
                CheckVirtualList();
                LinkToStateByName( AName );
              end
            );

          AReader.ReadNested( 'SourcePin',
              procedure( const AReader : IReader )
              begin
              end
            );
}
          end;

        Inc( ACurrentPinIndex );
      end
    );

end;
//---------------------------------------------------------------------------
procedure TOWPinList.SerializationRead( const AReader : IReader );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  inherited;

  AReader.ReadString( 'Form', FLoadFormName );
  AReader.ReadArray( 'Pins', SerializationReadPinsArray );
end;
//---------------------------------------------------------------------------
procedure TOWPinList.SerializationWrite( const AWriter : IWriter; const ASelectedObjects : IObjectArrayList; const AMember : IMemberInfo = NIL );
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  inherited;

  var AComponent := GetOwnerComponent();
  if( AComponent <> NIL ) then
    if( csWriting in AComponent.ComponentState ) then
      Exit;

  if( not DoWrite() ) then
    Exit;

  var ARoot := GetRoot();
  if( ARoot = NIL ) then
    Exit;

  AWriter
    .WriteString( 'Form', ARoot.Name )
    .WriteArray( 'Pins',
      procedure( const AArrayWriter : ISequentialWriter )
      begin
        for var APin in Self do
          AArrayWriter.WriteNested(
              procedure( const AWriter : IWriter )
              begin
                AWriter.WriteString( 'Type', TRttiInfo.GetEnumName( APin.GetPinType() ));
                APin.SerializationWrite( AWriter, ASelectedObjects );
              end
            );

      end
    );

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
{
constructor TOWPinListOwner.Create( const AOnCreated : TProc<TOWBasicPinList>; AOwner : TComponent; AOwnerProperty : TPersistent; ADefaultCount : Integer; APinCategories : TOWPinCategories; APinCreateFunction : TOWPinCreateFunction; APinDestroyFunction : TOWPinDestroyFunction = NIL; APinAddedFunction : TOWPinEvent = NIL );
var
  AWriteLock : ILockSection;

begin
  inherited Create( AOnCreated, AOwner, AOwnerProperty, APinCategories, True );

  AWriteLock := WriteLock();
  FMaxPins := 100;
  FDefaultCount := ADefaultCount;

  FPinCreateFunction := APinCreateFunction;
  FPinDestroyFunction := APinDestroyFunction;
  FPinAddedFunction := APinAddedFunction;

  SetCount( FDefaultCount );
end;
//---------------------------------------------------------------------------
constructor TOWPinListOwner.CreateEx( const AOnCreated : TProc<TOWBasicPinList>; AOwner : TComponent; AOwnerProperty : TPersistent; ADefaultCount : Integer; APinCategories : TOWPinCategories; AMinPins : Integer; AMaxPins : Integer; APinCreateFunction : TOWPinCreateFunction; APinDestroyFunction : TOWPinDestroyFunction = NIL; APinAddedFunction : TOWPinEvent = NIL );
var
  AWriteLock : ILockSection;

begin
  inherited Create( AOnCreated, AOwner, AOwnerProperty, APinCategories, True );

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
}
constructor TOWPinListOwner.Create( const AOnCreated : TProc<TOWPinList>; const AOwnerLock : IBasicLock; ADefaultCount : Integer; APinCategories : TOWPinCategories; const APinCreateFunction : TOWPinCreateFunction; const APinDestroyFunction : TOWPinDestroyFunction = NIL; const APinAddedFunction : TOWPinEvent = NIL );
var
  AWriteLock : ILockSection;

begin
  inherited Create( AOnCreated, AOwnerLock, APinCategories, True );

  AWriteLock := WriteLock();
  FMaxPins := 100;
  FDefaultCount := ADefaultCount;

  FPinCreateFunction := APinCreateFunction;
  FPinDestroyFunction := APinDestroyFunction;
  FPinAddedFunction := APinAddedFunction;

  SetCount( FDefaultCount );
end;
//---------------------------------------------------------------------------
constructor TOWPinListOwner.CreateEx( const AOnCreated : TProc<TOWPinList>; const AOwnerLock : IBasicLock; ADefaultCount : Integer; APinCategories : TOWPinCategories; AMinPins : Integer; AMaxPins : Integer; const APinCreateFunction : TOWPinCreateFunction; const APinDestroyFunction : TOWPinDestroyFunction = NIL; const APinAddedFunction : TOWPinEvent = NIL );
var
  AWriteLock : ILockSection;

begin
  inherited Create( AOnCreated, AOwnerLock, APinCategories, True );

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
{
constructor TOWPinListOwner.CreatePath( const AOnCreated : TProc<TOWBasicPinList>; const APath : IPropertyElements; const APinName : String; ADefaultCount : Integer; APinCategories : TOWPinCategories; APinCreateFunction : TOWPinCreateFunction; APinDestroyFunction : TOWPinDestroyFunction = NIL; APinAddedFunction : TOWPinEvent = NIL );
var
  AWriteLock : ILockSection;

begin
  inherited CreatePath( AOnCreated, APath, APinName, APinCategories, True );

  AWriteLock := WriteLock();
  FMaxPins := 100;
  FDefaultCount := ADefaultCount;

  FPinCreateFunction := APinCreateFunction;
  FPinDestroyFunction := APinDestroyFunction;
  FPinAddedFunction := APinAddedFunction;

  SetCount( FDefaultCount );
end;
//---------------------------------------------------------------------------
constructor TOWPinListOwner.CreatePathEx( const AOnCreated : TProc<TOWBasicPinList>; const APath : IPropertyElements; const APinName : String; ADefaultCount : Integer; APinCategories : TOWPinCategories; AMinPins : Integer; AMaxPins : Integer; APinCreateFunction : TOWPinCreateFunction; APinDestroyFunction : TOWPinDestroyFunction = NIL; APinAddedFunction : TOWPinEvent = NIL );
var
  AWriteLock : ILockSection;

begin
  inherited CreatePath( AOnCreated, APath, APinName, APinCategories, True );

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
constructor TOWPinListOwner.CreatePathLock( const AOnCreated : TProc<TOWBasicPinList>; const APath : IPropertyElements; const APinName : String; const AOwnerLock : IBasicLock; ADefaultCount : Integer; APinCategories : TOWPinCategories; APinCreateFunction : TOWPinCreateFunction; APinDestroyFunction : TOWPinDestroyFunction = NIL; APinAddedFunction : TOWPinEvent = NIL );
var
  AWriteLock : ILockSection;

begin
  inherited CreatePathLock( AOnCreated, APath, APinName, AOwnerLock, APinCategories, True );

  AWriteLock := WriteLock();
  FMaxPins := 100;
  FDefaultCount := ADefaultCount;

  FPinCreateFunction := APinCreateFunction;
  FPinDestroyFunction := APinDestroyFunction;
  FPinAddedFunction := APinAddedFunction;

  SetCount( FDefaultCount );
end;
//---------------------------------------------------------------------------
constructor TOWPinListOwner.CreatePathLockEx( const AOnCreated : TProc<TOWBasicPinList>; const APath : IPropertyElements; const APinName : String; const AOwnerLock : IBasicLock; ADefaultCount : Integer; APinCategories : TOWPinCategories; AMinPins : Integer; AMaxPins : Integer; APinCreateFunction : TOWPinCreateFunction; APinDestroyFunction : TOWPinDestroyFunction = NIL; APinAddedFunction : TOWPinEvent = NIL );
var
  AWriteLock : ILockSection;

begin
  inherited CreatePathLock( AOnCreated, APath, APinName, AOwnerLock, APinCategories, True );

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
}
procedure TOWPinListOwner.BeforeDestruction();
begin
  FMinPins := 0;
  Count := 0;
  inherited;
end;
//---------------------------------------------------------------------------
function TOWPinListOwner.GetCount_Stored() : Boolean;
begin
  Result := ( FDefaultCount <> Count );
end;
//---------------------------------------------------------------------------
procedure TOWPinListOwner.SetCount( ACount : Integer );
var
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
    var APin := Pins[ Count - 1 ];
    if( Assigned( FPinDestroyFunction )) then
      FPinDestroyFunction( Self, APin );

    Remove( APin );
//{$IFDEF RX12_0_Up}
//    APin.Free();
//{$ELSE}
//    APin.DisposeOf();
//{$ENDIF}
    end;

  if( Assigned( FPinCreateFunction )) then
    while( Count < ACount ) do
      FPinCreateFunction( Self, TOWPin.PinListAddSetter( Self ));
//      Add( FPinCreateFunction( Self ));

end;
//---------------------------------------------------------------------------
procedure TOWPinListOwner.ReadConnectionsData( AReader : TReader );
var
  AIdentName  : String;
  APin        : TOWBasicPin;
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  var ADecCounter := Count;
  var ACounter := 0;
  AReader.ReadListBegin();
  while not AReader.EndOfList() do
    begin
    if( AReader.NextValue() <> vaList ) then
      begin
      var AIdent := AReader.ReadIdent();
      if( Assigned( FPinCreateFunction )) then
        begin
        if( ADecCounter = 0 ) then
          begin
          APin := FPinCreateFunction( Self, TOWPin.PinListAddSetter( Self ));
//          Add( APin );
          end

        else
          begin
          APin := Pins[ ACounter ];
          Dec( ADecCounter );
          Inc( ACounter );
          end;

        if( AIdent <> 'nil' )then
          begin
          if( AIdent = 'State' ) then
            begin
            // Here it goes state APin connection !
            AReader.ReadListBegin();
            APin.ReadStateConnectionsData( AReader );
            AReader.ReadListEnd();
            end

          else if( APin is TOWSinkPin ) then
            ConnectPin( ACounter - 1, ptSink, ptSource, AIdent, AIdent )

          else if( APin is TOWSourcePin ) then
            begin
            if( AIdent = 'Sinks' ) then
              begin
              AReader.ReadListBegin();
              while not AReader.EndOfList do
                begin
                if( AReader.NextValue() = vaList ) then
                  begin
                  AReader.ReadListBegin();
                  AIdent := AReader.ReadIdent();
                  AIdentName := AReader.ReadString();
                  AReader.ReadListEnd();
                  end

                else
                  begin
                  AIdent := AReader.ReadIdent();
                  AIdentName := AIdent;
                  end;

                ConnectPin( ACounter - 1, ptSource, ptSink, AIdent, AIdentName );
                end;

              AReader.ReadListEnd();
              end

            else
              ConnectPin( ACounter - 1, ptSource, ptSink, AIdent, AIdent );

            end

          else if( APin is TOWMultiSinkPin ) then
            begin
            if( AIdent = 'Sources' ) then
              begin
              AReader.ReadListBegin();
              while not AReader.EndOfList do
                begin
                if( AReader.NextValue() = vaList ) then
                  begin
                  AReader.ReadListBegin();
                  AIdent := AReader.ReadIdent();
                  AIdentName := AReader.ReadString();
                  AReader.ReadListEnd();
                  end

                else
                  begin
                  AIdent := AReader.ReadIdent();
                  AIdentName := AIdent;
                  end;

                ConnectPin( ACounter - 1, ptMultiSink, ptSource, AIdent, AIdentName );
                end;

              AReader.ReadListEnd();
              end
            end;
          end;
        end;
      end

    else
      begin
      if( Assigned( FPinCreateFunction )) then
        begin
        if( ADecCounter = 0 ) then
          begin
          APin := FPinCreateFunction( Self, TOWPin.PinListAddSetter( Self ));
//          Add( APin );
          end

        else
          begin
          APin := Pins[ ACounter ];
          Dec( ADecCounter );
          Inc( ACounter );
          end;

        AReader.ReadListBegin();
        var AIdent := AReader.ReadIdent();
        AIdentName := AReader.ReadString();
        AReader.ReadListEnd();
        if( APin is TOWSinkPin )then
          ConnectPin( ACounter - 1, ptSink, ptSource, AIdent, AIdentName )

        else if( APin is TOWSourcePin )then
          ConnectPin( ACounter - 1, ptSource, ptSink, AIdent, AIdentName )

        end;
      end;
    end;

  AReader.ReadListEnd();

  AWriteLock := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWPinListOwner.SerializationReadPinsArray( const AArrayReader : ISequentialReader );
begin
  if( not Assigned( FPinCreateFunction )) then
    begin
    inherited;
    Exit;
    end;

  var ACurrentPinIndex := 0;
  AArrayReader.ReadNextNesteds(
      procedure( const AReader : IReader )
      begin
        if( ACurrentPinIndex >= Count ) then
          FPinCreateFunction( Self, TOWPin.PinListAddSetter( Self ));
//          Add( FPinCreateFunction( Self ));

        Pins[ ACurrentPinIndex ].SerializationRead( AReader );
        Inc( ACurrentPinIndex );
      end
    );

end;
//---------------------------------------------------------------------------
{
function TOWPinListOwner.DoWrite() : Boolean;
begin
  Result := True;
end;
}
//---------------------------------------------------------------------------
procedure TOWPinListOwner.AddNamed( AItem : TOWBasicPin; const AName : String );
begin
  inherited;
  if( Assigned( FPinAddedFunction )) then
    FPinAddedFunction( AItem );

end;
//---------------------------------------------------------------------------
class function TOWPinListOwner.DelegatePinDestroy( const ALamda : TProc ) : TOWPinDestroyFunction;
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
function TOWStatePin.ConnectToStateAfter( ADispatcher : TOWBasicStateDispatcher; ANotifyAfterPin : TOWBasicPin ) : Boolean;
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();

  if( ADispatcher = FDispatcher ) then
    Exit( False );

  if( FDispatcher <> NIL ) then
    Disconnect();

  if( ADispatcher = NIL ) then
    Exit( False );

  IntStateDisconnect();
  if( not FInConnect ) then
    begin
    Result := False;
    FInConnect := True;
    if( ADispatcher.PinCount = 0 ) then
      begin
      FDispatcher := ADispatcher;
      FDispatcher.AddPin( Self, Self );
      Result := True;
      end

    else if( ADispatcher.PinCount = 1 ) then
      begin
      var AStateName := ADispatcher.Name;
      var AOtherPin  := ADispatcher[ 0 ];
      ADispatcher.DisconnectAll();
      Result := ConnectByStateAfter( AOtherPin, ANotifyAfterPin );
      ADispatcher := FDispatcher;
      end

    else
      for var I : Integer := 0 to ADispatcher.PinCount - 1 do // Make sure we reconnect to all pins to update the connection types
        if( ConnectByStateAfter( ADispatcher[ I ], ANotifyAfterPin )) then
          Result := True;

    FInConnect := False;
    end

  else
    Result := inherited ConnectToStateAfter( ADispatcher, ANotifyAfterPin );

  UpdateStateValue();

  if( ADispatcher <> NIL ) then
    OWNotifyConnected( Self, ADispatcher );

end;
//---------------------------------------------------------------------------
function TOWStatePin.TryLinkTo( ARoot : TComponent; const ASinkName : String ) : Boolean;
var
  ADictionary       : IDictionary<String, TOWBasicPin>;
  AOtherPin         : TOWBasicPin;
  APinValueFilters  : TOWPinValueFilters;
  AWriteLock        : ILockSection;

begin
  APinValueFilters := [ pvoFullList ];

  if( ASinkName = '' ) then
    begin
    Disconnect();
    Exit( True );
    end;

  AWriteLock := WriteLock();
  var AMyRoot := GetRoot();
  if( ( AMyRoot <> ARoot ) and ( ARoot <> NIL )) then
    begin
    var ARootName := ARoot.Name;
    ADictionary := OWGetPinsValueListSingle( ARoot, Self, '.', ARootName, APinValueFilters );
    end

  else
    ADictionary := OWGetPinsValueList( Self, '.', APinValueFilters );

  if( ADictionary.Count = 0 ) then
    Exit( False );

  if( not ADictionary.GetValue( ASinkName, AOtherPin )) then
    if( not ADictionary.GetValue( OWRemoveFormName( ASinkName ), AOtherPin )) then
      Exit( False );


  Connect( AOtherPin );
  Result := True;
end;
//---------------------------------------------------------------------------
function TOWStatePin.IsCompatible( const AOtherPin : TOWBasicPin; AUseConverters : Boolean ) : Boolean;
var
//  StatePin : TOWStatePin;
  AConverter      : IOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;
  AReadLock       : ILockSection;

begin
  if( AOtherPin = NIL ) then
    Exit( True );

{
  if( not ( AOtherPin is TOWStatePin )) then
    Exit( False );
}

//  StatePin := TOWStatePin( AOtherPin );

  AReadLock := ReadLock();
  if( AOtherPin is TOWStatePin ) then
    begin
    Result := not IsEqualGUID( FindConnectionID( AOtherPin, AConverter, AConverterClass, AUseConverters, GUID_NULL ), GUID_NULL );
    if( Result ) then
      Exit( not IsEqualGUID( AOtherPin.FindConnectionID( Self, AConverter, AConverterClass, AUseConverters, GUID_NULL ), GUID_NULL ));

    Exit;
    end;

  if( AOtherPin is TOWBasicSinkPin ) then
    Exit( not IsEqualGUID( FindConnectionID( AOtherPin, AConverter, AConverterClass, AUseConverters, GUID_NULL ), GUID_NULL ));

  if( AOtherPin is TOWSourcePin ) then
    Exit( not IsEqualGUID( AOtherPin.FindConnectionID( Self, AConverter, AConverterClass, AUseConverters, GUID_NULL ), GUID_NULL ));

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWStatePin.GetImage( out AImage : IGPBitmap ) : Boolean;
begin
  var AWasCached := FImageCached;
  if( inherited ) then
    Exit( True );

  if( AWasCached ) then
    Exit( False );

  Result := GetInputOutputImage( AImage, True, True );
end;
//---------------------------------------------------------------------------
function TOWStatePin.GetConnectionID( const AOtherPin : TOWBasicPin; AReturnConvertedID : Boolean = False ) : TGUID;
var
  AReadLock       : ILockSection;
  AConverter      : IOWFormatConverter;
  AConverterClass : TOWFormatConverterClass;

begin
  AReadLock := ReadLock();
  if( IsConnectedTo( AOtherPin )) then
    begin
    if( AOtherPin is TOWSourcePin ) then
      begin
      var AGUID := AOtherPin.FindConnectionID( Self, AConverter, AConverterClass, True, GUID_NULL );
      if( AReturnConvertedID and ( AConverter <> NIL ) ) then
        AGUID := AConverter.GetInstance().OutputPin.FindConnectionID( Self, AConverter, AConverterClass, True, GUID_NULL );

      Exit( AGUID );
      end;

    Exit( GetStateSubmitID( AOtherPin ));
    end;

  Exit( GUID_NULL );
end;
//---------------------------------------------------------------------------
function TOWStatePin.DependsOn( const AOtherPin : TOWBasicPin ) : Boolean;
begin
  Result := DirectDependsOn( AOtherPin );
end;
//---------------------------------------------------------------------------
function TOWStatePin.DirectDependsOn( const AOtherPin : TOWBasicPin ) : Boolean;
begin
  Result := IsConnectedTo( AOtherPin );
end;
//---------------------------------------------------------------------------
function TOWStatePin.GetPinType() : TOWPinType;
begin
  Result := ptState;
end;
//---------------------------------------------------------------------------
function TOWStatePin.GetLinkStr( AStatePin : TOWPin ) : String;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  var AddRoot := AStatePin.GetRoot() <> GetRoot();
//  Result := AStatePin.GetFullName( ( AddRoot ) and ( AStatePin.Owner.Owner = NIL ) );
  Result := AStatePin.GetFullName( AddRoot );

{
  if(( AddRoot ) and ( AStatePin.Owner.Owner = NIL )) then
    Result := AStatePin.RootName + '.' + OWValueToString( AStatePin, '.', False, SaveFormat )

  else
    Result := OWValueToString( AStatePin, '.', AddRoot, SaveFormat );
}
end;
//---------------------------------------------------------------------------
function TOWStatePin.GetEditorString() : String;
begin
  if( FDispatcher = NIL ) then
    Exit( GOWDISCONNECTED );

  if( FDispatcher.PinCount = 2 ) then
    begin
    var AFirstPin := FDispatcher.Pins[ 0 ];
    if( AFirstPin.GetFullIdentName( True, False ) = GetFullIdentName( True, False ) ) then
      Exit( FDispatcher.Pins[ 1 ].GetFullName( True ));

    Exit( AFirstPin.GetFullName( True ));
    end;

  Result := FDispatcher.Name;
end;
//---------------------------------------------------------------------------
function TOWStatePin.SetEditorString( ARoot : TComponent; const AValue : String ) : Boolean;
begin
  if( ( AValue = '' ) or ( AValue = GOWDISCONNECTED ) ) then
    begin
    Disconnect();
    Exit( True );
    end;

  if( IsPreviewPin() ) then
    Exit( False );

  var ADispatcher := TOWStateDispatcher.GetByName( AValue, True );

  if( ADispatcher <> NIL ) then
    if( ConnectToState( ADispatcher )) then
      Exit( True );

  if( TryLinkTo( ARoot, AValue )) then
    Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWStatePin.CanConnectToInt( const AOtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; AUseConverters : Boolean; const ADataType : TGUID ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( PreviewConnected( Self, AOtherPin )) then
    Exit( False );


  if( not( FOwner is TOWFormatConverter ) and not( AOtherPin.Owner is TOWFormatConverter )) then
    begin
    if( ( AOtherPin.OwnerInDesigning( False ) ) and ( not ( OwnerInDesigning( False ) ))) then
      Exit( False );

    if( ( not ( AOtherPin.OwnerInDesigning( False ) )) and ( OwnerInDesigning( False ) )) then
      Exit( False );

    end;

//  if( AOtherPin is TOWStatePin ) then
  if( AOtherPin is TOWSourcePin ) then
    Exit( not IsEqualGUID( AOtherPin.FindConnectionID( Self, AConverter, AConverterClass, AUseConverters, ADataType ), GUID_NULL ));

  Exit( not IsEqualGUID( FindConnectionID( AOtherPin, AConverter, AConverterClass, AUseConverters, ADataType ), GUID_NULL ));
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
function TOWStatePin.GetPin( AIndex : Integer ) : TOWBasicPin;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  if( FDispatcher <> NIL ) then
    Exit( FDispatcher.Pins[ AIndex ] );

  Result := NIL;
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
begin
  for var I : Integer := 0 to PinCount - 1 do
    begin
    Result := Pins[ I ].GetOwnerComponent();
    if( Result <> NIL ) then
      Exit;

    end;

  Exit( NIL );
end;
//---------------------------------------------------------------------------
function TOWBasicStateDispatcher.IsPreviewDispatcher() : Boolean;
begin
  var AComponent := GetOwnerComponent();
  if( AComponent = NIL ) then
    Exit( True );

  if( not( csDesigning in AComponent.ComponentState )) then
    Exit( False );

  var ARoot := GetMainOwnerComponent( AComponent );
  if( ARoot <> NIL ) then
    begin
    if( InheritsFromClassName( ARoot.TypeInfo(), 'TPreviewForm' )) then
      Exit( True );

    if( ARoot.Name = 'Root' ) then
      if( ARoot.ClassName().StartsWith( ARoot.ClassParent().ClassName() + '_' )) then
        Exit( True );

    end;

  Exit( False );
end;
//---------------------------------------------------------------------------
function TOWBasicStateDispatcher.GetInstanceHolder() : IDispatcherInstanceHolder;
begin
  Result := TDispatcherInstanceHolder.Create( Self );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
class function TOWStateDispatcher.GetByName( const AName : String; ADesignTime : Boolean ) : TOWStateDispatcher;
begin
  GlobalStorageSection.Enter();
  try
    for var AItem in OWDispatchers( ADesignTime ) do
      if( TOWStateDispatcher( AItem ).FName = AName ) then
        Exit( TOWStateDispatcher( AItem ));

  finally
    GlobalStorageSection.Leave();
    end;

  Result := NIL;
end;
//---------------------------------------------------------------------------
class function TOWStateDispatcher.GetByNameCreate( APin : TOWBasicPin; const AName : String; ADesignTime : Boolean ) : TOWStateDispatcher;
begin
  GlobalStorageSection.Enter();
  try
    for var AItem in OWDispatchers( ADesignTime ) do
      if( TOWStateDispatcher( AItem ).FName = AName ) then
        Exit( TOWStateDispatcher( AItem ));

  finally
    GlobalStorageSection.Leave();
    end;

//  Result := TOWStateDispatcher.CreateNamed( AName, ADesignTime );
  Result := APin.CreateNamedDispatcher( AName, ADesignTime );
end;
//---------------------------------------------------------------------------
class function TOWStateDispatcher.GetUniqueName( AOwnerForm : TComponent; const APrefix : String ) : String;
var
  ANotFound : Boolean;

begin
  var AIndex := 0;
  GlobalStorageSection.Enter();
  try
    var AInDesigning := False;
    var AFormName : String;
    if( AOwnerForm <> NIL ) then
      begin
      AFormName := AOwnerForm.Name;
      AInDesigning := ( csDesigning in AOwnerForm.ComponentState );
      end

    else
      AFormName := 'Unknown';

    repeat
      begin
      Inc( AIndex );
      Result := APrefix + AFormName + 'Link' + AIndex.ToString();
      ANotFound := True;
      for var AItem in OWDispatchers( AInDesigning ) do
        if( TOWStateDispatcher( AItem ).FName = Result ) then
          begin
          ANotFound := False;
          Break;
          end;

      end;
    until ANotFound;

  finally
    GlobalStorageSection.Leave();
    end;

end;
//---------------------------------------------------------------------------
class function TOWStateDispatcher.IsUniqueName( const AName : String; ADesignTime : Boolean ) : Boolean;
begin
  GlobalStorageSection.Enter();
  try
    for var AItem in OWDispatchers( ADesignTime ) do
      if( TOWStateDispatcher( AItem ).FName = AName ) then
        Exit( False );

  finally
    GlobalStorageSection.Leave();
    end;

  Result := True;
end;
//---------------------------------------------------------------------------
constructor TOWStateDispatcher.CreateNamed( const AName : String; ADesignTime : Boolean; AFromConverter : Boolean = False );
var
  AWriteLock : ILockSection;

begin
  inherited Create();
  AWriteLock := WriteLock();
  FFromConverter := AFromConverter;
  FName := AName;
  FPins := TObjectOwnerArrayList<TOWDispatcherPinStorage>.Create( True );
  FSavedForms := TObjectLinkedList<TComponent>.Create();
  if( FFromConverter ) then
    Exit;

  GlobalStorageSection.Access.Execute(
      procedure()
      begin
        OWDispatchers( ADesignTime ).Add( Self );
      end
    );

end;
//---------------------------------------------------------------------------
constructor TOWStateDispatcher.Create( AOwnerForm : TComponent; AFromConverter : Boolean );
begin
  var AInDesigning := False;
  if( AOwnerForm <> NIL ) then
    AInDesigning := ( csDesigning in AOwnerForm.ComponentState );

  if( AFromConverter ) then
    CreateNamed( GetUniqueName( AOwnerForm, ' . ' ), AInDesigning, AFromConverter )

  else
    CreateNamed( GetUniqueName( AOwnerForm, '' ), AInDesigning, AFromConverter );

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

  FPins := NIL; //.DisposeOf();

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
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  for var I : Integer := 0 to PinCount - 1 do
    begin
    var AItemPin := Pins[ I ];
    if( AItemPin is TOWSourcePin ) then
      begin
      if( AItemPin = APin ) then
        AItemPin.NotifyDispatcher( TOWNotifyOperation.Make(), [nsNewLink], NIL )

      else
        AItemPin.NotifyDispatcher( TOWNotifyOperation.Make(), [nsNewLink], APin );

      Exit;
      end;
    end;

  for var I : Integer := 0 to PinCount - 1 do
    begin
    var AItemPin := Pins[ I ];
    if( not( AItemPin is TOWBasicSinkPin )) then
      begin
      if( AItemPin = APin ) then
        AItemPin.NotifyDispatcher( TOWNotifyOperation.Make(), [nsNewLink], NIL )

      else
        AItemPin.NotifyDispatcher( TOWNotifyOperation.Make(), [nsNewLink], APin );

      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.GetName() : String;
begin
  Result := FName;
end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.SetName( const AValue : String );
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
function TOWStateDispatcher.GetPin( AIndex : Integer ) : TOWBasicPin;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FPins[ AIndex ].RealPin;
end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.GetConnectionPin( AIndex : Integer ) : TOWBasicPin;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FPins[ AIndex ].ConnectionPin;
end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.GetAfterPin( AIndex : Integer ) : TOWBasicPin;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
  Result := FPins[ AIndex ].AfterPin;
end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.GetConnectedAfterForPin( AOtherPin : TOWBasicPin ) : TOWBasicPin;
begin
  for var AItem in FPins do
    if( AItem.RealPin = AOtherPin ) then
      Exit( AItem.AfterPin );

  Result := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.AddPin( AConnectionPin : TOWBasicPin; ARealPin : TOWBasicPin );
begin
  AddPinAfter( AConnectionPin, ARealPin, NIL );
end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.AddPinAfter( AConnectionPin : TOWBasicPin; ARealPin : TOWBasicPin; ANotifyAfterPin : TOWBasicPin );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  if( IsConnectedTo( AConnectionPin )) then
    Exit;

  if( IsConnectedTo( ARealPin )) then
    Exit;

  var APinStorage := TOWDispatcherPinStorage.Create();
  APinStorage.ConnectionPin := AConnectionPin;
  APinStorage.RealPin := ARealPin;
  APinStorage.AfterPin := ANotifyAfterPin;
  FPins.Add( APinStorage );
  if( not FFromConverter ) then
    OWNotifyChangeDispatcher( Self );

end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.PinDeletedNotify( const ADeletedPin : TOWBasicPin );
begin
  for var AItem in FPins do
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
      end;

    Pins[ 0 ].Disconnect(); // This will not work for Source pins in the future !!!
    end;

end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.CanConnectAfter( AOtherPin : TOWBasicPin; ANotifyAfterPin : TOWBasicPin; AUseConverters : Boolean ) : Boolean;
var
  AReadLock : ILockSection;

begin
  if( ANotifyAfterPin = NIL ) then
    Exit( True );
    
  AReadLock := ReadLock();

  if( AOtherPin = ANotifyAfterPin ) then
    Exit( False );

  for var I : Integer := 0 to PinCount - 1 do
    if( Pins[ I ] = ANotifyAfterPin ) then
      begin
      var AAfterPin := AfterPins[ I ];
      if( AAfterPin <> NIL ) then
        Exit( CanConnectAfter( AOtherPin, AAfterPin, AUseConverters ));

      Exit( True );
      end;

  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.RemovePin( APin : TOWBasicPin );
var
  AWriteLock  : ILockSection;

begin
  AWriteLock := WriteLock();
  var AAfterPin : TOWBasicPin := NIL;
  for var I : Integer := 0 to FPins.Count - 1 do
    begin
    var AItem := FPins[ I ];
    if( AItem.RealPin = APin ) then
      begin
      if( AItem.RealPin.FDispatcher = Self ) then
        AItem.RealPin.FDispatcher := NIL;

      if( AItem.RealPin.FConverterDispatcher = Self ) then
        AItem.RealPin.FConverterDispatcher := NIL;

      if( AItem.ConnectionPin.FDispatcher = Self ) then
        AItem.ConnectionPin.FDispatcher := NIL;

      if( AItem.ConnectionPin.FConverterDispatcher = Self ) then
        AItem.ConnectionPin.FConverterDispatcher := NIL;

      AAfterPin := AItem.AfterPin;
      FPins.Delete( I );
      Break;
      end;
    end;

  for var AItem in FPins do
    if( AItem.AfterPin = AAfterPin ) then
      begin
      AItem.AfterPin := NIL;
      Break;
      end;

  if( FInConnecting <= 0 ) then
    if( FPins.Count = 1 ) then
      begin
      // Remove the last reference.
      var AItem := FPins[ 0 ];
      if( AItem.RealPin.FDispatcher = Self ) then
        AItem.RealPin.FDispatcher := NIL;

      if( AItem.RealPin.FConverterDispatcher = Self ) then
        AItem.RealPin.FConverterDispatcher := NIL;

      if( AItem.ConnectionPin.FDispatcher = Self ) then
        AItem.ConnectionPin.FDispatcher := NIL;

      if( AItem.ConnectionPin.FConverterDispatcher = Self ) then
        AItem.ConnectionPin.FConverterDispatcher := NIL;

      FPins.Clear();
      end;

  if( not FFromConverter ) then
    OWNotifyChangeDispatcher( Self );

  if( FInConnecting <= 0 ) then
    if( FPins.Count = 0 ) then
      begin
      AWriteLock := NIL;
{$IFDEF RX12_0_Up}
      Free();
{$ELSE}
      DisposeOf();
{$ENDIF}
      end;

end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.IsConnectedTo( APin : TOWBasicPin ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  for var AItem in FPins do
    if( AItem.RealPin = APin ) then
      Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.IsCrosForm() : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

  var ARootName := Pins[ 0 ].GetRootName();
  for var I : Integer := 1 to FPins.Count - 1 do
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
begin
  for var AItem in FPins do
    if( AItem.RealPin = APin ) then
      Exit( AItem.RealPin.GetFullName( True ) );

  Result := '';
end;
//---------------------------------------------------------------------------
function TOWStateDispatcher.ConnectedToForm( AOwnerComponent : TComponent ) : Boolean;
var
  AWriteLock  : ILockSection;

begin
  if( AOwnerComponent = NIL ) then
    Exit( False );

  AWriteLock := WriteLock();

  for var AItem in FPins do
    if( AItem.RealPin.GetRootName() = AOwnerComponent.Name ) then
      Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
procedure TOWStateDispatcher.SetNotifyAfterByName( const APin : TOWPin; const AAfterPinName : String );
begin
  var AAfterPin : TOWBasicPin := NIL;
  for var AItem in FPins do
    begin
    var APinItem := AItem.RealPin;
    if(( APinItem.GetFullName( False ) = AAfterPinName ) or ( APinItem.GetFullName( True ) = AAfterPinName )) then
      begin
      AAfterPin := APinItem;
      Break;
      end;
    end;

  if( AAfterPin <> NIL ) then
    for var AItem in FPins do
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
function OWGetPin( AIndex : Integer ) : TOWBasicPin;
begin
  GlobalStorageSection.Enter();
  try
    Result := GOWPins[ AIndex ];
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
function OWGetPinList( AIndex : Integer ) : TOWBasicPinList;
begin
  GlobalStorageSection.Enter();
  try
    Result := TOWBasicPinList( GOWPinLists[ AIndex ] );
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
      Exit( GDesignDispatchers.Count );

    Result := GRunDispatchers.Count;
  finally
    GlobalStorageSection.Leave();
    end;

end;
//---------------------------------------------------------------------------
function OWGetDispatcher( AIndex : Integer ) : TOWBasicStateDispatcher;
begin
  GlobalStorageSection.Enter();
  try
    if( GDesignDispatchers.Count > 0 ) then
      Exit( TOWBasicStateDispatcher( GDesignDispatchers[ AIndex ] ));

    Result := TOWBasicStateDispatcher( GRunDispatchers[ AIndex ] );
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
constructor TOWPinEntry.Create( AOwnerList : TOWPinEntryList );
begin
  inherited Create();
  FOwnerList := AOwnerList;
end;
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
procedure TOWPinEntry.IncrementModificationLevel();
begin
  if( ModificationLevel < 10000 ) then
    begin
    Inc( ModificationLevel, 4 );
    if( FOwnerList <> NIL ) then
      FOwnerList.FNeedsSort := True;

    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWNotifyPinEntry.Create();
begin
  inherited;
  Section := Mitov.Threading.TCriticalSection.Create();
  Entry := TOWPinEntry.Create( NIL );
end;
//---------------------------------------------------------------------------
destructor TOWNotifyPinEntry.Destroy();
begin
{$IFDEF RX12_0_Up}
  Entry.Free();
{$ELSE}
  Entry.DisposeOf();
{$ENDIF}
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
function TOWPinEntryList.Add() : TOWPinEntry;
begin
  Result := TOWPinEntry.Create( Self );
  inherited Add( Result );
end;
//---------------------------------------------------------------------------
function TOWPinEntryList.GetItemByPin( APin : TOWBasicPin ) : TOWPinEntry;
begin
  for var I : Integer := 0 to FSize - 1 do
    if( FArray[ I ].RealPin = APin ) then
      Exit( FArray[ I ] );

  Result := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWPinEntryList.Sort();
begin
  if( not FNeedsSort ) then
    Exit;

  FNeedsSort := False;
  for var I : Integer := 0 to FSize - 1 do
    if( FArray[ I ].ModificationLevel > 0 ) then
      begin
      Dec( FArray[ I ].ModificationLevel );
      if( FArray[ I ].ModificationLevel > 0 ) then
        FNeedsSort := True;

      end;

  if( not FNeedsSort ) then
    Exit;

  inherited Sort(
      function( const AItem1, AItem2 : TOWPinEntry ) : Integer
      begin
        Result := AItem1.ModificationLevel - AItem2.ModificationLevel;
      end
    );

  for var I : Integer := 0 to FSize - 1 do
    begin
    var AEntry1 := FArray[ I ];
    if( AEntry1.NotifyAfterPin <> NIL ) then
      for var J : Integer := 0 to FSize - 1 do
        if( AEntry1.NotifyAfterPin = FArray[ J ].RealPin ) then
          if( I < J ) then
            Move( I, J );

    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
{
function TOWPinEntryList.TOWEComponentsListComparer.Compare( const AItem1, AItem2 : TOWPinEntry ) : Integer;
begin
  Result := AItem1.ModificationLevel - AItem2.ModificationLevel;
end;
}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWPinNotifyEntryList.RemoveLinks();
begin
  try
    for var AItem in Self do
      try
        var AEntry := AItem.GetInstance();
        AEntry.Section.Access.Execute(
            procedure()
            begin
              AEntry.Entry.SubmitFunction := NIL;
              AEntry.Entry.ConnectionPin := NIL;
            end
          );

      except
        end;

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
constructor TDataStreamInfo.Create( const AID : TGUID; AAccepts : Boolean; ASends : Boolean );
begin
  ID := AID;
  Accepts := AAccepts;
  Sends := ASends;
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
  FList := TObjectLinkedList<TOWBasicSinkPin>.Create();
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
begin
  inherited Create();
  FSize := AOwner.FList.Count;
  SetLength( FArray, FSize );
  var AIndex := 0;
  for var AItem in AOwner.FList do
    begin
    FArray[ AIndex ] := AItem;
    Inc( AIndex );
    end;

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
constructor TOWNotifyOperation.CreateObject();
begin
  inherited Create();
  FOperationID := TInterlocked.Increment( GOWOperationID );
end;
//---------------------------------------------------------------------------
class function TOWNotifyOperation.Make() : IOWNotifyOperation;
begin
  Result := CreateObject();
end;
//---------------------------------------------------------------------------
function TOWNotifyOperation.GetInstance() : TOWNotifyOperation;
begin
  Result := Self;
end;
//---------------------------------------------------------------------------
function TOWNotifyOperation.IsType( AClass : TOWNotifyOperationClass ) : Boolean; stdcall;

  function InheritsFrom( AMyClass : TOWNotifyOperationClass ) : Boolean;
  begin
    if( AMyClass.UnitName() = AClass.UnitName() ) then
      if( AMyClass.ClassName() = AClass.ClassName() ) then
        Exit( True );

    var AClassParent := AMyClass.ClassParent();
    if( AClassParent <> NIL ) then
      if( AClassParent <> TOWNotifyOperation ) then
        Exit( InheritsFrom( TOWNotifyOperationClass( AClassParent )) );

    Result := False;
  end;

begin
  Result := InheritsFrom( TOWNotifyOperationClass( ClassType() )); //( Self is AClass );
end;
//---------------------------------------------------------------------------
function TOWNotifyOperation.IsType( const AClasses : TArray<TOWNotifyOperationClass> ) : Boolean; stdcall;
begin
  for var AClass in AClasses do
    if( IsType( AClass )) then
      Exit( True );

  Exit( False );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
class function TOWValueNotifyOperation<T>.Make( AValue : T ) : IOWNotifyOperation;
begin
  Result := CreateObject( AValue );
end;
//---------------------------------------------------------------------------
constructor TOWValueNotifyOperation<T>.CreateObject( AValue : T );
begin
  inherited Create();
  Value := AValue;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor OWAutoManagePinListAttribute.Create( APinClass : TClass );
begin
  Create( APinClass, True );
end;
//---------------------------------------------------------------------------
constructor OWAutoManagePinListAttribute.Create( APinClass : TClass; AIsOwner : Boolean );
begin
  Create( APinClass.ClassTypeInfo(), AIsOwner );
end;
//---------------------------------------------------------------------------
constructor OWAutoManagePinListAttribute.Create( const APinClass : IAtttributeParameterInfo );
begin
  Create( APinClass, True );
end;
//---------------------------------------------------------------------------
constructor OWAutoManagePinListAttribute.Create( const APinClass : IAtttributeParameterInfo; AIsOwner : Boolean );
begin
  inherited Create();
  RegisterCleanupClassAttributesList( Cleanup );
  FIsOwner := AIsOwner;
  FPinClass := APinClass;
end;
//---------------------------------------------------------------------------
function OWAutoManagePinListAttribute.Cleanup( AHInstance : NativeInt ) : Boolean;
begin
  Result := inherited;
  if( Result ) then
    FPinClass := NIL;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor OWAutoManagePinListOwnerAttribute.Create( APinClass : TClass; ACount : Integer; AMin : Integer; AMax : Integer );
begin
  Create( APinClass.ClassTypeInfo(), ACount, AMin, AMax );
end;
//---------------------------------------------------------------------------
constructor OWAutoManagePinListOwnerAttribute.Create( const APinClass : IAtttributeParameterInfo; ACount : Integer; AMin : Integer; AMax : Integer );
begin
  inherited Create( APinClass, True );
  FCount := ACount;
  FMin := AMin;
  FMax := AMax;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor OWResizePropertyAttribute.Create( const AValue : String );
begin
  Create( AValue, True );
end;
//---------------------------------------------------------------------------
constructor OWResizePropertyAttribute.Create( const AValue : String; APopulateOnCreate : Boolean );
begin
  inherited Create( AValue );
  FPopulateOnCreate := APopulateOnCreate;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWBasicDataTypeAttribute.Create( const AValue : TGUID; AReorder : Boolean );
begin
  inherited Create( AValue );
  FReorder := AReorder;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor OWAddPinAttribute.Create( const AName : String; AValue : TClass );
begin
  Create( AName, AValue.ClassTypeInfo() );
end;
//---------------------------------------------------------------------------
constructor OWAddPinAttribute.Create( const AName : String; const APinClass : IAtttributeParameterInfo );
begin
  inherited Create( APinClass );
  FName := AName;
end;
//---------------------------------------------------------------------------
function OWAddPinAttribute.CreatePin( const AOnCreated : TProc<TOWPin>; const ALockItem : ILockItem; out AResult : TOWBasicPin ) : Boolean;
begin
  Result := False;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor OWConvertDataTypeAttribute.Create( const AFromDataType : TGUID; const AToDataType : TGUID );
begin
  inherited Create();
  FFromDataType := AFromDataType;
  FToDataType := AToDataType;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWUnloadedPin.Create( ARoot : TComponent; ALoadIndexed : Boolean; AType : TOWPinType; const APinIdentName : String; const APinDisplayName : String; const ACreatedFrom : String );
begin
  inherited Create( NIL, NIL );
  FCreatedFrom := ACreatedFrom;
  FIdentName := APinIdentName;
  FDisplayName := APinDisplayName;
  FType := AType;

  var AInRoot := ARoot;

  if( ARoot <> NIL ) then
    begin
    FDesignTime := ( csDesigning in ARoot.ComponentState );
    if( ARoot.Name <> GetRootName() ) then
      ARoot := NIL;

    end;

  FRoot := ARoot;

  GOWUnloadedPins[ ALoadIndexed ].Add( AInRoot, Self );
//  FConnectedPins := TOWPinEntryList.Create();
//  FConnectedPins := TOWPinListBasic.Create( False );
end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.DependsOn( const AOtherPin : TOWBasicPin ) : Boolean;
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
begin
  for var I : Integer := FConnectedPins.Count - 1 downto 0 do
    if( FConnectedPins[ I ].RealPin = ADeletedPin ) then
      FConnectedPins.Delete( I );

end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.FindConnectionID( const AOtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; AUseConverters : Boolean; const ADataType : TGUID ) : TGUID;
begin
  Result := GUID_NULL;
end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.NotifyDispatcher( const AOperation : IOWNotifyOperation; AState : TOWNotifyState; const APinToNotify : TOWBasicPin ) : TOWNotifyResult;
begin
  Result := [];
end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.CanConnectToInt( const AOtherPin : TOWBasicPin; var AConverter : IOWFormatConverter; var AConverterClass : TOWFormatConverterClass; AUseConverters : Boolean; const ADataType : TGUID ) : Boolean;
begin
  Result := True;
end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.IsCompatible( const AOtherPin : TOWBasicPin; AUseConverters : Boolean ) : Boolean;
begin
  Result := True;
end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.IsConnected() : Boolean;
begin
  Result := ( FConnectedPins.Count > 0 );  
end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.IsConnectedTo( const AOtherPin : TOWBasicPin ) : Boolean;
begin
  Result := ( FConnectedPins.GetItemByPin( AOtherPin ) <> NIL );
end;
//---------------------------------------------------------------------------
procedure TOWUnloadedPin.PinReplacedNotify( const AOldPin : TOWBasicPin; const ANewPin : TOWBasicPin );
begin
  for var AItem in FConnectedPins do
    begin
    if( AItem.NotifyAfterPin = AOldPin ) then
      AItem.NotifyAfterPin := ANewPin;

    if( AItem.RealPin = AOldPin ) then
      AItem.RealPin := ANewPin;

    end;
    
end;
//---------------------------------------------------------------------------
procedure TOWUnloadedPin.SetInEditor( AValue : Boolean );
begin
  FInEditor := AValue;
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
      begin
      if( FConnectedPins = NIL ) then
        begin
        GOWUnloadedPins[ False ].RemoveOne( Self );
        GOWUnloadedPins[ True ].RemoveOne( Self );
        Exit;
        end;

      if( FConnectedPins.Count = 0 ) then
        begin
        GOWUnloadedPins[ False ].RemoveOne( Self );
        GOWUnloadedPins[ True ].RemoveOne( Self );
        Exit;
        end;
      end;

  Dec( FInRemoveCount );
end;
//---------------------------------------------------------------------------
procedure TOWUnloadedPin.IntDisconnect( const AOtherPin : TOWBasicPin; ADesignFormClosing : Boolean );
begin
  FImageCached := False;

  if( FConnectedPins <> NIL ) then
    for var I : Integer := FConnectedPins.Count - 1 downto 0 do
      if( FConnectedPins[ I ].RealPin = AOtherPin ) then
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
procedure TOWUnloadedPin.IntConnect( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin; const ADataType : TGUID; AFromOther : Boolean );
begin
  if( AOtherPin <> NIL ) then
    begin
    var APinEntry := FConnectedPins.Add();
    APinEntry.RealPin := AOtherPin;
    APinEntry.NotifyAfterPin := ANotifyAfterPin;
//    FConnectedPins.Add( SinkPin );
    end;
    
end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.GetPinType() : TOWPinType;
begin
  Result := FType;
end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.ConnectAfter( const AOtherPin : TOWBasicPin; const ANotifyAfterPin : TOWBasicPin ) : Boolean;
begin
  if( AOtherPin = Self ) then
    Exit( False );

  if( IsConnectedTo( AOtherPin )) then
    Exit( True );

  if( AOtherPin <> NIL ) then
    begin
    var APinEntry := FConnectedPins.Add();
    APinEntry.RealPin := AOtherPin;
    APinEntry.NotifyAfterPin := ANotifyAfterPin;
    end;

  if( AOtherPin is TOWSourcePin ) then
    TOWSourcePin( AOtherPin ).IntConnect( Self, ANotifyAfterPin, GUID_NULL, False )

  else if( AOtherPin is TOWMultiSinkPin ) then
    TOWMultiSinkPin( AOtherPin ).IntConnect( Self, ANotifyAfterPin, GUID_NULL, False )

  else if( AOtherPin is TOWSinkPin ) then
    begin
    TOWSinkPin( AOtherPin ).Disconnect();
    TOWSinkPin( AOtherPin ).FRealSourcePin := Self;
    TOWSinkPin( AOtherPin ).FIntRealSourcePin := Self;
    end;

  if( AOtherPin <> NIL ) then
    begin
    var APinEntry := FConnectedPins.Add();
    APinEntry.RealPin := AOtherPin;
    APinEntry.NotifyAfterPin := ANotifyAfterPin;
//    FConnectedPins.Add( SinkPin );
    end;

  Result := True;
  FImageCached := False;
end;
//---------------------------------------------------------------------------
procedure TOWUnloadedPin.Disconnect();
begin
{
  if( FDispatcher <> NIL ) then
    OWNotifyDisconnecting( Self, FDispatcher, False );

  for var AItem in FConnectedPins do
    begin
    OWNotifyDisconnecting( Self, AItem.RealPin, False );
    OWNotifyDisconnecting( Self, AItem.ConnectionPin, False );
    end;
}
  for var I : Integer := FConnectedPins.Count - 1 downto 0 do
    FConnectedPins[ I ].RealPin.DisconnectFrom( Self );

  FConnectedPins.Clear();
//  if( FConnectedPins.Count = 0 ) then
//    GOWUnloadedPins.Remove( Self );

end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.GetConnectedPinCount() : Integer;
begin
  Result := FConnectedPins.Count;
end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.GetConnectedPin( AIndex : Integer ) : TOWBasicPin;
begin
  Result := FConnectedPins[ AIndex ].RealPin;
end;
//---------------------------------------------------------------------------
procedure TOWUnloadedPin.InvalidateCaches( AObject : TObject );
begin
end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.GetFullName( AIncludeRootForm : Boolean ) : String;
begin
  if( AIncludeRootForm ) then
    Exit( FDisplayName );

  Result := FDisplayName;
  var APosition := Pos( '.', Result );
  if( APosition <> 0 ) then
    Delete( Result, 1, APosition );

end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.GetFullIdentNameInt( AIncludeRootForm : Boolean; ALoadIndexed : Boolean ) : String;
begin
  if( AIncludeRootForm ) then
    Exit( FIdentName );

  Result := FIdentName;
  var APosition := Pos( '.', Result );
  if( APosition <> 0 ) then
    Delete( Result, 1, APosition );

end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.GetFullIdentsInt() : IPropertyElements;
begin
  Result := TPropertyElements.Create();
end;
//---------------------------------------------------------------------------
procedure TOWUnloadedPin.PopulatePinAndDestroy( APin : TOWBasicPin );
begin
  Inc( FInRemoveCount );
  for var ARealPin in GOWPins do
    ARealPin.PinReplacedNotify( Self, APin );

  for var I : Integer := FConnectedPins.Count - 1 downto 0 do
    begin
    var APinItem := FConnectedPins[ I ];
    var ARealPin := APinItem.RealPin;
    APin.ConnectAfter( ARealPin, APinItem.NotifyAfterPin );
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
    begin
    GOWUnloadedPins[ False ].RemoveOne( Self );
    GOWUnloadedPins[ True ].RemoveOne( Self );
    end;

end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.GetRoot() : TComponent;
begin
  Result := NIL; //FRoot;
end;
//---------------------------------------------------------------------------
function TOWUnloadedPin.GetNameInt() : String;
begin
  Result := FDisplayName;
  while( True ) do
    begin
    var APos := Pos( '.', Result );
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
constructor TOWStreamTypeEntry.Create( const AID : TGUID );
begin
  inherited Create();
  FID := AID;
  Extentions := TDictionary<TGUID, IOWStreamInfoExtention>.Create();
end;
//---------------------------------------------------------------------------
function TOWStreamTypeEntry.GetIsCoreInterface() : Boolean;
begin
  if( not FIsCoreInterfaceCached ) then
    begin
    FIsCoreInterfaceCached := True;
    var AList := TRttiInfo.GetInterfaceTypes( FID );
    if( AList.Count > 0 ) then
      FIsCoreInterface := AList[ 0 ].HasCustomAttribute( OWCoreInterfaceAttribute, False );

    end;

  Result := FIsCoreInterface;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWBasicComponentsListItem.Create( AComponent : TComponent );
begin
  inherited Create();
  FComponent := AComponent;
end;
//---------------------------------------------------------------------------
function TOWBasicComponentsListItem.GetComponent() : TComponent;
begin
  Result := FComponent;
end;
//---------------------------------------------------------------------------
constructor TOWComponentsListItem.Create( AComponent : TComponent );
begin
  inherited;
  FPinsDictionary := TDictionary<String, TOWBasicPin>.Create();
  FLoadPinsDictionary := TDictionary<String, TOWBasicPin>.Create();
end;
//---------------------------------------------------------------------------
{
function TOWComponentsListItem.GetComponentName() : String;
begin
  Result := FComponentName;
end;
}
//---------------------------------------------------------------------------
function TOWComponentsListItem.GetPinsDictionary() : IDictionary<String, TOWBasicPin>;
begin
  Result := FPinsDictionary;
end;
//---------------------------------------------------------------------------
function TOWComponentsListItem.GetLoadPinsDictionary() : IDictionary<String, TOWBasicPin>;
begin
  Result := FLoadPinsDictionary;
end;
//---------------------------------------------------------------------------
procedure TOWComponentsListItem.ClearLoading();
begin
  FLoadPinsDictionary := TDictionary<String, TOWBasicPin>.CreateCopy( FPinsDictionary );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWRootListItem.Create( AComponent : TComponent );
begin
  inherited;
  FComponentsList := TInterfaceArrayList<IOWComponentsListItem>.Create();
end;
//---------------------------------------------------------------------------
function TOWRootListItem.GetComponentsList() : IArrayList<IOWComponentsListItem>;
begin
  Result := FComponentsList;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWPinListBasic<T>.CreateObject( AOwnsObjects : Boolean = True );
begin
  inherited Create( AOwnsObjects );
end;
//---------------------------------------------------------------------------
function TOWPinListBasic<T>.Add( const AItem : T; ACount : Cardinal = 1 ) : IArrayList<T>;
begin
  Result := Self; // Keep alive!
  for var I := 0 to FSize - 1 do
    if( FArray[ I ] = AItem ) then
      Exit;

  inherited Add( AItem );
end;
//---------------------------------------------------------------------------
function TOWPinListBasic<T>.RemoveNoList( APin : T ) : Boolean;
begin
  for var I : Integer := 0 to FSize - 1 do
    if( FArray[ I ] = APin ) then
      begin
      APin.SetOwnerPinList( NIL );
      Delete( I );
      Exit( True );
      end;

  Result := False;
end;
//---------------------------------------------------------------------------
{
function TOWPinListBasic<T>.GetByDisplayName( ARoot : TComponent; APinName : String; out AResult : TOWBasicPin ) : Boolean;
begin
  GlobalStorageSection.Enter();
  try
    for var AItem in Self do
      begin
      var AItemRoot := AItem.GetRoot();
      AResult := AItem;
      if(( AItemRoot = NIL ) or ( ARoot = NIL ) or ( AItemRoot = ARoot )) then
        if(( AItem.GetFullName( False ) = APinName ) or ( AItem.GetFullName( True ) = APinName )) then
          Exit( True );

      end;

  finally
    GlobalStorageSection.Leave();
    end;

  AResult := NIL;
  Result := False;
end;
}
//---------------------------------------------------------------------------
constructor TOWUnloadedPinList.CreateObject();
begin
  inherited Create( True );
  FDictionary := TDictionary<String,TOWUnloadedPin>.Create();
end;
//---------------------------------------------------------------------------
class function TOWUnloadedPinList.Make() : IOWUnloadedPinList;
begin
  Result := CreateObject();
end;
//---------------------------------------------------------------------------
function TOWUnloadedPinList.Add( ARoot : TComponent; const AItem : TOWUnloadedPin ) : IArrayList<TOWUnloadedPin>;
begin
  Result := Self; // Keep alive!
  for var I := 0 to FSize - 1 do
    if( FArray[ I ] = AItem ) then
      Exit;

  inherited Add( AItem );
  var ANoRootName := AItem.GetFullIdentNameInt( False, False );
  FDictionary[ ANoRootName ] := AItem;
  var AFullName := AItem.GetFullIdentNameInt( True, False );
  FDictionary[ AFullName ] := AItem;
  GlobalStorageSection.Enter();
  try
    if( GRootAliasDictionary <> NIL ) then
      if( ARoot <> NIL ) then
        begin
        var ARootName := ARoot.Name;
        ANoRootName := '.' + ANoRootName;
        var AList : ILinkedList<String>;
        if( GRootAliasDictionary.GetValue( ARootName, AList )) then
          begin
          FDictionary[ ARootName + ANoRootName ] := AItem;
          for var ARootItem in AList do
            FDictionary[ ARootItem + ANoRootName ] := AItem;

          end;
        end;

  finally
    GlobalStorageSection.Leave();
    end;

end;
//---------------------------------------------------------------------------
{
function TOWUnloadedPinList.RemoveNoList( APin : TOWUnloadedPin ) : Boolean;
begin
  if( not inherited ) then
    Exit( False );

  FDictionary.RemoveAll(
      function( const AKey : String; const AValue : TOWUnloadedPin ) : Boolean
      begin
        Result := ( AValue = APin );
      end
    );

  Result := True;
end;
}
//---------------------------------------------------------------------------
function TOWUnloadedPinList.RemoveOne( const AItem : TOWUnloadedPin ) : Integer;
begin
  Result := inherited;
  if( Result >= 0 ) then
    FDictionary.RemoveAll(
        function( const AKey : String; const AValue : TOWUnloadedPin ) : Boolean
        begin
          Result := ( AValue = AItem );
        end
      );

end;
//---------------------------------------------------------------------------
function TOWUnloadedPinList.Delete( AIndex : Integer ) : IArrayList<TOWUnloadedPin>;
begin
  var AItem := Self[ AIndex ];
  FDictionary.RemoveAll(
      function( const AKey : String; const AValue : TOWUnloadedPin ) : Boolean
      begin
        Result := ( AValue = AItem );
      end
    );

  Result := inherited;
end;
//---------------------------------------------------------------------------
function TOWUnloadedPinList.GetByIdentName( ARoot : TComponent; const APinName : String; out AResult : TOWUnloadedPin ) : Boolean;
begin
  GlobalStorageSection.Enter();
  try
    if( FDictionary.GetValue( APinName, AResult ) ) then
      Exit( True );

  finally
    GlobalStorageSection.Leave();
    end;

  AResult := NIL;
  Result := False;
end;
//---------------------------------------------------------------------------
function TOWUnloadedPinList.Contains( APin : TOWUnloadedPin ) : Boolean;
begin
  for var I : Integer := 0 to FSize - 1 do
    if( FArray[ I ] = APin ) then
      Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
(*
procedure TOWUnloadedPinList.Notify( const Value : TOWUnloadedPin; Action : TCollectionNotification );
begin
  inherited;
  if( Action = TCollectionNotification.cnAdded ) then
    begin
{
    if( FDictionary.ContainsKey( Value.GetFullIdentNameInt( False ) )) then
      begin
      var ATest1 := '';
      ATest1 := ATest1 + '"';
      end

    else if( FDictionary.ContainsKey( Value.GetFullIdentNameInt( True ) )) then
      begin
      var ATest1 := '';
      ATest1 := ATest1 + '"';
      end;
}
    FDictionary[ Value.GetFullIdentNameInt( False ) ] := Value;
    FDictionary[ Value.GetFullIdentNameInt( True ) ] := Value;
    end

  else if( Action = TCollectionNotification.cnRemoved ) then
    begin
    FDictionary.RemoveAll(
        function( const AKey : String; const AValue : TOWUnloadedPin ) : Boolean
        begin
          Result := ( AValue = Value );
        end
      );

    end;

end;
*)
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
function TOWFormatConverter.SourceOperationEvent( ASender : TOWBasicPin; AOtherPin : TOWBasicPin; const ADataTypeID : TGUID; const AOperation : IOWNotifyOperation; AState : TOWNotifyState ) : TOWNotifyResult;
begin
  Result := FInputPin.Notify( AOperation );
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
  if( Result = 0 ) then
    Destroy();

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWPinProxy.SetPinName( const AName : String );
begin
  GetPin().FOverrideName := AName;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
destructor TOWBasicPinProxy.Destroy();
begin
{$IFDEF RX12_0_Up}
  FPin.Free();
{$ELSE}
  FPin.DisposeOf();
{$ENDIF}
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
procedure TOWPinListProxy.SetPinListName( const AName : String );
begin
  GetPinList().FOverrideName := AName;
end;
//---------------------------------------------------------------------------
function TOWPinListProxy.CreatePinProxy( const AProxyClassName : String; const APinName : String ) : TOWPinProxy;
begin
  var AClass := TOWPinProxyClass( System.Classes.GetClass( AProxyClassName ));
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
{$IFDEF RX12_0_Up}
  FPinList.Free();
{$ELSE}
  FPinList.DisposeOf();
{$ENDIF}
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
constructor TOWInternalPinList.CreateObject();
begin
  inherited Create( False );
  FDictionary := TDictionary<TComponent, ILinkedList<TOWBasicPin>>.Create();
end;
//---------------------------------------------------------------------------
class function TOWInternalPinList.Make() : IOWInternalPinList;
begin
  Result := CreateObject();
end;
//---------------------------------------------------------------------------
function TOWInternalPinList.GetByNameCreate( ARoot : TComponent; ACheckLoadIndex : Boolean; AType : TOWPinType; const APinIdentName : String; const APinDisplayName : String; const ACreatedFrom : String ) : TOWBasicPin;
begin
  if( APinIdentName = '' ) then
    Exit( NIL );

  if( GetByIdentName( ARoot, APinIdentName, Result )) then
    begin
    var AOwner := Result.Owner;
    if( AOwner <> NIL ) then
      if( csLoading in AOwner.ComponentState ) then
        Exit;

    if( not ACheckLoadIndex ) then
      Exit;

    if(( Result.GetFullIdentName( False, True ) = APinIdentName ) or ( Result.GetFullIdentName( True, True ) = APinIdentName )) then
      Exit;

    end;

  var AUnloadedPin : TOWUnloadedPin;
  if( GOWUnloadedPins[ ACheckLoadIndex ].GetByIdentName( ARoot, APinIdentName, AUnloadedPin )) then
    Exit( AUnloadedPin );

//    else
//    if( not GetByDisplayName( ARoot, APinDisplayName, Result ) ) then // Do not search for display name to avoid pickig wrong pin when names match
  if( csLoading in ARoot.ComponentState ) then
    Exit( TOWUnloadedPin.Create( ARoot, ACheckLoadIndex, AType, APinIdentName, APinDisplayName, ACreatedFrom ) );

  Result := TOWUnloadedPastePin.Create( ARoot, ACheckLoadIndex, AType, APinIdentName, APinDisplayName, ACreatedFrom );
end;
//---------------------------------------------------------------------------
function TOWInternalPinList.InternalGetByIdentName( ARoot : TComponent; const APinName : String; out AResult : TOWBasicPin ) : Boolean;

  function MatchesRootName( const ARootIdent : String ) : Boolean;
  begin
    var ARootName := ARoot.Name;
    if( ARootName = ARootIdent ) then
      Exit( True );

    GlobalStorageSection.Enter();
    try
      if( GRootAliasDictionary <> NIL ) then
        begin
        var AList : ILinkedList<String>;
        if( GRootAliasDictionary.GetValue( ARootName, AList )) then
          for var AItem in AList do
            if( AItem = ARootIdent ) then
              Exit( True );

        end;

    finally
      GlobalStorageSection.Leave();
      end;

    Result := False;
  end;

begin
//EXIT( False );
  var AIdents := APinName.Split( [ '.' ] );
  if( Length( AIdents ) > 0 ) then
    begin
    var APinRootItem : IOWRootListItem := NIL;
//    var APinRoot := ARoot;
    var ARootIdent := AIdents[ 0 ];
    if( MatchesRootName( ARootIdent )) then
      begin
      System.Delete( AIdents, 0, 1 );
      for var ARootItem in GOWRootList do
        if( ARootItem.GetComponent() = ARoot ) then
          begin
          APinRootItem := ARootItem;
          Break;
          end;

      end

    else
      for var ARootItem in GOWRootList do
        begin
        var ARootComponent := ARootItem.GetComponent();
        if( ARootComponent.Name = ARootIdent ) then
          begin
  //        APinRoot := ARootComponent;
          APinRootItem := ARootItem;
          System.Delete( AIdents, 0, 1 );
          Break;
          end;

        if( ARootComponent = ARoot ) then
          APinRootItem := ARootItem;

        end;

    if( APinRootItem <> NIL ) then
      if( Length( AIdents ) > 0 ) then
        begin
        var AComponentName := AIdents[ 0 ];
        for var AComponentItem in APinRootItem.GetComponentsList() do
          if( AComponentItem.GetComponent().Name = AComponentName ) then
            begin
            System.Delete( AIdents, 0, 1 );
            var APinSubName := String.Join( '.', AIdents );
            if( csLoading in ARoot.ComponentState ) then
              begin
              if( AComponentItem.GetLoadPinsDictionary().GetValue( APinSubName, AResult )) then
                Exit( True );

              end

            else
              begin
              if( AComponentItem.GetPinsDictionary().GetValue( APinSubName, AResult )) then
                Exit( True );

              end;

            Break;
            end;

        end;

    end;

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWInternalPinList.GetByIdentName( ARoot : TComponent; const APinName : String; out AResult : TOWBasicPin ) : Boolean;
begin
  GlobalStorageSection.Enter();
  try
    if( InternalGetByIdentName( ARoot, APinName, AResult )) then
      Exit( True );

  finally
    GlobalStorageSection.Leave();
    end;

  AResult := NIL;
  Result := False;
end;
//---------------------------------------------------------------------------
function TOWInternalPinList.GetRootPinsList( ARoot : TComponent ) : ILinkedList<TOWBasicPin>;
begin
  GlobalStorageSection.Enter();
  try
    if( not FDictionary.GetValue( ARoot, Result )) then
      Exit( TObjectLinkedList<TOWBasicPin>.Create() );

  finally
    GlobalStorageSection.Leave();
    end;

end;
//---------------------------------------------------------------------------
function TOWInternalPinList.Add( const AItem : TOWBasicPin; ACount : Cardinal = 1 ) : IArrayList<TOWBasicPin>;
begin
  FDictionary.GetOrAddValue( AItem.GetRoot(),
      function() : ILinkedList<TOWBasicPin>
      begin
        Result := TObjectLinkedList<TOWBasicPin>.Create();
      end
    ).AddFirst( AItem );

  Result := inherited;
end;
//---------------------------------------------------------------------------
function TOWInternalPinList.RemoveOne( const AItem : TOWBasicPin ) : Integer;
var
  AList : ILinkedList<TOWBasicPin>;

begin
  var ARoot := AItem.GetRoot();
  if( FDictionary.GetValue( ARoot, AList )) then
    begin
    AList.RemoveOne( AItem );
    if( AList.Count = 0 ) then
      FDictionary.Remove( ARoot );

    end;

  Result := inherited;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function OWDispatchers( ADesignTime : Boolean ) : IOWStateDispatcherList;
begin
  if( ADesignTime ) then
    Exit( GDesignDispatchers );

  Result := GRunDispatchers;
end;
//---------------------------------------------------------------------------
function OWGetSubObject( AObject : TObject; const AObjectName : String ) : TObject;
begin
  if( AObject = NIL ) then
    Exit( NIL );

  var AProperty : ISinglePropertyInfo;
  if( AObject.TypeInfo().GetSingleProperty( AObjectName, AProperty )) then
    if( AProperty.Visibility in [ mvPublic, mvPublished ] ) then
      if( AProperty.TypeInfo.TypeKind = tkClass ) then
        Exit( AProperty.GetValue( AObject ).AsObject() );

{
  for var AProperty in AObject.TypeInfo().GetSingleProperties( [ mvPublic, mvPublished ], [ tkClass ] ) do
    if( AProperty.Name = AObjectName ) then
      Exit( AProperty.GetValue( AObject ).AsObject() );
}
  Exit( NIL );
end;
//---------------------------------------------------------------------------
function OWGetPropValue( AInstance : TObject; const APropName : String; APreferStrings : Boolean; out AResult : TValue ) : Boolean;
begin
  var AName : String;
  var ADisplayName : String;
  Result := OWGetPropValueAndRealName( AInstance, APropName, APreferStrings, AName, ADisplayName, AResult );
end;
//---------------------------------------------------------------------------
function OWGetPropValueAndRealName( AInstance : TObject; const APropName : String; APreferStrings : Boolean; out AName : String; var ADisplayName : String; out AResult : TValue ) : Boolean;

  function GetPropValue( AInstance : TObject; const APropName : String; out AName : String; out AResult : TValue ) : Boolean;
  begin
    var AMember : IMemberInfo;

    if( AInstance.TypeInfo().GetMember( APropName, AMember )) then
      begin
      var AProperty : ISinglePropertyInfo;
      if( Supports( AMember, ISinglePropertyInfo, AProperty )) then
        if( AProperty.Visibility in [ mvPublic, mvPublished ] ) then
          begin
          AName := AMember.Name;
          AResult := AProperty.GetValue( AInstance );
          Exit( True );
          end;

      var AMethod : IMethodInfo;
      if( Supports( AMember, IMethodInfo, AMethod )) then
        begin
        if( AMethod.TypeInfo = NIL ) then
          begin
          AResult := TValue.Empty;
          Exit( False );
          end;

        AName := AMethod.Name;
        AResult := AMethod.Invoke( AInstance, [] );
        Exit( True );
        end;
      end;

    AResult := TValue.Empty;
    Exit( False );
  end;

  function GetSubProperty( ASubObject : TObject; ASubPropName : String; out AResult : TValue ) : Boolean;
  var
    APersistentCollection : IPersistentCollection;

  begin
    if( ASubObject is TCollection ) then
      begin
      var ACollection := TCollection( ASubObject );
      if( ASubPropName.StartsWith( '*._' )) then
        Delete( ASubPropName, 1, 2 );

      var ASubPos := Pos( '.', ASubPropName );
      if( ASubPos <= 0 ) then
        begin
        var AIndexStr := ASubPropName;
        if( AIndexStr.StartsWith( '_' )) then
          Delete( AIndexStr, 1, 1 );

        var AIndex := StrToIntDef( AIndexStr, 0 );
        if( AIndex >= ACollection.Count ) then
          begin
          AResult := NIL;
          Exit( False );
          end;

        AResult := ACollection.Items[ AIndex ];
        Exit( True );
        end

      else
        begin
        var AIndexStr := LeftStr( ASubPropName, ASubPos - 1 );
        if( AIndexStr.StartsWith( '_' )) then
          Delete( AIndexStr, 1, 1 );

        var ASubSubProp := MidStr( ASubPropName, ASubPos + 1, 200000 );
        if( ASubSubProp <> '' ) then
          begin
          var AIndex := StrToIntDef( AIndexStr, 0 );
          Exit( OWGetPropValue( ACollection.Items[ AIndex ], ASubSubProp, APreferStrings, AResult ));
          end;
        end;
      end

    else if( ASubObject is TStrings ) then
      begin
      var AStrings := TStrings( ASubObject );
      Delete( ASubPropName, 1, 1 );
      var AIndex := StrToIntDef( ASubPropName, 0 );
      if( AIndex < AStrings.Count ) then
        begin
        AResult := AStrings[ AIndex ];
        Exit( True );
        end;

      AResult := '';
      Exit( False );
      end

    else if( ASubObject.IfSupports<IPersistentCollection>( APersistentCollection )) then
      begin
      if( ASubPropName.StartsWith( '*._' )) then
        Delete( ASubPropName, 1, 2 )

      else if( ASubPropName.StartsWith( 'Items._' )) then
        Delete( ASubPropName, 1, 6 );

      var ASubPos := Pos( '.', ASubPropName );
      if( ASubPos <= 0 ) then
        begin
        var AIndexStr := ASubPropName;
        if( AIndexStr.StartsWith( 'Items._' )) then
          Delete( AIndexStr, 1, 7 )

        else if( AIndexStr.StartsWith( '*._' )) then
          Delete( AIndexStr, 1, 3 )

        else if( AIndexStr.StartsWith( '_Item' )) then
          Delete( AIndexStr, 1, 5 )

        else if( AIndexStr.StartsWith( '_' )) then
          Delete( AIndexStr, 1, 1 );

        var AIndex := StrToIntDef( AIndexStr, 0 );
        AIndex := GetLoadIndexRemapping( ASubObject, AIndex );
        if( AIndex >= APersistentCollection.Count ) then
          begin
          AResult := NIL;
          Exit( False );
          end;

        AResult := APersistentCollection.Items[ AIndex ];
        ADisplayName := APersistentCollection.Names[ AIndex ];
        AName := '*._' + AIndex.ToString();
        Exit( True );
        end

      else
        begin
        var AIndexStr := LeftStr( ASubPropName, ASubPos - 1 );
        if( AIndexStr.StartsWith( '_Item' )) then
          Delete( AIndexStr, 1, 5 )

        else if( AIndexStr.StartsWith( '_' )) then
          Delete( AIndexStr, 1, 1 );

        var ASubSubProp := MidStr( ASubPropName, ASubPos + 1, 200000 );
        if( ASubSubProp <> '' ) then
          begin
          var AIndex := StrToIntDef( AIndexStr, 0 );
          if( AIndex < APersistentCollection.Count ) then
            Exit( OWGetPropValue( APersistentCollection.Items[ AIndex ], ASubSubProp, APreferStrings, AResult ));

          AResult := ASubObject; //APersistentCollection );
          Exit( True );
          end;
        end;
      end;

    Exit( OWGetPropValue( ASubObject, ASubPropName, APreferStrings, AResult ));
  end;

begin
  AName := APropName;
  var AStartIndex := 0;
  if( APropName.StartsWith( '*._' )) then
    AStartIndex := 2;

  var APos := APropName.IndexOf( '.', AStartIndex );
  if( APos >= 0 ) then
    begin
    var AObjectName := LeftStr( APropName, APos );
    var ASubPropName := MidStr( APropName, APos + 2, 200000 );

    var ASubObject := OWGetSubObject( AInstance, AObjectName );
    Exit( GetSubProperty( ASubObject, ASubPropName, AResult ));
{
    if( ASubObject is TCollection ) then
      begin
      ACollection := TCollection( ASubObject );
      ASubPos := Pos( '.', ASubPropName );
      if( ASubPos <= 0 ) then
        begin
        AIndexStr := ASubPropName;
        if( AIndexStr.StartsWith( '_' )) then
          Delete( AIndexStr, 1, 1 );

        AIndex := StrToIntDef( AIndexStr, 0 );
        Exit( ACollection.Items[ AIndex ] );
        end

      else
        begin
        AIndexStr := LeftStr( ASubPropName, ASubPos - 1 );
        if( AIndexStr.StartsWith( '_' )) then
          Delete( AIndexStr, 1, 1 );

        ASubSubProp := MidStr( ASubPropName, ASubPos + 1, 200000 );
        if( ASubSubProp <> '' ) then
          begin
          AIndex := StrToIntDef( AIndexStr, 0 );
          Exit( OWGetPropValue( ACollection.Items[ AIndex ], ASubSubProp, APreferStrings ));
          end;
        end;
      end

    else if( ASubObject is TStrings ) then
      begin
      AStrings := TStrings( ASubObject );
      Delete( ASubPropName, 1, 1 );
      AIndex := StrToIntDef( ASubPropName, 0 );
      if( AIndex < AStrings.Count ) then
        Exit( AStrings[ AIndex ] );

      Exit( '' );
      end

    else if( ASubObject is TPersistentCollection ) then
      begin
      APersistentCollection := TPersistentCollection( ASubObject );
      if( ASubPropName.StartsWith( '*._' )) then
        Delete( ASubPropName, 1, 2 )

      else if( ASubPropName.StartsWith( 'Items._' )) then
        Delete( ASubPropName, 1, 6 );

      ASubPos := Pos( '.', ASubPropName );
      if( ASubPos <= 0 ) then
        begin
        AIndexStr := ASubPropName;
        if( AIndexStr.StartsWith( 'Items._' )) then
          Delete( AIndexStr, 1, 7 )

        else if( AIndexStr.StartsWith( '*._' )) then
          Delete( AIndexStr, 1, 3 )

        else if( AIndexStr.StartsWith( '_Item' )) then
          Delete( AIndexStr, 1, 5 )

        else if( AIndexStr.StartsWith( '_' )) then
          Delete( AIndexStr, 1, 1 );

        AIndex := StrToIntDef( AIndexStr, 0 );
        if( AIndex >= APersistentCollection.Count ) then
          Exit( NIL );

        Exit( APersistentCollection.Items[ AIndex ] );
        end

      else
        begin
        AIndexStr := LeftStr( ASubPropName, ASubPos - 1 );
        if( AIndexStr.StartsWith( '_Item' )) then
          Delete( AIndexStr, 1, 5 )

        else if( AIndexStr.StartsWith( '_' )) then
          Delete( AIndexStr, 1, 1 );

        ASubSubProp := MidStr( ASubPropName, ASubPos + 1, 200000 );
        if( ASubSubProp <> '' ) then
          begin
          AIndex := StrToIntDef( AIndexStr, 0 );
          if( AIndex < APersistentCollection.Count ) then
            Exit( OWGetPropValue( APersistentCollection.Items[ AIndex ], ASubSubProp, APreferStrings ));

          Exit( APersistentCollection );
          end;
        end;
      end;

    Exit( OWGetPropValue( ASubObject, ASubPropName, APreferStrings ));
}
    end

  else if( AInstance = NIL ) then
    begin
    AResult := TValue.Empty;
    Exit( False )
    end

  else if( AStartIndex > 0 ) then
    Exit( GetSubProperty( AInstance, APropName, AResult ));

  Result := GetPropValue( AInstance, APropName, AName, AResult );
end;
//---------------------------------------------------------------------------
procedure OWInitGlobals();
begin
  if( GLoaded ) then
    Exit;

  GComponentDestroyNotify := RegisterComponentRemovedNotify( OWRemoveComponentFromDictionaries );

  Mitov.ClassManagement.InitializationSection();
  OpenWire.TypeConverters.TypeConvertersInitGlobals();

  GlobalStorageSection := Mitov.Threading.TCriticalSection.Create();
  GLoaded := True;
  GOWNotifySection := Mitov.Threading.TCriticalSection.Create();
  GOWNotifyList := TInterfaceLinkedList<IOWPinNotifier>.Create();
  GOWStreamTypes := TObjectOwnerDictionary<TGUID, TOWStreamTypeEntry>.Create();

  GOWNullEntry := TOWStreamTypeEntry.Create( GUID_NULL );
  GOWNullEntry.FIsCoreInterfaceCached := True;

  // State pins support
  GDesignDispatchers := TOWStateDispatcherList.Create();
  GRunDispatchers := TOWStateDispatcherList.Create();
  GOWPins := TOWInternalPinList.Make();
  GOWRootList := TInterfaceArrayList<IOWRootListItem>.Create();
  GOWPinLists := TObjectArrayList<TOWBasicPinList>.Create();
  GOWUnloadedPins[ False ] := TOWUnloadedPinList.CreateObject();
  GOWUnloadedPins[ True ] := TOWUnloadedPinList.CreateObject();

  TClassManagement.RegisterSupressedAssign(
      function( AFromObject : TObject; AToObject : TObject ) : Boolean
      begin
        Result := ( AToObject is TOWObject );
      end
    );

  GPinObjectTypeInfo := TOWObject.ClassTypeInfo();
  GBasicPinTypeInfo := TOWBasicPin.ClassTypeInfo();
  GPinTypeInfo := TOWPin.ClassTypeInfo();
  GPinListTypeInfo  := TOWPinList.ClassTypeInfo();
  GPinListOwnerTypeInfo := TOWPinListOwner.ClassTypeInfo();

  GBasicSinkPinTypeInfo := TOWBasicSinkPin.ClassTypeInfo();
  GSinkPinTypeInfo := TOWSinkPin.ClassTypeInfo();
  GMultiSinkPinTypeInfo := TOWMultiSinkPin.ClassTypeInfo();
  GSourcePinTypeInfo := TOWSourcePin.ClassTypeInfo();
  GPinTypeObjectTypeInfo := TOWPinTypeObject.ClassTypeInfo();

  TClassManagement.RegisterBeforeDestructionFirst(
      GBasicSinkPinTypeInfo
    ,
      procedure( const AInstance : TObject; const AClass : TClass; const AMember : IValueMemberInfo )
      begin
        var APin := AMember.Value[ AInstance ].AsType<TOWBasicPin>();
        if( APin <> NIL ) then
          APin.Disconnect();

      end
    );

  TClassManagement.RegisterBeforeDestructionFirst(
      GPinListTypeInfo
    ,
      procedure( const AInstance : TObject; const AClass : TClass; const AMember : IValueMemberInfo )
      begin
        var APinList := AMember.Value[ AInstance ].AsType<TOWPinList>();
        if( APinList <> NIL ) then
          for var APin in APinList do
            if( APin is TOWBasicSinkPin ) then
              APin.Disconnect();

      end
    );

  TClassManagement.RegisterBeforeDestructionSecond(
      GBasicPinTypeInfo
    ,
      procedure( const AInstance : TObject; const AClass : TClass; const AMember : IValueMemberInfo )
      begin
        var APin := AMember.Value[ AInstance ].AsType<TOWBasicPin>();
        if( APin <> NIL ) then
          APin.Disconnect();

      end
    );

  TClassManagement.RegisterBeforeDestructionSecond(
      GPinListTypeInfo
    ,
      procedure( const AInstance : TObject; const AClass : TClass; const AMember : IValueMemberInfo )
      begin
        var APinList := AMember.Value[ AInstance ].AsType<TOWPinList>();
        if( APinList <> NIL ) then
          APinList.Disconnect();

      end
    );

  TClassManagement.RegisterDestruction(
      GPinTypeObjectTypeInfo
    ,
      procedure( const AInstance : TObject; const AClass : TClass; const AMember : IValueMemberInfo; const ADelayMembersList : ILinkedList<IValueMemberInfo> )
      begin
        ADelayMembersList.Add( AMember );
      end
    );

  TClassManagement.RegisterGetPropertyElementsForClass(
      function ( AClassType : TClass; APropertyObject : TObject; APinObject : TObject; const AName : String; const AResult : IPropertyElements; var ADoBreak : Boolean ) : Boolean
      begin
        if( APropertyObject is TOWPinList ) then
          begin
          ADoBreak := False;
          var APinList := TOWPinList( APropertyObject );
          for var APinIndex : Integer := 0 to APinList.Count - 1 do
            begin
            var APin := APinList.Pins[ APinIndex ];
            if( TClassManagement.IsDescendantOf( APin, AClassType )) then
              if( APin = APinObject ) then
                begin
                AResult.Add( TPropertyElement.Create( APinList, AName )); // String(APropList[ I ].Name) ));
                AResult.Add( TPropertyElement.Create( TOWBasicPin( APinObject ), APinList.Names[ APinIndex ] ) );
                ADoBreak := True;
                Break;
                end;

            end;

          Exit( True );
          end;

      Result := False;
      end
    );

  GObjectInUseGetter := RegisterObjectInUseGetter( OWHasConnectedPins );
  GSerializationLoadingEnd := RegisterSerializationLoadingAllEnd(
      procedure()
      begin
        OWClearLoadingMaps();
        OWInvalidateCaches( NIL );
        OWClearPendingPasteLinks();
      end
    );

end;
//---------------------------------------------------------------------------
procedure GOWUninitGlobals();
begin
  if( not GLoaded ) then
    Exit;

  UnregisterComponentRemovedNotify( GComponentDestroyNotify );
  UnregisterSerializationLoadingAllEnd( GSerializationLoadingEnd );
  UnregisterObjectInUseGetter( GObjectInUseGetter );

  GUnloading := True;

  GOWUnloadedPins[ False ] := NIL;
  GOWUnloadedPins[ True ] := NIL;
  GOWPins := NIL;
  GOWRootList := NIL;

  FreeAndNil( GOWNullEntry );

  GLoaded := False;
end;
//---------------------------------------------------------------------------
procedure GModuleUnloadProc( AHInstance : NativeInt );
begin
  GPendingExtensions.Clear();
  GOWStreamTypes.RemoveAll(
      function( const AKey : TGUID; const AEntry : TOWStreamTypeEntry ) : Boolean
      begin
        AEntry.Extentions.RemoveAll(
            function( const AKey : TGUID; const AExtention : IOWStreamInfoExtention ) : Boolean
            begin
              Result := AExtention.IsInModule( AHInstance );
            end
          );

        Result := ( NativeInt( FindHInstance( @AEntry.SendFunction )) = AHInstance );
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
