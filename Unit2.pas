unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxProgressBar;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Timer1: TTimer;
    cxProgressBar1: TcxProgressBar;
    Button11: TButton;
    Timer2: TTimer;
    Label2: TLabel;
    cxProgressBar2: TcxProgressBar;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button11Click(Sender: TObject);
        procedure UpdateKART;
  private
    { Private declarations }
    procedure Import;
    procedure UpdateBase;
    procedure UpdateNOTE;

  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit3, mytools;
//IOUtils - для компонента TDirectory
{$R *.dfm}

procedure TForm2.Button11Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
//Timer1.enabled:=true;
Label2.Enabled:=false;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
var ss:TStringList;
    uu:string;
    ii:integer;
begin
 Form2.Show;
 Timer1.enabled:=false;
 Form2.Label1.Caption:='Перевірка підключення до бази даних.Зачекайте...';
 Form1.DatabaseDate;

 if Form1.IBDatabase1.Connected and Form1.UpdateBase then
 begin
    if Form1.IBSERVICESUPDATES.Value = 1 then
    begin
      if Form1.IBDatabaseInfo1.UserNames.Count <= 1 then
      begin
       Import;
      end
      else
          Form1.Enabled:=false;
          Button11.Visible:=true;
          Label1.Caption:='Йде оновлення бази даних іншим користувачем. Спробуйте пізніше(через 5хв.)...';
    end
    else
    begin
       Import;
    end;
 end
 else
 begin
     UpdateBase;
//     Form1.IBREPD.Active:=false;
//     Form1.IBREPD.ParamByName('kluser').Value:=Form1.IBUSERKL.Value;
//     Form1.IBREPD.Active:=true;
//     Form1.DSREPD.Enabled:=true;
       Form1.Enabled:=true;
       Form1.IBSP_ADRES.Active:=true;
       Form1.DSSPRADRES.Enabled:=true;
     Form2.Close;
 end;


end;


procedure TForm2.UpdateBase;
var pathDBF,pathARC,dateimport,strmes,strye:string;
    adostr,copy1,copy2:WideString;
    Y ,M, D: Word;
    DateUPD:TDateTime;
    DateUPDD,FilterDATE:Tdate;
    ii,cou:integer;
    vArray:variant;
begin
   try
   Form1.Enabled:=false;
   Label1.Caption:='Завантаження поточних даних.Зачекайте...';
   Label2.visible:=true;


   Form1.DSTMPKART.Enabled:=false;

        cxProgressBar2.Visible:=true;
        cxProgressBar2.Position:=0;
        cxProgressBar2.Properties.Min:=0;
       cxProgressBar2.Properties.Max:=5;
    if  not Form1.ADOConnectionDBF.Connected then
   begin
   pathDBF:=Form1.PathKvart+'dbf';
        Application.ProcessMessages;

  Form1.ADOConnectionDBF.Connected:=false;
  pathDBF:=Form1.PathKvart+'dbf';
  adostr:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+
            Form1.pathDIR+';Mode=Read;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";'+
            'Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=16;Jet OLEDB:Database Locking Mode=0;'+
            'Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;'+
            'Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;'+
            'Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don"t Copy Locale on Compact=False;'+
            'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;';

  Form1.ADOConnectionDBF.ConnectionString:=adostr;

  Form1.ADOConnectionDBF.Connected:=true;
  end;

          Label2.Caption:='Оновлення послуг';
          Application.ProcessMessages;

        Form1.ADOWID.Active:=true;
        cxProgressBar1.Position:=0;
        cxProgressBar1.Properties.Min:=0;
       cxProgressBar1.Properties.Max:=Form1.ADOWID.RecordCount-1;

        Form1.IBTMPOPL.Active:=true;
        Form1.IBTMPWID.Active:=true;
        Form1.ADOWID.First;
        while not Form1.ADOWID.eof do
        begin
        cxProgressBar1.Position:=cxProgressBar1.Position+1;
        Application.ProcessMessages;
               if Form1.ADOWID.FieldByName('fl_nonach').Value<>1 then
               begin
                       if Form1.IBTMPOPL.FindField('OPL_'+trim(Form1.ADOWID.FieldByName('wid').AsString))= nil then
                       begin
                          Form1.IBQuery1.Close;
                          Form1.IBQuery1.SQL.Text:='ALTER TABLE tmpopl ADD OPL_'+trim(Form1.ADOWID.FieldByName('wid').AsString)+' Numeric(15,2)';
                          Form1.IBQuery1.ExecSQL;
                       end;
               end;


        Form1.ADOWID.Next;
        end;
        Form1.IBTransaction1.CommitRetaining;
        Form1.IBDatabase1.Close;
        Form1.IBDatabase1.Open;
        Form1.IBTransaction1.Active:=true;
        Form1.IBTransaction2.Active:=true;


        Form1.ADOWID.Active:=true;
        cxProgressBar1.Position:=0;
        cxProgressBar1.Properties.Min:=0;
       cxProgressBar1.Properties.Max:=Form1.ADOWID.RecordCount-1;

        Form1.IBQuery1.Close;
        Form1.IBQuery1.SQL.Text:='delete from tmpwid';
        Form1.IBQuery1.ExecSQL;

        Form1.IBTMPOPL.Active:=true;
        Form1.IBTMPWID.Active:=false;
        Form1.IBTMPWID.Active:=true;
        Form1.ADOWID.First;
        while not Form1.ADOWID.eof do
        begin
        cxProgressBar1.Position:=cxProgressBar1.Position+1;
        Application.ProcessMessages;

               Form1.IBTMPWID.Insert;
               Form1.IBTMPWIDWID.Value := trim(Form1.ADOWID.FieldByName('wid').AsString);
               Form1.IBTMPWIDNAIM.Value := trim(Form1.ADOWID.FieldByName('naim').AsString);
               Form1.IBTMPWID.Post;

        Form1.ADOWID.Next;
        end;

     Label2.Caption:='Оновлення оборотки абонентів';
  Application.ProcessMessages;




  Form1.IBQuery1.Close;
  Form1.IBQuery1.SQL.Text:='delete from obormes';
  Form1.IBQuery1.ExecSQL;

         Form1.IBOBORMES.Active:=true;
         Form1.ADOOBORMES.Active:=true;
        cxProgressBar1.Position:=0;
        cxProgressBar1.Properties.Min:=0;
       cxProgressBar1.Properties.Max:=Form1.ADOOBORMES.RecordCount-1;

        Form1.ADOOBORMES.First;
        while not Form1.ADOOBORMES.eof do
        begin
        cxProgressBar1.Position:=cxProgressBar1.Position+1;
        Application.ProcessMessages;

               Form1.IBOBORMES.Insert;
               Form1.IBOBORMESSCHET.Value := trim(Form1.ADOOBORMES.FieldByName('SCHET').AsString);
               Form1.IBOBORMESWID.Value := trim(Form1.ADOOBORMES.FieldByName('WID').AsString);
               Form1.IBOBORMESN_DOG.Value := trim(Form1.ADOOBORMES.FieldByName('N_DOG').AsString);
               Form1.IBOBORMESD_DOG.Value := trim(Form1.ADOOBORMES.FieldByName('D_DOG').AsString);
               Form1.IBOBORMESTARIF.Value := Form1.ADOOBORMES.FieldByName('TARIF').AsCurrency;
               Form1.IBOBORMESDOLG.Value := Form1.ADOOBORMES.FieldByName('DOLG').AsCurrency;
               Form1.IBOBORMESNACH.Value := Form1.ADOOBORMES.FieldByName('NACH').AsCurrency;
               Form1.IBOBORMESSUBS.Value := Form1.ADOOBORMES.FieldByName('SUBS').AsCurrency;
               Form1.IBOBORMESOPL.Value := Form1.ADOOBORMES.FieldByName('OPL').AsCurrency;
               Form1.IBOBORMESUDER.Value := Form1.ADOOBORMES.FieldByName('UDER').AsCurrency;
               Form1.IBOBORMESKOMP.Value := Form1.ADOOBORMES.FieldByName('KOMP').AsCurrency;
               Form1.IBOBORMESWZMZ.Value := Form1.ADOOBORMES.FieldByName('WZMZ').AsCurrency;
               Form1.IBOBORMESWOZW.Value := Form1.ADOOBORMES.FieldByName('WOZW').AsCurrency;
               Form1.IBOBORMESMOVW.Value := Form1.ADOOBORMES.FieldByName('MOVW').AsCurrency;
               Form1.IBOBORMESPERE.Value := Form1.ADOOBORMES.FieldByName('PERE').AsCurrency;
               Form1.IBOBORMESFULLOPL.Value := Form1.IBOBORSUBS.Value+Form1.IBOBOROPL.Value+Form1.IBOBORUDER.Value+Form1.IBOBORKOMP.Value+Form1.IBOBORWZMZ.Value;
               Form1.IBOBORMESSAL.Value := Form1.ADOOBORMES.FieldByName('SAL').AsCurrency;

               Form1.IBOBORMES.Post;

//

        Form1.ADOOBORMES.Next;
        end;



          Updatenote;
//          Form1.ADOOBORREC.Active:=true;
//        cxProgressBar1.Position:=0;
//        cxProgressBar1.Properties.Min:=0;
//       cxProgressBar1.Properties.Max:=Form1.ADOOBORREC.RecordCount-1;
//
//        Form1.ADOOBORREC.First;
//        while not Form1.ADOOBORREC.eof do
//        begin
//        cxProgressBar1.Position:=cxProgressBar1.Position+1;
//        Application.ProcessMessages;
//
//               UpdateNOTE(trim(Form1.ADOOBORREC.FieldByName('schet').AsString), trim(Form1.ADOOBORREC.FieldByName('wid').AsString));
//
//        Form1.ADOOBORREC.Next;
//        end;




         Label2.Caption:='Оплата';
                cxProgressBar2.Position:=cxProgressBar2.Position+1;
        Application.ProcessMessages;
          Form1.IBTMPWID.Active:=true;
          Form1.IBTMPOPL.Active:=true;
          Form1.ADOOPL.Active:=true;
        cxProgressBar1.Position:=0;
        cxProgressBar1.Properties.Min:=0;
       cxProgressBar1.Properties.Max:=Form1.ADOOPL.RecordCount-1;

        Form1.ADOOPL.First;
        while not Form1.ADOOPL.eof do
        begin
        cxProgressBar1.Position:=cxProgressBar1.Position+1;
        Application.ProcessMessages;
                Form1.IBTMPWID.First;
                while not Form1.IBTMPWID.eof do
                begin
                   if Form1.ADOOPL.FindField('OPL_'+Form1.IBTMPWIDWID.Value)<> nil then
                   if Form1.ADOOPL.FieldByName('OPL_'+Form1.IBTMPWIDWID.Value).AsCurrency <> 0  then
                   begin
                       if Form1.IBTMPOPL.FindField('OPL_'+Form1.IBTMPWIDWID.Value)<> nil then
                       begin
                       Form1.IBTMPOPL.Insert;
                       Form1.IBTMPOPL.FieldByName('SCHET').Value := trim(Form1.ADOOPL.FieldByName('schet').Value);
                       Form1.IBTMPOPL.FieldByName('DT').Value := Form1.ADOOPL.FieldByName('DT').Value;
                       Form1.IBTMPOPL.FieldByName('OPL_'+Form1.IBTMPWIDWID.Value).Value := Form1.ADOOPL.FieldByName('OPL_'+Form1.IBTMPWIDWID.Value).AsCurrency;
                       Form1.IBTMPOPL.FieldByName('SUMM').Value := Form1.ADOOPL.FieldByName('OPL').AsCurrency;
                       Form1.IBTMPOPL.Post;
                       end;
                   end;
                Form1.IBTMPWID.Next;
                end;

        Form1.ADOOPL.Next;
        end;


//         Label2.Caption:='Утримання';
//                cxProgressBar2.Position:=cxProgressBar2.Position+1;
//        Application.ProcessMessages;
//
//          Form1.ADOUDER.Active:=true;
//        cxProgressBar1.Position:=0;
//        cxProgressBar1.Properties.Min:=0;
//       cxProgressBar1.Properties.Max:=Form1.ADOUDER.RecordCount-1;
//
//        Form1.ADOUDER.First;
//        while not Form1.ADOUDER.eof do
//        begin
//        cxProgressBar1.Position:=cxProgressBar1.Position+1;
//        Application.ProcessMessages;
//
//
//                Form1.IBTMPWID.First;
//                while not Form1.IBTMPWID.eof do
//                begin
//                   if Form1.ADOOPL.FindField('SUM_'+Form1.IBTMPWIDWID.Value)<> nil then
//                   if Form1.ADOUDER.FieldByName('SUM_'+Form1.IBTMPWIDWID.Value).AsCurrency <> 0  then
//                   begin
//                       Form1.IBTMPUDER.Insert;
//                       Form1.IBTMPUDERSCHET.Value := trim(Form1.ADOUDER.FieldByName('SCHET').Value);
//                       Form1.IBTMPUDERWID.Value := Form1.IBTMPWIDWID.Value;
//                       Form1.IBTMPUDERSUMM.Value := Form1.ADOUDER.FieldByName('SUM_'+Form1.IBTMPWIDWID.Value).AsCurrency;
//                       Form1.IBTMPUDER.Post;
//                   end;
//                Form1.IBTMPWID.Next;
//                end;
//
//        Form1.ADOUDER.Next;
//        end;
        Label2.Caption:='Картки';
        Form1.IBKART.Active:=true;
        cxProgressBar2.Position:=cxProgressBar2.Position+1;
        Application.ProcessMessages;

       if Form1.IBKART.IsEmpty then
       begin
                 Application.ProcessMessages;

                  Form1.IBQuery1.Close;
                  Form1.IBQuery1.SQL.Text:='delete from kart';
                  Form1.IBQuery1.ExecSQL;


                    Form1.IBKART.Active:=true;
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
                       Form1.IBKARTKOLI_PF.Value := Form1.ADOKART.FieldByName('KOLI_PF').AsInteger;
                       Form1.IBKARTPLOS_OB.Value := Form1.ADOKART.FieldByName('PLOS_OB').AsCurrency;
                       Form1.IBKARTPLOS_BB.Value := Form1.ADOKART.FieldByName('PLOS_BB').AsCurrency;
                       Form1.IBKARTPRIVAT.Value := trim(Form1.ADOKART.FieldByName('PRIV').AsString);
                       Form1.IBKARTLGOTA.Value := trim(Form1.ADOKART.FieldByName('LGOTA').AsString);
                       Form1.IBKARTVAL.Value := Form1.ADOKART.FieldByName('VAL').AsInteger;
                       Form1.IBKART.Post;

                Form1.ADOKART.Next;
                end;

       end;

       Form1.IBPERIOD.Active:=false;
       Form1.IBPERIOD.Active:=true;
       Form1.IBTMPDATE.Active:=true;

       Form1.IBPERIOD.Last;

       Form1.IBTMPDATE.Edit;
       Form1.IBTMPDATEPERIOD.Value:=Form1.IBPERIODPERIOD.Value;
       Form1.IBTMPDATE.post;


//       FilterDATE:=add_months(Form1.IBPERIODPERIOD.Value, -3);

       Form1.IBPERIOD.Filter:= 'PERIOD = add_months('+DateToStr(Form1.DateKVART)+', -3)';
       Form1.IBPERIOD.Filtered:=true;

        Form1.IBTransaction2.CommitRetaining;
        Form1.IBTransaction1.CommitRetaining;



        cxProgressBar2.Visible:=false;
        Label2.Visible:=false;

Form1.ADOConnectionDBF.Connected:=false;

  Form1.REPORT;

//Button1.Enabled:= true;
//DBNavigator1.Enabled:= true;
//Button2.Enabled:= true;
  except
   on E : Exception do
   begin
    messagedlg('Помилка при імпорті!!! - '+E.Message,mtError,[mbCancel],0);
    Application.Terminate;
   end;


  end;
end;


procedure TForm2.UpdateNOTE;
var res:Variant;
begin



 

//               Form1.IBNOTE.First;
//               res:= Form1.IBNOTE.Lookup('schet;wid', VarArrayOf([schet,wid]),'schet');
//               if res = null then
//               begin
               Form1.IBQuery1.SQL.Text:='SELECT obormes.schet,obormes.wid from note'+
                                   ' right JOIN obormes ON note.schet = obormes.schet'+
                                   ' WHERE note.schet IS NULL'+
                                   ' group by obormes.schet,obormes.wid';

               Form1.IBQuery1.Open;
               cxProgressBar1.Position:=0;
               cxProgressBar1.Properties.Min:=0;
               cxProgressBar1.Properties.Max:=Form1.IBQuery1.RecordCount-1;
               while not Form1.IBQuery1.eof do
               begin
                   cxProgressBar1.Position:=cxProgressBar1.Position+1;
                   Application.ProcessMessages;
                   Form1.IBUSER.First;
                  while not Form1.IBUSER.eof do
                    begin
                        Form1.IBNOTE.Insert;
                        Form1.IBNOTEWID.Value:=Form1.IBQuery1.FieldByName('wid').Value;
                        Form1.IBNOTESCHET.Value:=Form1.IBQuery1.FieldByName('schet').Value;
                        Form1.IBNOTEKL_USERS.Value:=Form1.IBUSERKL.Value;
                        Form1.IBNOTE.Post;
                    Form1.IBUSER.Next;
                    end;
//                  Form1.ADOOBORREC.Edit;
//                  Form1.ADOOBORREC.FieldByName('newrec').AsInteger:=1;
//                  Form1.ADOOBORREC.Post;
//                  end;

                  Form1.IBKART.First;
                  res:= Form1.IBKART.Lookup('schet',Form1.IBQuery1.FieldByName('schet').Value,'schet');
                  if  res = null then
                  begin

                           Form1.ADOKART.Active:=true;
                           if Form1.ADOKART.Locate('schet',Form1.IBQuery1.FieldByName('schet').Value,[]) then
                           begin
                                  Form1.IBKART.Insert;
                                  Form1.IBKARTSCHET.Value := trim(Form1.ADOKART.FieldByName('SCHET').AsString);
                                  Form1.IBKARTFIO.Value := trim(Form1.ADOKART.FieldByName('FIO').AsString)+' '+trim(Form1.ADOKART.FieldByName('IM').AsString)+' '+trim(Form1.ADOKART.FieldByName('OT').AsString);
                                  Form1.IBKARTIDCOD.Value := trim(Form1.ADOKART.FieldByName('IDCOD').AsString);
                                  Form1.IBKARTUL.Value := trim(Form1.ADOKART.FieldByName('ULNAIM').AsString);
                                  Form1.IBKARTDOM.Value := trim(Form1.ADOKART.FieldByName('NOMDOM').AsString);
                                  Form1.IBKARTKV.Value := trim(Form1.ADOKART.FieldByName('NOMKV').AsString);
                                  Form1.IBKARTKOLI_P.Value := Form1.ADOKART.FieldByName('KOLI_P').AsInteger;
                                  Form1.IBKARTKOLI_PF.Value := Form1.ADOKART.FieldByName('KOLI_PF').AsInteger;
                                  Form1.IBKARTPLOS_OB.Value := Form1.ADOKART.FieldByName('PLOS_OB').AsCurrency;
                                  Form1.IBKARTPLOS_BB.Value := Form1.ADOKART.FieldByName('PLOS_BB').AsCurrency;
                                  Form1.IBKARTPRIVAT.Value := trim(Form1.ADOKART.FieldByName('PRIV').AsString);
                                  Form1.IBKARTLGOTA.Value := trim(Form1.ADOKART.FieldByName('LGOTA').AsString);
                                  Form1.IBKARTVAL.Value := Form1.ADOKART.FieldByName('VAL').AsInteger;
                                  Form1.IBKART.Post;
                           end;
                  end;
               Form1.IBQuery1.Next;
               end;
              Form1.IBQuery1.Close;

end;

procedure TForm2.UpdateKART;
var res:Variant;
begin

               Form1.ADOKART.Active:=true;
                cxProgressBar1.Position:=0;
        cxProgressBar1.Properties.Min:=0;
       cxProgressBar1.Properties.Max:=Form1.ADOKART.RecordCount-1;
               Form1.ADOKART.First;
               while not Form1.ADOKART.eof do
               begin
                      cxProgressBar1.Position:=cxProgressBar1.Position+1;
                      Application.ProcessMessages;
                     Form1.IBKART.First;
                     if Form1.IBKART.Locate('schet',trim(Form1.ADOKART.FieldByName('SCHET').AsString),[]) then
                     begin
                                     Form1.IBKART.edit;
                                     Form1.IBKARTSCHET.Value := trim(Form1.ADOKART.FieldByName('SCHET').AsString);
                                     Form1.IBKARTFIO.Value := trim(Form1.ADOKART.FieldByName('FIO').AsString)+' '+trim(Form1.ADOKART.FieldByName('IM').AsString)+' '+trim(Form1.ADOKART.FieldByName('OT').AsString);
                                     Form1.IBKARTIDCOD.Value := trim(Form1.ADOKART.FieldByName('IDCOD').AsString);
                                     Form1.IBKARTUL.Value := trim(Form1.ADOKART.FieldByName('ULNAIM').AsString);
                                     Form1.IBKARTDOM.Value := trim(Form1.ADOKART.FieldByName('NOMDOM').AsString);
                                     Form1.IBKARTKV.Value := trim(Form1.ADOKART.FieldByName('NOMKV').AsString);
                                     Form1.IBKARTKOLI_P.Value := Form1.ADOKART.FieldByName('KOLI_P').AsInteger;
                                     Form1.IBKARTKOLI_PF.Value := Form1.ADOKART.FieldByName('KOLI_PF').AsInteger;
                                     Form1.IBKARTPLOS_OB.Value := Form1.ADOKART.FieldByName('PLOS_OB').AsCurrency;
                                     Form1.IBKARTPLOS_BB.Value := Form1.ADOKART.FieldByName('PLOS_BB').AsCurrency;
                                     Form1.IBKARTPRIVAT.Value := trim(Form1.ADOKART.FieldByName('PRIV').AsString);
                                     Form1.IBKARTLGOTA.Value := trim(Form1.ADOKART.FieldByName('LGOTA').AsString);
                                     Form1.IBKARTVAL.Value := Form1.ADOKART.FieldByName('VAL').AsInteger;
                                     Form1.IBKART.Post;
                     end
                     else
                     begin
                                      Form1.IBKART.Insert;
                                     Form1.IBKARTFIO.Value := trim(Form1.ADOKART.FieldByName('FIO').AsString)+' '+trim(Form1.ADOKART.FieldByName('IM').AsString)+' '+trim(Form1.ADOKART.FieldByName('OT').AsString);
                                     Form1.IBKARTIDCOD.Value := trim(Form1.ADOKART.FieldByName('IDCOD').AsString);
                                     Form1.IBKARTUL.Value := trim(Form1.ADOKART.FieldByName('ULNAIM').AsString);
                                     Form1.IBKARTDOM.Value := trim(Form1.ADOKART.FieldByName('NOMDOM').AsString);
                                     Form1.IBKARTKV.Value := trim(Form1.ADOKART.FieldByName('NOMKV').AsString);
                                     Form1.IBKARTKOLI_P.Value := Form1.ADOKART.FieldByName('KOLI_P').AsInteger;
                                     Form1.IBKARTKOLI_PF.Value := Form1.ADOKART.FieldByName('KOLI_PF').AsInteger;
                                     Form1.IBKARTPLOS_OB.Value := Form1.ADOKART.FieldByName('PLOS_OB').AsCurrency;
                                     Form1.IBKARTPLOS_BB.Value := Form1.ADOKART.FieldByName('PLOS_BB').AsCurrency;
                                     Form1.IBKARTPRIVAT.Value := trim(Form1.ADOKART.FieldByName('PRIV').AsString);
                                     Form1.IBKARTLGOTA.Value := trim(Form1.ADOKART.FieldByName('LGOTA').AsString);
                                     Form1.IBKARTVAL.Value := Form1.ADOKART.FieldByName('VAL').AsInteger;
                                     Form1.IBKART.Post;

                     end;
               Form1.ADOKART.Next;
               end;

end;

procedure TForm2.import;
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
   Label1.Caption:='Відбувся перехід на новий місяць (Оновлення залишків).Зачекайте...';
   Form1.IBPERIOD.last;
   DecodeDate(Form1.IBPERIODPERIOD.Value, Y, M, D);

    if M = 12 then
    begin
       strmes:='1';
       strye:=int2str(Y+1);
    end
    else
    begin
      strmes:=int2str(M+1);
      strye:=int2str(Y);
    end;

    if str2int(strmes) < 10 then
       strmes:='0'+strmes
    else
       strmes:=strmes;

  DateUPD := StrToDate('01.'+strmes+'.'+strye);

  Form1.IBSERVICES.Edit;
  Form1.IBSERVICESUPDATES.Value:=1;
  Form1.IBSERVICES.Post;
  Form1.IBTransaction1.CommitRetaining;


  if  not Form1.ADOConnectionDBF.Connected then
  begin

     pathDBF:=Form1.PathKvart+'dbf';
        Application.ProcessMessages;

  Form1.ADOConnectionDBF.Connected:=false;
  pathDBF:=Form1.PathKvart+'dbf';
  adostr:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+
            pathDBF+';Mode=Read;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";'+
            'Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=16;Jet OLEDB:Database Locking Mode=0;'+
            'Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;'+
            'Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;'+
            'Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don"t Copy Locale on Compact=False;'+
            'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;';

  Form1.ADOConnectionDBF.ConnectionString:=adostr;

  Form1.ADOConnectionDBF.Connected:=true;
  end;
  Form1.ADOOBORREC.Active:=true;




   while DateUPD <= Form1.DateKVART do
   begin
   Label2.visible:=true;
   Label2.Caption:='01.'+strmes+'.'+strye;
   Application.ProcessMessages;
   

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
              
       


      Form1.IBQuery1.SQL.Text:='delete from obor where period=:dd';
      Form1.IBQuery1.ParamByName('dd').Value:=DateUPD;
      Form1.IBQuery1.ExecSQL;

      Form1.IBQuery1.Active:=false;







          Form1.ADOOBOR.Active:=true;
        cxProgressBar1.Position:=0;
        cxProgressBar1.Properties.Min:=0;
       cxProgressBar1.Properties.Max:=Form1.ADOOBOR.RecordCount-1;

        Form1.ADOOBOR.First;
        while not Form1.ADOOBOR.eof do
        begin
        cxProgressBar1.Position:=cxProgressBar1.Position+1;
        Application.ProcessMessages;

               Form1.IBOBOR.Insert;
               Form1.IBOBORPERIOD.Value := DateUPD;
               Form1.IBOBORSCHET.Value := trim(Form1.ADOOBOR.FieldByName('SCHET').AsString);
               Form1.IBOBORWID.Value := trim(Form1.ADOOBOR.FieldByName('WID').AsString);
               Form1.IBOBORN_DOG.Value := trim(Form1.ADOOBOR.FieldByName('N_DOG').AsString);
               Form1.IBOBORD_DOG.Value := trim(Form1.ADOOBOR.FieldByName('D_DOG').AsString);
               Form1.IBOBORTARIF.Value := Form1.ADOOBOR.FieldByName('TARIF').AsCurrency;
               Form1.IBOBORDOLG.Value := Form1.ADOOBOR.FieldByName('DOLG').AsCurrency;
               Form1.IBOBORNACH.Value := Form1.ADOOBOR.FieldByName('NACH').AsCurrency;
               Form1.IBOBORSUBS.Value := Form1.ADOOBOR.FieldByName('SUBS').AsCurrency;
               Form1.IBOBOROPL.Value := Form1.ADOOBOR.FieldByName('OPL').AsCurrency;
               Form1.IBOBORUDER.Value := Form1.ADOOBOR.FieldByName('UDER').AsCurrency;
               Form1.IBOBORKOMP.Value := Form1.ADOOBOR.FieldByName('KOMP').AsCurrency;
               Form1.IBOBORWZMZ.Value := Form1.ADOOBOR.FieldByName('WZMZ').AsCurrency;
               Form1.IBOBORWOZW.Value := Form1.ADOOBOR.FieldByName('WOZW').AsCurrency;
               Form1.IBOBORMOVW.Value := Form1.ADOOBOR.FieldByName('MOVW').AsCurrency;
               Form1.IBOBORPERE.Value := Form1.ADOOBOR.FieldByName('PERE').AsCurrency;
               Form1.IBOBORFULLOPL.Value := Form1.IBOBORSUBS.Value+Form1.IBOBOROPL.Value+Form1.IBOBORUDER.Value+Form1.IBOBORKOMP.Value+Form1.IBOBORWZMZ.Value;
               Form1.IBOBORSAL.Value := Form1.ADOOBOR.FieldByName('SAL').AsCurrency;

               Form1.IBOBOR.Post;



        Form1.ADOOBOR.Next;
        end;

//    UpdateNOTE;

    Form1.IBPERIOD.Insert;
    Form1.IBPERIODPERIOD.Value:=DateUPD;
    Form1.IBPERIOD.Post;    

    if strmes='12' then
    begin
       strmes:='1';
       strye:=int2str(str2int(strye)+1);
    end
    else
    begin
      strmes:=int2str(str2int(strmes)+1);
    end;

    if str2int(strmes) < 10 then
       strmes:='0'+strmes
    else
       strmes:=strmes;

    DateUPD := StrToDate('01.'+strmes+'.'+strye);    

    end;



//        Form1.ADOConnectionARC.Connected:=false;
//
//   Form1.ADOConnectionDBF.Connected:=false;
//  pathDBF:=Form1.PathKvart+'dbf';
//  adostr:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+
//            pathDBF+';Mode=Read;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";'+
//            'Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=16;Jet OLEDB:Database Locking Mode=0;'+
//            'Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;'+
//            'Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;'+
//            'Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don"t Copy Locale on Compact=False;'+
//            'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;';
//
//  Form1.ADOConnectionDBF.ConnectionString:=adostr;
//
//  Form1.ADOConnectionDBF.Connected:=true;

  //  ADODataSet1.Sort:='CodigDenom DESC';






  Label2.Caption:='Оновлення карток абонентів';
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
               Form1.IBKARTKOLI_PF.Value := Form1.ADOKART.FieldByName('KOLI_PF').AsInteger;
               Form1.IBKARTPLOS_OB.Value := Form1.ADOKART.FieldByName('PLOS_OB').AsCurrency;
               Form1.IBKARTPLOS_BB.Value := Form1.ADOKART.FieldByName('PLOS_BB').AsCurrency;
               Form1.IBKARTPRIVAT.Value := trim(Form1.ADOKART.FieldByName('PRIV').AsString);
               Form1.IBKARTLGOTA.Value := trim(Form1.ADOKART.FieldByName('LGOTA').AsString);
               Form1.IBKARTVAL.Value := Form1.ADOKART.FieldByName('VAL').AsInteger;
               Form1.IBKART.Post;
//
        Form1.ADOKART.Next;
        end;



        



//        Form1.IBSP_ADRES.Active:=false;
//        Form1.IBSP_ADRES.Active:=true;
//        Form1.IBSPRADRES.Active:=true;
//        Form1.IBSP_ADRES.Last;
//        cxProgressBar1.Position:=0;
//        cxProgressBar1.Properties.Min:=0;
//       cxProgressBar1.Properties.Max:=Form1.IBSP_ADRES.RecordCount-1;
//
//        Form1.IBSP_ADRES.First;
//        while not Form1.IBSP_ADRES.eof do
//        begin
//           Form1.IBSPRADRES.Insert;
//           Form1.IBSPRADRESUL.Value:=Form1.IBSP_ADRESUL.Value;
//           Form1.IBSPRADRESDOM.Value:=Form1.IBSP_ADRESDOM.Value;
//           Form1.IBSPRADRES.Post;
//        Form1.IBSP_ADRES.Next;   
//        end;




     Form1.ADOConnectionDBF.Connected:=false;

  Form1.IBSERVICES.Edit;
  Form1.IBSERVICESUPDATES.Value:=0;
  Form1.IBSERVICES.Post;
  Form1.IBTransaction1.CommitRetaining;

  Label2.visible:=false;


 Timer1.enabled:=true;

//Button1.Enabled:= true;
//DBNavigator1.Enabled:= true;
//Button2.Enabled:= true;
  except
   on E : Exception do
   begin
    messagedlg('Помилка при імпорті!!! - '+E.Message,mtError,[mbCancel],0);
    Application.Terminate;
   end;


  end;
end;


end.
