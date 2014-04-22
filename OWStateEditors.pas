unit OWStateEditors;

{$DEFINE BDS2005_OR_2006_BUG} // ????

interface

uses
  Windows,
  Messages, SysUtils, Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls,
  Vcl.ImgList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Contnrs, OWPins, OWDesignTypes, Vcl.ActnList,
  System.Actions;

type
  TOWStatePinForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    OkButton: TBitBtn;
    CancelButton: TBitBtn;
    AboutPanel: TPanel;
    Image1: TImage;
    RestoreButton: TBitBtn;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    FormsComboBox: TComboBox;
    Panel5: TPanel;
    LinksCountLabel: TLabel;
    StaticLabel: TLabel;
    ImageList1: TImageList;
    PinsImageList: TImageList;
    RenameButton: TBitBtn;
    ActionList1: TActionList;
    RenameAction: TAction;
    ActionImageList: TImageList;
    TreeView: TTreeView;
    Panel6: TPanel;
    StatesImageList: TImageList;
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
    Designer      : TOWPropertyDesigner;
    StatePin      : TOWStatePin;
    Root          : TComponent;
    PinsList      : TObjectList;
    ListUpdating  : Boolean;

  public
    AllSelected  : Boolean;
    
  private
    procedure FillFormsInfo();
    procedure PopulateAll();
    procedure PopulateAllEntries();
    procedure PopulateForm( ARootComponent : TComponent );
    procedure UpdateLinksCount();
    function  RootFromName( RootName : String ) : TComponent;
    procedure ClearData();
    procedure PopulateSingleForm( CurrentRoot : TComponent; ARootComponent : TComponent; OnlyConnected : Boolean; FullPath : Boolean );
    procedure PopulateSingleFormEntries( CurrentRoot : TComponent; ARootComponent : TComponent; FullPath : Boolean );
    procedure PopulateSingleStateForm( CurrentRoot : TComponent; ARootComponent : TComponent; OnlyConnected : Boolean; FullPath : Boolean );
    procedure PopulateSingleStateFormEntries( CurrentRoot : TComponent; ARootComponent : TComponent; FullPath : Boolean );

    function  GetTreeItems() : TTreeNodes;
    procedure ChangeState( Node : TTreeNode );

    function  EntryFromPin( Pin : TOWBasicPin ) : TOWEPinEntry;
    function  EntryFromDispatcher( Dispatcher : TOWBasicStateDispatcher ) : TOWEPinEntry;

  public
    function ExecuteForState( ADesigner : TOWPropertyDesigner; AStatePin : TOWStatePin ): Integer; virtual;
    
  public
    property Items : TTreeNodes read GetTreeItems;

  end;

function OWStatePinEdit( Designer : TOWPropertyDesigner; StatePin : TOWStatePin ) : Boolean;

implementation

{$R *.DFM}

uses

{$IFDEF BDS2005_OR_2006_BUG}
  ToolsAPI,
{$ENDIF}
  System.UITypes, OWAboutFormUnit;

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
var
  FormNames     : TOWModulesColection;
  I             : Integer;

{$IFDEF BDS2005_OR_2006_BUG}
  CurProject    : IOTAProject;
  ModuleInfo    : IOTAModuleInfo;
{$ENDIF}

begin
  FormNames := TOWModulesColection.Create;
{$IFNDEF BDS2005_OR_2006_BUG}
  Designer.GetProjectModules( FormNames.GetModules );

{$ELSE}
  // Workaround for BDS 2005 and 2006 bug.
  CurProject := GetActiveProject();

  if( CurProject <> NIL ) then
    for I := 0 to CurProject.GetModuleCount() - 1 do
      begin
      ModuleInfo := CurProject.GetModule( I );
      FormNames.GetModules( ModuleInfo.FileName, ModuleInfo.Name, ModuleInfo.FormName, ModuleInfo.DesignClass, NIL );
      end;

{$ENDIF}

  FormsComboBox.Items.Clear();

  if( FormNames.Count = 0 ) then
    FormNames.Add( Root.Name );
    
  for I := 0 to FormNames.Count - 1 do
    begin
    if( OWCanAccessRootFromName( Designer, FormNames.Strings[ I ] ) ) then
      begin
      if( FormNames.Strings[ I ] = Root.Name ) then
        begin
        FormsComboBox.Items.Add( FormNames.Strings[ I ] + '  (Current)' );
        FormsComboBox.ItemIndex := FormsComboBox.Items.Count - 1;
        end

      else
        FormsComboBox.Items.Add( FormNames.Strings[ I ] );
      end;
    end;

  if( FormNames.Count > 1 ) then
    FormsComboBox.Items.Add( 'All forms' );

  PopulateAllEntries();
  if( AllSelected ) then
    FormsComboBox.ItemIndex := FormsComboBox.Items.Count - 1;

  FormsComboBoxChange( Self );

  FormNames.Free;
end;

procedure TOWStatePinForm.PopulateAll();
var
  I             : Integer;             
  CurrentRoot   : TComponent;
  
begin
  ClearData();
  for I := 0 to FormsComboBox.Items.Count - 2 do
    begin
    CurrentRoot := RootFromName( FormsComboBox.Items.Strings[ I ] );
    PopulateSingleForm( NIL, CurrentRoot, False, True );
    end;

  RootFromName( Root.Name );
end;

procedure TOWStatePinForm.PopulateAllEntries();
var
  I             : Integer;
  CurrentRoot   : TComponent;

begin
  PinsList.Clear();
  for I := 0 to FormsComboBox.Items.Count - 2 do
    begin
    CurrentRoot := RootFromName( FormsComboBox.Items.Strings[ I ] );
    PopulateSingleFormEntries( NIL, CurrentRoot, True );
    end;

  PopulateSingleFormEntries( NIL, Root, False );
  RootFromName( Root.Name );
end;

procedure TOWStatePinForm.PopulateForm( ARootComponent : TComponent );
var
  I             : Integer;
  CurrentRoot   : TComponent;

begin
  ClearData();
  PopulateSingleForm( ARootComponent, ARootComponent, False, False );

  for I := 0 to FormsComboBox.Items.Count - 2 do
    begin
    CurrentRoot := RootFromName( FormsComboBox.Items.Strings[ I ] );
    if( ARootComponent <> CurrentRoot ) then
      PopulateSingleForm( ARootComponent, CurrentRoot, True, True );

    end;

end;

procedure TOWStatePinForm.UpdateLinksCount();
var
  Counter : Integer;
  CurItem : TTreeNode;
  
begin
  Counter := 0;
  CurItem := TreeView.Items.GetFirstNode();
  while CurItem <> nil do
    begin
    if( CurItem.StateIndex = siRadioCheck ) then
      begin
      if( CurItem.Count = 0 ) then
        Counter := 1

      else
        begin
        if( TOWEPinEntry( CurItem.Data ).Dispatcher.IsConnectedTo( StatePin ) )then
          Counter := CurItem.Count - 1

        else
          Counter := CurItem.Count;

        end;

      Break;
      end;

    CurItem := CurItem.GetNextSibling();
    end;

  LinksCountLabel.Caption := IntToStr( Counter );
end;

function  TOWStatePinForm.ExecuteForState( ADesigner : TOWPropertyDesigner; AStatePin : TOWStatePin ): Integer;
begin
  Designer := ADesigner;
  StatePin := AStatePin;
  Root := ADesigner.GetRoot();

//  LinkAllButton.Visible := True;
//  UnlinkAllButton.Visible := True;

//  ListView.Columns.Items[0].Caption := 'Sink pin';
//  ListView.Columns.Items[2].Caption := 'Connected to';
  Caption := 'Connections - State Pin : ' + OWValueToString( StatePin, '.', False, False );

//  ListView.StateImages := SourcesImageList; 
  OWLinkAwaitsLinkingAllForms();
  Result := ShowModal();
end;

procedure TOWStatePinForm.Image1Click(Sender: TObject);
var
  AboutForm : TOWAboutForm;
begin
  AboutPanel.BevelInner := bvLowered;
  AboutForm := TOWAboutForm.Create( Self );
  AboutForm.ShowModal();
  AboutForm.Free();
  AboutPanel.BevelInner := bvRaised;
end;

procedure TOWStatePinForm.Image1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  AboutPanel.BevelInner := bvLowered;
end;

procedure TOWStatePinForm.Image1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  AboutPanel.BevelInner := bvRaised;
end;

procedure TOWStatePinForm.FormShow(Sender: TObject);
begin
  FillFormsInfo();
  UpdateLinksCount();
end;
//---------------------------------------------------------------------------
procedure TOWStatePinForm.FormsComboBoxChange(Sender: TObject);
var
  SelectedRoot : TComponent;
  FormName     : String;

begin
  SelectedRoot := NIL;
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
    FormName := FormsComboBox.Items.Strings[ FormsComboBox.ItemIndex ];
    SelectedRoot := RootFromName( FormName );
    end;

  PopulateForm( SelectedRoot );
end;
//---------------------------------------------------------------------------
function TOWStatePinForm.RootFromName( RootName : String ) : TComponent;
var
  RealName : String;
  iPos     : Integer;

  CurrentComp : TComponent;

begin
  RealName := RootName;
  iPos := Pos( ' ', RealName );
  if( iPos > 0 ) then
    Delete( RealName, iPos, 10000 );

  Result := Designer.GetComponent( RealName + SEPARATOR + RealName );

  CurrentComp := Result;
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
    Result := Root;

end;

procedure TOWStatePinForm.ClearData();
begin
  TreeView.Items.Clear();
end;

procedure TOWStatePinForm.PopulateSingleForm( CurrentRoot : TComponent; ARootComponent : TComponent; OnlyConnected : Boolean; FullPath : Boolean );
begin
  ListUpdating := True;
  PopulateSingleStateForm( CurrentRoot, ARootComponent, OnlyConnected, FullPath );
  ListUpdating := False;
end;

procedure TOWStatePinForm.PopulateSingleFormEntries( CurrentRoot : TComponent; ARootComponent : TComponent; FullPath : Boolean );
begin
  PopulateSingleStateFormEntries( CurrentRoot, ARootComponent, FullPath )
end;

procedure TOWStatePinForm.PopulateSingleStateForm( CurrentRoot : TComponent; ARootComponent : TComponent; OnlyConnected : Boolean; FullPath : Boolean );
var
  Values        : TStringList;
//  OwnRoot       : Boolean;
//  OwnDataModule : Boolean;
  OtherPin      : TOWPin;
  I, J          : Integer;
  Entry         : TOWEPinEntry;
  Node          : TTreeNode;
  SubNode       : TTreeNode;
  Dispatcher    : TOWBasicStateDispatcher;
  PinName       : String;
  APin          : TOWBasicPin;

begin
  Items.BeginUpdate();
  Values := TStringList.Create;
  try
    if( ARootComponent = NIL ) then
      ARootComponent := OWGetMainOwnerComponent( StatePin.Owner );

{
    OwnRoot := ( ARootComponent = OWGetMainOwnerComponent( StatePin.Owner ));
    OwnDataModule := False;

    if( not OwnRoot ) then
      OwnDataModule := ( ARootComponent.Name = OWGetMainOwnerComponent( StatePin.Owner ).Name );
}
    OWGetPinValueList( ARootComponent, StatePin, Values, False );
    if( TreeView.Items.Count = 0 ) then
      begin // First form
      for I := 0 to OWGetDispatcherCount() - 1 do
        begin
        Dispatcher := OWGetDispatcher( I );
        if( not StatePin.CanConnectToState( Dispatcher )) then
          Continue;
          
        Entry := EntryFromDispatcher( Dispatcher );
        Node := TreeView.Items.AddObject( NIL, Dispatcher.Name, Entry );
        if( StatePin.IsConnectedToState( Dispatcher )) then
          begin
          Node.StateIndex := siRadioCheck;
          Entry.SavedChecked := True;
          end

        else
          Node.StateIndex := siRadioClear;

        Node.ImageIndex := siLinkPlus;
        Node.SelectedIndex := Node.ImageIndex;

        for J := 0 to Dispatcher.PinCount - 1 do
          begin
          APin := Dispatcher.Pins[ J ];
          PinName := APin.GetFullName( True );
          if( CurrentRoot <> NIL ) then
            if( APin.GetRootName() = CurrentRoot.Name ) then
              begin
              Delete( PinName, 1, Pos( '.', PinName ));
//              PinName := OWValueToString( Dispatcher.Pins[ J ], '.', False, False );
              end;

          SubNode := TreeView.Items.AddChildObject( Node, PinName, EntryFromPin( APin ));
          if( APin.GetRootName() <> OWGetMainOwnerComponent( StatePin.Owner ).Name ) then
            begin
            if( APin.GetIsRealPin() ) then
              SubNode.StateIndex := siCrosForm

            else
              SubNode.StateIndex := siCrosFormMissing;

            end

          else
            SubNode.StateIndex := siDotLine;
          
          if( APin = StatePin ) then
            SubNode.ImageIndex := siPinRed

          else
            SubNode.ImageIndex := siPinBlue;

          SubNode.SelectedIndex := SubNode.ImageIndex;
          end;
{
        for J := 0 to Dispatcher.PinCount - 1 do
          begin
          if( OWGetMainOwnerComponent( Dispatcher.Pins[ J ].Owner ) <> CurrentRoot ) then
            PinName := OWValueToString( Dispatcher.Pins[ J ], '.', True, False )

          else
            PinName := OWValueToString( Dispatcher.Pins[ J ], '.', False, False );

          SubNode := TreeView.Items.AddChildObject( Node, PinName, Dispatcher.Pins[ J ] );
          if( OWGetMainOwnerComponent( Dispatcher.Pins[ J ].Owner ) <> OWGetMainOwnerComponent( StatePin.Owner ) ) then
            SubNode.StateIndex := siCrosForm

          else
            SubNode.StateIndex := siDotLine;

          if( Dispatcher.Pins[ J ] = StatePin ) then
            SubNode.ImageIndex := siPinRed

          else
            SubNode.ImageIndex := siPinBlue;

          SubNode.SelectedIndex := SubNode.ImageIndex;
          end;
}
        if( StatePin.IsConnectedToState( Dispatcher )) then
          begin
          Node.Expand( False );
          Node.ImageIndex := siLinkMinus;
          Node.SelectedIndex := Node.ImageIndex;
          end;
        end;
      end;

    for I := 0 to Values.Count - 1 do
      begin
      OtherPin := TOWPin( Values.Objects[ I ] );
      if( OtherPin = StatePin ) then
        Continue;

      Entry := EntryFromPin( OtherPin );
      if( OnlyConnected ) then
        begin
        if( Entry <> NIL ) then
          begin
          if( not Entry.Checked ) then
            Continue;

          end

        else
          if( not StatePin.IsLinkedTo( Values.Strings[ I ] ) ) then
            Continue;

        end;

      if( not OtherPin.IsStateConnected() ) then
        begin
        Node := TreeView.Items.AddObject( NIL, Values.Strings[ I ], Entry );
        Node.StateIndex := siRadioClear;
        Node.ImageIndex := siPinGreen;
        if( OtherPin is TOWSinkPin ) then
          Node.ImageIndex := Node.ImageIndex + 1

        else if( OtherPin is TOWSourcePin ) then
          Node.ImageIndex := Node.ImageIndex + 2;

        Node.SelectedIndex := Node.ImageIndex;
//        Node := TreeView.Items.AddObject( NIL, OtherStatePin.Name, OtherStatePin );
        end;

      end;
    
  finally
    Values.Free;
    Items.EndUpdate();
  end;

end;

procedure TOWStatePinForm.PopulateSingleStateFormEntries( CurrentRoot : TComponent; ARootComponent : TComponent; FullPath : Boolean );
var
  Values        : TStringList;
//  OwnRoot       : Boolean;
//  OwnDataModule : Boolean;
  I, J          : Integer;
  Entry         : TOWEPinEntry;
  OtherPin      : TOWPin;
  Dispatcher    : TOWBasicStateDispatcher;

begin
  Values := TStringList.Create;
  try
    if( ARootComponent = NIL ) then
      ARootComponent := OWGetMainOwnerComponent( StatePin.Owner );

{
    OwnRoot := ( ARootComponent = OWGetMainOwnerComponent( StatePin.Owner ));
    OwnDataModule := False;

    if( not OwnRoot ) then
      OwnDataModule := ( ARootComponent.Name = OWGetMainOwnerComponent( StatePin.Owner ).Name );
}
    for I := 0 to OWGetDispatcherCount() - 1 do
      begin
      Dispatcher := OWGetDispatcher( I );
      if( not StatePin.CanConnectToState( Dispatcher )) then
        Continue;

      Entry := TOWEPinEntry.Create();
      PinsList.Add( Entry );
      Entry.Dispatcher := Dispatcher;
      Entry.PinName := Dispatcher.Name;

//      Entry.CanConnect := True;
      for J := 0 to Dispatcher.PinCount - 1 do
        begin
        Entry := TOWEPinEntry.Create();
        Entry.Dispatcher := Dispatcher;
        Entry.Pin := Dispatcher.Pins[ J ];
        Entry.PinName := Dispatcher.Pins[ J ].GetName();
        PinsList.Add( Entry );
        end;

      end;

    OWGetPinValueList( ARootComponent, StatePin, Values, False );
    for I := 0 to Values.Count - 1 do
      begin
      OtherPin := TOWPin( Values.Objects[ I ] );

      if( not OtherPin.IsStateConnected() ) then
        begin
        Entry := TOWEPinEntry.Create();
        PinsList.Add( Entry );

        Entry.Pin := OtherPin;
        Entry.PinName := OtherPin.Name;

//        Entry.CanConnect := True;

        end;

      end;


  // TODO
  finally
    Values.Free;
  end;
  
end;

function TOWStatePinForm.EntryFromPin( Pin : TOWBasicPin ) : TOWEPinEntry;
var
  I : Integer;
  
begin
  Result := NIL;
  if( Pin = NIL ) then
    Exit;
    
  for I := 0 to PinsList.Count - 1 do
    if( TOWEPinEntry( PinsList.Items[ I ] ).Pin = Pin ) then
      begin
      Result := TOWEPinEntry( PinsList.Items[ I ] );
      Break;
      end;
    

end;

function TOWStatePinForm.EntryFromDispatcher( Dispatcher : TOWBasicStateDispatcher ) : TOWEPinEntry;
var
  I : Integer;
  
begin
  Result := NIL;
  for I := 0 to PinsList.Count - 1 do
    if( TOWEPinEntry( PinsList.Items[ I ] ).Dispatcher = Dispatcher ) then
      begin
      Result := TOWEPinEntry( PinsList.Items[ I ] );
      Break;
      end;
    

end;

function TOWStatePinForm.GetTreeItems() : TTreeNodes;
begin
  Result := TreeView.Items;
end;
 
procedure TOWStatePinForm.FormCreate(Sender: TObject);
begin
  PinsList     := TObjectList.Create();
  PinsList.OwnsObjects := True;
//  ColumnToSort := 0;
//  Direction    := True;
  AllSelected  := False;
//  Panel6.DoubleBuffered := True;
//  TreeView.DoubleBuffered := True;
end;

procedure TOWStatePinForm.FormDestroy(Sender: TObject);
begin
  PinsList.Free();
  GOWStatePinEditorForm := NIL;
end;

procedure TOWStatePinForm.ChangeState( Node : TTreeNode );
var
  CurItem : TTreeNode;
  
begin
  if( Node = NIL ) then
    Exit;

  if( Node.Parent <> NIL ) then 
    Exit;

  if( Node.StateIndex = siRadioClear ) then
    begin
    Node.StateIndex := siRadioCheck;
    CurItem := TreeView.Items.GetFirstNode();
    while CurItem <> nil do
      begin
      if( CurItem <> Node ) then
        CurItem.StateIndex := siRadioClear;

      CurItem := CurItem.GetNextSibling();
      end;

    end

  else
    Node.StateIndex := siRadioClear;

  UpdateLinksCount();
  TreeView.Invalidate();
end;

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

procedure TOWStatePinForm.RestoreButtonClick(Sender: TObject);
var
  CurItem       : TTreeNode;
  Entry         : TOWEPinEntry;
  
begin
  CurItem := GOWStatePinEditorForm.TreeView.Items.GetFirstNode();
  while CurItem <> nil do
    begin
    Entry := TOWEPinEntry( CurItem.Data );
    if( Entry.SavedChecked ) then
      CurItem.StateIndex := siRadioCheck

    else
      CurItem.StateIndex := siRadioClear;
      
    CurItem := CurItem.GetNextSibling();
    end;
    
  UpdateLinksCount();
end;

procedure TOWStatePinForm.TreeViewEditing(Sender: TObject; Node: TTreeNode;
  var AllowEdit: Boolean);

var
  Entry : TOWEPinEntry;

begin
  Entry := TOWEPinEntry( Node.Data );
  AllowEdit := ( Entry.Dispatcher <> NIL );
  if( AllowEdit )then
    begin
    OkButton.Default := False;
    CancelButton.Cancel := False;
    TreeView.Repaint();
    end;
    
end;

procedure TOWStatePinForm.TreeViewEdited(Sender: TObject; Node: TTreeNode;
  var S: String);
var
  Entry : TOWEPinEntry;

begin
  Entry := TOWEPinEntry( Node.Data );
  if( TOWStateDispatcher.IsUniqueName( S, True ) ) then
    Entry.Dispatcher.Name := S
    
  else
    begin
    MessageDlg('Already existing name : ' + S, mtError, [ mbOK ], 0 );
    S := Entry.Dispatcher.Name;
    end;

  OkButton.Default := True;
  CancelButton.Cancel := True;
end;

procedure TOWStatePinForm.ActionList1Update(Action: TBasicAction;
  var Handled: Boolean);
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

procedure TOWStatePinForm.RenameActionExecute(Sender: TObject);
begin
  if( TreeView.Selected <> NIL ) then
    begin
    TreeView.SetFocus();
    TreeView.Selected.EditText();
    end;

end;

procedure TOWStatePinForm.TreeViewAdvancedCustomDrawItem(
  Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState;
  Stage: TCustomDrawStage; var PaintImages, DefaultDraw: Boolean);
var
  NodeRect : TRect;
  BegRect  : TRect;
  Entry    : TOWEPinEntry;

begin
  if( Node = NIl ) then
    Exit;

  if( Stage = cdPrePaint ) then
    begin
{
    if( cdsSelected in State ) then
      begin
      NodeRect := Node.DisplayRect(True);
      NodeRect.Right :=HeaderControl.Sections.Items[ 1 ].Right;
      Sender.Canvas.FillRect( NodeRect );
      Sender.Canvas.Font.Style := [];
//      DefaultDraw := False;
      end;
}
    end

  else if( Stage = cdPostPaint ) then
    begin
//    Exit;
    BegRect := Node.DisplayRect(True);
    NodeRect := BegRect;
//    NodeRect.Bottom := NodeRect.Bottom - 1;
//    NodeRect.Right :=HeaderControl.Sections.Items[ 1 ].Left;
//    if( ( not OkButton.Default ) and ( cdsFocused in State )) then
//    if( Sender.IsEditing()) then
    NodeRect.Left := BegRect.Right;
//    Sender.Canvas.FillRect( NodeRect );

//    else
//      Sender.Canvas.TextRect( NodeRect, NodeRect.Left, NodeRect.Top, Node.Text );

//    NodeRect.Left := HeaderControl.Sections.Items[ 1 ].Left;
//    NodeRect.Right :=HeaderControl.Sections.Items[ 1 ].Right;
    NodeRect.Right := Sender.ClientRect.Right;
    Entry := TOWEPinEntry( Node.Data );
{
    if( ( Node.Parent = NIL ) and ( Entry <> NIL ) and ( Entry.Dispatcher <> NIL )) then
      Sender.Canvas.TextRect( NodeRect, NodeRect.Left, NodeRect.Top, IntToStr( Entry.Dispatcher.PinCount ))

    else
      Sender.Canvas.FillRect( NodeRect );
}
    if( ( Node.Parent = NIL ) and ( Entry <> NIL ) and ( Entry.Dispatcher <> NIL )) then
      begin
      Sender.Canvas.Brush.Style := bsClear;
      Sender.Canvas.Font.Color := clWindowText;
      Sender.Canvas.TextOut( NodeRect.Left + 10, NodeRect.Top, '[ ' + IntToStr( Entry.Dispatcher.PinCount ) + ' ]' );
      end;

//    else
//      Sender.Canvas.FillRect( NodeRect );
      
    DefaultDraw := False;
//    NodeRect.Left := HeaderControl.Sections.Items[ 1 ].Right;

//    Sender.Canvas.FillRect( NodeRect );
{
    if( cdsFocused in State ) then
      begin
      NodeRect.Left := BegRect.Left;
      Sender.Canvas.DrawFocusRect( NodeRect );
      end;
}
//    ShowMessage( 'Test' );
    end;

end;

procedure TOWStatePinForm.HeaderControlSectionResize(
  HeaderControl: THeaderControl; Section: THeaderSection);
begin
  TreeView.Invalidate();
end;

procedure TOWStatePinForm.TreeViewDblClick(Sender: TObject);
var
  MousePos : TPoint;

begin
  MousePos := TreeView.ScreenToClient( Mouse.CursorPos );
{
  if( htOnIcon in TreeView.GetHitTestInfoAt( MousePos.x, MousePos.y ) ) then
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

procedure TOWStatePinForm.HeaderControlResize(Sender: TObject);
begin
  TreeView.Invalidate();
end;

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

procedure TOWStatePinForm.TreeViewClick(Sender: TObject);
var
  MousePos   : TPoint;
  Node       : TTreeNode;
  HitTestRes : THitTests;

begin
  MousePos := TreeView.ScreenToClient( Mouse.CursorPos );
  Node := TreeView.GetNodeAt( MousePos.X, MousePos.Y );
  HitTestRes := TreeView.GetHitTestInfoAt( MousePos.X, MousePos.Y );
  if( Node = NIL ) then
    Exit;

  if( htOnStateIcon in HitTestRes ) then
    ChangeState( Node )

  else if( htOnIcon in HitTestRes ) then
    if( Node.Expanded ) then 
      Node.Collapse( False )

    else
      Node.Expand( False );

end;

procedure TOWStatePinForm.TreeViewCollapsed(Sender: TObject;
  Node: TTreeNode);
begin
  if( Node.ImageIndex = siLinkMinus ) then
    begin
    Node.ImageIndex := siLinkPlus;
    Node.SelectedIndex := Node.ImageIndex;
    TreeView.Invalidate();
    end;

end;

procedure TOWStatePinForm.TreeViewExpanded(Sender: TObject;
  Node: TTreeNode);
begin
  if( Node.ImageIndex = siLinkPlus ) then
    begin
    Node.ImageIndex := siLinkMinus;
    Node.SelectedIndex := Node.ImageIndex;
    TreeView.Invalidate();
    end;

end;
//---------------------------------------------------------------------------
function OWStatePinEdit( Designer : TOWPropertyDesigner; StatePin : TOWStatePin ) : Boolean;
var
  StateRoot     : TComponent;
  CurItem       : TTreeNode;
  Entry         : TOWEPinEntry;
  StateChanged  : Boolean;

begin
  Result := False;

  StateChanged := False;
  if( StatePin = NIL ) then
    Exit;

  try
    if( GOWStatePinEditorForm.ExecuteForState( Designer, StatePin ) = mrOk ) then
      begin
      CurItem := GOWStatePinEditorForm.TreeView.Items.GetFirstNode();
      while CurItem <> nil do
        begin
        if( CurItem.StateIndex = siRadioCheck ) then
          begin
          Entry := TOWEPinEntry( CurItem.Data );
          if( Entry.Dispatcher <> NIL ) then
            begin
            if( not StatePin.IsConnectedToState( Entry.Dispatcher ) ) then
              StateChanged := True;

            end

          else
            StateChanged := True;

          Break;
          end;

        CurItem := CurItem.GetNextSibling();
        end;

      if( CurItem = NIL ) then
        StateChanged := True;

      if( StateChanged ) then
        begin
        if( StatePin <> NIL ) then
          begin
          StateRoot := OWGetMainDesignOwner( StatePin.Owner );
          if( StateRoot is TCustomForm ) then
            if( Assigned( TCustomForm( StateRoot ).Designer )) then
              TCustomForm( StateRoot ).Designer.Modified();

          end;
        end;

      if( not StateChanged ) then
        Exit;

      StatePin.Disconnect();
      CurItem := GOWStatePinEditorForm.TreeView.Items.GetFirstNode();
      while CurItem <> nil do
        begin
        if( CurItem.StateIndex = siRadioCheck ) then
          begin
          Entry := TOWEPinEntry( CurItem.Data );
          if( Entry.Dispatcher <> NIL ) then
            StatePin.ConnectToState( Entry.Dispatcher )

          else if( Entry.Pin <> NIL ) then
            StatePin.Connect( Entry.Pin );

          Break;
          end;

        CurItem := CurItem.GetNextSibling();
        end;

      Result := True;
      end;

  finally
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
    GOWStatePinEditorForm.Free();

  GOWStatePinEditorForm := NIL;
end.
