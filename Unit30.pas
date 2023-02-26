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
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel2: TPanel;
    Panel4: TPanel;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    IBWID: TIBDataSet;
    DSWID: TDataSource;
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
    IBSPR_VIPISKAKL: TIntegerField;
    IBSPR_VIPISKAKL_BANK: TIntegerField;
    IBSPR_VIPISKAWID: TIBStringField;
    IBSPR_VIPISKAPOISK: TIBStringField;
    cxGridDBTableView1NAIM: TcxGridDBColumn;
    cxGridDBTableView3POISK: TcxGridDBColumn;
    IBSPR_VIPISKAVIDPOISK: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure IBSPR_VIPISKAAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBSPR_VIDPOISKAfterScroll(DataSet: TDataSet);
    procedure IBSPR_BANKAfterScroll(DataSet: TDataSet);
    procedure IBWIDAfterScroll(DataSet: TDataSet);
    procedure IBSPR_VIPISKAAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure UpdateVipiska;
  public
    { Public declarations }
  end;

var
  Form30: TForm30;
  var upd:boolean;

implementation

{$R *.dfm}

uses Unit1, Unit27;

procedure TForm30.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if IBSPR_VIPISKA.State in [dsInsert,dsEdit] then
  IBSPR_VIPISKA.Post;

 Form1.IBTransaction1.CommitRetaining;

 if upd then
 begin
    Form27.IBQueryVipiska.close;
    Form27.IBQueryVipiska.SQL.Text:='select *  from SPR_VIPISKA where vidpoisk=:vid';
    Form27.IBQueryVipiska.ParamByName('vid').AsString:='posl';
    Form27.IBQueryVipiska.open;
    Form27.regallposl:='(';
    while not Form27.IBQueryVipiska.Eof do
    begin
      if Form27.IBQueryVipiskaPOISK.AsString<>'' then
         Form27.regallposl:=Form27.regallposl+Form27.IBQueryVipiskaPOISK.AsString+'{1}|';

    Form27.IBQueryVipiska.Next;
    end;
    Form27.regallposl:=Copy(Form27.regallposl,1,Length(Form27.regallposl)-1);
    Form27.regallposl:=Form27.regallposl+')';
 end;


end;

procedure TForm30.FormShow(Sender: TObject);
begin
IBWID.Open;
upd:=false;
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
    IBSPR_VIPISKAWID.Value:=IBWIDWID.Value;
    IBSPR_VIPISKAVIDPOISK.Value:='posl';
end;

procedure TForm30.IBSPR_VIPISKAAfterPost(DataSet: TDataSet);
begin
upd:=true;
end;

procedure TForm30.IBWIDAfterScroll(DataSet: TDataSet);
begin
UpdateVipiska();
end;

procedure TForm30.UpdateVipiska();
begin
IBSPR_VIPISKA.Close;
  cxGrid2.Visible:=true;
  cxLabel2.Visible:=true;
  IBSPR_VIPISKA.SelectSQL.Text:='select * from SPR_VIPISKA where wid=:wid and vidpoisk=:vidpoisk';
  IBSPR_VIPISKA.ParamByName('wid').AsString:=IBWIDWID.Value;
  IBSPR_VIPISKA.ParamByName('vidpoisk').AsString:='posl';
IBSPR_VIPISKA.Open;
end;

end.
