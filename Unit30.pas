unit Unit30;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  IBX.IBCustomDataSet, cxLabel, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TForm30 = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Panel4: TPanel;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    IBSPR_BANK: TIBDataSet;
    DSSPR_BANK: TDataSource;
    IBSPR_BANKKL: TIntegerField;
    IBSPR_BANKNAIM: TIBStringField;
    IBSPR_BANKRAH: TIBStringField;
    IBSPR_BANKSTR_ST: TIntegerField;
    IBSPR_BANKCOL_POISK_ENDDATA: TIntegerField;
    IBSPR_BANKSTR_PRIZN_ENDDATA: TIBStringField;
    IBSPR_BANKCOL_PRIZN: TIntegerField;
    IBSPR_BANKCOL_SUM: TIntegerField;
    IBSPR_BANKCOL_DT: TIntegerField;
    IBSPR_BANKCOL_DOK: TIntegerField;
    IBSPR_BANKCOL_END: TIntegerField;
    IBSPR_BANKSTR_POISK_RAH: TIntegerField;
    IBSPR_BANKCOL_POISK_RAH: TIntegerField;
    IBWID: TIBDataSet;
    DSWID: TDataSource;
    IBSPR_VIDPOISK: TIBDataSet;
    DSSPR_VIDPOISK: TDataSource;
    IBSPR_VIPISKA: TIBDataSet;
    DSSPR_VIPISKA: TDataSource;
    IBWIDWID: TIBStringField;
    IBWIDID_ORG: TFloatField;
    IBWIDNAIM: TIBStringField;
    IBWIDSNAIM: TIBStringField;
    IBWIDPAR: TIBStringField;
    IBWIDFL0: TIBStringField;
    IBWIDFL: TIBStringField;
    IBWIDCOD: TIBStringField;
    IBWIDNPP: TFloatField;
    IBWIDFL_NONACH: TIBStringField;
    IBWIDFL_NOOPL: TIBStringField;
    IBWIDFL_VTCH: TIBStringField;
    IBWIDFL_NOOBOR: TIBStringField;
    IBWIDFL_GROPL: TFloatField;
    IBWIDFL_SUBS: TFloatField;
    IBWIDVAL: TFloatField;
    IBWIDUPD: TIntegerField;
    IBSPR_VIDPOISKKL: TIntegerField;
    IBSPR_VIDPOISKNAME_VID: TIBStringField;
    IBSPR_VIDPOISKVIDPOISK: TIBStringField;
    IBSPR_VIPISKAKL: TIntegerField;
    IBSPR_VIPISKAKL_BANK: TIntegerField;
    IBSPR_VIPISKAWID: TIBStringField;
    IBSPR_VIPISKAPOISK: TIBStringField;
    cxGrid1DBTableView1NAIM: TcxGridDBColumn;
    cxGridDBTableView1NAIM: TcxGridDBColumn;
    cxGridDBTableView2NAME_VID: TcxGridDBColumn;
    cxGridDBTableView3POISK: TcxGridDBColumn;
    IBSPR_VIPISKAVIDPOISK: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure IBSPR_VIPISKAAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBSPR_VIDPOISKAfterScroll(DataSet: TDataSet);
    procedure IBSPR_BANKAfterScroll(DataSet: TDataSet);
    procedure IBWIDAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    procedure UpdateVipiska;
  public
    { Public declarations }
  end;

var
  Form30: TForm30;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm30.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if IBSPR_VIPISKA.State in [dsInsert,dsEdit] then IBSPR_VIPISKA.Post;
end;

procedure TForm30.FormShow(Sender: TObject);
begin
IBSPR_BANK.Open;
IBWID.Open;
IBSPR_VIDPOISK.Open;
UpdateVipiska();

end;

procedure TForm30.IBSPR_BANKAfterScroll(DataSet: TDataSet);
begin
UpdateVipiska();
end;

procedure TForm30.IBSPR_VIDPOISKAfterScroll(DataSet: TDataSet);
begin
UpdateVipiska();
end;

procedure TForm30.IBSPR_VIPISKAAfterInsert(DataSet: TDataSet);
begin
if IBSPR_VIDPOISKVIDPOISK.Value='posl' then
begin
  IBSPR_VIPISKAKL_BANK.Value:=IBSPR_BANKKL.Value;
  IBSPR_VIPISKAWID.Value:=IBWIDWID.Value;
  IBSPR_VIPISKAVIDPOISK.Value:=IBSPR_VIDPOISKVIDPOISK.Value;
end
else
begin
  IBSPR_VIPISKAKL_BANK.Value:=IBSPR_BANKKL.Value;
  IBSPR_VIPISKAVIDPOISK.Value:=IBSPR_VIDPOISKVIDPOISK.Value;
end;
end;

procedure TForm30.IBWIDAfterScroll(DataSet: TDataSet);
begin
UpdateVipiska();
end;

procedure TForm30.UpdateVipiska();
begin
IBSPR_VIPISKA.Close;

if IBSPR_VIDPOISKVIDPOISK.Value='posl' then
begin
  cxGrid2.Visible:=true;
  cxLabel2.Visible:=true;
  IBSPR_VIPISKA.SelectSQL.Text:='select * from SPR_VIPISKA where kl_bank=:klbank and wid=:wid and vidpoisk=:vidpoisk';
  IBSPR_VIPISKA.ParamByName('klbank').AsInteger:=IBSPR_BANKKL.Value;
  IBSPR_VIPISKA.ParamByName('wid').AsString:=IBWIDWID.Value;
  IBSPR_VIPISKA.ParamByName('vidpoisk').AsString:=IBSPR_VIDPOISKVIDPOISK.Value;
end
else
begin
  cxGrid2.Visible:=false;
  cxLabel2.Visible:=false;
  IBSPR_VIPISKA.SelectSQL.Text:='select * from SPR_VIPISKA where kl_bank=:klbank and vidpoisk=:vidpoisk';
  IBSPR_VIPISKA.ParamByName('klbank').AsInteger:=IBSPR_BANKKL.Value;
  IBSPR_VIPISKA.ParamByName('vidpoisk').AsString:=IBSPR_VIDPOISKVIDPOISK.Value;
end;

IBSPR_VIPISKA.Open;

end;

end.
