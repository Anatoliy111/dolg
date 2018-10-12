unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, DBCtrls, ExtCtrls, Menus, cxContainer,
  cxProgressBar, StdCtrls, cxButtons, cxNavigator;

type
  TForm6 = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1FIO: TcxGridDBColumn;
    cxGrid1DBTableView1KL: TcxGridDBColumn;
    cxGrid1DBTableView1PW: TcxGridDBColumn;
    cxButton2: TcxButton;
    cxProgressBar1: TcxProgressBar;
    cxButton1: TcxButton;
    OpenDialog1: TOpenDialog;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1KL: TcxGridDBColumn;
    cxGridDBTableView1WID: TcxGridDBColumn;
    cxGridDBTableView1NAIM: TcxGridDBColumn;
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm6.cxButton2Click(Sender: TObject);
var pathDBF,pathARC,dateimport,strmes,strye:string;
    adostr:WideString;
    Y ,M, D: Word;
    DateUPD:TDateTime;
    DateUPDD:Tdate;
    ii,cou:integer;
    vArray:variant;
begin
   try
   Form1.Enabled:=false;








   pathARC:=Form1.PathKvart+'arc\'+strye+strmes+'\';

    Form1.ADOConnectionARC.Connected:=false;

    adostr:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+
             pathARC+';Mode=Read;Persist Security Info=False;Jet OLEDB:System database="";'+
            'Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=16;'+
            'Jet OLEDB:Database Locking Mode=0;Jet OLEDB:Global Partial Bulk Ops=2;'+
            'Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";'+
            'Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;'+
            'Jet OLEDB:Don"t Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;'+
            'Jet OLEDB:SFP=False;';


              Form1.ADOConnectionARC.ConnectionString:=adostr;
              Form1.ADOConnectionARC.Connected:=true;




    Application.ProcessMessages;

  Form1.IBQuery1.Close;
  Form1.IBQuery1.SQL.Text:='delete from kart';
  Form1.IBQuery1.ExecSQL;



            Form1.ADOKART.Active:=true;
        cxProgressBar1.Position:=0;
        cxProgressBar1.Properties.Min:=0;
       cxProgressBar1.Properties.Max:=Form1.ADOKART.RecordCount-1;
       cou:= Form1.ADOKART.RecordCount;

        Form1.ADOKART.First;
        Form1.IBKART.First;
        while not Form1.ADOKART.eof do
        begin
        cxProgressBar1.Position:=cxProgressBar1.Position+1;
        Application.ProcessMessages;

               Form1.IBKART.Insert;
               Form1.IBKARTSCHET.Value := trim(Form1.ADOKART.FieldByName('SCHET').AsString);
               Form1.IBKARTFIO.Value := trim(Form1.ADOKART.FieldByName('FIO').AsString)+' '+trim(Form1.ADOKART.FieldByName('IM').AsString)+' '+trim(Form1.ADOKART.FieldByName('OT').AsString);
               Form1.IBKARTIDCOD.Value := trim(Form1.ADOKART.FieldByName('IDCOD').AsString);
               Form1.IBKARTUL.Value := trim(Form1.ADOKART.FieldByName('ULNAIM').AsString);
               Form1.IBKARTDOM.Value := trim(Form1.ADOKART.FieldByName('NOMDOM').AsString);
               Form1.IBKARTKV.Value := trim(Form1.ADOKART.FieldByName('NOMKV').AsString);
               Form1.IBKARTKOLI_P.Value := Form1.ADOKART.FieldByName('KOLI_P').AsInteger;
               Form1.IBKARTPLOS_OB.Value := Form1.ADOKART.FieldByName('PLOS_OB').AsCurrency;
               Form1.IBKARTPLOS_BB.Value := Form1.ADOKART.FieldByName('PLOS_BB').AsCurrency;
               Form1.IBKARTPRIVAT.Value := trim(Form1.ADOKART.FieldByName('PRIV').AsString);
               Form1.IBKARTLGOTA.Value := trim(Form1.ADOKART.FieldByName('LGOTA').AsString);
               Form1.IBKARTVAL.Value := Form1.ADOKART.FieldByName('VAL').AsInteger;
               Form1.IBKART.Post;
//
        Form1.ADOKART.Next;
        end;









     Form1.ADOConnectionDBF.Connected:=false;

  Form1.IBTransaction1.CommitRetaining;

     Form1.Enabled:=true;

   messagedlg('Оновлення завершено ',mtInformation ,[mbOK],0);


  except
   on E : Exception do
   begin
    messagedlg('Помилка при імпорті!!! - '+E.Message,mtError,[mbCancel],0);
    Application.Terminate;
   end;


  end;
end;


procedure TForm6.FormShow(Sender: TObject);
begin
  Form1.IBTMPWID.Close;
  Form1.IBTMPWID.open;
end;

end.
