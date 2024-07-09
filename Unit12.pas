unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxTextEdit, ExtCtrls,
  cxDBEdit, DB, IBCustomDataSet, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxCurrencyEdit, cxDBLookupComboBox, cxNavigator, IBX.IBQuery, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit;

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
    Label17: TLabel;
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
    cxLookupComboBox1: TcxLookupComboBox;
    cxLookupComboBox2: TcxLookupComboBox;
    cxDBTextEdit12: TcxDBTextEdit;
    IBKARTSCHET: TIBStringField;
    IBKARTFIO: TIBStringField;
    IBKARTIDCOD: TIBStringField;
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
    IBKARTFL_NOLIFT: TIBStringField;
    IBKARTORG: TFloatField;
    IBKARTFLAG: TIBStringField;
    IBKARTTELEF: TIBStringField;
    IBKARTKL_UL: TFloatField;
    IBKARTULNAIM: TIBStringField;
    IBKARTNOMDOM: TIBStringField;
    IBKARTNOMKV: TIBStringField;
    IBKOBORKL: TIntegerField;
    IBKOBORPERIOD: TDateField;
    IBKOBORSCHET: TIBStringField;
    IBKOBORWID: TIBStringField;
    IBKOBORPOSLUG: TIBStringField;
    IBKOBORFIO: TIBStringField;
    IBKOBORULNAIM: TIBStringField;
    IBKOBORNOMDOM: TIBStringField;
    IBKOBORNOMKV: TIBStringField;
    IBKOBORORG: TFloatField;
    IBKOBORIDCOD: TIBStringField;
    IBKOBORKOLI_P: TFloatField;
    IBKOBORKOLI_PF: TFloatField;
    IBKOBORLGOTA: TIBStringField;
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
    Label18: TLabel;
    cxButton2: TcxButton;
    cxDBTextEdit10: TcxDBTextEdit;
    Label19: TLabel;
    cxButton3: TcxButton;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    cxButton4: TcxButton;
    Label16: TLabel;
    cxDBMaskEdit1: TcxDBMaskEdit;
    IBABONINF: TIBDataSet;
    DSABONINF: TDataSource;
    IBABONINFID: TIntegerField;
    IBABONINFSCHET: TIBStringField;
    IBABONINFTEL: TIBStringField;
    N1: TMenuItem;
    IBPERSTRPERIOD: TIBStringField;
    procedure cxButton1Click(Sender: TObject);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxDBMaskEdit1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
  procedure Find();
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

uses Unit1, MyTools, Unit25;

{$R *.dfm}

procedure TForm12.cxButton1Click(Sender: TObject);
begin
 Find();
end;


procedure TForm12.cxButton4Click(Sender: TObject);
begin
Form1.ExportGrid(cxGrid4,Label13.Caption+' '+cxTextEdit1.Text);
end;

procedure TForm12.cxDBMaskEdit1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  var vv:integer;
begin
   if Length(DisplayValue) = 0 then
      Error:=false;

   if DisplayValue = '(___)___-____' then
      Error:=false;
end;

procedure TForm12.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of
33: {PageUp ie. VK_PRIOR}begin IBKART.prior; cxTextEdit1.EditValue:=IBKARTSCHET.Value; Find(); end;
34: {PageDown ie. VK_NEXT}begin IBKART.next; cxTextEdit1.EditValue:=IBKARTSCHET.Value; Find(); end;
end;
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

     IBABONINF.Close;
     IBABONINF.Open;
     if not IBABONINF.Locate('schet',IBKARTSCHET.Value,[loCaseInsensitive, loPartialKey]) then
     begin
       IBABONINF.Append;
       IBABONINFSCHET.Value:=IBKARTSCHET.Value;
       IBABONINF.Post;
     end;





     IBKOBORMES.ParamByName('sch').Value:=IBKARTSCHET.Value;
     IBKOBORMES.ParamByName('dt').Value:=IBPERPERIOD.Value;
     IBKTMPOPL.ParamByName('sch').Value:=IBKARTSCHET.Value;


     IBKOBOR.ParamByName('sch').Value:=IBKARTSCHET.Value;
     IBKOBOR.ParamByName('dt').Value:=IBPERPERIOD.Value;
     IBKOBORMES.Open;
     DecodeDate(IBPERPERIOD.Value, Year, Month, Day);
     IBKTMPOPL.ParamByName('mes').Value:=Month;
     IBKTMPOPL.ParamByName('year').Value:=Year;
     IBKTMPOPL.ParamByName('per').Value:=IBPERPERIOD.Value;
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

procedure TForm12.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if IBABONINF.State in [dsInsert,dsEdit] then IBABONINF.Post;
Form1.IBTransaction1.CommitRetaining;
end;

procedure TForm12.FormCreate(Sender: TObject);
begin
cxLookupComboBox1.EditValue:=Form1.IBPERIODPERIOD.Value;
cxLookupComboBox2.EditValue:=Form1.IBPERIODPERIOD.Value;
end;

procedure TForm12.FormShow(Sender: TObject);
begin
cxDBTextEdit10.SetFocus;
end;

procedure TForm12.N11Click(Sender: TObject);
begin
Form25.sch:=cxTextEdit1.Text;
Form25.Caption:=Form12.N11.Caption+' '+cxTextEdit1.Text;
Form25.cxLabel1.Caption:=Form12.N11.Caption+' '+cxTextEdit1.Text;
Form25.cxLookupComboBox2.Visible:=false;
Form25.vid:=1;
Form25.Show;
end;

procedure TForm12.N1Click(Sender: TObject);
begin
Form25.sch:=cxTextEdit1.Text;
Form25.Caption:=Form12.N11.Caption+' '+cxTextEdit1.Text;
Form25.cxLabel1.Caption:=Form12.N1.Caption+' '+cxTextEdit1.Text;
Form25.cxLookupComboBox2.Visible:=true;
Form25.vid:=2;
Form25.Show;
end;

end.
