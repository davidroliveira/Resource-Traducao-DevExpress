unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, Menus, cxLocalization,
  cxContainer, cxListBox, StdCtrls, cxButtons, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxCustomListBox;

type
  TForm12 = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxLocalizer1: TcxLocalizer;
    cxButton1: TcxButton;
    cxListBox1: TcxListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxListBox1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}
{.$R test.res}
{.$R Localization.res}


procedure TForm12.FormCreate(Sender: TObject);
begin
  //cxLocalizer1.FileName := 'test.res';
  cxLocalizer1.FileName := 'Localization.res';
  cxLocalizer1.Active := True;
  cxLocalizer1.Locale := 1046;
end;

procedure TForm12.cxButton1Click(Sender: TObject);
var
  I: SmallInt;
begin
  cxListBox1.Items.Clear;
  for I := 0 to cxLocalizer1.Languages.Count - 1 do
    cxListBox1.Items.Add(cxLocalizer1.Languages.items[I].Name);
end;

procedure TForm12.cxListBox1DblClick(Sender: TObject);
begin
  cxLocalizer1.Active := True;
  cxLocalizer1.Language := TcxListBox(Sender).Items[TcxListBox(Sender).ItemIndex];

  Caption := TcxListBox(Sender).Items[TcxListBox(Sender).ItemIndex];
end;



procedure TForm12.Button1Click(Sender: TObject);
begin
  cxLocalizer1.Active := True;
  cxLocalizer1.Locale := 1036;
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
  cxLocalizer1.Active := True;
  cxLocalizer1.Locale := 1040;
end;

procedure TForm12.Button3Click(Sender: TObject);
begin
  cxLocalizer1.Active := True;
  cxLocalizer1.Locale := 1046;
end;

end.
