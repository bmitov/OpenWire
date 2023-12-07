////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//     This software is supplied under the terms of a license agreement or    //
//     nondisclosure agreement with Mitov Software and may not be copied      //
//     or disclosed except in accordance with the terms of that agreement.    //
//         Copyright(c) 2002-2023 Mitov Software. All Rights Reserved.        //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

unit OpenWirePinEditors;

interface

uses
  WinApi.Windows, DesignEditors, DesignIntf, System.TypInfo,
  WinApi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, OWPins, Vcl.ExtCtrls,
  OWDesignTypes, Mitov.Delphi.PropertyEditors, System.ImageList, Mitov.Containers.List,
  Mitov.BasicOKCancelFormUnit, Vcl.VirtualImageList, Vcl.BaseImageCollection,
  Vcl.ImageCollection, Mitov.Containers.Common;

type
//---------------------------------------------------------------------------
  TOWEItemEntry = class( TBasicObject )
    protected
      FPin                : TOWBasicPin;
      FConnectedToPin     : TOWBasicPin;
      FConnectedAfterPin  : TOWBasicPin;
      FItem               : TListItem;

    protected
      procedure SetConnectedToPin( AValue : TOWBasicPin );
      procedure SetConnectedAfterPin( AValue : TOWBasicPin );

    public
      procedure Populate();

    public
      IsDispatcher    : Boolean;
      StateIndex      : Integer;

      PinConnectIdent : String;
      PinConnectName  : String;

    public
      constructor Create( AItem : TListItem; APin : TOWBasicPin );

    public
      property ConnectedToPin : TOWBasicPin     read FConnectedToPin    write SetConnectedToPin;
      property ConnectedAfterPin : TOWBasicPin  read FConnectedAfterPin write SetConnectedAfterPin;

  end;
//---------------------------------------------------------------------------
type
  TOWPinEditorForm = class( TMitov_BasicOKCancelForm )
    ImageList1: TImageList;
    SourcesImageList: TImageList;
    SinksImageList: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    ListView: TListView;
    Panel4: TPanel;
    Label1: TLabel;
    FormsComboBox: TComboBox;
    Panel5: TPanel;
    LinksCountLabel: TLabel;
    StaticLabel: TLabel;
    AllPinsCheckBox: TCheckBox;
    TabSheet2: TTabSheet;
    DataTypesListView: TListView;
    AboutPanel: TPanel;
    Image1: TImage;
    RestoreButton: TButton;
    LinkAllButton: TButton;
    UnlinkAllButton: TButton;
    AfterPinButton: TButton;
    ImageCollection: TImageCollection;
    VirtualImageList: TVirtualImageList;
    procedure LinkAllButtonClick(Sender: TObject);
    procedure UnlinkAllButtonClick(Sender: TObject);
    procedure RestoreButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListViewChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure ListViewColumnClick(Sender: TObject; Column: TListColumn);
    procedure FormCreate(Sender: TObject);
    procedure ListViewCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure FormsComboBoxChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ListViewMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ListViewKeyPress(Sender: TObject; var Key: Char);
    procedure ListViewDeletion(Sender: TObject; Item: TListItem);
    procedure AfterPinButtonClick(Sender: TObject);
    procedure DataTypesListViewColumnClick(Sender: TObject;
      Column: TListColumn);
  private
    procedure PopulateDataTypes();
    procedure UpdateLinksCount();
    procedure PopulateAll();
    procedure PopulateAllEntries();
    procedure PopulateForm( ARootComponent : TComponent );

    procedure PopulateSingleForm( ACurrentRoot : TComponent; ARootComponent : TComponent; AOnlyConnected : Boolean; AFullPath : Boolean; AFilterPins : Boolean );
    procedure PopulateSingleFormEntries( ACurrentRoot : TComponent; ARootComponent : TComponent; AFullPath : Boolean; AFilterPins : Boolean );

    procedure PopulateSingleFormInt( ACurrentRoot : TComponent; ARootComponent : TComponent; AOnlyConnected : Boolean; AFullPath : Boolean; AFilterPins : Boolean );

    procedure FillFormsInfo();
    function  RootFromName( const ARootName : String ) : TComponent;
    
    function  EntryFromPin( APin : TOWBasicPin ) : TOWEPinEntry;
    function  EntryFromDispatcher( ADispatcher : TOWBasicStateDispatcher ) : TOWEPinEntry;
    procedure ChangeState( AItem : TListItem );

  private
    FDesigner     : IDesigner;
    FSourcePin    : TOWSourcePin;
    FSinkPin      : TOWSinkPin;
    FMultiSinkPin : TOWMultiSinkPin;
    FPin          : TOWPin;
    FRoot         : TComponent;
    FPinsList     : IObjectOwnerArrayList<TOWEPinEntry>;
    FListUpdating : Boolean;

  public
    function ExecuteForSource( const ADesigner : IDesigner; ASourcePin : TOWSourcePin ) : Integer;
    function ExecuteForSink( const ADesigner : IDesigner; ASinkPin : TOWSinkPin ) : Integer;
    function ExecuteForMultiSink( const ADesigner : IDesigner; AMultiSinkPin : TOWMultiSinkPin ) : Integer;

  private
    FColumnToSort         : Integer;
    FDataTypeColumnToSort : Integer;
    FDirection            : Boolean;
    FAllSelected          : Boolean;

  public
    function  GetListItems() : TListItems;
    procedure ClearData();

  public
    property Items : TListItems read GetListItems;
    
  end;
//---------------------------------------------------------------------------
type
  TOWBasicPropertyEditor = class( TPropertyEditor )
  protected
    function GetIntDesigner() : IDesigner;

  end;
//---------------------------------------------------------------------------
  TOWBasicPinPropertyEditor = class( TOWBasicPropertyEditor )
  protected
    function  GetPin() : TOWPin;

  public
    function  GetValue() : String; override;
    procedure SetValue( const AValue : String ); override;
    function  GetIsDefault() : Boolean; override;

  end;
//---------------------------------------------------------------------------
  TOWPinListPropertyEditor = class( TOWBasicPropertyEditor )
  public
    function  GetAttributes(): TPropertyAttributes; override;
    function  GetValue(): String; override;
    procedure GetProperties( AProc : TGetPropProc ); override;

  public
    procedure CheckRefresh();
    
  end;
//---------------------------------------------------------------------------
  TOWPinListOwnerPropertyEditor = class(TOWPinListPropertyEditor)
  public
    function  GetAttributes(): TPropertyAttributes; override;
    function  GetValue(): String; override;
    procedure SetValue( const AValue : String ); override;

  end;
//---------------------------------------------------------------------------
  TOWSourcePinPropertyEditor = class(TOWBasicPinPropertyEditor)
  public
    function  GetAttributes() : TPropertyAttributes; override;
    procedure Edit(); override;

  end;
//---------------------------------------------------------------------------
  TOWStatePinPropertyEditor = class(TOWBasicPinPropertyEditor)
  public
    function  GetAttributes() : TPropertyAttributes; override;
    procedure Edit() ; override;

  end;
//---------------------------------------------------------------------------
  TOWBasicPinListPropertyEditor = class( TDelphiClassPropertyEditor )
  protected
    function  GetEditValue( out AValue : String ): Boolean; override;

  protected
    FName           : String;
    FPin            : TOWBasicPin;
    FPinListEditor  : TOWPinListPropertyEditor;

  protected
    function GetIntDesigner() : IDesigner;

  public
    function  GetName() : String; override;

    procedure SetValue( const AValue : String ); override;
    function  GetValue() : String; override;

  public
    function  GetPin() : TOWBasicPin;

  public
    constructor CreateEx( const ADesigner : IDesigner; APin : TOWBasicPin; const AName : String; APinListEditor : TOWPinListPropertyEditor );
    destructor  Destroy(); override;
    
  end;
//---------------------------------------------------------------------------
  TOWSinkPinPropertyEditor = class(TOWBasicPinPropertyEditor)
  public
    function  GetAttributes() : TPropertyAttributes; override;
    procedure GetValues( AProc : TGetStrProc ); override;
    procedure Edit(); override;

  end;
//---------------------------------------------------------------------------
  TOWMultiSinkPinPropertyEditor = class(TOWBasicPinPropertyEditor)
  public
    function  GetAttributes() : TPropertyAttributes; override;
    procedure Edit(); override;

  end;
//---------------------------------------------------------------------------
  TOWSourcePinListPropertyEditor = class(TOWBasicPinListPropertyEditor)
  public
    function  GetPropType() : PTypeInfo; override;
    function  GetAttributes() : TPropertyAttributes; override;
    procedure Edit(); override;

  end;
//---------------------------------------------------------------------------
  TOWSinkPinListPropertyEditor = class( TOWBasicPinListPropertyEditor )
  public
    function  GetPropType() : PTypeInfo; override;
    function  GetAttributes() : TPropertyAttributes; override;
    procedure GetValues( AProc : TGetStrProc ); override;
    procedure Edit(); override;

  end;
//---------------------------------------------------------------------------
  TOWMultiSinkPinListPropertyEditor = class(TOWBasicPinListPropertyEditor)
  public
    function  GetPropType() : PTypeInfo; override;
    function  GetAttributes() : TPropertyAttributes; override;
    procedure Edit(); override;

  end;
//---------------------------------------------------------------------------
  TOWStatePinListPropertyEditor = class(TOWBasicPinListPropertyEditor)
  public
    function  GetPropType() : PTypeInfo; override;
    function  GetAttributes() : TPropertyAttributes; override;
    procedure Edit(); override;

  end;
//---------------------------------------------------------------------------
function  OWGetPinValue( APin : TOWBasicPin; const ADesigner : IDesigner ) : String;
function  OWSetPinValue( ARoot : TComponent; APin : TOWBasicPin; const AValue: String ) : Boolean;
function  OWSourcePinEdit( const ADesigner : IDesigner; ASourcePin : TOWSourcePin ) : Boolean;
function  OWSinkPinEdit( const ADesigner : IDesigner; ASinkPin : TOWSinkPin ) : Boolean;
function  OWMultiSinkPinEdit( const ADesigner : IDesigner; AMultiSinkPin : TOWMultiSinkPin ) : Boolean;
procedure OWGetSinkPinValues( ASinkPin : TOWSinkPin; AProc : TGetStrProc );
//---------------------------------------------------------------------------
procedure Register();

implementation

{$R *.DFM}

uses
{$WARN UNIT_DEPRECATED OFF}
  OWStateEditors, OWAboutFormUnit, System.Math, ToolsAPI, ToolIntf, ExptIntf,
{$WARN UNIT_DEPRECATED ON}
  System.UITypes, OWAfterPinSelectFormUnit, Mitov.Types, Mitov.Threading,
  Mitov.Delphi.Design, Mitov.Containers.Dictionary, Mitov.Utils;

{$IFDEF BCB}
const
  SEPARATOR = '->';
{$ELSE}
const
  SEPARATOR = '.';
{$ENDIF}

{$R OpenWireResources.res}

var GOWPinEditorForm : TOWPinEditorForm;

type
//---------------------------------------------------------------------------
TOWBasicPinHelper = class helper for TOWBasicPin
public
  function  GetIntEditorString() : String; inline;
  function  SetIntEditorString( ARoot : TComponent; const AValue : String ) : Boolean; inline;
  function  GetIntConnectedPinCount() : Integer; inline;
  function  GetIntConnectedPin( AIndex : Integer ) : TOWBasicPin; inline;
  procedure SetIntInEditor( AValue : Boolean ); inline;

  procedure SetCurrentEditorPtr( AValue : Pointer ); inline;

end;
//---------------------------------------------------------------------------
TOWSourcePinHelper = class helper for TOWSourcePin
public
  function  IsConnectedToPinName( const AOtherPinName : String ) : Boolean; inline;

end;
//---------------------------------------------------------------------------
TOWSinkPinHelper = class helper for TOWSinkPin
public
  function  IsConnectedToPinName( const AOtherPinName : String ) : Boolean; inline;

end;
//---------------------------------------------------------------------------
TOWMultiSinkPinHelper = class helper for TOWMultiSinkPin
public
  function  IsConnectedToPinName( const AOtherPinName : String ) : Boolean; inline;

end;
//---------------------------------------------------------------------------
TOWPinListHelper = class helper for TOWPinList
private
  function  GetLastIndicatedCount() : Integer; inline;
  procedure SetLastIndicatedCount( AValue : Integer ); inline;

public
  property LastIndicatedCount : Integer read GetLastIndicatedCount write SetLastIndicatedCount;

end;
//---------------------------------------------------------------------------
function TOWBasicPinHelper.GetIntEditorString() : String;
begin
  Result := GetEditorString();
end;
//---------------------------------------------------------------------------
function TOWBasicPinHelper.SetIntEditorString( ARoot : TComponent; const AValue : String ) : Boolean;
begin
  Result := SetEditorString( ARoot, AValue );
end;
//---------------------------------------------------------------------------
function TOWBasicPinHelper.GetIntConnectedPinCount() : Integer;
begin
  Result := GetConnectedPinCount();
end;
//---------------------------------------------------------------------------
function TOWBasicPinHelper.GetIntConnectedPin( AIndex : Integer ) : TOWBasicPin;
begin
  Result := GetConnectedPin( AIndex );
end;
//---------------------------------------------------------------------------
procedure TOWBasicPinHelper.SetIntInEditor( AValue : Boolean );
begin
  SetInEditor( AValue );
end;
//---------------------------------------------------------------------------
procedure TOWBasicPinHelper.SetCurrentEditorPtr( AValue : Pointer );
begin
  FCurrentEditorPtr := AValue;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWSourcePinHelper.IsConnectedToPinName( const AOtherPinName : String ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();
//  OWLinkAwaitsLinking( Owner );

  for var I : Integer := 0 to GetSinkCount() - 1 do
    if( AOtherPinName = OWValueToString( GetSink( I ), True, True ) ) then
      Exit( True );

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWSinkPinHelper.IsConnectedToPinName( const AOtherPinName : String ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

//  OWLinkAwaitsLinking( Owner );
  if( FIntRealSourcePin <> NIL ) then
    Exit( OWValueToString( FIntRealSourcePin, True, True ) = AOtherPinName );

  Result := False;
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPinHelper.IsConnectedToPinName( const AOtherPinName : String ) : Boolean;
var
  AReadLock : ILockSection;

begin
  AReadLock := ReadLock();

//  OWLinkAwaitsLinking( Owner );
  for var I : Integer := 0 to SourceCount - 1 do
    if( Sources[ I ] <> NIL ) then
      Exit( OWValueToString( Sources[ I ], True, True ) = AOtherPinName );

  Result := False;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWPinListHelper.GetLastIndicatedCount() : Integer;
begin
  Result := FLastIndicatedCount;
end;
//---------------------------------------------------------------------------
procedure TOWPinListHelper.SetLastIndicatedCount( AValue : Integer );
begin
  FLastIndicatedCount := AValue;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function GetSinkPinValueList( ASinkPin : TOWSinkPin ) : IStringArrayList;
begin
  if( ASinkPin = NIL ) then
    Exit( TStringArrayList.Create() );

  Result := OWGetPinsValueStringList( ASinkPin, '.', [] );
end;
//---------------------------------------------------------------------------
procedure OWGetSinkPinValues( ASinkPin : TOWSinkPin; AProc : TGetStrProc );
begin
  try
    var AValues : IStringArrayList := GetSinkPinValueList( ASinkPin );
    AProc(GOWDISCONNECTED);
    for var AText in AValues do
      AProc( AText );

    for var I : Integer := 0 to OWGetDispatcherCount() - 1 do
      if( ASinkPin.CanConnectToState( OWGetDispatcher( I ) ) ) then
        AProc( OWGetDispatcher( I ).Name );

  except
    end;

end;
//---------------------------------------------------------------------------
function OWGetPinValue( APin : TOWBasicPin; const ADesigner : IDesigner ) : String;
begin
  try
    if( APin = NIL ) then
      begin
      Result := 'Refreshing ...';
      LPResetObjectInspector( ADesigner );
      end

    else
      Result := APin.GetIntEditorString();

  except
    Result := '(Error)';

  end;

end;
//---------------------------------------------------------------------------
function OWSetPinValue( ARoot : TComponent; APin : TOWBasicPin; const AValue : String ) : Boolean;
begin
  if( APin = NIL ) then
    Exit( False );

  Result := APin.SetIntEditorString( ARoot, AValue );
end;
//---------------------------------------------------------------------------
function LinkToDisplayString( ARootComponent : TComponent; const ALinkStr : String; AFullPath : Boolean; AOwnRoot : Boolean; var APinStr : String ) : String;
begin
  var AStrFull : String := ALinkStr;
  if( not AOwnRoot ) then
    begin
    var APos := Pos( '.', ALinkStr );
    Delete( AStrFull, 1, APos );
    end;

  var APos := Pos( '.', AStrFull );
  var AStr : String := AStrFull;
  Delete( AStr, 1, APos );
  APinStr := AStr;
  AStr := AStrFull;
  APos := Pos( '.', AStr );
  Delete( AStr, APos, 10000 );
  if( AFullPath ) then
    if( ARootComponent <> NIL ) then
      AStr := ARootComponent.Name + '.' + AStr;

  Result := AStr;
end;
//---------------------------------------------------------------------------
function OWGetPinValueEx( APin : TOWBasicPin; const ADesigner : IDesigner; ACurrentRoot : TComponent ) : String;
var
  APinStr : String;

begin
  if( not APin.IsConnected() ) then
    Exit( '' );

  Result := OWGetPinValue( APin, ADesigner );
  if( APin.GetIntConnectedPinCount() = 1 ) then
    begin
    var AMainOwner : TComponent := GetMainOwnerComponent( APin.GetIntConnectedPin( 0 ).Owner );
    var AOwnRoot1 := ( AMainOwner = GetMainOwnerComponent( APin.Owner ));
    var AFullSinkPath := ( AMainOwner <> ACurrentRoot );

    var AStr := LinkToDisplayString( AMainOwner, Result, AFullSinkPath, AOwnRoot1, APinStr );
    Result := AStr + '.' + APinStr;
    end;

end;
//---------------------------------------------------------------------------
function OWSinkPinEdit( const ADesigner : IDesigner; ASinkPin : TOWSinkPin ) : Boolean;
begin
  Result := False;
  if( ASinkPin = NIL ) then
    Exit;

  try
    if( GOWPinEditorForm.ExecuteForSink( ADesigner, ASinkPin ) = mrOk ) then
      begin
      for var I : Integer := 0 to GOWPinEditorForm.Items.Count - 1 do
        begin
        var AItem := GOWPinEditorForm.Items[ I ];
        var ADispatcher : TOWStateDispatcher := NIL;

        var ASourceChanged := False;
        var AEntry := TOWEItemEntry( AItem.Data );
        var AOtherPin := AEntry.ConnectedToPin;
        var APinIdent := AEntry.PinConnectIdent;
        if( AItem.StateIndex and 1 > 0 ) then
          begin
          if( ADispatcher <> NIL ) then
            begin
            if( not ADispatcher.IsConnectedTo( ASinkPin )) then
              ASourceChanged := True;

            end

          else if( AOtherPin = NIL ) then
            begin
            if( not ASinkPin.IsConnectedToPinName( APinIdent )) then
              ASourceChanged := True;

            end

          else
            begin
            if( ASinkPin.SourcePin <> AOtherPin ) then
              ASourceChanged := True;

            end;
          end

        else
          begin
          if( ADispatcher <> NIL ) then
            begin
            if( ADispatcher.IsConnectedTo( ASinkPin )) then
              ASourceChanged := True;

            end

          else if( AOtherPin = NIL ) then
            if( ASinkPin.IsConnectedToPinName( APinIdent )) then
              ASourceChanged := True
              
          else
            begin
            if( ASinkPin.SourcePin = AOtherPin ) then
              ASourceChanged := True;
              
            end;
          end;

        if( ASourceChanged ) then
          begin
          { TODO : Modify the forms connected trough the ADispatcher }

          ADesigner.Modified();

          if( AOtherPin <> NIL ) then
            if( AOtherPin is TOWPin ) then
              begin
              var ASourceRoot : TComponent := OWGetMainDesignOwner( TOWPin( AOtherPin ).Owner );
              if( ASourceRoot is TCustomForm ) then
                if( Assigned( TCustomForm( ASourceRoot ).Designer )) then
                  TCustomForm( ASourceRoot ).Designer.Modified();

              end;

          Break;
          end;

        end;

      ASinkPin.Disconnect();
      for var I : Integer := 0 to GOWPinEditorForm.Items.Count - 1 do
        begin
        var ADispatcher : TOWStateDispatcher := NIL;
        var AItem := GOWPinEditorForm.Items[ I ];
        var AEntry := TOWEItemEntry( AItem.Data );

        var AOtherPin := AEntry.ConnectedToPin;
        var AAfterPin := AEntry.ConnectedAfterPin;

        if( AItem.StateIndex and 1 > 0 ) then
          begin
          if( ADispatcher <> NIL ) then
            ASinkPin.ConnectToStateAfter( ADispatcher, AAfterPin )

          else
            begin
            if( AOtherPin is TOWStatePin ) then
              begin
              if( ASinkPin.IsStateConnected ) then
                AOtherPin.ConnectToStateAfter( ASinkPin.ConnectedDispatcher[ 0 ], AAfterPin )

              else if( AEntry.IsDispatcher ) then
                ASinkPin.ConnectByStateAfter( AOtherPin, AAfterPin )
                
              else
                ASinkPin.ConnectAfter( AOtherPin, AAfterPin );

              end

            else
              ASinkPin.ConnectAfter( AOtherPin, AAfterPin );

            end;
          end;

        if( AOtherPin <> NIL ) then
          AOtherPin.SetIntInEditor( False );

        end;

      Result := True;
      end;

  finally
    GOWPinEditorForm.ClearData();
    end;

end;
//---------------------------------------------------------------------------
function OWMultiSinkPinEdit( const ADesigner : IDesigner; AMultiSinkPin : TOWMultiSinkPin ) : Boolean;
begin
  Result := False;
  if( AMultiSinkPin = NIL ) then
    Exit;

  try
    if( GOWPinEditorForm.ExecuteForMultiSink( ADesigner, AMultiSinkPin ) = mrOk ) then
      begin
      for var I : Integer := 0 to GOWPinEditorForm.Items.Count - 1 do
        begin
        var ADispatcher : TOWStateDispatcher := NIL;

        var ASourceChanged := False;
        var AEntry := TOWEItemEntry( GOWPinEditorForm.Items[ I ].Data );
        var AOtherPin := AEntry.ConnectedToPin;

        var APinIdent : String := AEntry.PinConnectIdent;
        if( GOWPinEditorForm.Items [ I ].StateIndex and 1 > 0 ) then
          begin
          if( ADispatcher <> NIL ) then
            begin
            if( not ADispatcher.IsConnectedTo( AMultiSinkPin )) then
              ASourceChanged := True;

            end

          else if( AOtherPin = NIL ) then
            begin
            if( not AMultiSinkPin.IsConnectedToPinName( APinIdent )) then
              ASourceChanged := True;

            end

          else
            begin
            if( not AMultiSinkPin.IsConnectedTo( AOtherPin )) then
              ASourceChanged := True;

            end;
          end

        else
          begin
          if( ADispatcher <> NIL ) then
            begin
            if( ADispatcher.IsConnectedTo( AMultiSinkPin )) then
              ASourceChanged := True;

            end

          else if( AOtherPin = NIL ) then
            if( AMultiSinkPin.IsConnectedToPinName( APinIdent )) then
              ASourceChanged := True
              
          else
            begin
            if( AMultiSinkPin.IsConnectedTo( AOtherPin )) then
              ASourceChanged := True;
              
            end;
          end;

        if( ASourceChanged ) then
          begin
          { TODO : Modify the forms connected trough the ADispatcher }

          ADesigner.Modified();

          if( AOtherPin <> NIL ) then
            begin
            if( AOtherPin is TOWPin ) then
              begin 
              var ASourceRoot : TComponent := OWGetMainDesignOwner( TOWPin( AOtherPin ).Owner );
              if( ASourceRoot is TCustomForm ) then
                if( Assigned( TCustomForm( ASourceRoot ).Designer )) then
                  TCustomForm( ASourceRoot ).Designer.Modified();

              end;

            end;

          Break;
          end;

        end;

      AMultiSinkPin.Disconnect();
      for var I : Integer := 0 to GOWPinEditorForm.Items.Count - 1 do
        begin
        var ADispatcher : TOWStateDispatcher := NIL;
        var AItem := GOWPinEditorForm.Items[ I ];

        var AEntry := TOWEItemEntry( AItem.Data );
        var AOtherPin := AEntry.ConnectedToPin;
        var AAfterPin := AEntry.ConnectedAfterPin;

        if( AItem.StateIndex and 1 > 0 ) then
          begin
          if( ADispatcher <> NIL ) then
            AMultiSinkPin.ConnectToStateAfter( ADispatcher, AAfterPin )

          else
            begin
            if( AOtherPin is TOWStatePin ) then
              begin
              if( AMultiSinkPin.IsStateConnected ) then
                AOtherPin.ConnectToStateAfter( AMultiSinkPin.ConnectedDispatcher[ 0 ], AAfterPin )

              else if( AEntry.IsDispatcher ) then
                AMultiSinkPin.ConnectByStateAfter( AOtherPin, AAfterPin )
                
              else
                AMultiSinkPin.ConnectAfter( AOtherPin, AAfterPin );

              end

            else
              AMultiSinkPin.ConnectAfter( AOtherPin, AAfterPin );

            end;
            
          end;

        if( AOtherPin <> NIL ) then
          AOtherPin.SetIntInEditor( False );

        end;

      Result := True;
      end;

  finally
    GOWPinEditorForm.ClearData();
    end;

end;
//---------------------------------------------------------------------------
function OWSourcePinEdit( const ADesigner : IDesigner; ASourcePin : TOWSourcePin ) : Boolean;
begin
  Result := False;

  if( ASourcePin = NIL ) then
    Exit;

  try
    if( GOWPinEditorForm.ExecuteForSource( ADesigner, ASourcePin ) = mrOk ) then
      begin
      for var I : Integer := 0 to GOWPinEditorForm.Items.Count - 1 do
        begin
        var ASinkChanged := False;
        var AItem := GOWPinEditorForm.Items[ I ];
        var AEntry := TOWEItemEntry( AItem.Data );
        if( not( AEntry.ConnectedToPin is TOWPin )) then
          Continue;

        var AOtherPin := AEntry.ConnectedToPin;
//        AAfterPin := AEntry.ConnectedAfterPin;
        if( AItem.StateIndex and 1 > 0 ) then
          begin
          if( AOtherPin = NIL ) then
            begin
//            APinIdent := AItem.SubItems.Strings[ 4 ];
            var APinIdent : String := AEntry.PinConnectIdent;
            if( not ASourcePin.IsConnectedToPinName( APinIdent )) then
              ASinkChanged := True;

            end

          else
            begin
            if( not ASourcePin.IsConnectedTo( AOtherPin )) then
              ASinkChanged := True;
              
            end;
          end

        else
          begin
          if( ASourcePin.IsConnectedTo( AOtherPin )) then
            ASinkChanged := True;
            
          end;

        if( ASinkChanged ) then
          if( AOtherPin <> NIL ) then
            if( AOtherPin is TOWPin ) then
              begin
              var ASinkRoot : TComponent := OWGetMainDesignOwner( TOWPin( AOtherPin ).Owner );
              if( ASinkRoot is TCustomForm ) then
                if( Assigned( TCustomForm( ASinkRoot ).Designer )) then
                  TCustomForm( ASinkRoot ).Designer.Modified();

              end;

        end;

      ASourcePin.Disconnect();
      ASourcePin.SetIntInEditor( True );
      for var I : Integer := 0 to GOWPinEditorForm.Items.Count - 1 do
        begin
        var AItem := GOWPinEditorForm.Items[ I ];
        var AEntry := TOWEItemEntry( AItem.Data );
        var AOtherPin := AEntry.ConnectedToPin;
        var AAfterPin := AEntry.ConnectedAfterPin;
        if( AItem.StateIndex and 1 > 0 ) then
          if( AOtherPin <> NIL ) then
            ASourcePin.ConnectAfter( AOtherPin, AAfterPin );

        if( AOtherPin <> NIL ) then
          AOtherPin.SetIntInEditor( False );
          
        end;

      Result := True;
      end;

    ASourcePin.SetIntInEditor( False );

  finally
    GOWPinEditorForm.ClearData();
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWSourcePinPropertyEditor.GetAttributes() : TPropertyAttributes;
begin
  Result := [ paDialog ];
  OWRequestDesignerRefresh();
end;
//---------------------------------------------------------------------------
procedure TOWSourcePinPropertyEditor.Edit();
begin
  OWRequestRefreshEx( GetIntDesigner() );
  var ASourcePin := TOWSourcePin( GetPin());
  if( OWSourcePinEdit( GetIntDesigner(), ASourcePin )) then
    Modified();

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWStatePinPropertyEditor.GetAttributes() : TPropertyAttributes;
begin
  Result := [ paDialog ];
  OWRequestDesignerRefresh();
end;
//---------------------------------------------------------------------------
procedure TOWStatePinPropertyEditor.Edit();
begin
  OWRequestRefreshEx( GetIntDesigner() );
  var AStatePin := TOWStatePin( GetPin() );
  if( OWStatePinEdit( GetIntDesigner(), AStatePin )) then
    Modified();

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWBasicPinListPropertyEditor.CreateEx( const ADesigner : IDesigner; APin : TOWBasicPin; const AName : String; APinListEditor : TOWPinListPropertyEditor );
begin
  inherited Create( ADesigner, 1 );
  FDesigner := ADesigner;
  FPin  := APin;
  FName := AName;
  FPinListEditor := APinListEditor;
  FPin.SetCurrentEditorPtr( @FPin );
end;
//---------------------------------------------------------------------------
destructor TOWBasicPinListPropertyEditor.Destroy();
begin
  if( FPin <> NIL )then
    FPin.SetCurrentEditorPtr( NIL );
    
  inherited;
end;
//---------------------------------------------------------------------------
function TOWBasicPinListPropertyEditor.GetEditValue( out AValue : String ): Boolean;
begin
  AValue := GetValue();
  Result := True;
end;
//---------------------------------------------------------------------------
function  TOWBasicPinListPropertyEditor.GetName() : String;
begin
  Result := FName;
end;
//---------------------------------------------------------------------------
function  TOWBasicPinListPropertyEditor.GetIntDesigner() : IDesigner;
begin
  Result := Designer;
end;
//---------------------------------------------------------------------------
procedure TOWBasicPinListPropertyEditor.SetValue( const AValue : String );
begin
  var APin := GetPin();
  if( OWSetPinValue( NIL, APin, AValue )) then
    Modified();

end;
//---------------------------------------------------------------------------
function TOWBasicPinListPropertyEditor.GetValue() : String;
begin
  var APin := GetPin();
  OWRequestRefreshEx( GetIntDesigner() );
  Result := OWGetPinValue( APin, GetIntDesigner() );
  FPinListEditor.CheckRefresh();
end;
//---------------------------------------------------------------------------
function TOWBasicPinListPropertyEditor.GetPin() : TOWBasicPin;
begin
  Result := FPin;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWSourcePinListPropertyEditor.GetAttributes() : TPropertyAttributes;
begin
  Result := [ paDialog ];
  OWRequestDesignerRefresh();
end;
//---------------------------------------------------------------------------
function TOWSourcePinListPropertyEditor.GetPropType() : PTypeInfo;
begin
  Result := TypeInfo( TOWSourcePin );
end;
//---------------------------------------------------------------------------
procedure TOWSourcePinListPropertyEditor.Edit();
begin
  var ASourcePin := TOWSourcePin( GetPin() );
  if( OWSourcePinEdit( GetIntDesigner(), ASourcePin )) then
    Modified();

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWSinkPinPropertyEditor.Edit();
begin
  OWRequestRefreshEx( GetIntDesigner() );
  var ASinkPin := TOWSinkPin( GetPin() );
  if( OWSinkPinEdit( GetIntDesigner(), ASinkPin )) then
    Modified();

end;
//---------------------------------------------------------------------------
function TOWSinkPinPropertyEditor.GetAttributes() : TPropertyAttributes;
begin
  Result := [ paValueList, paSortList, paDialog ];
  OWRequestDesignerRefresh();
end;
//---------------------------------------------------------------------------
procedure TOWSinkPinPropertyEditor.GetValues( AProc : TGetStrProc );
begin
  var ASinkPin := TOWSinkPin( GetPin() );
  OWGetSinkPinValues( ASinkPin, AProc );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWMultiSinkPinPropertyEditor.GetAttributes() : TPropertyAttributes;
begin
  Result := [ paDialog ];
  OWRequestDesignerRefresh();
end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPinPropertyEditor.Edit();
begin
  OWRequestRefreshEx( GetIntDesigner() );
  var AMultiSinkPin := TOWMultiSinkPin( GetPin() );
  if( OWMultiSinkPinEdit( GetIntDesigner(), AMultiSinkPin )) then
    Modified();
    
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWSinkPinListPropertyEditor.GetPropType: PTypeInfo;
begin
  Result := TypeInfo( TOWSinkPin );
end;
//---------------------------------------------------------------------------
procedure TOWSinkPinListPropertyEditor.Edit();
begin
  var ASinkPin := TOWSinkPin( GetPin() );
  OWRequestRefreshEx( GetIntDesigner() );
  if( OWSinkPinEdit( GetIntDesigner(), ASinkPin )) then
    Modified();

end;
//---------------------------------------------------------------------------
function TOWSinkPinListPropertyEditor.GetAttributes() : TPropertyAttributes;
begin
  Result := [ paValueList, paSortList, paDialog ];
  OWRequestDesignerRefresh();
end;
//---------------------------------------------------------------------------
procedure TOWSinkPinListPropertyEditor.GetValues( AProc : TGetStrProc );
begin
  OWGetSinkPinValues( TOWSinkPin( GetPin() ), AProc );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWMultiSinkPinListPropertyEditor.GetPropType: PTypeInfo;
begin
  Result := TypeInfo( TOWMultiSinkPin );
end;
//---------------------------------------------------------------------------
procedure TOWMultiSinkPinListPropertyEditor.Edit();
begin
  OWRequestRefreshEx( GetIntDesigner() );
  var ASinkPin := TOWMultiSinkPin( GetPin() );
  if( OWMultiSinkPinEdit( GetIntDesigner(), ASinkPin )) then
    Modified();
    
end;
//---------------------------------------------------------------------------
function TOWMultiSinkPinListPropertyEditor.GetAttributes() : TPropertyAttributes;
begin
  Result := [ paDialog ];
  OWRequestDesignerRefresh();
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWStatePinListPropertyEditor.GetPropType() : PTypeInfo;
begin
  Result := TypeInfo( TOWStatePin );
end;
//---------------------------------------------------------------------------
procedure TOWStatePinListPropertyEditor.Edit();
begin
  OWRequestRefreshEx( GetIntDesigner() );
  var AStatePin := TOWStatePin( GetPin() );
  if( OWStatePinEdit( GetIntDesigner(), AStatePin )) then
    Modified();

end;
//---------------------------------------------------------------------------
function TOWStatePinListPropertyEditor.GetAttributes() : TPropertyAttributes;
begin
  Result := [ paDialog ];
  OWRequestDesignerRefresh();
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.LinkAllButtonClick(Sender: TObject);
begin
  for var Aitem in ListView.Items do
    Aitem.StateIndex := ( ( TOWEItemEntry( Aitem.Data ).StateIndex ) or 1 );

end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.UnlinkAllButtonClick(Sender: TObject);
begin
  for var Aitem in ListView.Items do
    Aitem.StateIndex := ( ( TOWEItemEntry( Aitem.Data ).StateIndex ) and 2 );

end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.RestoreButtonClick(Sender: TObject);
begin
  for var Aitem in ListView.Items do
    Aitem.StateIndex := TImageIndex( TOWEItemEntry( Aitem.Data ).StateIndex );
    
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.FormShow(Sender: TObject);
begin
  FillFormsInfo();
  UpdateLinksCount();
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.FillFormsInfo();
begin
  var AFormNamesObj := TOWModulesColection.Create();
  var AFormNames : IStringArrayList := AFormNamesObj;

  FDesigner.GetProjectModules( AFormNamesObj.GetModules );

  FormsComboBox.Items.Clear();
  if( AFormNames.Count = 0 ) then
    AFormNames.Add( FRoot.Name );

  for var AName in AFormNames do
    if( OWCanAccessRootFromName( FDesigner, AName ) ) then
      begin
      if( AName = FRoot.Name ) then
        begin
        FormsComboBox.Items.Add( AName + '  (Current)' );
        FormsComboBox.ItemIndex := FormsComboBox.Items.Count - 1;
        end

      else
        FormsComboBox.Items.Add( AName );

      end;

  if( AFormNames.Count > 1 ) then
    FormsComboBox.Items.Add( 'All forms' );

  PopulateAllEntries();
  if( FAllSelected ) then
    FormsComboBox.ItemIndex := FormsComboBox.Items.Count - 1;

  FormsComboBoxChange( Self );
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.PopulateAllEntries();
begin
  FPinsList.Clear();
  for var I : Integer := 0 to Max( FormsComboBox.Items.Count - 2, 0 ) do
    begin
    var ACurrentRoot : TComponent := RootFromName( FormsComboBox.Items.Strings[ I ] );
    PopulateSingleFormEntries( NIL, ACurrentRoot, True, not AllPinsCheckBox.Checked );
    end;

  RootFromName( FRoot.Name );
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.PopulateAll();
begin
  ClearData();
  for var I : Integer := 0 to FormsComboBox.Items.Count - 2 do
    begin
    var ACurrentRoot : TComponent := RootFromName( FormsComboBox.Items.Strings[ I ] );
    PopulateSingleForm( NIL, ACurrentRoot, False, True, not AllPinsCheckBox.Checked );
    end;

  RootFromName( FRoot.Name );
end;

procedure TOWPinEditorForm.PopulateForm( ARootComponent : TComponent );
begin
  ClearData();
  PopulateSingleForm( ARootComponent, ARootComponent, False, False, not AllPinsCheckBox.Checked );

  for var I : Integer := 0 to FormsComboBox.Items.Count - 2 do
    begin
    var ACurrentRoot : TComponent := RootFromName( FormsComboBox.Items.Strings[ I ] );
    if( ARootComponent <> ACurrentRoot ) then
      PopulateSingleForm( ARootComponent, ACurrentRoot, True, True, not AllPinsCheckBox.Checked );

    end;

end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.PopulateSingleFormEntries( ACurrentRoot : TComponent; ARootComponent : TComponent; AFullPath : Boolean; AFilterPins : Boolean );
var
  APinStr : String;

begin
  var AMainOwner : TComponent := GetMainOwnerComponent( FPin.Owner );
  var AOwnRoot := ( ARootComponent = AMainOwner );
  var AOwnDataModule := False;

  if( not AOwnRoot ) then
    AOwnDataModule := ( ARootComponent.Name = AMainOwner.Name );

  for var I : Integer := 0 to OWGetDispatcherCount() - 1 do
    begin
    var ADispatcher := OWGetDispatcher( I );
    if( not FPin.CanConnectToState( ADispatcher )) then
      Continue;

    var AEntry := TOWEPinEntry.Create();
    FPinsList.Add( AEntry );
    AEntry.Dispatcher := ADispatcher;
    AEntry.PinName := ADispatcher.Name;
    AEntry.Checked := FPin.IsConnectedToState( ADispatcher );
    end;

  var ACollection : IArrayPairList<String, TOWBasicPin> := TArrayPairList<String, TOWBasicPin>.Create();
  OWGetPinValueList( ACollection.GetAsPairCollection(), ARootComponent, FPin, AFilterPins );
  for var APair in ACollection do
    begin
    var AOtherPin := APair.Value;

    if( FSourcePin <> NIL ) then
      begin
      if( ( not ( AOtherPin is TOWBasicSinkPin )) and ( not ( AOtherPin is TOWStatePin )) ) then
        Continue;

      end

    else
      if( ( not ( AOtherPin is TOWSourcePin )) and ( not ( AOtherPin is TOWStatePin )) ) then
        Continue;

    if( AOtherPin is TOWStatePin ) then
      if( AOtherPin.IsConnected() ) then
        Continue; // Those pins are represented by the Dispatchers.

    var AEntry := TOWEPinEntry.Create();
    FPinsList.Add( AEntry );

    var AStr : String := LinkToDisplayString( ARootComponent, APair.Key, AFullPath, AOwnRoot, APinStr );
    AEntry.PinName := APinStr;

    AEntry.OwnerName := AStr;
    AEntry.Pin := AOtherPin;
    if( not FPin.CanConnectTo( AOtherPin )) then
      begin
      AEntry.SavedChecked := False;
      AEntry.Checked := False;
      end

    else
      begin
      var ALinkName : String := APair.Key;
      if( AOwnDataModule ) then
        begin
        var APos := Pos( '.', ALinkName );
        Delete( ALinkName, 1, APos );
        end;

      AEntry.SavedChecked := FPin.IsLinkedTo( ALinkName );
      AEntry.Checked := AEntry.SavedChecked;
      end;
    end;

end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.PopulateSingleForm( ACurrentRoot : TComponent; ARootComponent : TComponent; AOnlyConnected : Boolean; AFullPath : Boolean; AFilterPins : Boolean );
begin
  FListUpdating := True;
  PopulateSingleFormInt( ACurrentRoot, ARootComponent, AOnlyConnected, AFullPath, AFilterPins );
  FListUpdating := False;
end;
//---------------------------------------------------------------------------
function GetLinkType( APin : TOWBasicPin ) : String;
begin
  if( not ( APin is TOWBasicSinkPin )) then
    Exit( 'Unknown' );

  var ASinkPin := TOWBasicSinkPin( APin );

//  if( IsEqualGUID( ASinkPin.DownStreamID, ASinkPin.UpStreamID )) then
  if( ASinkPin.DownStreamLinkName = ASinkPin.UpStreamLinkName ) then
    begin
    if( ASinkPin.DownStreamLinkName <> '' ) then
      Result := 'Bi-directional ( ' + ASinkPin.DownStreamLinkName + ' )';

    end

  else
    begin
    if( ASinkPin.DownStreamLinkName <> '' ) then
      Result := 'Downstream ( ' + ASinkPin.DownStreamLinkName + ' )    ';

    if( ASinkPin.UpStreamLinkName <> '' ) then
      Result := Result + 'Upstream ( ' + ASinkPin.UpStreamLinkName + ' )';

    end;

end;
//---------------------------------------------------------------------------
function TOWPinEditorForm.EntryFromPin( APin : TOWBasicPin ) : TOWEPinEntry;
begin
  for var AItem in FPinsList do
    if( AItem.Pin = APin ) then
      Exit( AItem );

  Result := NIL;
end;
//---------------------------------------------------------------------------
function TOWPinEditorForm.EntryFromDispatcher( ADispatcher : TOWBasicStateDispatcher ) : TOWEPinEntry;
begin
  for var AItem in FPinsList do
    if( AItem.Dispatcher = ADispatcher ) then
      Exit( AItem );

  Result := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.PopulateSingleFormInt( ACurrentRoot : TComponent; ARootComponent : TComponent; AOnlyConnected : Boolean; AFullPath : Boolean; AFilterPins : Boolean );
var
  AStr      : String;
  ALinkType : String;
  APinStr   : String;

begin
  Items.BeginUpdate();
  try
    var AMainOwner : TComponent := GetMainOwnerComponent( FPin.Owner );
    if( ARootComponent = NIL ) then
      ARootComponent := AMainOwner;

    var AOwnRoot := ( ARootComponent = AMainOwner);
    var AOwnDataModule := False;

    if( not AOwnRoot ) then
      AOwnDataModule := ( ARootComponent.Name = AMainOwner.Name );

    for var I : Integer := 0 to OWGetDispatcherCount() - 1 do
      begin
      var ADispatcher := OWGetDispatcher( I );
      if( not FPin.CanConnectToState( ADispatcher )) then
        Continue;

      var AEntry : TOWEPinEntry := EntryFromDispatcher( ADispatcher );
      var AItem : TListItem := Items.Add();

      AItem.ImageIndex := -1;
      AItem.Caption := ADispatcher.Name;

      var AItemDataEntry := TOWEItemEntry.Create( AItem, FPin );
      AItemDataEntry.IsDispatcher := True;
      AItem.Data := AItemDataEntry;

      AItem.SubItems.Add( AStr );
      
      if( ADispatcher.Pins[ 0 ] = FPin ) then
        AItemDataEntry.ConnectedToPin := ADispatcher.Pins[ 1 ]
        
      else
        AItemDataEntry.ConnectedToPin := ADispatcher.Pins[ 0 ];

      AItem.StateIndex := Ord( AEntry.Checked );

      if( ADispatcher.PinCount = 2 ) then
        begin
        if( ADispatcher.Pins[ 0 ] = FPin ) then
          AItem.SubItems.Add( ADispatcher.Pins[ 1 ].GetFullName( True ))

        else
          AItem.SubItems.Add( ADispatcher.Pins[ 0 ].GetFullName( True ));

        end

      else
        AItem.SubItems.Add( IntToStr( ADispatcher.PinCount - 1 ) + ' Pins' );

      if( FSourcePin = NIL ) then
        ALinkType := GetLinkType( FPin )

      else
        begin
        if( ADispatcher.PinCount = 0 ) then
          ALinkType := 'Unknown'
        
        else
          begin
          ALinkType := FSourcePin.GetConnectionName( ADispatcher.Pins[ 0 ] );
          for var J : Integer := 1 to ADispatcher.PinCount - 1 do
            if( FSourcePin <> ADispatcher[ J ] ) then
              if( ALinkType <> FSourcePin.GetConnectionName( ADispatcher[ J ] )) then
                begin
                ALinkType := 'Multiple types';
                Break;
                end;

          end;
        end;

      AItem.SubItems.Add( ADispatcher.GetAfterPinDisplayName( FPin ));
      AItem.SubItems.Add( ALinkType );
      AItem.SubItems.Add( ADispatcher.Name );
      end;

    var ACollection : IArrayPairList<String, TOWBasicPin> := TArrayPairList<String, TOWBasicPin>.Create();
    OWGetPinValueList( ACollection.GetAsPairCollection(), ARootComponent, FPin, AFilterPins );

    for var APair in ACollection do
      begin
      var AOtherPin : TOWBasicPin := APair.Value;
      if( not ( AOtherPin is TOWStatePin ) ) then
        if( FSourcePin = NIL ) then
          begin
          if( not ( AOtherPin is TOWSourcePin ) ) then
            Continue;

          end

        else
          begin
          if( not ( AOtherPin is TOWBasicSinkPin ) ) then
            Continue;
          
          end;

      if( AOtherPin is TOWStatePin ) then
        if( AOtherPin.IsConnected() ) then
          Continue; // Those pins are represented by the Dispatchers.

      var AEntry : TOWEPinEntry := EntryFromPin( AOtherPin );
      if( AOnlyConnected ) then
        begin
        if( AEntry <> NIL ) then
          begin
          if( not AEntry.Checked ) then
            Continue;
        
          end

        else
          if( not FMultiSinkPin.IsLinkedTo( APair.Key ) ) then
            Continue;

        end;

      var AItem := Items.Add();
      var AItemDataEntry := TOWEItemEntry.Create( AItem, AOtherPin ); //FPin );
      AItem.Data := AItemDataEntry;

      if( AOtherPin.GetRoot() <> FPin.GetRoot() ) then
        AItem.ImageIndex := 3

      else
        AItem.ImageIndex := -1;

      AStr := LinkToDisplayString( ARootComponent, APair.Key, AFullPath, AOwnRoot, APinStr );
      AItem.Caption := APinStr;

      AItem.SubItems.Add( AStr );
      AItemDataEntry.ConnectedToPin := APair.Value;
      if( FSourcePin = NIL ) then
        begin
        if( AOtherPin is TOWSourcePin ) then
          begin
          if( FPin.IsConnectedTo( AOtherPin )) then
            for var J : Integer := 0 to AOtherPin.ConnectedPinCount - 1 do
              if( FPin = AOtherPin.ConnectedPin[ J ] ) then
                begin
                AItemDataEntry.ConnectedAfterPin := TOWBasicSinkPin( AOtherPin ).AfterPin[ J ];
                Break;
                end;

          end;
        end

      else
        begin
        if( AOtherPin is TOWBasicSinkPin ) then
          begin
          if( AOtherPin.IsConnectedTo( FPin )) then
            for var J : Integer := 0 to FPin.ConnectedPinCount - 1 do
              if( AOtherPin = FPin.ConnectedPin[ J ] ) then
                begin
                AItemDataEntry.ConnectedAfterPin := TOWBasicSinkPin( FPin ).AfterPin[ J ];
                Break;
                end;
              
          end;
        end;

      if( not FPin.CanConnectTo( AOtherPin )) then
        begin
        AItem.StateIndex := -1;
        AItemDataEntry.StateIndex := -1;
//        AItem.Data := Pointer( -1 );
        end

      else
        begin
//        AItem.Checked := ASourcePin.IsLinkedTo( FPin );
        var ALinkName : String := APair.Key;
        if( AOwnDataModule ) then
          begin
          var APos := Pos( '.', ALinkName );
          Delete( ALinkName, 1, APos );
          end;

        var ALinked := FPin.IsLinkedTo( ALinkName );

        if( AEntry <> NIL ) then
          AItem.StateIndex := Ord( AEntry.Checked )

        else
          AItem.StateIndex := Ord( ALinked );

        if( AOtherPin is TOWMultiSinkPin ) then
          AItem.StateIndex := AItem.StateIndex or 2

        else if( AOtherPin is TOWStatePin ) then
          AItem.StateIndex := AItem.StateIndex or 4;

        AItemDataEntry.StateIndex := AItem.StateIndex;
//        AItem.Data := Pointer( AItem.StateIndex );
//        AItem.StateIndex := Ord( AItem.Checked );
        end;

      ALinkType := '';
      var ANotifyAfter : String := '';
      var ALinkedTo : String := OWGetPinValueEx( AOtherPin, FDesigner, ACurrentRoot );
      if( FSourcePin = NIL ) then
        begin
        ANotifyAfter := AOtherPin.GetAfterPinDisplayName( FPin );
        if( AOtherPin.ConnectedPinCount > 0 ) then
          ALinkType := GetLinkType( AOtherPin.ConnectedPin[ 0 ] );

        end

      else
        begin
        if( AOtherPin is TOWBasicSinkPin ) then
          begin
          if( AOtherPin.ConnectedPinCount = 1 ) then
            ANotifyAfter := TOWSourcePin( AOtherPin.ConnectedPin[ 0 ] ).GetAfterPinDisplayName( TOWBasicSinkPin( AOtherPin ));
          
          if( AOtherPin is TOWSinkPin ) then
            begin
            var ASinkPin := TOWSinkPin( AOtherPin );
            if( ASinkPin.SourcePin <> NIL ) then
              begin
              ALinkType := GetLinkType( ASinkPin );
              ANotifyAfter := TOWSourcePin( ASinkPin.SourcePin ).GetAfterPinDisplayName( ASinkPin );
              end;
            end

          else
            begin
            if( AOtherPin.ConnectedPinCount > 0 ) then
              begin
              ALinkType := GetLinkType( AOtherPin );
              for var J : Integer := 0 to AOtherPin.ConnectedPinCount - 1 do
                begin
                var ANotifyAfter1 : String := TOWSourcePin( AOtherPin.ConnectedPin[ J ] ).GetAfterPinDisplayName( TOWBasicSinkPin( AOtherPin ));
                if( ANotifyAfter1 <> '' ) then
                  begin
                  if( ANotifyAfter = '' ) then
                    ANotifyAfter := '(' + ANotifyAfter1

                  else
                    ANotifyAfter := ANotifyAfter + ', ' + ANotifyAfter1;
                     
                  end;
                end;

              if( ANotifyAfter <> '' ) then
                ANotifyAfter := ANotifyAfter + ')';
                
              end;
            end;
          end;
        end;

      AItem.SubItems.Add( ALinkedTo );
      AItem.SubItems.Add( ANotifyAfter );
      AItem.SubItems.Add( ALinkType );
      AItem.SubItems.Add( APair.Key );
      end;

    for var I : Integer := 0 to FPin.ConnectedPinCount - 1 do
      begin
      var AConnectedPin := FPin.ConnectedPin[ I ];
      if( AConnectedPin.GetRoot() = NIL ) then
        begin
        var AItem : TListItem := Items.Add();

        var AItemDataEntry := TOWEItemEntry.Create( AItem, FPin );
        AItem.Data := AItemDataEntry;

        AItemDataEntry.ConnectedToPin := AConnectedPin;

        AItem.ImageIndex := 2;
        AItem.StateIndex := 1;
        AItemDataEntry.StateIndex := AItem.StateIndex;

        AItem.Caption := AConnectedPin.GetName();
        AItem.SubItems.Add( AConnectedPin.GetOwnerName( True ) );
        AItem.SubItems.Add( FPin.GetFullName( False ) );
        end;
      end;

  finally
    for var AItem in Items do
      if( AItem.StateIndex and 1 > 0 ) then
        TOWEItemEntry( AItem.Data ).ConnectedToPin.SetIntInEditor( True );

    Items.EndUpdate();
    end;

end;
//---------------------------------------------------------------------------
function TOWPinEditorForm.ExecuteForSource( const ADesigner : IDesigner; ASourcePin : TOWSourcePin ): Integer;
begin
  FDesigner := ADesigner;
  FPin := ASourcePin;
  PopulateDataTypes();
  FSourcePin := ASourcePin;
  FSinkPin := NIL;
  FMultiSinkPin := NIL;

  FRoot := ADesigner.GetRoot();

  LinkAllButton.Visible := True;
  UnlinkAllButton.Visible := True;

  ListView.Columns[0].Caption := 'Sink pin';
  ListView.Columns[2].Caption := 'Connected to';
  Caption := 'Connections - Source Pin : ' + OWValueToString( FSourcePin, False, False );

  ListView.StateImages := SourcesImageList;
  OWLinkAwaitsLinkingAllForms();
  Result := ShowModal();
end;
//---------------------------------------------------------------------------
function  TOWPinEditorForm.ExecuteForSink( const ADesigner : IDesigner; ASinkPin : TOWSinkPin ): Integer;
begin
  FDesigner := ADesigner;
  FPin := ASinkPin;
  PopulateDataTypes();
  FSinkPin := ASinkPin;
  FSourcePin := NIL;
  FMultiSinkPin := NIL;

  FRoot := ADesigner.GetRoot();

  LinkAllButton.Visible := False;
  UnlinkAllButton.Visible := False;

  ListView.Columns[0].Caption := 'Source pin';
  ListView.Columns[2].Caption := 'Connections';
  Caption := 'Connections - Sink Pin : ' + OWValueToString( FSinkPin, False, False );

  ListView.StateImages := SinksImageList;
  OWLinkAwaitsLinkingAllForms();
  Result := ShowModal();
end;
//---------------------------------------------------------------------------
function TOWPinEditorForm.ExecuteForMultiSink( const ADesigner : IDesigner; AMultiSinkPin : TOWMultiSinkPin ): Integer;
begin
  FDesigner := ADesigner;
  FPin := AMultiSinkPin;
  PopulateDataTypes();
  FMultiSinkPin := AMultiSinkPin;
  FSinkPin := NIL;
  FSourcePin := NIL;

  FRoot := ADesigner.GetRoot();

  LinkAllButton.Visible := True;
  UnlinkAllButton.Visible := True;

  ListView.Columns[0].Caption := 'Source pin';
  ListView.Columns[2].Caption := 'Connections';
  Caption := 'Connections - Event Sink Pin : ' + OWValueToString( FSinkPin, False, False );

  ListView.StateImages := SourcesImageList;
  OWLinkAwaitsLinkingAllForms();
  Result := ShowModal();
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.PopulateDataTypes();
begin
  var AItems := DataTypesListView.Items;
  AItems.BeginUpdate();
  try
    AItems.Clear();
    var AList := FPin.GetStreamDataList();
    for var I : Integer := 0 to AList.Count - 1 do
      begin
      var AItem := AList[ I ];
      var AListItem := AItems.Add();
      AListItem.Caption := I.ToString();
      AListItem.ImageIndex := -1;

      AListItem.SubItems.Add( OWGetDebugStreamTypeFromID( AItem.ID ));

      if( AItem.Sends and AItem.Accepts ) then
        AListItem.SubItems.Add( 'Sends/Accepts' )

      else if( AItem.Sends ) then
        AListItem.SubItems.Add( 'Sends' )

      else if( AItem.Accepts ) then
        AListItem.SubItems.Add( 'Accepts' );

      end;

  finally
    AItems.EndUpdate();
    end;

end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.UpdateLinksCount();
begin
  var ACounter : Integer := 0;
  for var I : Integer := 0 to ListView.Items.Count - 1 do
    if( ( ListView.Items[ I ].ImageIndex and 1 ) > 0 ) then
      Inc( ACounter );

  LinksCountLabel.Caption := IntToStr( ACounter );
  var AEnabled := ((( FSinkPin <> NIL ) or ( FMultiSinkPin <> NIL )) and ( ListView.ItemFocused <> NIL ) and ( ListView.ItemFocused.Checked ) );
  if( AEnabled ) then
  if( not( TOWEItemEntry( ListView.ItemFocused.Data ).ConnectedToPin is TOWSourcePin )) then
    if( TOWEItemEntry( ListView.ItemFocused.Data ).ConnectedToPin.ConnectedDispatcherCount = 0 ) then
      AEnabled := False;

  AfterPinButton.Enabled := AEnabled;
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.ClearData();
begin
  ListView.Items.Clear();
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.DataTypesListViewColumnClick(Sender: TObject;
  Column: TListColumn);
begin
  DataTypesListView.Columns[ FDataTypeColumnToSort ].ImageIndex := -1;

  if( FDataTypeColumnToSort = Column.Index ) then
    FDirection := not FDirection

  else
    begin
    FDirection := True;
    FDataTypeColumnToSort := Column.Index;
    end;

  TCustomListView(Sender).AlphaSort();

  DataTypesListView.Columns[ FDataTypeColumnToSort].ImageIndex := Integer( not FDirection );
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.ListViewChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);

begin
  if( FListUpdating ) then
    Exit;

  UpdateLinksCount();
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.ListViewColumnClick( Sender : TObject; Column : TListColumn );
begin
  ListView.Columns[ FColumnToSort ].ImageIndex := -1;

  if( FColumnToSort = Column.Index ) then
    FDirection := not FDirection

  else
    begin
    FDirection := True;
    FColumnToSort := Column.Index;
    end;

  TCustomListView(Sender).AlphaSort();

  ListView.Columns[ FColumnToSort].ImageIndex := Integer( not FDirection );
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.FormCreate(Sender: TObject);
begin
  FPinsList     := TObjectOwnerArrayList<TOWEPinEntry>.Create( True );
  FColumnToSort := 0;
  FDirection    := True;
  FAllSelected  := False;
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.FormDestroy(Sender: TObject);
begin
  GOWPinEditorForm := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.ListViewCompare(Sender: TObject; Item1, Item2: TListItem; Data: Integer; var Compare: Integer);
var
  ADirMultiply : Integer;

begin
  if( FDirection ) then
    ADirMultiply :=  1

  else
    ADirMultiply := -1;

  if( FColumnToSort = 0 ) then
    Compare := ADirMultiply * CompareText( Item1.Caption, Item2.Caption )

  else
    begin
    var AIndex : Integer := FColumnToSort - 1;
    Compare := ADirMultiply * CompareText( Item1.SubItems.Strings[ AIndex ], Item2.SubItems.Strings[ AIndex ] );
    end

end;
//---------------------------------------------------------------------------
function TOWPinEditorForm.GetListItems() : TListItems;
begin
  Result := ListView.Items;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function  TOWBasicPropertyEditor.GetIntDesigner() : IDesigner;
begin
  Result := Designer;
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWBasicPinPropertyEditor.GetPin() : TOWPin;
begin
  Result := TOWPin( GetOrdValue());
end;
//---------------------------------------------------------------------------
procedure TOWBasicPinPropertyEditor.SetValue( const AValue : String );
begin
  inherited SetValue( AValue );

  var APin := GetPin();
  if( OWSetPinValue( NIL, APin, AValue )) then
    Modified();

end;
//---------------------------------------------------------------------------
function TOWBasicPinPropertyEditor.GetValue() : String;
begin
  var APin := GetPin();
  OWRequestRefreshEx( GetIntDesigner() );
  Result := OWGetPinValue( APin, GetIntDesigner() );
end;
//---------------------------------------------------------------------------
function TOWBasicPinPropertyEditor.GetIsDefault() : Boolean;
begin
  var APin := GetPin();
  if( APin = NIL ) then
    Exit( True );

  Result := not APin.IsConnected();
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function  TOWPinListPropertyEditor.GetAttributes(): TPropertyAttributes;
begin
  Result := [ paSubProperties, paReadOnly, paVolatileSubProperties ]; //, paAutoUpdate ];
  
  OWRequestDesignerRefresh();
end;
//---------------------------------------------------------------------------
procedure TOWPinListPropertyEditor.CheckRefresh();
begin
  var ACollection := TOWPinList( GetOrdValue() );
  if( ACollection.LastIndicatedCount <> ACollection.Count ) then
    begin
    ACollection.LastIndicatedCount := ACollection.Count;
    LPResetObjectInspector( GetIntDesigner() );
    end;
    
end;
//---------------------------------------------------------------------------
function TOWPinListPropertyEditor.GetValue(): String;
begin
  OWRequestRefreshEx( GetIntDesigner() );

  var ACollection := TOWPinList( GetOrdValue() );
  if( ACollection.LastIndicatedCount <> ACollection.Count ) then
    begin
    ACollection.LastIndicatedCount := ACollection.Count;
    LPResetObjectInspector( GetIntDesigner() );
    end;

  if( ACollection.Count = 0 ) then
    Exit( '(Empty)' );

  if( ACollection.Count = 1 ) then
    Exit( '1 Pin' );

  Result := IntToStr( ACollection.Count ) + ' Pins';
end;
//---------------------------------------------------------------------------
procedure TOWPinListPropertyEditor.GetProperties( AProc : TGetPropProc );
begin
  var ACollection := TOWPinList( GetOrdValue() );

  ACollection.LastIndicatedCount := ACollection.Count;
  for var I : Integer := 0 to ACollection.Count - 1 do
    try
      var APin := ACollection.Pins[ I ];
      if( APin is TOWSourcePin ) then
        AProc( TOWSourcePinListPropertyEditor.CreateEx( GetIntDesigner(), TOWSourcePin( APin ), ACollection.Names[ I ], Self ))

      else if( APin is TOWSinkPin ) then
        AProc( TOWSinkPinListPropertyEditor.CreateEx( GetIntDesigner(), TOWSinkPin( APin ), ACollection.Names[ I ], Self ))

      else if( APin is TOWMultiSinkPin ) then
        AProc( TOWMultiSinkPinListPropertyEditor.CreateEx( GetIntDesigner(), TOWMultiSinkPin( APin ), ACollection.Names[ I ], Self ))

      else if( APin is TOWStatePin ) then
        AProc( TOWStatePinListPropertyEditor.CreateEx( GetIntDesigner(), TOWStatePin( APin ), ACollection.Names[ I ], Self ))

    finally
      end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function  TOWPinListOwnerPropertyEditor.GetAttributes() : TPropertyAttributes;
begin
  Result := [ paSubProperties, paVolatileSubProperties ]; //, paAutoUpdate ];

  OWRequestDesignerRefresh();
end;
//---------------------------------------------------------------------------
function  TOWPinListOwnerPropertyEditor.GetValue() : String;
begin
  OWRequestRefreshEx( GetIntDesigner() );
//  OWLinkAwaitsLinking( Designer.Form );
  var ACollection := TOWPinList( GetOrdValue() );
  Result := IntToStr( ACollection.Count );
end;
//---------------------------------------------------------------------------
procedure TOWPinListOwnerPropertyEditor.SetValue( const AValue : String );
begin
  try
    var ACollection := TOWPinList( GetOrdValue() );
    ACollection.Count := StrToInt( AValue );
    Modified();
    LPResetObjectInspector( GetIntDesigner() );
  except;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
function TOWPinEditorForm.RootFromName( const ARootName : String ) : TComponent;
begin
  var ARealName : String := ARootName;
  var APos := Pos( ' ', ARealName );
  if( APos > 0 ) then
    Delete( ARealName, APos, 10000 );

  Result := FDesigner.GetComponent( ARealName + SEPARATOR + ARealName );
  if( Result = NIL ) then
    Result := FDesigner.GetComponent( ARealName );

  var ACurrentComp : TComponent := Result;
  if( ACurrentComp <> NIL ) then
    while( ACurrentComp.Owner <> NIL ) do
      begin
      if( Result is TDataModule ) then
        Break;

      if( Result is TFrame ) then
        Break;

      if( ( ACurrentComp.Owner is TCustomForm ) or ( ACurrentComp.Owner is TFrame ) or ( ACurrentComp.Owner is TDataModule ) ) then
        Result := ACurrentComp.Owner;

      ACurrentComp := ACurrentComp.Owner
      end;

  if( Result = NIL ) then
    Result := FRoot;

end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.FormsComboBoxChange( Sender : TObject );
begin
  var ASelectedRoot : TComponent := NIL;
  FAllSelected := False;
  if( FormsComboBox.Items.Count > 1 ) then
    if( FormsComboBox.ItemIndex = FormsComboBox.Items.Count - 1 ) then
      begin
      PopulateAll();
      FAllSelected := True;
      Exit;
      end;

  if( FormsComboBox.ItemIndex <> -1 ) then
    begin
    var AFormName : String := FormsComboBox.Items.Strings[ FormsComboBox.ItemIndex ];
    ASelectedRoot := RootFromName( AFormName );
    end;

  PopulateForm( ASelectedRoot );
end;
//---------------------------------------------------------------------------
type TIOWPinsEditorNotifier = class( TIAddInNotifier )
    procedure FileNotification(NotifyCode: TFileNotification;
      const FileName: String; var Cancel: Boolean); override; stdcall;
    procedure EventNotification(NotifyCode: TEventNotification;
      var Cancel: Boolean); override; stdcall;
end;
//---------------------------------------------------------------------------
procedure TIOWPinsEditorNotifier.FileNotification(NotifyCode: TFileNotification;
      const FileName: String; var Cancel: Boolean);
begin
  if( NotifyCode <> fnFileOpened ) then
    Exit;

  OWRequestDesignerRefresh();
end;
//---------------------------------------------------------------------------
procedure TIOWPinsEditorNotifier.EventNotification(NotifyCode: TEventNotification;
      var Cancel: Boolean);
begin
end;
//---------------------------------------------------------------------------
var
  GEditorNotifier : TIOWPinsEditorNotifier;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.Image1Click(Sender: TObject);
begin
  AboutPanel.BevelInner := bvLowered;
  try
    var AForm := TSmartPointer.Create( TOWAboutForm.Create( Self ) );
    AForm.ShowModal();
  finally
    AboutPanel.BevelInner := bvRaised;
    end;

end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.Image1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  AboutPanel.BevelInner := bvLowered;
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.Image1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  AboutPanel.BevelInner := bvRaised;
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.ChangeState( AItem : TListItem );
begin
  if( AItem = NIL ) then
    Exit;
    
  if( AItem.StateIndex and 1 <> 0 ) then
    AItem.StateIndex := AItem.StateIndex and 2

  else
    begin
    if( FSinkPin <> NIL ) then
      begin
      if( AItem.StateIndex < 2 ) then
        begin
        for var AListItem in ListView.Items do
          if( ( AListItem.StateIndex < 2 ) or ( TOWEItemEntry( AItem.Data ).ConnectedToPin is TOWBasicPin )) then
            AListItem.StateIndex := AListItem.StateIndex and 2;

        end

      else
        begin
        for var AListItem in ListView.Items do
          if( TOWEItemEntry( AListItem.Data ).ConnectedToPin is TOWBasicPin ) then
            if( AListItem.StateIndex < 2 ) then
              AListItem.StateIndex := 0;
            
        end;
  //Form.Items [ I ].SubItems.Objects[ 0 ] is TOWPin

      end;

    AItem.StateIndex := AItem.StateIndex or 1;
    end;

//  AItem.StateIndex := AItem.StateIndex xor 1;
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.ListViewMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if( htOnStateIcon in ListView.GetHitTestInfoAt( X, Y )) then
    begin
    var AItem := ListView.GetItemAt( X, Y );
    AItem.Selected := True;
    AItem.Focused := True;
    ChangeState( AItem );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.ListViewKeyPress(Sender: TObject; var Key: Char);
begin
  if( Key = ' ' ) then
    begin
    ChangeState( ListView.ItemFocused );
    Key := #0;
    end;

end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.ListViewDeletion(Sender: TObject; Item: TListItem);
begin
  TOWEItemEntry( Item.Data ).Free();
  Item.Data := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWPinEditorForm.AfterPinButtonClick(Sender: TObject);
begin
  var AForm := TSmartPointer.Create( TOWAfterPinSelectForm.Create( Self ));
  var AEntry := TOWEItemEntry( ListView.ItemFocused.Data );

  if( AEntry.ConnectedToPin is TOWSourcePin ) then
    AForm.FillFromSourcePin( FPin, TOWSourcePin( AEntry.ConnectedToPin ), AEntry.ConnectedAfterPin )

  else
    if( AEntry.ConnectedToPin.ConnectedDispatcherCount > 0 ) then
      AForm.FillFromDisparcher( FPin, AEntry.ConnectedToPin.ConnectedDispatcher[ 0 ], AEntry.ConnectedAfterPin );

  if( AForm.ShowModal() = mrOk ) then
    AEntry.ConnectedAfterPin := AForm.GetSelectedPin();

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
constructor TOWEItemEntry.Create( AItem : TListItem; APin : TOWBasicPin );
begin
  inherited Create();
  FPin := APin;
  FItem := AItem;
  if( FItem = NIL ) then
    Exit;

    
end;
//---------------------------------------------------------------------------
procedure TOWEItemEntry.SetConnectedToPin( AValue : TOWBasicPin );
begin
  FConnectedToPin := AValue;
  Populate();
end;
//---------------------------------------------------------------------------
procedure TOWEItemEntry.SetConnectedAfterPin( AValue : TOWBasicPin );
begin
  FConnectedAfterPin := AValue;
  Populate();
end;
//---------------------------------------------------------------------------
procedure TOWEItemEntry.Populate();
begin
  if( FItem = NIL ) then
    Exit;

  if( FItem.SubItems.Count < 3 ) then
    Exit;
     
  FItem.Caption := FPin.GetName();
  FItem.SubItems[ 0 ] := FPin.GetOwnerName( True );
{
  if( FConnectedToPin = NIL ) then
    FItem.SubItems[ 1 ] := ''

  else
    FItem.SubItems[ 1 ] := FConnectedToPin.GetFullName( FPin.GetRoot() <> FConnectedToPin.GetRoot() );
}
  if( FConnectedAfterPin = NIL ) then
    FItem.SubItems[ 2 ] := ''

  else
    FItem.SubItems[ 2 ] := FConnectedAfterPin.GetFullName( FPin.GetRoot() <> FConnectedAfterPin.GetRoot() );
    
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure Register();
begin
  DelphiAddAboutInfo( HInstance,
      'OPENWIRELOGO',
      'OpenWire',
      '',
      False
    );

  RegisterPropertyInCategory( 'Input Pins',   TypeInfo(TOWSinkPin) );
  RegisterPropertyInCategory( 'Input Pins',   TypeInfo(TOWMultiSinkPin) );
  RegisterPropertyInCategory( 'Output Pins',  TypeInfo(TOWSourcePin) );
  RegisterPropertyInCategory( 'State Pins',   TypeInfo(TOWStatePin) );
  RegisterPropertyInCategory( 'Pin Lists',    TypeInfo(TOWPinList) );

  RegisterPropertyEditor( TypeInfo(TOWSourcePin),     NIL, '', TOWSourcePinPropertyEditor );
  RegisterPropertyEditor( TypeInfo(TOWMultiSinkPin),  NIL, '', TOWMultiSinkPinPropertyEditor );
  RegisterPropertyEditor( TypeInfo(TOWSinkPin),       NIL, '', TOWSinkPinPropertyEditor );
  RegisterPropertyEditor( TypeInfo(TOWStatePin),      NIL, '', TOWStatePinPropertyEditor );
  RegisterPropertyEditor( TypeInfo(TOWPinList),       NIL, '', TOWPinListPropertyEditor );
  RegisterPropertyEditor( TypeInfo(TOWPinListOwner),  NIL, '', TOWPinListOwnerPropertyEditor );
end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
initialization
  GOWPinEditorForm := TOWPinEditorForm.Create( Application );

  GEditorNotifier := TIOWPinsEditorNotifier.Create();
  if( Assigned( ToolServices )) then
    ToolServices.AddNotifier( GEditorNotifier );

finalization
  if( Assigned( ToolServices )) then
    ToolServices.RemoveNotifier( GEditorNotifier );

  FreeAndNil( GEditorNotifier );
  FreeAndNil( GOWPinEditorForm );

end.
