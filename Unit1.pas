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
  cxGroupBox, cxNavigator, IBX.IBScript, IBX.IBSQL, cxCalc, Data.DBXMySQL,
  Data.DBXPool, Data.SqlExpr, Soap.InvokeRegistry, Soap.WSDLIntf,
  Soap.SOAPPasInv, Soap.SOAPHTTPPasInv, Soap.SOAPHTTPDisp, Soap.WebBrokerSOAP,
  Soap.SOAPDomConv, Soap.OPToSOAPDomConv, Datasnap.DBClient, Soap.SOAPConn,
  cxLocalization,cxGridDBDataDefinitions;

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
    DSADRESKR: TDataSource;
    IBADRESKR: TIBDataSet;
    DSNOTE: TDataSource;
    IBNOTE: TIBDataSet;
    DSSPRADRES: TDataSource;
    IBSPRADRES: TIBDataSet;
    DSREPD: TDataSource;
    IBREPD: TIBDataSet;
    IBQuery1: TIBQuery;
    DSQuery1: TDataSource;
    IBNOTEWID: TIBStringField;
    IBNOTESCHET: TIBStringField;
    IBNOTEKL: TIntegerField;
    DSSP_ADRES: TDataSource;
    IBSP_ADRES: TIBDataSet;
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
    DSSERVICES: TDataSource;
    IBSERVICES: TIBDataSet;
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
    IBTMPOPL: TIBDataSet;
    DSTMPOPL: TDataSource;
    IBTransaction1: TIBTransaction;
    dxBarButton118: TdxBarButton;
    cxGrid1DBTableView1SCHET: TcxGridDBColumn;
    cxGrid1DBTableView1FIO: TcxGridDBColumn;
    cxGrid1DBTableView1IDCOD: TcxGridDBColumn;
    cxGrid1DBTableView1UL: TcxGridDBColumn;
    cxGrid1DBTableView1DOM: TcxGridDBColumn;
    cxGrid1DBTableView1KV: TcxGridDBColumn;
    cxGrid1DBTableView1NACH1: TcxGridDBColumn;
    cxGrid1DBTableView1OPL: TcxGridDBColumn;
    cxGrid1DBTableView1SUBS: TcxGridDBColumn;
    cxGrid1DBTableView1UDER: TcxGridDBColumn;
    cxGrid1DBTableView1ENDDOLG: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxCheckBox2: TcxCheckBox;
    IBWID: TIBDataSet;
    DSTMPWID: TDataSource;
    cxGrid1DBTableView1KOMP: TcxGridDBColumn;
    cxGrid1DBTableView1WZMZ: TcxGridDBColumn;
    cxGrid1DBTableView1WOZW: TcxGridDBColumn;
    cxGrid1DBTableView1PERE: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1KOLI_P: TcxGridDBColumn;
    cxGrid1DBTableView1KOLI_PF: TcxGridDBColumn;
    cxGrid1DBTableView1WID: TcxGridDBColumn;
    cxGrid1DBTableView1POSLUG: TcxGridDBColumn;
    cxButton2: TcxButton;
    cxComboBox1: TcxComboBox;
    cxLabel1: TcxLabel;
    cxCheckBox1: TcxCheckBox;
    cxComboBox2: TcxComboBox;
    cxButton5: TcxButton;
    IBORGAN: TIBDataSet;
    DSORGAN: TDataSource;
    cxGrid1DBTableView1DOLG: TcxGridDBColumn;
    cxTextEdit3: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    IBOBORKL: TIntegerField;
    IBOBORPERIOD: TDateField;
    IBOBORSCHET: TIBStringField;
    IBOBORWID: TIBStringField;
    IBOBORN_DOG: TIBStringField;
    IBOBORD_DOG: TIBStringField;
    IBOBORTARIF: TFloatField;
    IBOBORDOLG: TFloatField;
    IBOBORNACH: TFloatField;
    IBOBORSUBS: TFloatField;
    IBOBOROPL: TFloatField;
    IBOBORUDER: TFloatField;
    IBOBORKOMP: TFloatField;
    IBOBORWZMZ: TFloatField;
    IBOBORWOZW: TFloatField;
    IBOBORMOVW: TFloatField;
    IBOBORPERE: TFloatField;
    IBOBORSAL: TFloatField;
    IBOBORBGST: TFloatField;
    IBOBORPRST: TFloatField;
    IBOBORBGEND: TFloatField;
    IBOBORPREND: TFloatField;
    IBOBORFULLNACH: TFloatField;
    IBOBORFULLOPL: TFloatField;
    IBOBOROPLNOTSUBS: TFloatField;
    IBORGANORG: TFloatField;
    IBORGANNAME: TIBStringField;
    IBORGANRUK: TIBStringField;
    IBORGANDOLGR: TIBStringField;
    IBORGANNAMER: TIBStringField;
    IBORGANRUKR: TIBStringField;
    IBORGANUD_K: TIBStringField;
    IBORGANUD_E: TIBStringField;
    IBORGANADR: TIBStringField;
    IBORGANGRP: TFloatField;
    IBORGANVAL: TFloatField;
    IBORGANKL: TIntegerField;
    IBORGANUPD: TIntegerField;
    IBWIDWID: TIBStringField;
    IBWIDID_ORG: TFloatField;
    IBWIDNAIM: TIBStringField;
    IBWIDSNAIM: TIBStringField;
    IBWIDPAR: TIBStringField;
    IBWIDFL0: TIBStringField;
    IBWIDFL: TIBStringField;
    IBWIDNPP: TFloatField;
    IBWIDFL_NONACH: TIBStringField;
    IBWIDFL_NOOPL: TIBStringField;
    IBWIDFL_VTCH: TIBStringField;
    IBWIDFL_NOOBOR: TIBStringField;
    IBWIDFL_GROPL: TFloatField;
    IBWIDFL_SUBS: TFloatField;
    IBWIDVAL: TFloatField;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    cxButton3: TcxButton;
    cxLabel4: TcxLabel;
    cxLabel7: TcxLabel;
    IBDataSet1: TIBDataSet;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    DataSource1: TDataSource;
    cxCalcEdit1: TcxCalcEdit;
    cxCalcEdit2: TcxCalcEdit;
    Label16: TLabel;
    Label17: TLabel;
    dxBarButton95: TdxBarButton;
    IBKARTKONTROL: TIBStringField;
    IBKARTSCHET: TIBStringField;
    IBKARTFIO: TIBStringField;
    IBKARTIDCOD: TIBStringField;
    IBKARTORGAN: TIBStringField;
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
    IBKARTKL_UL: TFloatField;
    IBKARTULNAIM: TIBStringField;
    IBKARTNOMDOM: TIBStringField;
    IBKARTNOMKV: TIBStringField;
    IBKARTLIFT: TFloatField;
    IBKARTTEL: TIBStringField;
    IBKARTTELEF: TIBStringField;
    IBKARTID: TIntegerField;
    HTTPSoapPascalInvoker1: THTTPSoapPascalInvoker;
    cxButton4: TcxButton;
    IBSMSORDEREDS: TIBDataSet;
    IBSMSORDEREDSID: TIntegerField;
    IBSMSORDEREDSDATA: TDateTimeField;
    IBSMSORDEREDSSEND: TIntegerField;
    IBSMSORDEREDSPERIOD: TDateField;
    IBSMSORDEREDSDOLG: TFloatField;
    IBSMSORDEREDSKOL_SENDSMS: TIntegerField;
    IBSMSORDEREDSKOL_DOST: TIntegerField;
    IBSMSORDEREDSFIO: TIBStringField;
    IBSMSORDEREDSID_USER: TIntegerField;
    DSSMSORDEREDS: TDataSource;
    IBSMSORDEREDSCONTROL: TIntegerField;
    IBABONINF: TIBDataSet;
    DSABONINF: TDataSource;
    IBABONINFID: TIntegerField;
    IBABONINFSCHET: TIBStringField;
    IBABONINFTEL: TIBStringField;
    IBSMSORDEREDSPOSL: TIBStringField;
    IBSMSORDEREDSTRANSLIT: TIntegerField;
    IBSMSORDEREDSKOL_SEND: TIntegerField;
    IBSMSORDEREDSKOL_ERR: TIntegerField;
    IBSMSORDEREDSKOL_DOSTSMS: TIntegerField;
    IBSMSLIST: TIBDataSet;
    IBSMSLISTID: TIntegerField;
    IBSMSLISTID_SMSORDER: TIntegerField;
    IBSMSLISTSCHET: TIBStringField;
    IBSMSLISTULNAIM: TIBStringField;
    IBSMSLISTNOMDOM: TIBStringField;
    IBSMSLISTNOMKV: TIBStringField;
    IBSMSLISTALPHANAME: TIBStringField;
    IBSMSLISTWAPPUSH: TIBStringField;
    IBSMSLISTDOLG: TFloatField;
    IBSMSLISTSTATUS: TIBStringField;
    IBSMSLISTTEXT: TIBStringField;
    IBSMSLISTKOL_SMS: TIntegerField;
    IBSMSLISTTEL: TIBStringField;
    IBSMSLISTMESSAGEID: TIBStringField;
    IBSMSLISTFIO: TIBStringField;
    IBSMSLISTTEXTNOTTR: TIBStringField;
    DSSMSLIST: TDataSource;
    IBSMSLISTKOL_ABON: TIntegerField;
    IBUSERSMS: TIntegerField;
    dxBarButton119: TdxBarButton;
    dxBarSubItem27: TdxBarSubItem;
    dxBarButton120: TdxBarButton;
    dxBarButton121: TdxBarButton;
    dxBarButton122: TdxBarButton;
    dxBarButton123: TdxBarButton;
    cxButton10: TcxButton;
    cxButton6: TcxButton;
    cxGrid1DBTableView1N_DOG: TcxGridDBColumn;
    cxGrid1DBTableView1D_DOG: TcxGridDBColumn;
    cxLocalizer1: TcxLocalizer;
    dxBarButton124: TdxBarButton;
    dxBarSubItem28: TdxBarSubItem;
    dxBarButton125: TdxBarButton;
    dxBarButton126: TdxBarButton;
    cxGrid1DBTableView1PLOS_BB: TcxGridDBColumn;
    cxGrid1DBTableView1PLOS_OB: TcxGridDBColumn;
    cxGrid1DBTableView1PRIV: TcxGridDBColumn;
    cxButton7: TcxButton;
    IBVIBER_SEND: TIBDataSet;
    DSVIBER_SEND: TDataSource;
    IBVIBER_SENDID: TIntegerField;
    IBVIBER_SENDDATA: TDateTimeField;
    IBVIBER_SENDDATE_SEND: TDateTimeField;
    IBVIBER_SENDKOLSEND: TIntegerField;
    IBVIBER_SENDTEXT: TWideMemoField;
    IBVIBER_SENDSMALLTEXT: TIBStringField;
    dxBarButton127: TdxBarButton;
    dxBarButton128: TdxBarButton;
    cxButton8: TcxButton;
    dxBarButton129: TdxBarButton;
    dxBarButton130: TdxBarButton;
    dxBarSubItem29: TdxBarSubItem;
    dxBarButton131: TdxBarButton;
    dxBarSubItem30: TdxBarSubItem;
    dxBarButton132: TdxBarButton;
    dxBarButton133: TdxBarButton;
    IBSP_ADRESUL: TIBStringField;
    IBSP_ADRESDOM: TIBStringField;
    IBSP_ADRESKL_KONTROL: TIntegerField;
    IBSP_ADRESCH: TIntegerField;
    IBSP_ADRESKL: TIntegerField;
    dxBarButton134: TdxBarButton;
    dxBarButton135: TdxBarButton;
    dxBarButton136: TdxBarButton;
    IBADRES: TIBDataSet;
    IBADRESKL: TIntegerField;
    IBADRESDOM: TIBStringField;
    IBADRESKL_KONTROL: TIntegerField;
    IBADRESUL: TIBStringField;
    IBADRESKOL_KV: TIntegerField;
    IBADRESKL_UL: TIntegerField;
    IBADRESKL_RAION: TSmallintField;
    IBRAION: TIBDataSet;
    IBRAIONKL: TIntegerField;
    IBRAIONNAME: TIBStringField;
    DSADRES: TDataSource;
    DSRAION: TDataSource;
    IBADRESKRKL: TIntegerField;
    IBADRESKRDOM: TIBStringField;
    IBADRESKRUL: TIBStringField;
    IBADRESKRKL_KONTROL: TIntegerField;
    IBADRESKRKOL_KV: TIntegerField;
    IBADRESKRKL_UL: TIntegerField;
    IBADRESKRKL_RAION: TSmallintField;
    cxTextEdit1: TcxTextEdit;
    IBSMSORDEREDSVID_SMS: TIntegerField;
    IBSMSORDEREDSTEXT_SMS: TIBStringField;
    IBSERVICESKL: TIntegerField;
    IBSERVICESDATA: TDateField;
    IBSERVICESUPDATES: TIntegerField;
    IBSERVICESSMSLOGIN: TIBStringField;
    IBSERVICESSMSPW: TIBStringField;
    IBSERVICESSMSTRANSLIT: TSmallintField;
    IBSERVICESSMSALPHA: TIBStringField;
    IBSERVICESSMSCENA: TFloatField;
    dxBarButton137: TdxBarButton;
    cxGrid1DBTableView1KL_NTAR: TcxGridDBColumn;
    cxGrid1DBTableView1KOEF: TcxGridDBColumn;
    dxBarButton138: TdxBarButton;
    IBPERIODSTRPERIOD: TIBStringField;
    dxBarButton139: TdxBarButton;
    IBREPDKL: TIntegerField;
    IBREPDPERIOD: TDateField;
    IBREPDSCHET: TIBStringField;
    IBREPDWID: TIBStringField;
    IBREPDCOD: TIBStringField;
    IBREPDPOSLUG: TIBStringField;
    IBREPDVID: TIBStringField;
    IBREPDNPP: TFloatField;
    IBREPDED_IZMPFU: TIBStringField;
    IBREPDFIO: TIBStringField;
    IBREPDFFF: TIBStringField;
    IBREPDIM: TIBStringField;
    IBREPDOT: TIBStringField;
    IBREPDULNAIM: TIBStringField;
    IBREPDNOMDOM: TIBStringField;
    IBREPDNOMKV: TIBStringField;
    IBREPDORG: TFloatField;
    IBREPDIDCOD: TIBStringField;
    IBREPDKOLI_P: TFloatField;
    IBREPDKOLI_PF: TFloatField;
    IBREPDPLOS_BB: TFloatField;
    IBREPDPLOS_OB: TFloatField;
    IBREPDPRIV: TIBStringField;
    IBREPDLGOTA: TIBStringField;
    IBREPDKOEF: TFloatField;
    IBREPDN_DOG: TIBStringField;
    IBREPDD_DOG: TIBStringField;
    IBREPDTARIF: TFloatField;
    IBREPDTARSUBS: TFloatField;
    IBREPDKL_NTAR: TFloatField;
    IBREPDDOLG: TFloatField;
    IBREPDNACH: TFloatField;
    IBREPDSUBS: TFloatField;
    IBREPDOPL: TFloatField;
    IBREPDUDER: TFloatField;
    IBREPDKOMP: TFloatField;
    IBREPDWZMZ: TFloatField;
    IBREPDWOZW: TFloatField;
    IBREPDMOVW: TFloatField;
    IBREPDPERE: TFloatField;
    IBREPDSAL: TFloatField;
    IBREPDBGST: TFloatField;
    IBREPDPRST: TFloatField;
    IBREPDBGEND: TFloatField;
    IBREPDPREND: TFloatField;
    IBREPDFULLNACH: TFloatField;
    IBREPDFULLOPL: TFloatField;
    IBREPDOPLNOTSUBS: TFloatField;
    IBREPDENDDOLG: TFloatField;
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
    procedure IBREPDFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cxTextEdit4PropertiesChange(Sender: TObject);
    procedure dxBarButton95Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure dxBarButton120Click(Sender: TObject);
    procedure dxBarButton121Click(Sender: TObject);
    procedure dxBarButton122Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure dxBarButton125Click(Sender: TObject);
    procedure dxBarButton126Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure dxBarButton127Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure dxBarButton129Click(Sender: TObject);
    procedure dxBarButton132Click(Sender: TObject);
    procedure dxBarButton133Click(Sender: TObject);
    procedure dxBarButton135Click(Sender: TObject);
    procedure dxBarButton136Click(Sender: TObject);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure cxTextEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxTextEdit3PropertiesChange(Sender: TObject);
    procedure dxBarButton137Click(Sender: TObject);
    procedure dxBarButton138Click(Sender: TObject);
    procedure dxBarButton139Click(Sender: TObject);
  private
    { Private declarations }
    procedure AddFilter(column:TcxGridDBColumn;text:string);
    procedure DelFilter(col:TcxGridDBColumn;s:string);
    function GetAppVersionStr:string;


  public
    { Public declarations }
    ActiveUser:integer;
    DateKVART:TDate;
    UpdateBase:Boolean;
    iniFile:TIniFile;
    PathKvart,StartSQL,PathFox,ORG,PathTMP,orgpoint,edrpou:string;
    translit,textsms1,textsms2,urlsend:string;
    posl:TStrings;



    procedure REPORT;
    procedure ExportGrid(AGrid: TcxGrid;Filename:string='Table.xls');

  end;

var
  Form1: TForm1;
  CLOSING:Boolean;
  ExB:DWORD;

implementation

uses registry, cxGridExportLink, comobj, dateutils, MyTools, Unit2, Unit3,
  Unit5, Unit6, Unit4, Unit11, Unit12, IOUtils, Unit13, Unit14, Unit15, wsdl,
  Unit16, Unit19, Unit20, Unit21, Unit22, Unit23, Unit26, Unit27, Unit28,
  Unit29, Unit30, Unit31, Unit32, Unit33, Unit35, Unit36;
//IOUtils - ��� ���������� TDirectory
{$R *.dfm}




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

procedure TForm1.dxBarButton120Click(Sender: TObject);
begin
Form13.Caption:=dxBarButton120.Caption;
Form13.show;
end;

procedure TForm1.dxBarButton121Click(Sender: TObject);
begin
Form14.tip:='Abon';
Form14.cxGrid1DBTableView1.ClearItems;
Form14.Caption:=dxBarButton121.Caption;
Form14.Show;

end;

procedure TForm1.dxBarButton122Click(Sender: TObject);
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
////           cxGrid1DBTableView1.FindItemByName('cxGrid1DBTableView1DOLGMES'+int2str(i)).Caption:='���� �� '+DateTimeToStr(IBPERIODPERIOD.Value);
////
////         StrSQL:=StringReplace(StrSQL,'0.00 as mes'+int2str(i),'(select sum(mes) as mes from (Select schet,wid, Case when period='''+DateTimeToStr(IBPERIODPERIOD.Value)+''' then fullopl else 0.00 end mes from obor) ppp where (note.wid = ppp.wid) and (note.schet = ppp.schet) group by schet,wid) as mes'+int2str(i),[]);
//////         cxGrid1DBTableView1MES+int2str(i).Visible:=true;
////         cxGrid1DBTableView1.FindItemByName('cxGrid1DBTableView1MES'+int2str(i)).Visible:=true;
////         cxGrid1DBTableView1.FindItemByName('cxGrid1DBTableView1MES'+int2str(i)).Caption:='������ '+DateTimeToStr(IBPERIODPERIOD.Value);
////
////         end;
////
////       IBPERIOD.Next;
////       end;
//
//     end;
end;

procedure TForm1.dxBarButton125Click(Sender: TObject);
begin
Form20.Caption:=dxBarButton125.Caption;
Form20.show;
end;

procedure TForm1.dxBarButton126Click(Sender: TObject);
begin
Form22.Caption:=dxBarButton126.Caption;
Form22.show;
end;

procedure TForm1.dxBarButton127Click(Sender: TObject);
begin
Form26.Caption:=dxBarButton127.Caption;
Form26.Show;
end;

procedure TForm1.dxBarButton129Click(Sender: TObject);
begin
Form28.Caption:=dxBarButton129.Caption;
Form28.Show;
end;

procedure TForm1.dxBarButton132Click(Sender: TObject);
begin
Form29.Caption:=dxBarButton132.Caption;
Form29.show;
end;

procedure TForm1.dxBarButton133Click(Sender: TObject);
begin
Form30.Caption:=dxBarButton133.Caption;
Form30.Show;
end;

procedure TForm1.dxBarButton135Click(Sender: TObject);
begin
Form31.Caption:=dxBarButton135.Caption;
IBADRES.Close;
IBADRES.Open;
IBRAION.Close;
IBRAION.Open;
Form31.show;
end;

procedure TForm1.dxBarButton136Click(Sender: TObject);
begin
Form32.Caption:=dxBarButton136.Caption;
IBRAION.Close;
IBRAION.Open;
Form32.show;

end;

procedure TForm1.dxBarButton137Click(Sender: TObject);
begin
Form35.show;
Form35.cxLookupComboBox1.EditValue:=IBPERIODSTRPERIOD.Value;
end;

procedure TForm1.dxBarButton138Click(Sender: TObject);
begin
Form36.Caption:=dxBarButton138.Caption;
Form36.show;
end;

procedure TForm1.dxBarButton139Click(Sender: TObject);
begin
Form36.Caption:=dxBarButton139.Caption;
Form36.show;
end;

procedure TForm1.dxBarButton19Click(Sender: TObject);
begin
Form1.close;
end;

procedure TForm1.dxBarButton4Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm1.dxBarButton95Click(Sender: TObject);
begin
Form15.Caption:=dxBarButton95.Caption;
IBKART.Close;
IBKART.Open;
Form15.show;
end;

procedure TForm1.cxButton10Click(Sender: TObject);
begin
Form19.Caption:=cxButton10.Caption;
Form19.mode:=1;
Form19.show;

end;

procedure TForm1.cxButton1Click(Sender: TObject);
begin
Form2.Timer1.Enabled:= true;
end;

procedure TForm1.cxButton2Click(Sender: TObject);
begin
     IBPERIOD.Close;
     IBPERIOD.Open;
     Form1.DSPERIOD.Enabled:=true;
 Form1.REPORT;
 ShowMessage('��� ���������� �� '+mon_slovoDt(cxLookupComboBox1.EditValue));
end;

procedure TForm1.REPORT;
var sql1,sql2,StrSQL:string;
str1:ShortString;
    i:integer;
FilterDATE:TDate;
begin
     IBPERIOD.Close;
     IBPERIOD.Open;
     Form1.DSPERIOD.Enabled:=true;
     Form1.DSREPD.Enabled:=false;
     Form1.IBREPD.close;

     StrSQL:=StartSQL;

     if cxCheckBox1.Checked then
     begin
           sql2:=' and dolg'+cxComboBox1.EditValue+StringReplace(FloatToStr(cxCalcEdit1.EditValue),',','.',[rfReplaceAll, rfIgnoreCase]);
     end;

     if cxCheckBox2.Checked then
     begin
           sql2:=' and sal'+cxComboBox2.EditValue+StringReplace(FloatToStr(cxCalcEdit2.EditValue),',','.',[rfReplaceAll, rfIgnoreCase]);
     end;

   //  if Form1.cxLookupComboBox1.EditValue=IBPERIODPERIOD.Value then
   //  StrSQL:=StringReplace(StrSQL,'vw_obkr','vw_obkrnow',[rfReplaceAll, rfIgnoreCase]);

     Form1.IBREPD.SelectSQL.Text:=StrSQL+sql2+' order by schet,wid';
    // Form1.IBREPD.ParamByName('kluser').Value:=Form1.ActiveUser;
     Form1.IBREPD.ParamByName('dt').Value:=Form1.cxLookupComboBox1.EditValue;
     Form1.IBREPD.open;
     Form1.DSREPD.Enabled:=true;
     Form1.DSTMPWID.Enabled:=true;
     Form1.cxLabel7.Caption:=mon_slovoDt(cxLookupComboBox1.EditValue);

end;

procedure TForm1.cxButton3Click(Sender: TObject);
begin
  ExportGrid(cxGrid1);
end;


procedure TForm1.cxButton4Click(Sender: TObject);
begin
Form1.IBSMSORDEREDS.Close;
Form1.IBSMSORDEREDS.Open;

Form16.show;
//  // �������� ���������
//  ws := GetServiceSoap();
//  // �������� ��������� �������
////  ws.Auth('tsmsb','tsmsb1234');
//  ws.Auth('tsmsb','tsmsb5678');
//  with ws do
//    ShowMessage(ws.GetCreditBalance);

end;

procedure TForm1.cxButton6Click(Sender: TObject);
begin
Form19.Caption:=cxButton6.Caption;
Form19.mode:=2;
Form19.show;
end;

procedure TForm1.cxButton7Click(Sender: TObject);
begin
Form23.Show;
end;

procedure TForm1.cxButton8Click(Sender: TObject);
begin
Form27.show;
Form27.Caption:=cxButton8.Caption;
end;

procedure TForm1.cxGrid1DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if IBREPDSCHET.Value<>null then
  begin
     Form12.cxTextEdit1.EditValue:= IBREPDSCHET.Value;
     Form12.Find();
//     Form12.Show;
  end;
end;

procedure TForm1.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  DelFilter(cxGrid1DBTableView1SCHET,cxTextEdit1.Text);
end;

procedure TForm1.cxTextEdit1PropertiesChange(Sender: TObject);
begin
AddFilter(cxGrid1DBTableView1SCHET,cxTextEdit1.Text);
end;

procedure TForm1.cxTextEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  DelFilter(cxGrid1DBTableView1FIO,cxTextEdit3.Text);
end;

procedure TForm1.cxTextEdit3PropertiesChange(Sender: TObject);
begin
AddFilter(cxGrid1DBTableView1FIO,cxTextEdit3.Text);
end;

procedure TForm1.cxTextEdit4PropertiesChange(Sender: TObject);
begin
//IBREPD.LocateNext('schet',cxTextEdit4.Text,[loCaseInsensitive, loPartialKey]);
end;

procedure TForm1.ExportGrid(AGrid: TcxGrid;Filename:string='Table.xls');
var
  sd:TSaveDialog;
  Excel: Variant;
  Reg: TRegistry;
  path,dname:string;
  i,Columns:integer;
  Range, Cell1, Cell2: Variant;
      View:  TcxGridTableView;
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

      Filename:='��� '+Filename+'.xls'
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

//    Excel.ActiveWindow.View := 2;
//    if Excel.ActiveSheet.VPageBreaks.count <> 0 then
//       Excel.ActiveSheet.VPageBreaks[1].DragOff(Direction:=1, RegionIndex:=1);
//    if Excel.ActiveSheet.HPageBreaks.count <> 0 then
//       Excel.ActiveSheet.HPageBreaks[1].DragOff(Direction:=1, RegionIndex:=1);
//    Excel.ActiveWindow.View := 1;

//   Excel.WorkBooks[1].WorkSheets[1].PageSetup.Zoom:=False;
//   Excel.WorkBooks[1].WorkSheets[1].PageSetup.FitToPagesWide := 1;

//Columns := Excel.ActiveSheet.UsedRange.Columns.Count;
//Excel.ActiveSheet.PageSetup.Orientation := 2;

  if (AGrid.ActiveView as TcxGridDBTableView).ColumnCount > 12 then
      Excel.ActiveSheet.PageSetup.Orientation := 2;


  Excel.ActiveWindow.View := 2;

  Excel.ActiveSheet.VPageBreaks[1].DragOff(1, 1);

  Excel.ActiveWindow.View := 1;

 // Excel.ActiveSheet.Rows['20:20'].Select;
  //Excel.Selection.Insert(Shift :=5);
   //Excel.ActiveSheet.Range['A8','A8'].Insert(3);


//   Excel.WorkBooks[1].WorkSheets[1].Rows.InsertRows(0,10);
 //  Excel.ActiveSheet.Rows.InsertRows(0,10);

  except
  end;
end;


procedure TForm1.FormCreate(Sender: TObject);
var s,ss,log,pw,cur,stroka,strmes,strye,pp:string;
f : TextFile;
mes,ye,year,month,yearmon,i:integer;
DateKVART:TDate;
DateKVART1:TDate;


begin
  try


  IBDatabase1.Connected:=false;
  iniFile:=TIniFile.Create(extractfilepath(paramstr(0))+'dolg.ini');
  s:=iniFile.ReadString('Data','Database',extractfilepath(paramstr(0))+'DOLG.GDB');
  log:=iniFile.ReadString('Data','Login','');
  pw:=iniFile.ReadString('Data','PW','');
  ORG:=iniFile.ReadString('Data','org','');
  orgpoint:=iniFile.ReadString('Data','orgpoint','');
  edrpou:=iniFile.ReadString('Data','edrpou','');
  PathKvart:=iniFile.ReadString('DBF','base','');
  PathFOX:=iniFile.ReadString('DBF','fox','');
  PathTMP:=iniFile.ReadString('TMP','tmp','');
  urlsend:=iniFile.ReadString('site','urlsend','');

  posl := TStringList.Create;

          if not DirectoryExists(PathTMP) then
             MkDir(PathTMP);

   cxLocalizer1.Active:=false;
   cxLocalizer1.FileName:=GetCurrentDir+'\Ukr.INI';
   cxLocalizer1.Active:=true;
   cxLocalizer1.Locale:=1058;




// sms

    textsms1:=iniFile.ReadString('SMS','textsms1',extractfilepath(paramstr(0)));
    textsms2:=iniFile.ReadString('SMS','textsms2',extractfilepath(paramstr(0)));
    translit:=iniFile.ReadString('SMS','translit',extractfilepath(paramstr(0)));


//  cur:=iniFile.ReadString('DBF','cur_date',extractfilepath(paramstr(0))+);

  IBDatabase1.Connected:=false;
  IBDatabase1.DatabaseName:=s;

  IBDatabase1.Params.Clear;
  IBDatabase1.Params.Add('user_name='+log);
  IBDatabase1.Params.Add('password='+pw);
  cxPropertiesStore1.RestoreFrom;
   IBDatabase1.Connected:=TRUE;
   IBTransaction1.StartTransaction;
   IBSERVICES.open;
   IBPERIOD.open;
   IBSMSORDEREDS.Open;



  IBREPD.close;
  StartSQL:=IBREPD.SelectSQL.Text;
  IBKONTROL.open;
  IBUSER.open;
  IBADRESKR.open;
  IBNOTE.open;
  IBNOTE1.open;
  IBNOTE2.open;
  IBKART.open;
  IBOBOR.open;

  IBADRES.Open;
  IBRAION.Open;

  IBSPRADRES.open;
  IBSP_ADRES.open;
  IBSERVICES.open;
  IBPERIOD.open;
  IBVIBER_SEND.Open;

  IBPERIOD.Open;


    IBWID.open;
  IBWID.First;
  while not IBWID.Eof do
    begin
    if Length(iniFile.ReadString('POSL',IBWIDWID.Value,''))<>0 then
       posl.Add(Format('%s=%s', [IBWIDWID.Value, iniFile.ReadString('POSL',IBWIDWID.Value,'')]));
    pp:=posl.Values[Form1.IBWIDWID.Value];
    IBWID.Next;
    end;




  IBTMPOPL.open;



     IBREPD.close;
     DSREPD.Enabled:=false;


  Form1.Caption:=Form1.Caption+' '+GetAppVersionStr;


     except
   on E : Exception do
   begin
    messagedlg('������� ��� ���������� �� ���� �����!!! - '+E.Message,mtError,[mbCancel],0);
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
Form1.IBQuery1.SQL.Text:='update adres set kl_kontrol = null where kl_kontrol = :kll';
Form1.IBQuery1.ParamByName('kll').Value:=IBKONTROLKL.Value;
Form1.IBQuery1.ExecSQL;
Form1.IBTransaction1.CommitRetaining;
Form1.IBQuery1.close;
end;

function TForm1.GetAppVersionStr: string;
var
  Exe: string;
  Size, Handle: DWORD;
  Buffer: TBytes;
  FixedPtr: PVSFixedFileInfo;
begin
  Exe := ParamStr(0);
  Size := GetFileVersionInfoSize(PChar(Exe), Handle);
  if Size = 0 then
    RaiseLastOSError;
  SetLength(Buffer, Size);
  if not GetFileVersionInfo(PChar(Exe), Handle, Size, Buffer) then
    RaiseLastOSError;
  if not VerQueryValue(Buffer, '\', Pointer(FixedPtr), Size) then
    RaiseLastOSError;
  // major
  Result := Format('%d.%d.%d.%d', [LongRec(FixedPtr.dwFileVersionMS).Hi,
    LongRec(FixedPtr.dwFileVersionMS).Lo, // minor
    LongRec(FixedPtr.dwFileVersionLS).Hi, // release
    LongRec(FixedPtr.dwFileVersionLS).Lo]) // build
end;

procedure TForm1.IBREPDFilterRecord(DataSet: TDataSet; var Accept: Boolean);
//var P: Pointer;
begin
//   P:=cxComboBox1.EditValue;

if (cxTextEdit3.Text<>'') and (cxTextEdit1.Text<>'')then
   Accept:=(Pos(cxTextEdit3.Text, DataSet.FieldByName('FIO').AsString) > 0) and (Pos(cxTextEdit1.Text, DataSet.FieldByName('schet').AsString) > 0)
else
begin
   if (cxTextEdit3.Text<>'') then
      Accept:=(Pos(cxTextEdit3.Text, DataSet.FieldByName('FIO').AsString) > 0);
   if (cxTextEdit1.Text<>'') then
      Accept:=(Pos(cxTextEdit1.Text, DataSet.FieldByName('schet').AsString) > 0);
//   if (cxTextEdit1.Text<>'') then
//      Accept:=Accept and (DataSet.FieldByName('dolg').AsFloat,StringCodePage(cxComboBox1.EditValue),str2float(cxTextEdit1.Text));
end;

// and
//(DataSet.FieldByName('LastName').asString < 'B');
end;

procedure TForm1.IBUSERAfterInsert(DataSet: TDataSet);
begin
//Form1.IBQuery1.SQL.Text:='SELECT * FROM note WHERE kl_users = :kll';
Form1.IBQuery1.SQL.Text:='INSERT INTO note (wid, schet,NOTE1,NOTE2,NOTE3,KL_USERS) select wid, schet,null,null,null,:kl2 from note where kl_users= :kl1';
Form1.IBQuery1.ParamByName('kll').Value:=ActiveUser;
Form1.IBQuery1.ParamByName('kl2').Value:=IBUSERKL.Value;
Form1.IBQuery1.ExecSQL;
Form1.IBTransaction1.CommitRetaining;
Form1.IBQuery1.close;

end;

procedure TForm1.IBUSERBeforeDelete(DataSet: TDataSet);
begin
Form1.IBQuery1.SQL.Text:='delete from note where kl_users = :kll';
Form1.IBQuery1.ParamByName('kll').Value:=IBUSERKL.Value;
Form1.IBQuery1.ExecSQL;
Form1.IBTransaction1.CommitRetaining;
Form1.IBQuery1.close;
end;


procedure TForm1.DelFilter(col:TcxGridDBColumn;s:string);
var I:integer;
begin

with cxGrid1DBTableView1.DataController do
  begin
    try
      Filter.BeginUpdate;
//      cxGrid1DBTableView1.DataController.Filter.Root.AddItem(cxGrid1DBTableView1FAM, foLike, '%'+cxTextEdit1.Text+'%', cxTextEdit1.Text);
      for I := Filter.Root.Count - 1 downto 0 do
        if (not Filter.Root.Items[I].IsItemList) then
        begin
//          if (col=cxGrid1DBTableView1PR_DOM) or (col=cxGrid1DBTableView1PR_KV)then
//          begin
//          if ((Filter.Root.Items[I] as TcxGridDBDataFilterCriteriaItem).Value = s) and
//             ((Filter.Root.Items[I] as TcxGridDBDataFilterCriteriaItem).ItemLink = col) then
//              Filter.Root.Items[I].free;
//          end
//          else
//            if (col=cxGrid1DBTableView1MN_DATA)then
//            begin
//            if ((Filter.Root.Items[I] as TcxGridDBDataFilterCriteriaItem).ItemLink = col) then
//                Filter.Root.Items[I].free;
//            end
//            else
               if ((Filter.Root.Items[I] as TcxGridDBDataFilterCriteriaItem).Value = '%'+s+'%') and
                  ((Filter.Root.Items[I] as TcxGridDBDataFilterCriteriaItem).ItemLink = col) then
                  Filter.Root.Items[I].free

        end;
    finally
      Filter.EndUpdate;
    end;
  end;
  cxGrid1DBTableView1.DataController.Filter.Active := true;



end;

procedure TForm1.AddFilter(column:TcxGridDBColumn;text:string);
var    I:integer;
begin

  cxGrid1DBTableView1.DataController.Filter.Active := true;

  if (Text<>'') then
  begin
      cxGrid1DBTableView1.DataController.Filter.BeginUpdate;
      try
//          if (column=cxGrid1DBTableView1PR_DOM) or (column=cxGrid1DBTableView1PR_KV)then
//             cxGrid1DBTableView1.DataController.Filter.Root.AddItem(column, foEqual, Text, Text)
//          else
//          if (column=cxGrid1DBTableView1MN_DATA) then
//          begin
//             if cxComboBox1.Text='=' then cxGrid1DBTableView1.DataController.Filter.Root.AddItem(column, foEqual, Text, Text);
//             if cxComboBox1.Text='<>' then cxGrid1DBTableView1.DataController.Filter.Root.AddItem(column, foNotEqual, Text, Text);
//             if cxComboBox1.Text='>=' then cxGrid1DBTableView1.DataController.Filter.Root.AddItem(column, foGreaterEqual, Text, Text);
//             if cxComboBox1.Text='<=' then cxGrid1DBTableView1.DataController.Filter.Root.AddItem(column, foLessEqual, Text, Text);
//          end
//             else
                cxGrid1DBTableView1.DataController.Filter.Root.AddItem(column, foLike, '%'+Text+'%', Text);
      finally
      cxGrid1DBTableView1.DataController.Filter.EndUpdate;
      end;
//      cxGrid1DBTableView1.DataController.Filter.Active := true;
//

  end;

end;



end.


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
////           cxGrid1DBTableView1.FindItemByName('cxGrid1DBTableView1DOLGMES'+int2str(i)).Caption:='���� �� '+DateTimeToStr(IBPERIODPERIOD.Value);
////
////         StrSQL:=StringReplace(StrSQL,'0.00 as mes'+int2str(i),'(select sum(mes) as mes from (Select schet,wid, Case when period='''+DateTimeToStr(IBPERIODPERIOD.Value)+''' then fullopl else 0.00 end mes from obor) ppp where (note.wid = ppp.wid) and (note.schet = ppp.schet) group by schet,wid) as mes'+int2str(i),[]);
//////         cxGrid1DBTableView1MES+int2str(i).Visible:=true;
////         cxGrid1DBTableView1.FindItemByName('cxGrid1DBTableView1MES'+int2str(i)).Visible:=true;
////         cxGrid1DBTableView1.FindItemByName('cxGrid1DBTableView1MES'+int2str(i)).Caption:='������ '+DateTimeToStr(IBPERIODPERIOD.Value);
////
////         end;
////
////       IBPERIOD.Next;
////       end;
//
//     end;
