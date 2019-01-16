unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, IBDatabase,
  ExtCtrls, StdCtrls, IBCustomDataSet,inifiles, IBQuery, cxTextEdit,
  cxCurrencyEdit, cxFilterControl, cxDBLookupComboBox, cxPropertiesStore,
  IBConnectionBroker, IBSQLMonitor, IBDatabaseInfo, cxLabel, cxBlobEdit,
  cxButtonEdit, cxBarEditItem, dxBar, DBTables, cxContainer, Menus, cxButtons,
  cxCheckBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxGroupBox, cxNavigator, IBX.IBScript, IBX.IBSQL;

type
  TForm1 = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    IBDatabase1: TIBDatabase;
    IBUSER: TIBDataSet;
    IBUSERFIO: TIBStringField;
    IBUSERKL: TIntegerField;
    DSUSER: TDataSource;
    DSADRES: TDataSource;
    IBADRES: TIBDataSet;
    IBADRESKL: TIntegerField;
    DSNOTE: TDataSource;
    IBNOTE: TIBDataSet;
    DSSPRADRES: TDataSource;
    IBSPRADRES: TIBDataSet;
    DSREPD: TDataSource;
    IBREPD: TIBDataSet;
    DSADOKART: TDataSource;
    IBQuery1: TIBQuery;
    DSQuery1: TDataSource;
    ADOKART: TADODataSet;
    ADOConnectionARC: TADOConnection;
    IBNOTEWID: TIBStringField;
    IBNOTESCHET: TIBStringField;
    IBNOTEKL: TIntegerField;
    DSSP_ADRES: TDataSource;
    IBSP_ADRES: TIBDataSet;
    IBSP_ADRESDOM: TIBStringField;
    IBSP_ADRESCH: TSmallintField;
    IBADRESDOM: TIBStringField;
    IBNOTENOTE1: TIntegerField;
    IBNOTENOTE2: TIntegerField;
    IBNOTENOTE3: TIBStringField;
    IBNOTE1: TIBDataSet;
    DSNOTE1: TDataSource;
    IBNOTE2: TIBDataSet;
    DSNOTE2: TDataSource;
    IBNOTE1KL: TIntegerField;
    IBNOTE1NOTE: TIBStringField;
    IBNOTE2KL: TIntegerField;
    IBNOTE2NOTE: TIBStringField;
    cxPropertiesStore1: TcxPropertiesStore;
    IBDatabaseInfo1: TIBDatabaseInfo;
    DSKONTROL: TDataSource;
    IBKONTROL: TIBDataSet;
    IBKONTROLKL: TIntegerField;
    IBKONTROLFIO: TIBStringField;
    IBADRESKL_KONTROL: TIntegerField;
    DSSERVICES: TDataSource;
    IBSERVICES: TIBDataSet;
    IBSERVICESKL: TIntegerField;
    IBSERVICESDATA: TDateField;
    IBSERVICESUPDATES: TIntegerField;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarSubItem14: TdxBarSubItem;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarSubItem15: TdxBarSubItem;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarSubItem16: TdxBarSubItem;
    dxBarSubItem17: TdxBarSubItem;
    dxBarSubItem18: TdxBarSubItem;
    dxBarSubItem19: TdxBarSubItem;
    dxBarSubItem20: TdxBarSubItem;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarButton53: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    dxBarButton56: TdxBarButton;
    dxBarButton57: TdxBarButton;
    dxBarButton58: TdxBarButton;
    dxBarButton59: TdxBarButton;
    dxBarButton60: TdxBarButton;
    dxBarButton61: TdxBarButton;
    dxBarButton62: TdxBarButton;
    dxBarSubItem21: TdxBarSubItem;
    dxBarButton63: TdxBarButton;
    dxBarButton64: TdxBarButton;
    dxBarButton65: TdxBarButton;
    dxBarSubItem22: TdxBarSubItem;
    dxBarButton66: TdxBarButton;
    dxBarButton67: TdxBarButton;
    dxBarButton68: TdxBarButton;
    dxBarSubItem23: TdxBarSubItem;
    dxBarButton69: TdxBarButton;
    dxBarButton70: TdxBarButton;
    dxBarButton71: TdxBarButton;
    dxBarButton72: TdxBarButton;
    dxBarButton73: TdxBarButton;
    dxBarButton74: TdxBarButton;
    dxBarButton75: TdxBarButton;
    dxBarButton76: TdxBarButton;
    dxBarButton77: TdxBarButton;
    dxBarButton78: TdxBarButton;
    dxBarSubItem24: TdxBarSubItem;
    dxBarButton79: TdxBarButton;
    dxBarButton80: TdxBarButton;
    dxBarButton81: TdxBarButton;
    dxBarButton82: TdxBarButton;
    dxBarButton83: TdxBarButton;
    dxBarSubItem25: TdxBarSubItem;
    dxBarButton84: TdxBarButton;
    dxBarButton85: TdxBarButton;
    dxBarButton86: TdxBarButton;
    dxBarButton87: TdxBarButton;
    dxBarButton88: TdxBarButton;
    dxBarButton89: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton90: TdxBarButton;
    dxBarButton91: TdxBarButton;
    dxBarButton92: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton93: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton94: TdxBarButton;
    dxBarButton96: TdxBarButton;
    dxBarButton97: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton98: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton101: TdxBarButton;
    dxBarButton102: TdxBarButton;
    dxBarButton99: TdxBarButton;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton100: TdxBarButton;
    dxBarButton103: TdxBarButton;
    dxBarSubItem11: TdxBarSubItem;
    dxBarButton104: TdxBarButton;
    dxBarButton105: TdxBarButton;
    dxBarSubItem12: TdxBarSubItem;
    dxBarSubItem13: TdxBarSubItem;
    dxBarButton106: TdxBarButton;
    dxBarButton107: TdxBarButton;
    dxBarButton108: TdxBarButton;
    dxBarButton109: TdxBarButton;
    dxBarButton110: TdxBarButton;
    dxBarButton111: TdxBarButton;
    dxBarButton112: TdxBarButton;
    dxBarSubItem26: TdxBarSubItem;
    dxBarEdit1: TdxBarEdit;
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    dxBarButton113: TdxBarButton;
    cxBarEditItem3: TcxBarEditItem;
    cxBarEditItem4: TcxBarEditItem;
    dxBarEdit2: TdxBarEdit;
    cxBarEditItem5: TcxBarEditItem;
    cxBarEditItem6: TcxBarEditItem;
    dxBarButton114: TdxBarButton;
    dxBarButton115: TdxBarButton;
    dxBarButton116: TdxBarButton;
    dxBarButton117: TdxBarButton;
    IBPERIOD: TIBDataSet;
    DSPERIOD: TDataSource;
    IBPERIODKL: TIntegerField;
    IBPERIODPERIOD: TDateField;
    IBPERIODAKTIV: TIntegerField;
    IBUSERPW: TIBStringField;
    IBNOTEKL_USERS: TIntegerField;
    IBKART: TIBDataSet;
    DSKART: TDataSource;
    IBOBOR: TIBDataSet;
    DSOBOR: TDataSource;
    IBOBORKL: TIntegerField;
    IBOBORPERIOD: TDateField;
    IBOBORSCHET: TIBStringField;
    IBOBORWID: TIBStringField;
    IBOBORN_DOG: TIBStringField;
    IBOBORD_DOG: TIBStringField;
    IBOBORTARIF: TIBBCDField;
    IBOBORDOLG: TIBBCDField;
    IBOBORNACH: TIBBCDField;
    IBOBORSUBS: TIBBCDField;
    IBOBOROPL: TIBBCDField;
    IBOBORUDER: TIBBCDField;
    IBOBORKOMP: TIBBCDField;
    IBOBORWZMZ: TIBBCDField;
    IBOBORWOZW: TIBBCDField;
    IBOBORMOVW: TIBBCDField;
    IBOBORPERE: TIBBCDField;
    IBOBORSAL: TIBBCDField;
    ADOOBOR: TADODataSet;
    DataSourceOBOR: TDataSource;
    IBKARTKL: TIntegerField;
    IBKARTSCHET: TIBStringField;
    IBKARTWID: TIBStringField;
    IBKARTFIO: TIBStringField;
    IBKARTDOM: TIBStringField;
    IBKARTKV: TIBStringField;
    IBKARTLGOTA: TIBStringField;
    IBKARTKOLI_P: TIntegerField;
    IBKARTPRIVAT: TIBStringField;
    IBKARTPLOS_OB: TIBBCDField;
    IBKARTPLOS_BB: TIBBCDField;
    IBKARTIDCOD: TIBStringField;
    IBKARTUL: TIBStringField;
    IBADRESUL: TIBStringField;
    IBSP_ADRESUL: TIBStringField;
    IBKARTVAL: TIntegerField;
    ADOConnectionDBF: TADOConnection;
    IBTMPNACH: TIBDataSet;
    DSTMPNACH: TDataSource;
    IBOBORMES: TIBDataSet;
    DSOBORMES: TDataSource;
    IBTMPOPL: TIBDataSet;
    DSTMPOPL: TDataSource;
    IBTMPSUBS: TIBDataSet;
    DSTMPSUBS: TDataSource;
    IBTMPUDER: TIBDataSet;
    DSTMPUDER: TDataSource;
    IBTMPNACHKL: TIntegerField;
    IBTMPNACHSCHET: TIBStringField;
    IBTMPNACHWID: TIBStringField;
    IBTMPNACHFIO: TIBStringField;
    IBTMPNACHLGOTA: TIBStringField;
    IBTMPNACHTARIF: TIBBCDField;
    IBTMPNACHSUMM: TIBBCDField;
    IBTMPSUBSKL: TIntegerField;
    IBTMPSUBSSCHET: TIBStringField;
    IBTMPSUBSWID: TIBStringField;
    IBTMPSUBSSUMM: TIBBCDField;
    IBTMPSUBSOB: TIBBCDField;
    IBTMPUDERKL: TIntegerField;
    IBTMPUDERSCHET: TIBStringField;
    IBTMPUDERWID: TIBStringField;
    IBTMPUDERSUMM: TIBBCDField;
    ADONACH: TADODataSet;
    DSADONACH: TDataSource;
    ADOOBORMES: TADODataSet;
    DSADOOBORMES: TDataSource;
    ADOOPL: TADODataSet;
    DSADOOPL: TDataSource;
    ADOSUBS: TADODataSet;
    DSADOSUBS: TDataSource;
    ADOUDER: TADODataSet;
    DSADOUDER: TDataSource;
    IBDataSet1: TIBDataSet;
    DataSource1: TDataSource;
    IBDataSet1KL: TIntegerField;
    IBDataSet1SCHET: TIBStringField;
    IBDataSet1WID: TIBStringField;
    IBDataSet1N_DOG: TIBStringField;
    IBDataSet1D_DOG: TIBStringField;
    IBDataSet1TARIF: TIBBCDField;
    IBDataSet1DOLG: TIBBCDField;
    IBDataSet1NACH: TIBBCDField;
    IBDataSet1SUBS: TIBBCDField;
    IBDataSet1OPL: TIBBCDField;
    IBDataSet1UDER: TIBBCDField;
    IBDataSet1KOMP: TIBBCDField;
    IBDataSet1WZMZ: TIBBCDField;
    IBDataSet1WOZW: TIBBCDField;
    IBDataSet1MOVW: TIBBCDField;
    IBDataSet1PERE: TIBBCDField;
    IBDataSet1FULLOPL: TIBBCDField;
    IBDataSet1SAL: TIBBCDField;
    IBTransaction1: TIBTransaction;
    IBTransaction2: TIBTransaction;
    ADOOBORREC: TADODataSet;
    DSADOOBORREC: TDataSource;
    IBTMPDATE: TIBDataSet;
    DSTMPDATE: TDataSource;
    IBTMPDATEKL: TIntegerField;
    IBTMPDATEPERIOD: TDateField;
    dxBarButton118: TdxBarButton;
    IBSPRADRESUL: TIBStringField;
    IBSPRADRESDOM: TIBStringField;
    IBDataSet2: TIBDataSet;
    DataSource2: TDataSource;
    IBDataSet2KL: TIntegerField;
    IBDataSet2SCHET: TIBStringField;
    IBDataSet2WID: TIBStringField;
    IBDataSet2FIO: TIBStringField;
    IBDataSet2LGOTA: TIBStringField;
    IBDataSet2TARIF: TIBBCDField;
    IBDataSet2SUMM: TIBBCDField;
    cxGrid1DBTableView1SCHET: TcxGridDBColumn;
    cxGrid1DBTableView1NOTE1: TcxGridDBColumn;
    cxGrid1DBTableView1NOTE2: TcxGridDBColumn;
    cxGrid1DBTableView1NOTE3: TcxGridDBColumn;
    cxGrid1DBTableView1FIO: TcxGridDBColumn;
    cxGrid1DBTableView1IDCOD: TcxGridDBColumn;
    cxGrid1DBTableView1UL: TcxGridDBColumn;
    cxGrid1DBTableView1DOM: TcxGridDBColumn;
    cxGrid1DBTableView1KV: TcxGridDBColumn;
    cxGrid1DBTableView1KONTROL: TcxGridDBColumn;
    cxGrid1DBTableView1NACH1: TcxGridDBColumn;
    cxGrid1DBTableView1OPL: TcxGridDBColumn;
    cxGrid1DBTableView1SUBS: TcxGridDBColumn;
    cxGrid1DBTableView1UDER: TcxGridDBColumn;
    cxGrid1DBTableView1ENDDOLG: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxCheckBox2: TcxCheckBox;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxButton1: TcxButton;
    ADOWID: TADODataSet;
    DSADOWID: TDataSource;
    IBWID: TIBDataSet;
    DSTMPWID: TDataSource;
    cxGrid1DBTableView1KOMP: TcxGridDBColumn;
    cxGrid1DBTableView1WZMZ: TcxGridDBColumn;
    cxGrid1DBTableView1WOZW: TcxGridDBColumn;
    cxGrid1DBTableView1PERE: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    ADOQuery1: TADOQuery;
    DSADOQuery1: TDataSource;
    cxButton4: TcxButton;
    cxGrid1DBTableView1KOLI_P: TcxGridDBColumn;
    IBKARTKOLI_PF: TIntegerField;
    cxGrid1DBTableView1KOLI_PF: TcxGridDBColumn;
    cxGrid1DBTableView1WID: TcxGridDBColumn;
    cxGrid1DBTableView1POSLUG: TcxGridDBColumn;
    cxButton2: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxComboBox1: TcxComboBox;
    cxLabel1: TcxLabel;
    cxCheckBox1: TcxCheckBox;
    cxComboBox2: TcxComboBox;
    cxTextEdit2: TcxTextEdit;
    IBOBORMESKL: TIntegerField;
    IBOBORMESSCHET: TIBStringField;
    IBOBORMESWID: TIBStringField;
    IBOBORMESN_DOG: TIBStringField;
    IBOBORMESD_DOG: TIBStringField;
    IBOBORMESTARIF: TIBBCDField;
    IBOBORMESDOLG: TIBBCDField;
    IBOBORMESNACH: TIBBCDField;
    IBOBORMESSUBS: TIBBCDField;
    IBOBORMESOPL: TIBBCDField;
    IBOBORMESUDER: TIBBCDField;
    IBOBORMESKOMP: TIBBCDField;
    IBOBORMESWZMZ: TIBBCDField;
    IBOBORMESWOZW: TIBBCDField;
    IBOBORMESMOVW: TIBBCDField;
    IBOBORMESPERE: TIBBCDField;
    IBOBORMESFULLOPL: TIBBCDField;
    IBOBORMESSAL: TIBBCDField;
    IBREPDKL: TIntegerField;
    IBREPDWID: TIBStringField;
    IBREPDSCHET: TIBStringField;
    IBREPDNOTE1: TIntegerField;
    IBREPDNOTE2: TIntegerField;
    IBREPDNOTE3: TIBStringField;
    IBREPDKL_USERS: TIntegerField;
    IBREPDPOSLUG: TIBStringField;
    IBREPDDOLG: TIBBCDField;
    IBREPDFIO: TIBStringField;
    IBREPDIDCOD: TIBStringField;
    IBREPDUL: TIBStringField;
    IBREPDDOM: TIBStringField;
    IBREPDKV: TIBStringField;
    IBREPDKOLI_P: TIntegerField;
    IBREPDKOLI_PF: TIntegerField;
    IBREPDKONTROL: TIBStringField;
    IBREPDNACH1: TIBBCDField;
    IBREPDOPL: TIBBCDField;
    IBREPDSUBS: TIBBCDField;
    IBREPDUDER: TIBBCDField;
    IBREPDKOMP: TIBBCDField;
    IBREPDWZMZ: TIBBCDField;
    IBREPDWOZW: TIBBCDField;
    IBREPDMOVW: TIBBCDField;
    IBREPDPERE: TIBBCDField;
    IBREPDENDDOLG: TIBBCDField;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    IBADRESKOL_KV: TIntegerField;
    IBWIDKL: TIntegerField;
    IBWIDWID: TIBStringField;
    IBWIDNAIM: TIBStringField;
    ADOORGAN: TADODataSet;
    DSADOORGAN: TDataSource;
    IBORGAN: TIBDataSet;
    DSORGAN: TDataSource;
    IBORGANKL: TIntegerField;
    IBORGANORG: TIntegerField;
    IBORGANNAME: TIBStringField;
    IBKARTORG: TIntegerField;
    IBREPDORGNAME: TIBStringField;
    cxGrid1DBTableView1DOLG: TcxGridDBColumn;
    cxGrid1DBTableView1ORGNAME: TcxGridDBColumn;
    cxButton3: TcxButton;
    cxTextEdit3: TcxTextEdit;
    cxButton9: TcxButton;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxButton10: TcxButton;
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton114Click(Sender: TObject);
    procedure dxBarButton101Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IBUSERAfterInsert(DataSet: TDataSet);
    procedure IBUSERBeforeDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure IBKONTROLBeforeDelete(DataSet: TDataSet);
    procedure dxBarButton118Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure IBREPDFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
  private
    { Private declarations }



  public
    { Public declarations }
    ActiveUser:integer;
    DateKVART:TDate;
    UpdateBase:Boolean;
    iniFile:TIniFile;
    PathKvart,StartSQL,PathDir,ORG:string;
    procedure DatabaseDate;
    procedure REPORT;
    procedure ExportGrid(AGrid: TcxGrid;Filename:string='Table.xls');

  end;

var
  Form1: TForm1;
  CLOSING:Boolean;
  ExB:DWORD;

implementation

uses registry, cxGridExportLink, comobj, dateutils, MyTools, Unit2, Unit3,
  Unit5, Unit6, Unit4, Unit11, Unit12, IOUtils, Unit13;
//IOUtils - для компонента TDirectory
{$R *.dfm}

procedure TForm1.DatabaseDate;
var s,ss,log,pw,cur,stroka,strmes,strye:string;
f : TextFile;
mes,ye,year,month,yearmon:integer;
DateKVART:TDate;
DateKVART1:TDate;
begin
  try
  ADOConnectionARC.Close;
  ADOConnectionDBF.Close;
//    pathDIR:='c:\tmp';
        if not DirectoryExists(pathDIR) then
        begin
          MkDir(pathDIR);
        end;
//        else
//        begin
//          RenameFile(pathDIR,pathDIR+'1');
//          TDirectory.Delete(pathDIR, True);
//          if not DirectoryExists(pathDIR) then
//             MkDir(pathDIR)
//          else
//          begin
//            TDirectory.Delete(pathDIR, True);
//            RenameFile(pathDIR,pathDIR+'1');
//            if not DirectoryExists(pathDIR) then
//             MkDir(pathDIR)
//            else
//            begin
//             ShowMessage('Не можу видалити каталог '+pathDIR);
//             Form1.Close;
//             exit;
//            end;
//          end;
//        end;

        if DirectoryExists(pathDIR) and DirectoryExists(PathKvart) then
        begin
          CopyFile(PChar(Form1.PathKvart+'dbf\obor.dbf'),PChar(pathDIR+'\obor.dbf'),false);
          CopyFile(PChar(Form1.PathKvart+'dbf\obor.cdx'),PChar(pathDIR+'\obor.cdx'),false);
          CopyFile(PChar(Form1.PathKvart+'dbf\kart.dbf'),PChar(pathDIR+'\kart.dbf'),false);
          CopyFile(PChar(Form1.PathKvart+'dbf\kart.cdx'),PChar(pathDIR+'\kart.cdx'),false);
          CopyFile(PChar(Form1.PathKvart+'dbf\wids.dbf'),PChar(pathDIR+'\wids.dbf'),false);
          CopyFile(PChar(Form1.PathKvart+'dbf\wids.cdx'),PChar(pathDIR+'\wids.cdx'),false);
          CopyFile(PChar(Form1.PathKvart+'dbf\opl.dbf'),PChar(pathDIR+'\opl.dbf'),false);
          CopyFile(PChar(Form1.PathKvart+'dbf\opl.cdx'),PChar(pathDIR+'\opl.cdx'),false);
          CopyFile(PChar(Form1.PathKvart+'dbf\uder.dbf'),PChar(pathDIR+'\uder.dbf'),false);
          CopyFile(PChar(Form1.PathKvart+'dbf\uder.cdx'),PChar(pathDIR+'\uder.cdx'),false);
          CopyFile(PChar(Form1.PathKvart+'dbf\organ.dbf'),PChar(pathDIR+'\organ.dbf'),false);
          CopyFile(PChar(Form1.PathKvart+'dbf\organ.cdx'),PChar(pathDIR+'\organ.cdx'),false);
          CopyFile(PChar(Form1.PathKvart+'cur_date.mem'),PChar(pathDIR+'\cur_date.mem'),false);
        end
        else
        begin
           messagedlg('Помилка при підключенні до квартплати!!! '+PathKvart,mtError,[mbCancel],0);
           Application.Terminate;
        end;


     except
   on E : Exception do
   begin
    messagedlg('Помилка при підключенні до квартплати!!! - '+E.Message,mtError,[mbOK],0);
    Application.Terminate;
    end;
   end;

  try
    AssignFile(f, pathDIR+'\cur_date.mem');
    FileMode := fmOpenRead;
    Reset(f);
    Readln(f, stroka);
    CloseFile(f);
    except
    on E : Exception do
   begin
     messagedlg('Дані для завантаження не знайдено '+pathDIR+'\cur_date.mem '+E.Message,mtError,[mbCancel],0);
     Application.Terminate;
   end;
  end;

    strmes:=trim(Copy(stroka, 33, 2));
    strye:=trim(Copy(stroka, 36, 4));

    if str2int(strmes) = 1 then
    begin
       strmes:='12';
       strye:=int2str(str2int(strye)-1);
    end
    else
      strmes:=int2str(str2int(strmes)-1);

    if (str2int(strmes) < 10) and (str2int(strmes) > 0) then
       strmes:='0'+strmes
    else
       strmes:=strmes;
    IBPERIOD.Last;
    if (str2int(strmes)<=0) and (str2int(strye)<=0) then
        Form1.DateKVART := IBPERIODPERIOD.Value
    else
        Form1.DateKVART := StrToDate('01.'+strmes+'.'+strye);

     DateKVART1:=IncMonth(IBPERIODPERIOD.Value);
//         DateKVART := StrToDate('01.02.2018');
    cxLabel4.Caption:=mon_slovo(strtoint(trim(Copy(stroka, 33, 2))))+' '+Copy(stroka, 36, 4);
    IBPERIOD.Last;
    if IBPERIODPERIOD.Value <> Form1.DateKVART then
       UpdateBase:=true
    else
       UpdateBase:=false;






end;

procedure TForm1.dxBarButton101Click(Sender: TObject);
begin
Form5.Show;
end;

procedure TForm1.dxBarButton114Click(Sender: TObject);
begin
Form6.Show;
end;

procedure TForm1.dxBarButton118Click(Sender: TObject);
begin
Form12.Show;
end;

procedure TForm1.dxBarButton19Click(Sender: TObject);
begin
Form1.close;
end;

procedure TForm1.dxBarButton4Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm1.cxButton10Click(Sender: TObject);
begin
IBREPD.LocateNext('schet',cxTextEdit4.Text,[]);
end;

procedure TForm1.cxButton1Click(Sender: TObject);
begin
Form2.Timer1.Enabled:= true;
end;

procedure TForm1.cxButton2Click(Sender: TObject);
begin
 Form1.REPORT;
end;

procedure TForm1.REPORT;
var sql1,sql2,StrSQL:string;
str1:ShortString;
    i:integer;
FilterDATE:TDate;
begin
     Form1.DSREPD.Enabled:=false;
     Form1.IBREPD.close;

     StrSQL:=StartSQL;

     if cxCheckBox1.Checked then
     begin
           sql2:=' and dolg'+cxComboBox1.EditValue+cxTextEdit1.EditValue
     end;

     if cxCheckBox2.Checked then
     begin
           sql2:=' and sal'+cxComboBox2.EditValue+cxTextEdit2.EditValue
     end;



     Form1.IBREPD.SelectSQL.Text:=StrSQL+sql2+' order by note.schet,note.wid';
     Form1.IBREPD.ParamByName('kluser').Value:=Form1.ActiveUser;
     Form1.IBREPD.open;
     Form1.DSREPD.Enabled:=true;
     Form1.DSTMPWID.Enabled:=true;
end;

procedure TForm1.cxButton3Click(Sender: TObject);
begin
  ExportGrid(cxGrid1);
end;

procedure TForm1.cxButton4Click(Sender: TObject);
var res:Variant;
begin
Form2.Show;
Form1.Enabled:=false;
Form2.UpdateKART;
Form1.Enabled:=true;
Form2.Close;
Form1.REPORT;
end;

procedure TForm1.cxButton5Click(Sender: TObject);
begin
if cxTextEdit3.Text='' then
   IBREPD.Filtered:=false
else
begin
  if IBREPD.Filtered then
  begin
  IBREPD.Filtered:=false;
  IBREPD.Filtered:=true;
  end
  else
  IBREPD.Filtered:=true;

end;





end;

procedure TForm1.cxButton6Click(Sender: TObject);
begin
Form13.Caption:=cxButton6.Caption;
Form13.show;
end;

procedure TForm1.cxButton7Click(Sender: TObject);
begin
//     cxGrid1DBTableView1DOLGMES1.Visible:=false;
//     cxGrid1DBTableView1DOLGMES2.Visible:=false;
//     cxGrid1DBTableView1DOLGMES3.Visible:=false;
//     cxGrid1DBTableView1DOLGMES4.Visible:=false;
//     cxGrid1DBTableView1DOLGMES5.Visible:=false;
//     cxGrid1DBTableView1DOLGMES6.Visible:=false;
//     cxGrid1DBTableView1MES1.Visible:=false;
//     cxGrid1DBTableView1MES2.Visible:=false;
//     cxGrid1DBTableView1MES3.Visible:=false;
//     cxGrid1DBTableView1MES4.Visible:=false;
//     cxGrid1DBTableView1MES5.Visible:=false;
//     cxGrid1DBTableView1MES6.Visible:=false;
//
//     StrSQL:=StartSQL;
//     if cxCheckBox1.Checked then
//     begin
//       i:=0;
////       IBPERIOD.First;
////       while not IBPERIOD.Eof do
////       begin
////         if IBPERIODPERIOD.Value>=cxLookupComboBox1.EditValue then
////         begin
////         inc(i);
////           StrSQL:=StringReplace(StrSQL,'0.00 as dolgmes'+int2str(i),'(select sum(dolgmes) as dolgmes from (Select schet,wid, Case when period='''+DateTimeToStr(IBPERIODPERIOD.Value)+''' then dolg else 0.00 end dolgmes from obor) ppp where (note.wid = ppp.wid) and (note.schet = ppp.schet) group by schet,wid) as dolgmes'+int2str(i),[]);
////           cxGrid1DBTableView1.FindItemByName('cxGrid1DBTableView1DOLGMES'+int2str(i)).Visible:=true;
////           cxGrid1DBTableView1.FindItemByName('cxGrid1DBTableView1DOLGMES'+int2str(i)).Caption:='Борг на '+DateTimeToStr(IBPERIODPERIOD.Value);
////
////         StrSQL:=StringReplace(StrSQL,'0.00 as mes'+int2str(i),'(select sum(mes) as mes from (Select schet,wid, Case when period='''+DateTimeToStr(IBPERIODPERIOD.Value)+''' then fullopl else 0.00 end mes from obor) ppp where (note.wid = ppp.wid) and (note.schet = ppp.schet) group by schet,wid) as mes'+int2str(i),[]);
//////         cxGrid1DBTableView1MES+int2str(i).Visible:=true;
////         cxGrid1DBTableView1.FindItemByName('cxGrid1DBTableView1MES'+int2str(i)).Visible:=true;
////         cxGrid1DBTableView1.FindItemByName('cxGrid1DBTableView1MES'+int2str(i)).Caption:='Оплата '+DateTimeToStr(IBPERIODPERIOD.Value);
////
////         end;
////
////       IBPERIOD.Next;
////       end;
//
//     end;
end;

procedure TForm1.cxGrid1DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if IBREPDSCHET.Value<>null then
  begin
     Form12.cxTextEdit1.EditValue:= IBREPDSCHET.Value;
     Form12.Find();
     Form12.Show;
  end;
end;

procedure TForm1.ExportGrid(AGrid: TcxGrid;Filename:string='Table.xls');
var
  sd:TSaveDialog;
  Excel: Variant;
  Reg: TRegistry;
  path,dname:string;
  i:integer;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if not Reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders' , False) then
      //ShowMessage('Error in opening key')
      path := '.\'
    else
    begin
      path := Reg.Readstring('Personal')+'\'
    end;
  finally
    Reg.Free;
  end;

  sd:=TSaveDialog.Create(application);
  try
    if FileName='Table.xls' then
    begin
//      DateTimeToString(Filename,'mmddhhmm',now);
      DateTimeToString(Filename,'dd mm yyyy',now);

      Filename:='Звіт '+Filename+'.xls'
    end
    else
    begin
      DateTimeToString(dname,'dd mm yyyy',now);
      Filename:=Filename+' '+dname+'.xls'
    end;
    sd.FileName := path + Filename;
    sd.Filter := 'Excel files (*.xls)|*.XLS';
    if not sd.Execute then exit;
    filename:=sd.FileName;
  finally
    sd.Free;
  end;

  ExportGridToExcel(filename, AGrid,false,true,true);

  try
    Excel := CreateOLEObject('Excel.Application');
    Excel.Visible := True;

    Excel.WorkBooks.Open(FileName);
    Excel.ActiveWindow.DisplayGridlines := True;

    Excel.columns.NumberFormat:='0,00';

//    for i:=9 to Excel.columns.count-4 do
//    begin
//       Excel.columns[i].NumberFormat:='0,00';
//    end;

//    Excel.columns[9].NumberFormat:='0,00';
//    Excel.columns[10].NumberFormat:='0,00';
//    Excel.columns[11].NumberFormat:='0,00';
//    Excel.columns[12].NumberFormat:='0,00';
//    Excel.columns[13].NumberFormat:='0,00';
//    Excel.columns[14].NumberFormat:='0,00';
//    Excel.columns[15].NumberFormat:='0,00';
//    Excel.columns[16].NumberFormat:='0,00';
//    Excel.columns[17].NumberFormat:='0,00';
//    Excel.columns[18].NumberFormat:='0,00';
//    Excel.columns[19].NumberFormat:='0,00';
//    Excel.columns[20].NumberFormat:='0,00';
//    Excel.columns[21].NumberFormat:='0,00';
//    Excel.columns[22].NumberFormat:='0,00';
//    Excel.columns[23].NumberFormat:='0,00';
//    Excel.columns[24].NumberFormat:='0,00';
//    Excel.columns[25].NumberFormat:='0,00';

    Excel.ActiveWindow.View := 2;
    if Excel.ActiveSheet.VPageBreaks.count <> 0 then
       Excel.ActiveSheet.VPageBreaks[1].DragOff(Direction:=1, RegionIndex:=1);
    if Excel.ActiveSheet.HPageBreaks.count <> 0 then
       Excel.ActiveSheet.HPageBreaks[1].DragOff(Direction:=1, RegionIndex:=1);
    Excel.ActiveWindow.View := 1;

  except
  end;
end;


procedure TForm1.FormCreate(Sender: TObject);
var s,ss,log,pw,cur,stroka,strmes,strye:string;
f : TextFile;
mes,ye,year,month,yearmon:integer;
DateKVART:TDate;
DateKVART1:TDate;
begin
  try
  ADOConnectionARC.Connected:=false;
  ADOConnectionDBF.Connected:=false;

  IBDatabase1.Connected:=false;
  iniFile:=TIniFile.Create(extractfilepath(paramstr(0))+'dolg.ini');
  s:=iniFile.ReadString('Data','Database',extractfilepath(paramstr(0))+'DOLG.GDB');
  log:=iniFile.ReadString('Data','Login',extractfilepath(paramstr(0)));
  pw:=iniFile.ReadString('Data','PW',extractfilepath(paramstr(0)));
  ORG:=iniFile.ReadString('Data','org',extractfilepath(paramstr(0)));
  PathKvart:=iniFile.ReadString('DBF','base',extractfilepath(paramstr(0)));
  PathDIR:=iniFile.ReadString('DBF','tmp',extractfilepath(paramstr(0)));

//  cur:=iniFile.ReadString('DBF','cur_date',extractfilepath(paramstr(0))+);

  IBDatabase1.Connected:=false;
  IBDatabase1.DatabaseName:=s;

  IBDatabase1.Params.Clear;
  IBDatabase1.Params.Add('user_name='+log);
  IBDatabase1.Params.Add('password='+pw);
  cxPropertiesStore1.RestoreFrom;
   IBDatabase1.Connected:=TRUE;
   IBTransaction1.StartTransaction;
   IBTransaction2.StartTransaction;
   IBSERVICES.open;
   IBPERIOD.open;
ADOConnectionDBF.Connected:=false;
ADOConnectionARC.Connected:=false;

  IBREPD.close;
  StartSQL:=IBREPD.SelectSQL.Text;
  IBKONTROL.open;
  IBUSER.open;
  IBADRES.open;
  IBNOTE.open;
  IBNOTE1.open;
  IBNOTE2.open;
  IBKART.open;
  IBOBOR.open;
  IBOBORMES.open;
  IBSPRADRES.open;
  IBSP_ADRES.open;
  IBSERVICES.open;
  IBPERIOD.open;


  IBTMPDATE.open;
  IBTMPNACH.open;
  IBTMPOPL.open;
  IBTMPSUBS.open;
  IBTMPUDER.open;
  IBWID.open;
  
     IBREPD.close;
     DSREPD.Enabled:=false;


     except
   on E : Exception do
   begin
    messagedlg('Помилка при підключенні до бази даних!!! - '+E.Message,mtError,[mbCancel],0);
    Application.Terminate;
   end;


  end;
end;


procedure TForm1.FormShow(Sender: TObject);
begin
Form11.show;
end;

procedure TForm1.IBKONTROLBeforeDelete(DataSet: TDataSet);
begin
Form1.IBQuery1.SQL.Text:='delete from adres where kl_kontrol = :kll';
Form1.IBQuery1.ParamByName('kll').Value:=IBKONTROLKL.Value;
Form1.IBQuery1.ExecSQL;
Form1.IBTransaction1.CommitRetaining;
Form1.IBQuery1.close;
end;

procedure TForm1.IBREPDFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin

Accept:=(Pos(cxTextEdit3.Text, DataSet.FieldByName('FIO').AsString) > 0);
// and
//(DataSet.FieldByName('LastName').asString < 'B');
end;

procedure TForm1.IBUSERAfterInsert(DataSet: TDataSet);
begin
Form1.IBQuery1.SQL.Text:='SELECT * FROM note WHERE kl_users = :kll';
Form1.IBQuery1.ParamByName('kll').Value:=ActiveUser;
Form1.IBQuery1.open;
Form1.IBQuery1.Last;
       Form2.cxProgressBar1.Position:=0;
       Form2.cxProgressBar1.Properties.Min:=0;
       Form2.cxProgressBar1.Properties.Max:=Form1.IBQuery1.RecordCount-1;
       Form1.IBQuery1.First;
       Form2.Label1.Caption:='Оновлення користувача';
Form2.Show;
       Application.ProcessMessages;

while not Form1.IBQuery1.Eof do
begin
  Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
  Application.ProcessMessages;
  Form1.IBNOTE.Insert;
  Form1.IBNOTESCHET.Value:=Form1.IBQuery1.FieldByName('schet').Value;
  Form1.IBNOTEWID.Value:=Form1.IBQuery1.FieldByName('wid').Value;
  Form1.IBNOTEKL_USERS.Value:=IBUSERKL.Value;
  Form1.IBNOTE.Post;
  Form1.IBQuery1.Next;
end;
Form1.IBTransaction1.CommitRetaining;
Form1.IBQuery1.close;
Form2.Close;

end;

procedure TForm1.IBUSERBeforeDelete(DataSet: TDataSet);
begin
Form1.IBQuery1.SQL.Text:='delete from note where kl_users = :kll';
Form1.IBQuery1.ParamByName('kll').Value:=IBUSERKL.Value;
Form1.IBQuery1.ExecSQL;
Form1.IBTransaction1.CommitRetaining;
Form1.IBQuery1.close;
end;

end.
