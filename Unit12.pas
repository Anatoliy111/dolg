unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxTextEdit, ExtCtrls,
  cxDBEdit, DB, IBCustomDataSet, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxCurrencyEdit, cxDBLookupComboBox, cxNavigator, IBX.IBQuery;

type
  TForm12 = class(TForm)
    Panel1: TPanel;
    cxTextEdit1: TcxTextEdit;
    cxButton1: TcxButton;
    Label1: TLabel;
    IBKART: TIBDataSet;
    DSKART: TDataSource;
    IBKOBORMES: TIBDataSet;
    DSKOBORMES: TDataSource;
    IBKTMPOPL: TIBDataSet;
    DSKTMPOPL: TDataSource;
    IBKOBOR: TIBDataSet;
    DSKOBOR: TDataSource;
    IBPER: TIBDataSet;
    DSPER: TDataSource;
    cxDBTextEdit7: TcxDBTextEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    Label13: TLabel;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel5: TPanel;
    Label12: TLabel;
    cxGridDBTableView3PERIOD: TcxGridDBColumn;
    cxGridDBTableView3WID: TcxGridDBColumn;
    cxGridDBTableView3DOLG: TcxGridDBColumn;
    cxGridDBTableView3NACH: TcxGridDBColumn;
    cxGridDBTableView3SUBS: TcxGridDBColumn;
    cxGridDBTableView3OPL: TcxGridDBColumn;
    cxGridDBTableView3UDER: TcxGridDBColumn;
    cxGridDBTableView3KOMP: TcxGridDBColumn;
    cxGridDBTableView3WZMZ: TcxGridDBColumn;
    cxGridDBTableView3WOZW: TcxGridDBColumn;
    cxGridDBTableView3PERE: TcxGridDBColumn;
    cxGridDBTableView3SAL: TcxGridDBColumn;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    Label14: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    IBQuery1: TIBQuery;
    IBKOBORMESSCHET: TIBStringField;
    IBKOBORMESWID: TIBStringField;
    IBKOBORMESPOSLUG: TIBStringField;
    IBKOBORMESDOLG: TFloatField;
    IBKOBORMESNACH: TFloatField;
    IBKOBORMESOPL: TFloatField;
    IBKOBORMESSUBS: TFloatField;
    IBKOBORMESUDER: TFloatField;
    IBKOBORMESSAL: TFloatField;
    IBKOBORKL: TIntegerField;
    IBKOBORPERIOD: TDateField;
    IBKOBORSCHET: TIBStringField;
    IBKOBORWID: TIBStringField;
    IBKOBORN_DOG: TIBStringField;
    IBKOBORD_DOG: TIBStringField;
    IBKOBORTARIF: TFloatField;
    IBKOBORDOLG: TFloatField;
    IBKOBORNACH: TFloatField;
    IBKOBORSUBS: TFloatField;
    IBKOBOROPL: TFloatField;
    IBKOBORUDER: TFloatField;
    IBKOBORKOMP: TFloatField;
    IBKOBORWZMZ: TFloatField;
    IBKOBORWOZW: TFloatField;
    IBKOBORMOVW: TFloatField;
    IBKOBORPERE: TFloatField;
    IBKOBORSAL: TFloatField;
    IBKOBORBGST: TFloatField;
    IBKOBORPRST: TFloatField;
    IBKOBORBGEND: TFloatField;
    IBKOBORPREND: TFloatField;
    IBKOBORFULLNACH: TFloatField;
    IBKOBORFULLOPL: TFloatField;
    IBKOBOROPLNOTSUBS: TFloatField;
    IBKOBORPOSLUG: TIBStringField;
    Label16: TLabel;
    Label17: TLabel;
    IBKARTSCHET: TIBStringField;
    IBKARTNUMB: TIBStringField;
    IBKARTFIO: TIBStringField;
    IBKARTIM: TIBStringField;
    IBKARTOT: TIBStringField;
    IBKARTFIO_V: TIBStringField;
    IBKARTIDCOD: TIBStringField;
    IBKARTCEX: TIBStringField;
    IBKARTTABN: TIBStringField;
    IBKARTFIO_TABN: TIBStringField;
    IBKARTLG_NOFAM: TIBStringField;
    IBKARTKOLI_LG: TIBStringField;
    IBKARTKOLI_P: TFloatField;
    IBKARTKOLI_PF: TFloatField;
    IBKARTKOLI_K: TFloatField;
    IBKARTPLOS_BB: TFloatField;
    IBKARTPLOS_OB: TFloatField;
    IBKARTPRIV: TIBStringField;
    IBKARTETAG: TFloatField;
    IBKARTLGOTA: TIBStringField;
    IBKARTLG_POSV: TIBStringField;
    IBKARTLG_SER: TIBStringField;
    IBKARTLG_FIO: TIBStringField;
    IBKARTLG_DATE: TIBStringField;
    IBKARTLG_KAT: TIBStringField;
    IBKARTFL_CHERN: TIBStringField;
    IBKARTFL_LIFTE: TIBStringField;
    IBKARTFL_LIFTO: TIBStringField;
    IBKARTFL_KLET: TIBStringField;
    IBKARTFL_MUSO: TIBStringField;
    IBKARTFL_OSV: TIBStringField;
    IBKARTFL_UBOR: TIBStringField;
    IBKARTFL_VENT: TIBStringField;
    IBKARTFL_ZIMA: TIBStringField;
    IBKARTFL_REM: TIBStringField;
    IBKARTFL_DITM: TIBStringField;
    IBKARTFL_TUAL: TIBStringField;
    IBKARTFL_NOLIFT: TIBStringField;
    IBKARTFL_NOKAN: TIBStringField;
    IBKARTMAX_UD: TFloatField;
    IBKARTNOM: TFloatField;
    IBKARTORG: TFloatField;
    IBKARTD_DOG: TIBStringField;
    IBKARTN_DOG: TIBStringField;
    IBKARTZAYA: TIBStringField;
    IBKARTRESTR: TIBStringField;
    IBKARTNOTE: TIBStringField;
    IBKARTNOTE1: TIBStringField;
    IBKARTFLAG: TIBStringField;
    IBKARTWOZW_OT_: TFloatField;
    IBKARTTELEF: TIBStringField;
    IBKARTKL_UL: TFloatField;
    IBKARTULNAIM: TIBStringField;
    IBKARTNOMDOM: TIBStringField;
    IBKARTNOMKV: TIBStringField;
    IBKARTVAL: TFloatField;
    IBKARTKL: TIntegerField;
    IBKARTUPD: TIntegerField;
    IBPERKL: TIntegerField;
    IBPERPERIOD: TDateField;
    IBPERAKTIV: TIntegerField;
    cxGrid1DBTableView1POSLUG: TcxGridDBColumn;
    cxGrid1DBTableView1DOLG: TcxGridDBColumn;
    cxGrid1DBTableView1NACH: TcxGridDBColumn;
    cxGrid1DBTableView1OPL: TcxGridDBColumn;
    cxGrid1DBTableView1SUBS: TcxGridDBColumn;
    cxGrid1DBTableView1UDER: TcxGridDBColumn;
    cxGrid1DBTableView1SAL: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
  procedure Find();
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

uses Unit1, MyTools;

{$R *.dfm}

procedure TForm12.cxButton1Click(Sender: TObject);
begin
 Find();
end;


procedure TForm12.Find();
var sql:string;
    res,i,fl_ins:integer;
    colum:TcxGridColumn;
    AColumn: TcxGridDBColumn;
      year,month,Day : Word;
begin
if cxTextEdit1.EditValue <> null then
begin

     IBKART.Open;
     IBKART.First;
     if IBKART.Locate('schet',cxTextEdit1.EditValue,[loCaseInsensitive, loPartialKey]) then
     begin
     IBKOBORMES.Close;
     IBKTMPOPL.Close;

     IBKOBOR.Close;
     IBPER.Close;
     IBPER.Open;




     IBKOBORMES.ParamByName('sch').Value:=IBKARTSCHET.Value;
     IBKOBORMES.ParamByName('dt').Value:=IBPERPERIOD.Value;
     IBKTMPOPL.ParamByName('sch').Value:=IBKARTSCHET.Value;

//     sql:='select schet ';
//                Form1.IBTMPWID.First;
//                while not Form1.IBTMPWID.eof do
//                begin
//                       if Form1.IBTMPOPL.FindField('OPL_'+Form1.IBTMPWIDWID.Value)<> nil then
//                       begin
//                       Form1.IBTMPOPL.Insert;
//                       Form1.IBTMPOPL.FieldByName('SCHET').Value := trim(Form1.ADOOPL.FieldByName('schet').Value);
//                       Form1.IBTMPOPL.FieldByName('DT').Value := Form1.ADOOPL.FieldByName('DT').Value;
//                       Form1.IBTMPOPL.FieldByName('OPL_'+Form1.IBTMPWIDWID.Value).Value := Form1.ADOOPL.FieldByName('OPL_'+Form1.IBTMPWIDWID.Value).AsCurrency;
//                       Form1.IBTMPOPL.FieldByName('SUMM').Value := Form1.ADOOPL.FieldByName('OPL').AsCurrency;
//                       Form1.IBTMPOPL.Post;
//                       end;
//                Form1.IBTMPWID.Next;
//                end;
//     res:=IBKTMPOPL.FieldCount-cxGridDBTableView1.ColumnCount;
//     if res>0 then
//     begin
//       for i := 1 to res do
//       begin
//         cxGridDBTableView1.CreateColumn;
//       end;
//     end;
//     res:=IBKTMPOPL.FieldCount-cxGridDBTableView1.ColumnCount;
//     if res=0 then
//     begin
//                Form1.IBTMPWID.First;
//                while not Form1.IBTMPWID.eof do
//                begin
//                   fl_ins:=0;
//                   for i := 0 to cxGridDBTableView1.ColumnCount-1 do
//                   begin
//                     if cxGridDBTableView1.Columns[i].DataBinding.FieldName=Form1.IBTMPWIDWID  then
//                        fl_ins:=1;
//                     if
//
//                     cxGridDBTableView1.Columns[i].DataBinding.FieldName:='opl_ub';
//                   end;
//
//
//
////                       if Form1.IBTMPOPL.FindField('OPL_'+Form1.IBTMPWIDWID.Value)<> nil then
////                       begin
////                       Form1.IBTMPOPL.Insert;
////                       Form1.IBTMPOPL.FieldByName('SCHET').Value := trim(Form1.ADOOPL.FieldByName('schet').Value);
////                       Form1.IBTMPOPL.FieldByName('DT').Value := Form1.ADOOPL.FieldByName('DT').Value;
////                       Form1.IBTMPOPL.FieldByName('OPL_'+Form1.IBTMPWIDWID.Value).Value := Form1.ADOOPL.FieldByName('OPL_'+Form1.IBTMPWIDWID.Value).AsCurrency;
////                       Form1.IBTMPOPL.FieldByName('SUMM').Value := Form1.ADOOPL.FieldByName('OPL').AsCurrency;
////                       Form1.IBTMPOPL.Post;
////                       end;
//                Form1.IBTMPWID.Next;
//                end;
//
//
//     end;

//     cxGridDBTableView1.Columns[3].DataBinding.FieldName:='opl_ub';
//     cxGridDBTableView1.Columns[3].DataBinding.ValueType:='Currency';
//     cxGridDBTableView1.Columns[3].Visible:=true;
//cxGridDBTableView1.DataController.CreateAllItems;
//     colum:=cxGridDBTableView1.CreateColumn;
//     colum.DataBinding.FieldName:='DT';
//     colum.DataBinding.ValueType:='DateTime';



//     cxGridDBTableView1.Columns[2].DataBinding.FieldName:='OPL_sn';
//     cxGridDBTableView1.Columns[2].DataBinding.ValueType:='Currency';
//     cxGridDBTableView1.Columns[2].Visible:=true;


     IBKOBOR.ParamByName('sch').Value:=IBKARTSCHET.Value;
     IBKOBOR.ParamByName('dt').Value:=IBPERPERIOD.Value;
     IBKOBORMES.Open;
     DecodeDate(IBPERPERIOD.Value, Year, Month, Day);
     IBKTMPOPL.ParamByName('mes').Value:=Month;
     IBKTMPOPL.ParamByName('year').Value:=Year;
     IBKTMPOPL.Open;

      cxGridDBTableView1.ClearItems;

      acolumn:=cxGridDBTableView1.CreateColumn;
      cxGridDBTableView1.BeginUpdate;
      acolumn.DataBinding.FieldName:='DT';
      acolumn.DataBinding.valuetype:='DateTime';
      cxGridDBTableView1.EndUpdate;

      //AColumn.Summary.GroupFooterKind := skSum;

      acolumn.Caption:='Дата';

      acolumn:=cxGridDBTableView1.CreateColumn;
      cxGridDBTableView1.BeginUpdate;
      acolumn.DataBinding.FieldName:='OPL';
      acolumn.DataBinding.valuetype:='Currency';
      cxGridDBTableView1.EndUpdate;

      AColumn.Summary.GroupFooterKind := skSum;

      acolumn.Caption:='Сума';

      IBKTMPOPL.First;
      while not IBKTMPOPL.eof do
      begin
                Form1.IBWID.First;
                while not Form1.IBWID.eof do
                begin
                       fl_ins:=0;
                       if IBKTMPOPL.FindField('OPL_'+Form1.IBWIDWID.Value)<> nil then
                       begin
                         if (IBKTMPOPL.FieldByName('OPL_'+Form1.IBWIDWID.Value).Value <> 0) and (IBKTMPOPL.FieldByName('OPL_'+Form1.IBWIDWID.Value).Value <> null) then
                         begin
                           for I := 0 to cxGridDBTableView1.ColumnCount-1 do
                           begin
                             if cxGridDBTableView1.Columns[i].DataBinding.FieldName = 'OPL_'+Form1.IBWIDWID.Value then
                                fl_ins:=1;
                           end;
                           if fl_ins=0 then
                           begin
                              acolumn:=cxGridDBTableView1.CreateColumn;
                              cxGridDBTableView1.BeginUpdate;
                              acolumn.DataBinding.FieldName:='OPL_'+Form1.IBWIDWID.Value;
                              acolumn.DataBinding.valuetype:='Currency';
                              cxGridDBTableView1.EndUpdate;

                              AColumn.Summary.GroupFooterKind := skSum;

                              acolumn.Caption:=Form1.IBWIDNAIM.Value;
                           end;

                         end;

                      end;
                Form1.IBWID.Next;
                end;
      IBKTMPOPL.Next;
      end;




     IBKOBOR.Open;
     Label17.Caption:=mon_slovoDt(IBPERPERIOD.Value);
     Form12.Show;
     end
     else
     begin
//       IBKART.Active:=false;
       ShowMessage('Рахунок не знайдено!');
     end;
end
else
   ShowMessage('Введіть рахунок!');

end;

end.
