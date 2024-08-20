////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//     This software is supplied under the terms of a license agreement or    //
//     nondisclosure agreement with Mitov Software and may not be copied      //
//     or disclosed except in accordance with the terms of that agreement.    //
//         Copyright(c) 2002-2024 Mitov Software. All Rights Reserved.        //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

unit OWStateEditors;

interface

{$I Mitov.Definitions.inc}

uses
  WinApi.Windows,
  WinApi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls,
  Vcl.ImgList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, OWPins, OWDesignTypes, Vcl.ActnList,
  System.Actions, System.ImageList, Mitov.Containers.List,
  Vcl.BaseImageCollection, Vcl.ImageCollection, Vcl.VirtualImageList,
  Mitov.BasicOKCancelFormUnit;

type
  TOWStatePinForm = class( TMitov_BasicOKCancelForm )
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    FormsComboBox: TComboBox;
    Panel5: TPanel;
    LinksCountLabel: TLabel;
    StaticLabel: TLabel;
    ImageList1: TImageList;
    PinsImageList: TImageList;
    ActionList1: TActionList;
    RenameAction: TAction;
    ActionImageList: TImageList;
    TreeView: TTreeView;
    Panel6: TPanel;
    StatesImageList: TImageList;
    ImageCollection: TImageCollection;
    VirtualImageList: TVirtualImageList;
    AboutPanel: TPanel;
    Image1: TImage;
    RestoreButton: TButton;
    RenameButton: TButton;
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormsComboBoxChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure TreeViewKeyPress(Sender: TObject; var Key: Char);
    procedure RestoreButtonClick(Sender: TObject);
    procedure TreeViewEditing(Sender: TObject; Node: TTreeNode;
      var AllowEdit: Boolean);
    procedure TreeViewEdited(Sender: TObject; Node: TTreeNode;
      var S: String);
    procedure ActionList1Update(Action: TBasicAction;
      var Handled: Boolean);
    procedure RenameActionExecute(Sender: TObject);
    procedure TreeViewAdvancedCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; Stage: TCustomDrawStage;
      var PaintImages, DefaultDraw: Boolean);
    procedure HeaderControlSectionResize(HeaderControl: THeaderControl;
      Section: THeaderSection);
    procedure TreeViewDblClick(Sender: TObject);
    procedure HeaderControlResize(Sender: TObject);
    procedure RenameActionUpdate(Sender: TObject);
    procedure TreeViewClick(Sender: TObject);
    procedure TreeViewCollapsed(Sender: TObject; Node: TTreeNode);
    procedure TreeViewExpanded(Sender: TObject; Node: TTreeNode);
    
  private
    FDesigner     : TOWPropertyDesigner;
    FStatePin     : TOWStatePin;
    FRoot         : TComponent;
    FPinsList     : IObjectOwnerArrayList<TOWEPinEntry>;
    FListUpdating : Boolean;

  public
    AllSelected  : Boolean;
    
  private
    procedure FillFormsInfo();
    procedure PopulateAll();
    procedure PopulateAllEntries();
    procedure PopulateForm( ARootComponent : TComponent );
    procedure UpdateLinksCount();
    function  RootFromName( const ARootName : String ) : TComponent;
    procedure ClearData();
    procedure PopulateSingleForm( ACurrentRoot : TComponent; ARootComponent : TComponent; AOnlyConnected : Boolean; AFullPath : Boolean );
    procedure PopulateSingleFormEntries( ACurrentRoot : TComponent; ARootComponent : TComponent; AFullPath : Boolean );
    procedure PopulateSingleStateForm( ACurrentRoot : TComponent; ARootComponent : TComponent; AOnlyConnected : Boolean; AFullPath : Boolean );
    procedure PopulateSingleStateFormEntries( ACurrentRoot : TComponent; ARootComponent : TComponent; AFullPath : Boolean );

    function  GetTreeItems() : TTreeNodes;
    procedure ChangeState( ANode : TTreeNode );

    function  EntryFromPin( APin : TOWBasicPin ) : TOWEPinEntry;
    function  EntryFromDispatcher( ADispatcher : TOWBasicStateDispatcher ) : TOWEPinEntry;

  public
    function ExecuteForState( ADesigner : TOWPropertyDesigner; AStatePin : TOWStatePin ): Integer; virtual;
    
  public
    property Items : TTreeNodes read GetTreeItems;

  end;

function OWStatePinEdit( ADesigner : TOWPropertyDesigner; AStatePin : TOWStatePin ) : Boolean;

implementation

{$R *.DFM}

uses
  System.Generics.Collections, Mitov.Containers.Common, Mitov.Containers.Dictionary,
  ToolsAPI,
  System.UITypes, OWAboutFormUnit, Mitov.Utils;

{$IFDEF BCB}
const
  SEPARATOR = '->';
{$ELSE}
const
  SEPARATOR = '.';
{$ENDIF}

const siNone            : TImageIndex = 0;
const siLinkPlus        : TImageIndex = 0;
const siLinkMinus       : TImageIndex = 1;
const siPinGreen        : TImageIndex = 2;
const siPinGreenSink    : TImageIndex = 3;
const siPinGreenSource  : TImageIndex = 4;
const siPinBlue         : TImageIndex = 5;
const siPinBlueSink     : TImageIndex = 6;
const siPinBlueSource   : TImageIndex = 7;
const siPinRed          : TImageIndex = 8;
const siPinRedSink      : TImageIndex = 9;
const siPinRedSource    : TImageIndex = 10;

const siRadioClear      : TImageIndex = 1;
const siRadioCheck      : TImageIndex = 2;
const siClear           : TImageIndex = 3;
const siCheck           : TImageIndex = 4;
const siDotLine         : TImageIndex = 5;
const siCrosForm        : TImageIndex = 6;
const siCrosFormMissing : TImageIndex = 7;

var GOWStatePinEditorForm : TOWStatePinForm;

//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
procedure TOWStatePinForm.FillFormsInfo();
begin
  var AFormNamesObj := TOWModulesColection.Create();
  var AFormNames : IStringArrayList := AFormNamesObj;
//{$IFNDEF BDS2005_OR_2006_BUG}
//    Designer.GetProjectModules( AFormNames.GetModules );

//{$ELSE}
    // Workaround for BDS 2005 and 2006 bug.
  var ACurProject := GetActiveProject();

  if( ACurProject <> NIL ) then
    for var I : Integer := 0 to ACurProject.GetModuleCount() - 1 do
      begin
      var AModuleInfo := ACurProject.GetModule( I );
      AFormNamesObj.GetModules( AModuleInfo.FileName, AModuleInfo.Name, AModuleInfo.FormName, AModuleInfo.DesignClass, NIL );
      end;

//{$ENDIF}

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
  if( AllSelected ) then
    FormsComboBox.ItemIndex := FormsComboBox.Items.Count - 1;

  FormsComboBoxChange( Self );
end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.PopulateAll();
begin
  ClearData();
  for var I : Integer := 0 to FormsComboBox.Items.Count - 2 do
    begin
    var ACurrentRoot : TComponent := RootFromName( FormsComboBox.Items.Strings[ I ] );
    PopulateSingleForm( NIL, ACurrentRoot, False, True );
    end;

  RootFromName( FRoot.Name );
end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.PopulateAllEntries();
begin
  FPinsList.Clear();
  for var I : Integer := 0 to FormsComboBox.Items.Count - 2 do
    begin
    var ACurrentRoot : TComponent := RootFromName( FormsComboBox.Items.Strings[ I ] );
    PopulateSingleFormEntries( NIL, ACurrentRoot, True );
    end;

  PopulateSingleFormEntries( NIL, FRoot, False );
  RootFromName( FRoot.Name );
end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.PopulateForm( ARootComponent : TComponent );
begin
  ClearData();
  PopulateSingleForm( ARootComponent, ARootComponent, False, False );

  for var I : Integer := 0 to FormsComboBox.Items.Count - 2 do
    begin
    var ACurrentRoot : TComponent := RootFromName( FormsComboBox.Items.Strings[ I ] );
    if( ARootComponent <> ACurrentRoot ) then
      PopulateSingleForm( ARootComponent, ACurrentRoot, True, True );

    end;

end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.UpdateLinksCount();
begin
  var ACounter : Integer := 0;
  var ACurItem := TreeView.Items.GetFirstNode();
  while ACurItem <> nil do
    begin
    if( ACurItem.StateIndex = siRadioCheck ) then
      begin
      if( ACurItem.Count = 0 ) then
        ACounter := 1

      else
        begin
        if( TOWEPinEntry( ACurItem.Data ).Dispatcher.IsConnectedTo( FStatePin ) )then
          ACounter := ACurItem.Count - 1

        else
          ACounter := ACurItem.Count;

        end;

      Break;
      end;

    ACurItem := ACurItem.GetNextSibling();
    end;

  LinksCountLabel.Caption := IntToStr( ACounter );
end;
//---------------------------------------------------------------------------
function  TOWStatePinForm.ExecuteForState( ADesigner : TOWPropertyDesigner; AStatePin : TOWStatePin ): Integer;
begin
  FDesigner := ADesigner;
  FStatePin := AStatePin;
  FRoot := ADesigner.GetRoot();

//  LinkAllButton.Visible := True;
//  UnlinkAllButton.Visible := True;

//  ListView.Columns.Items[0].Caption := 'Sink pin';
//  ListView.Columns.Items[2].Caption := 'Connected to';
  Caption := 'Connections - State Pin : ' + OWValueToString( FStatePin, False, False );

//  ListView.StateImages := SourcesImageList;
  OWLinkAwaitsLinkingAllForms();
  Result := ShowModal();
end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.Image1Click(Sender: TObject);
begin
  AboutPanel.BevelInner := bvLowered;
  try
    var AForm := TSmartPointer.Create( TOWAboutForm.Create( Self ));
    AForm.ShowModal();
  finally
    AboutPanel.BevelInner := bvRaised;
    end;

end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.Image1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  AboutPanel.BevelInner := bvLowered;
end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.Image1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  AboutPanel.BevelInner := bvRaised;
end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.FormShow(Sender: TObject);
begin
  FillFormsInfo();
  UpdateLinksCount();
end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.FormsComboBoxChange(Sender: TObject);
var
  ASelectedRoot : TComponent;

begin
  ASelectedRoot := NIL;
  AllSelected := False;
  if( FormsComboBox.Items.Count > 1 ) then
    if( FormsComboBox.ItemIndex = FormsComboBox.Items.Count - 1 ) then
      begin
      PopulateAll();
      AllSelected := True;
      Exit;
      end;

  if( FormsComboBox.ItemIndex <> -1 ) then
    begin
    var AFormName := FormsComboBox.Items.Strings[ FormsComboBox.ItemIndex ];
    ASelectedRoot := RootFromName( AFormName );
    end;

  PopulateForm( ASelectedRoot );
end;
//---------------------------------------------------------------------------
function TOWStatePinForm.RootFromName( const ARootName : String ) : TComponent;
begin
  var ARealName := ARootName;
  var APos := Pos( ' ', ARealName );
  if( APos > 0 ) then
    Delete( ARealName, APos, 10000 );

  Result := FDesigner.GetComponent( ARealName + SEPARATOR + ARealName );

  var CurrentComp := Result;
  if( CurrentComp <> NIL ) then
    while( CurrentComp.Owner <> NIL ) do
      begin
      if( Result is TDataModule ) then
        Break;

      if( ( CurrentComp.Owner is TCustomForm ) or ( CurrentComp.Owner is TDataModule ) ) then
        Result := CurrentComp.Owner;

      CurrentComp := CurrentComp.Owner
      end;

  if( Result = NIL ) then
    Result := FRoot;

end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.ClearData();
begin
  TreeView.Items.Clear();
end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.PopulateSingleForm( ACurrentRoot : TComponent; ARootComponent : TComponent; AOnlyConnected : Boolean; AFullPath : Boolean );
begin
  FListUpdating := True;
  try
    PopulateSingleStateForm( ACurrentRoot, ARootComponent, AOnlyConnected, AFullPath );
  finally
    FListUpdating := False;
    end;

end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.PopulateSingleFormEntries( ACurrentRoot : TComponent; ARootComponent : TComponent; AFullPath : Boolean );
begin
  PopulateSingleStateFormEntries( ACurrentRoot, ARootComponent, AFullPath )
end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.PopulateSingleStateForm( ACurrentRoot : TComponent; ARootComponent : TComponent; AOnlyConnected : Boolean; AFullPath : Boolean );
begin
  Items.BeginUpdate();
  try
    if( ARootComponent = NIL ) then
      ARootComponent := GetMainOwnerComponent( FStatePin.Owner );

    var ACollection : IArrayPairList<String, TOWBasicPin> := TArrayPairList<String, TOWBasicPin>.Create();
    OWGetPinValueList( ACollection.GetAsPairCollection(), ARootComponent, FStatePin, False );
    if( TreeView.Items.Count = 0 ) then
      begin // First form
      for var I : Integer := 0 to OWGetDispatcherCount() - 1 do
        begin
        var ADispatcher := OWGetDispatcher( I );
        if( not FStatePin.CanConnectToState( ADispatcher )) then
          Continue;
          
        var AEntry := EntryFromDispatcher( ADispatcher );
        var ANode := TreeView.Items.AddObject( NIL, ADispatcher.Name, AEntry );
        if( FStatePin.IsConnectedToState( ADispatcher )) then
          begin
          ANode.StateIndex := siRadioCheck;
          AEntry.SavedChecked := True;
          end

        else
          ANode.StateIndex := siRadioClear;

        ANode.ImageIndex := siLinkPlus;
        ANode.SelectedIndex := ANode.ImageIndex;

        for var J : Integer := 0 to ADispatcher.PinCount - 1 do
          begin
          var APin := ADispatcher.Pins[ J ];
          var APinName := APin.GetFullName( True );
          if( ACurrentRoot <> NIL ) then
            if( APin.GetRootName() = ACurrentRoot.Name ) then
              begin
              Delete( APinName, 1, Pos( '.', APinName ));
//              APinName := OWValueToString( ADispatcher.Pins[ J ], '.', False, False );
              end;

          var ASubNode := TreeView.Items.AddChildObject( ANode, APinName, EntryFromPin( APin ));
          if( APin.GetRootName() <> GetMainOwnerComponent( FStatePin.Owner ).Name ) then
            begin
            if( APin.GetIsRealPin() ) then
              ASubNode.StateIndex := siCrosForm

            else
              ASubNode.StateIndex := siCrosFormMissing;

            end

          else
            ASubNode.StateIndex := siDotLine;
          
          if( APin = FStatePin ) then
            ASubNode.ImageIndex := siPinRed

          else
            ASubNode.ImageIndex := siPinBlue;

          ASubNode.SelectedIndex := ASubNode.ImageIndex;
          end;
{
        for J := 0 to ADispatcher.PinCount - 1 do
          begin
          if( OWGetMainOwnerComponent( ADispatcher.Pins[ J ].Owner ) <> ACurrentRoot ) then
            APinName := OWValueToString( ADispatcher.Pins[ J ], '.', True, False )

          else
            APinName := OWValueToString( ADispatcher.Pins[ J ], '.', False, False );

          ASubNode := TreeView.Items.AddChildObject( ANode, APinName, ADispatcher.Pins[ J ] );
          if( OWGetMainOwnerComponent( ADispatcher.Pins[ J ].Owner ) <> OWGetMainOwnerComponent( FStatePin.Owner ) ) then
            ASubNode.StateIndex := siCrosForm

          else
            ASubNode.StateIndex := siDotLine;

          if( ADispatcher.Pins[ J ] = FStatePin ) then
            ASubNode.ImageIndex := siPinRed

          else
            ASubNode.ImageIndex := siPinBlue;

          ASubNode.SelectedIndex := ASubNode.ImageIndex;
          end;
}
        if( FStatePin.IsConnectedToState( ADispatcher )) then
          begin
          ANode.Expand( False );
          ANode.ImageIndex := siLinkMinus;
          ANode.SelectedIndex := ANode.ImageIndex;
          end;
        end;
      end;

    for var APair in ACollection do
      begin
      var AOtherPin := APair.Value;
      if( AOtherPin = FStatePin ) then
        Continue;

      var AEntry := EntryFromPin( AOtherPin );
      if( AOnlyConnected ) then
        begin
        if( AEntry <> NIL ) then
          begin
          if( not AEntry.Checked ) then
            Continue;

          end

        else
          if( not FStatePin.IsLinkedTo( APair.Key )) then
            Continue;

        end;

      if( not AOtherPin.IsStateConnected() ) then
        begin
        var ANode := TreeView.Items.AddObject( NIL, APair.Key, AEntry );
        ANode.StateIndex := siRadioClear;
        ANode.ImageIndex := siPinGreen;
        if( AOtherPin is TOWSinkPin ) then
          ANode.ImageIndex := ANode.ImageIndex + 1

        else if( AOtherPin is TOWSourcePin ) then
          ANode.ImageIndex := ANode.ImageIndex + 2;

        ANode.SelectedIndex := ANode.ImageIndex;
//        ANode := TreeView.Items.AddObject( NIL, OtherStatePin.Name, OtherStatePin );
        end;

      end;

  finally
    Items.EndUpdate();
    end;

end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.PopulateSingleStateFormEntries( ACurrentRoot : TComponent; ARootComponent : TComponent; AFullPath : Boolean );
var
  APair : TPair<String, TOWBasicPin>;

begin
  if( ARootComponent = NIL ) then
    ARootComponent := GetMainOwnerComponent( FStatePin.Owner );

  for var I : Integer := 0 to OWGetDispatcherCount() - 1 do
    begin
    var ADispatcher := OWGetDispatcher( I );
    if( not FStatePin.CanConnectToState( ADispatcher )) then
      Continue;

    var AEntry := TOWEPinEntry.Create();
    FPinsList.Add( AEntry );
    AEntry.Dispatcher := ADispatcher;
    AEntry.PinName := ADispatcher.Name;

//      AEntry.CanConnect := True;
    for var J : Integer := 0 to ADispatcher.PinCount - 1 do
      begin
      var APin := ADispatcher.Pins[ J ];
      AEntry := TOWEPinEntry.Create();
      AEntry.Dispatcher := ADispatcher;
      AEntry.Pin := APin;
      AEntry.PinName := APin.GetName();
      FPinsList.Add( AEntry );
      end;
    end;

  var ACollection : IArrayPairList<String, TOWBasicPin> := TArrayPairList<String, TOWBasicPin>.Create();
  OWGetPinValueList( ACollection.GetAsPairCollection(), ARootComponent, FStatePin, False );
  for APair in ACollection do
    begin
    var AOtherPin := APair.Value;

    if( not AOtherPin.IsStateConnected() ) then
      begin
      var AEntry := TOWEPinEntry.Create();
      FPinsList.Add( AEntry );

      AEntry.Pin := AOtherPin;
      AEntry.PinName := AOtherPin.Name;

//        AEntry.CanConnect := True;
      end;
    end;

end;
//---------------------------------------------------------------------------
function TOWStatePinForm.EntryFromPin( APin : TOWBasicPin ) : TOWEPinEntry;
begin
  if( APin = NIL ) then
    Exit( NIL );

  for var AItem in FPinsList do
    if( AItem.Pin = APin ) then
      Exit( AItem );

  Result := NIL;
end;
//---------------------------------------------------------------------------
function TOWStatePinForm.EntryFromDispatcher( ADispatcher : TOWBasicStateDispatcher ) : TOWEPinEntry;
begin
  for var AItem in FPinsList do
    if( AItem.Dispatcher = ADispatcher ) then
      Exit( AItem );

  Result := NIL;
end;
//---------------------------------------------------------------------------
function TOWStatePinForm.GetTreeItems() : TTreeNodes;
begin
  Result := TreeView.Items;
end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.FormCreate(Sender: TObject);
begin
  FPinsList := TObjectOwnerArrayList<TOWEPinEntry>.Create();
//  ColumnToSort := 0;
//  Direction    := True;
  AllSelected := False;
//  Panel6.DoubleBuffered := True;
//  TreeView.DoubleBuffered := True;
end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.FormDestroy(Sender: TObject);
begin
  GOWStatePinEditorForm := NIL;
end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.ChangeState( ANode : TTreeNode );
begin
  if( ANode = NIL ) then
    Exit;

  if( ANode.Parent <> NIL ) then
    Exit;

  if( ANode.StateIndex = siRadioClear ) then
    begin
    ANode.StateIndex := siRadioCheck;
    var ACurItem := TreeView.Items.GetFirstNode();
    while ACurItem <> nil do
      begin
      if( ACurItem <> ANode ) then
        ACurItem.StateIndex := siRadioClear;

      ACurItem := ACurItem.GetNextSibling();
      end;
    end

  else
    ANode.StateIndex := siRadioClear;

  UpdateLinksCount();
  TreeView.Invalidate();
end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.TreeViewKeyPress(Sender: TObject; var Key: Char);
begin
  if( TreeView.IsEditing()) then
    Exit;

  if( Key = ' ' )then
    if( TreeView.Selected <> NIL ) then
      begin
      ChangeState( TreeView.Selected );
      Key := #0;
      end;

end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.RestoreButtonClick(Sender: TObject);
begin
  var ACurItem := GOWStatePinEditorForm.TreeView.Items.GetFirstNode();
  while ACurItem <> nil do
    begin
    var AEntry := TOWEPinEntry( ACurItem.Data );
    if( AEntry.SavedChecked ) then
      ACurItem.StateIndex := siRadioCheck

    else
      ACurItem.StateIndex := siRadioClear;

    ACurItem := ACurItem.GetNextSibling();
    end;

  UpdateLinksCount();
end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.TreeViewEditing(Sender: TObject; Node: TTreeNode; var AllowEdit: Boolean);
begin
  var AEntry := TOWEPinEntry( Node.Data );
  AllowEdit := ( AEntry.Dispatcher <> NIL );
  if( AllowEdit )then
    begin
    OkButton.Default := False;
    CancelButton.Cancel := False;
    TreeView.Repaint();
    end;

end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.TreeViewEdited( Sender : TObject; Node : TTreeNode; var S : String );
begin
  var AEntry := TOWEPinEntry( Node.Data );
  if( TOWStateDispatcher.IsUniqueName( S, True ) ) then
    AEntry.Dispatcher.Name := S
    
  else
    begin
    MessageDlg('Already existing name : ' + S, mtError, [ mbOK ], 0 );
    S := AEntry.Dispatcher.Name;
    end;

  OkButton.Default := True;
  CancelButton.Cancel := True;
end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.ActionList1Update(Action: TBasicAction; var Handled: Boolean);
begin
  if( TreeView.IsEditing() ) then
    begin
    OkButton.Default := False;
    CancelButton.Cancel := False;
    end

  else
    begin
    OkButton.Default := True;
    CancelButton.Cancel := True;
    end;

end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.RenameActionExecute(Sender: TObject);
begin
  if( TreeView.Selected <> NIL ) then
    begin
    TreeView.SetFocus();
    TreeView.Selected.EditText();
    end;

end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.TreeViewAdvancedCustomDrawItem(
  Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState;
  Stage: TCustomDrawStage; var PaintImages, DefaultDraw: Boolean);
begin
  if( Node = NIl ) then
    Exit;

  if( Stage = cdPrePaint ) then
    begin
{
    if( cdsSelected in State ) then
      begin
      ANodeRect := Node.DisplayRect(True);
      ANodeRect.Right :=HeaderControl.Sections.Items[ 1 ].Right;
      Sender.Canvas.FillRect( ANodeRect );
      Sender.Canvas.Font.Style := [];
//      DefaultDraw := False;
      end;
}
    end

  else if( Stage = cdPostPaint ) then
    begin
//    Exit;
    var ABegRect := Node.DisplayRect(True);
    var ANodeRect := ABegRect;
//    ANodeRect.Bottom := ANodeRect.Bottom - 1;
//    ANodeRect.Right :=HeaderControl.Sections.Items[ 1 ].Left;
//    if( ( not OkButton.Default ) and ( cdsFocused in State )) then
//    if( Sender.IsEditing()) then
    ANodeRect.Left := ABegRect.Right;
//    Sender.Canvas.FillRect( ANodeRect );

//    else
//      Sender.Canvas.TextRect( ANodeRect, ANodeRect.Left, ANodeRect.Top, Node.Text );

//    ANodeRect.Left := HeaderControl.Sections.Items[ 1 ].Left;
//    ANodeRect.Right :=HeaderControl.Sections.Items[ 1 ].Right;
    ANodeRect.Right := Sender.ClientRect.Right;
    var AEntry := TOWEPinEntry( Node.Data );
{
    if( ( Node.Parent = NIL ) and ( AEntry <> NIL ) and ( AEntry.Dispatcher <> NIL )) then
      Sender.Canvas.TextRect( ANodeRect, ANodeRect.Left, ANodeRect.Top, IntToStr( AEntry.Dispatcher.PinCount ))

    else
      Sender.Canvas.FillRect( ANodeRect );
}
    if( ( Node.Parent = NIL ) and ( AEntry <> NIL ) and ( AEntry.Dispatcher <> NIL )) then
      begin
      Sender.Canvas.Brush.Style := bsClear;
      Sender.Canvas.Font.Color := clWindowText;
      Sender.Canvas.TextOut( ANodeRect.Left + 10, ANodeRect.Top, '[ ' + IntToStr( AEntry.Dispatcher.PinCount ) + ' ]' );
      end;

//    else
//      Sender.Canvas.FillRect( ANodeRect );
      
    DefaultDraw := False;
//    ANodeRect.Left := HeaderControl.Sections.Items[ 1 ].Right;

//    Sender.Canvas.FillRect( ANodeRect );
{
    if( cdsFocused in State ) then
      begin
      ANodeRect.Left := ABegRect.Left;
      Sender.Canvas.DrawFocusRect( ANodeRect );
      end;
}
//    ShowMessage( 'Test' );
    end;

end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.HeaderControlSectionResize(
  HeaderControl: THeaderControl; Section: THeaderSection);
begin
  TreeView.Invalidate();
end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.TreeViewDblClick(Sender: TObject);
begin
{
  var AMousePos := TreeView.ScreenToClient( Mouse.CursorPos );
  if( htOnIcon in TreeView.GetHitTestInfoAt( AMousePos.x, AMousePos.y ) ) then
    if( Node.Expanded ) then
      Node.Collapse( False )

    else
      Node.Expand( False );
}
{
  if( TreeView.Selected <> NIL ) then
    begin
    if( TreeView.Selected.Expanded ) then
      TreeView.Selected.Collapse( False )

    else
      TreeView.Selected.Expand( False );

    end;
}
end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.HeaderControlResize(Sender: TObject);
begin
  TreeView.Invalidate();
end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.RenameActionUpdate(Sender: TObject);
begin
  if( TreeView.Selected <> NIL ) then
    if( TreeView.Selected.Parent = NIL ) then
      if( TreeView.Selected.Data <> NIL ) then
        if( TOWEPinEntry( TreeView.Selected.Data ).Dispatcher <> NIL ) then
          begin
          RenameAction.Enabled := True;
          Exit;
          end;

  RenameAction.Enabled := False;
end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.TreeViewClick(Sender: TObject);
begin
  var AMousePos := TreeView.ScreenToClient( Mouse.CursorPos );
  var ANode := TreeView.GetNodeAt( AMousePos.X, AMousePos.Y );
  var AHitTestRes : THitTests := TreeView.GetHitTestInfoAt( AMousePos.X, AMousePos.Y );
  if( ANode = NIL ) then
    Exit;

  if( htOnStateIcon in AHitTestRes ) then
    ChangeState( ANode )

  else if( htOnIcon in AHitTestRes ) then
    begin
    if( ANode.Expanded ) then
      ANode.Collapse( False )

    else
      ANode.Expand( False );

    end;

end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.TreeViewCollapsed(Sender: TObject; Node: TTreeNode);
begin
  if( Node.ImageIndex = siLinkMinus ) then
    begin
    Node.ImageIndex := siLinkPlus;
    Node.SelectedIndex := Node.ImageIndex;
    TreeView.Invalidate();
    end;

end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.TreeViewExpanded(Sender: TObject; Node: TTreeNode);
begin
  if( Node.ImageIndex = siLinkPlus ) then
    begin
    Node.ImageIndex := siLinkMinus;
    Node.SelectedIndex := Node.ImageIndex;
    TreeView.Invalidate();
    end;

end;
//---------------------------------------------------------------------------
function OWStatePinEdit( ADesigner : TOWPropertyDesigner; AStatePin : TOWStatePin ) : Boolean;
begin
  Result := False;

  var AStateChanged := False;
  if( AStatePin = NIL ) then
    Exit;

  if( GOWStatePinEditorForm.ExecuteForState( ADesigner, AStatePin ) = mrOk ) then
    begin
    var ACurItem := GOWStatePinEditorForm.TreeView.Items.GetFirstNode();
    while ACurItem <> nil do
      begin
      if( ACurItem.StateIndex = siRadioCheck ) then
        begin
        var AEntry := TOWEPinEntry( ACurItem.Data );
        if( AEntry.Dispatcher <> NIL ) then
          begin
          if( not AStatePin.IsConnectedToState( AEntry.Dispatcher ) ) then
            AStateChanged := True;

          end

        else
          AStateChanged := True;

        Break;
        end;

      ACurItem := ACurItem.GetNextSibling();
      end;

    if( ACurItem = NIL ) then
      AStateChanged := True;

    if( AStateChanged ) then
      if( AStatePin <> NIL ) then
        begin
        var AStateRoot : TComponent := OWGetMainDesignOwner( AStatePin.Owner );
        if( AStateRoot is TCustomForm ) then
          if( Assigned( TCustomForm( AStateRoot ).Designer )) then
            TCustomForm( AStateRoot ).Designer.Modified();

        end;

    if( not AStateChanged ) then
      Exit;

    AStatePin.Disconnect();
    ACurItem := GOWStatePinEditorForm.TreeView.Items.GetFirstNode();
    while ACurItem <> nil do
      begin
      if( ACurItem.StateIndex = siRadioCheck ) then
        begin
        var AEntry := TOWEPinEntry( ACurItem.Data );
        if( AEntry.Dispatcher <> NIL ) then
          AStatePin.ConnectToState( AEntry.Dispatcher )

        else if( AEntry.Pin <> NIL ) then
          AStatePin.Connect( AEntry.Pin );

        Break;
        end;

      ACurItem := ACurItem.GetNextSibling();
      end;

    Result := True;
    end;

end;
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
initialization
  GOWStatePinEditorForm := TOWStatePinForm.Create( Application );

finalization
  if( GOWStatePinEditorForm <> NIL ) then
{$IFDEF RX12_0_Up}
    GOWStatePinEditorForm.Free();
{$ELSE}
    GOWStatePinEditorForm.DisposeOf();
{$ENDIF}

  GOWStatePinEditorForm := NIL;
end.
