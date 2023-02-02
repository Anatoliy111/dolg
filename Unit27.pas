unit Unit27;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxLabel, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, Data.Win.ADODB,
  cxTextEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit,
  cxCalendar,System.RegularExpressions,dbf,dbf_common;

type
    Arr = array[0..10] of string;
  TForm27 = class(TForm)
    cxTextEdit1: TcxTextEdit;
    ADOCommand1: TADOCommand;
    DSADOQueryOBOR: TDataSource;
    ADOQueryOBOR: TADOQuery;
    DSADOQueryTAB: TDataSource;
    ADOQueryTAB: TADOQuery;
    DSQueryBank: TDataSource;
    IBQueryBank: TIBQuery;
    OpenDialog1: TOpenDialog;
    cxLabel3: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    MemoLog: TMemo;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    IBQueryBankKL: TIntegerField;
    IBQueryBankNAIM: TIBStringField;
    IBQueryBankRAH: TIBStringField;
    IBQueryBankSTR_ST: TIntegerField;
    IBQueryBankCOL_POISK_ENDDATA: TIntegerField;
    IBQueryBankSTR_PRIZN_ENDDATA: TIBStringField;
    IBQueryBankCOL_PRIZN: TIntegerField;
    IBQueryBankCOL_SUM: TIntegerField;
    IBQueryBankCOL_DT: TIntegerField;
    IBQueryBankCOL_DOK: TIntegerField;
    IBQueryBankCOL_END: TIntegerField;
    IBQueryBankSTR_POISK_RAH: TIntegerField;
    IBQueryBankCOL_POISK_RAH: TIntegerField;
    IBQueryVipiska: TIBQuery;
    DSQueryVipiska: TDataSource;
    IBQueryVipiskaKL: TIntegerField;
    IBQueryVipiskaKL_BANK: TIntegerField;
    IBQueryVipiskaWID: TIBStringField;
    IBQueryVipiskaVIDPOISK: TIBStringField;
    IBQueryVipiskaPOISK: TIBStringField;
    IBQueryBankCOL_EDRPOU: TIntegerField;
    IBQueryBankSTR_EDRPOU: TIBStringField;
    IBQueryBankCOL_DT_VIP: TIntegerField;
    IBQueryBankSTR_DT_VIP: TIntegerField;
    IBQueryObor: TIBQuery;
    DSQueryObor: TDataSource;
    IBPERIOD: TIBDataSet;
    IBPERIODKL: TIntegerField;
    IBPERIODPERIOD: TDateField;
    IBPERIODAKTIV: TIntegerField;
    DSPERIOD: TDataSource;
    IBQueryOborSCHET: TIBStringField;
    IBQueryOborWID: TIBStringField;
    IBQueryOborFIO: TIBStringField;
    IBQueryOborKOEF: TFloatField;
    IBQueryOborTARIF: TFloatField;
    IBQueryOborBL: TIBStringField;
    IBQueryOborSU_DT: TDateField;
    IBQueryOborSU_DOLG0: TFloatField;
    IBQueryOborSU_DOLG: TFloatField;
    IBQueryOborSU_DTR: TDateField;
    IBQueryOborSU_NR: TIBStringField;
    IBQueryOborSU_PERIOD: TIBStringField;
    IBQueryOborSU_VIDM: TFloatField;
    IBQueryOborN_DOG: TIBStringField;
    IBQueryOborD_DOG: TIBStringField;
    IBQueryOborDOLG: TFloatField;
    IBQueryOborNACH: TFloatField;
    IBQueryOborNACH_FULL: TFloatField;
    IBQueryOborWOZB: TFloatField;
    IBQueryOborSUBS: TFloatField;
    IBQueryOborKOMP: TFloatField;
    IBQueryOborFL1: TIBStringField;
    IBQueryOborOPL: TFloatField;
    IBQueryOborOPL_UD: TFloatField;
    IBQueryOborOPL_DT: TDateField;
    IBQueryOborUDER: TFloatField;
    IBQueryOborWOZW: TFloatField;
    IBQueryOborWOZW_KAS: TFloatField;
    IBQueryOborWZMZ: TFloatField;
    IBQueryOborPERE: TFloatField;
    IBQueryOborPLOMB: TIBStringField;
    IBQueryOborMOVW: TFloatField;
    IBQueryOborNORMA: TFloatField;
    IBQueryOborNEWREC: TFloatField;
    IBQueryOborSAL: TFloatField;
    IBQueryOborKL_NTAR: TFloatField;
    IBQueryOborNACH_OLD: TFloatField;
    IBQueryOborTARSUBS: TFloatField;
    IBQueryOborKL: TIntegerField;
    IBQueryOborPERIOD: TDateField;
    IBQueryOborUPD: TIntegerField;
    IBQueryWid: TIBQuery;
    DSQueryWid: TDataSource;
    IBQueryWidWID: TIBStringField;
    IBQueryWidID_ORG: TFloatField;
    IBQueryWidNAIM: TIBStringField;
    IBQueryWidSNAIM: TIBStringField;
    IBQueryWidPAR: TIBStringField;
    IBQueryWidFL0: TIBStringField;
    IBQueryWidFL: TIBStringField;
    IBQueryWidCOD: TIBStringField;
    IBQueryWidABONPL: TIBStringField;
    IBQueryWidNPP: TFloatField;
    IBQueryWidFL_NONACH: TIBStringField;
    IBQueryWidFL_NOOPL: TIBStringField;
    IBQueryWidFL_VTCH: TIBStringField;
    IBQueryWidFL_NOOBOR: TIBStringField;
    IBQueryWidFL_GROPL: TFloatField;
    IBQueryWidFL_SUBS: TFloatField;
    IBQueryWidVAL: TFloatField;
    IBQueryWidUPD: TIntegerField;
    IBQueryWidVNESK: TIBStringField;
    IBQueryWidAll: TIBQuery;
    DSQueryWidAll: TDataSource;
    IBQueryWidAllWID: TIBStringField;
    IBQueryWidAllID_ORG: TFloatField;
    IBQueryWidAllNAIM: TIBStringField;
    IBQueryWidAllSNAIM: TIBStringField;
    IBQueryWidAllPAR: TIBStringField;
    IBQueryWidAllFL0: TIBStringField;
    IBQueryWidAllFL: TIBStringField;
    IBQueryWidAllCOD: TIBStringField;
    IBQueryWidAllABONPL: TIBStringField;
    IBQueryWidAllNPP: TFloatField;
    IBQueryWidAllFL_NONACH: TIBStringField;
    IBQueryWidAllFL_NOOPL: TIBStringField;
    IBQueryWidAllFL_VTCH: TIBStringField;
    IBQueryWidAllFL_NOOBOR: TIBStringField;
    IBQueryWidAllFL_GROPL: TFloatField;
    IBQueryWidAllFL_SUBS: TFloatField;
    IBQueryWidAllVAL: TFloatField;
    IBQueryWidAllUPD: TIntegerField;
    IBQueryWidAllVNESK: TIBStringField;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private

    function TrimAll(s:string):string;
    function SearchSchet(str:string):string;
    function SearchAllPosl(str:string;regallposl:string):string;
    procedure SearchPosl(str:string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form27: TForm27;
   st1,poslug,tip,path:string;
     MsExcel:Variant;
     period: TDateTime;
     strList:TStringList;



implementation

{$R *.dfm}

uses comobj, Unit1, StrUtils, ShellAPI, Unit2, mytools, ExcelXP, SysUtils;

function TForm27.TrimAll(s:string):string;
begin
 s := StringReplace(s , ' ','', [rfReplaceAll, rfIgnoreCase]);
 s := StringReplace(s, Chr(160), '', [rfReplaceAll, rfIgnoreCase]);
 result:=s;
end;




procedure TForm27.cxButton1Click(Sender: TObject);
var i,ns,kolst,nstr:integer;
    st:pchar;
    sss,str:string;
    RegularExpression : TRegEx;
    Match : TMatch;
    MC: TMatchCollection;
begin
       cxDateEdit1.Text:='';
       cxDateEdit2.Text:='';
       MemoLog.Text:='';
       cxTextEdit4.Text:='';
       cxTextEdit1.Text:='';

  if OpenDialog1.Execute then
  begin
    path:=OpenDialog1.FileName;
    st:=pchar(OpenDialog1.FileName);
    for ns := 0 to Length(OpenDialog1.FileName) - 1 do
    begin
      if st[ns]<>'\' then
         st1:=st1+st[ns]
      else st1:='';
    end;

   cxTextEdit1.Text:=st1;
   cxTextEdit4.Text:='';




    MsExcel := CreateOleObject('Excel.Application');
    //    MsExcel.Workbooks.Add;
    MsExcel.Workbooks.Open[OpenDialog1.FileName];
    IBQueryBank.First;
    while not IBQueryBank.Eof do
    begin
       if  Pos(IBQueryBankRAH.Text,trim(MsExcel.WorkSheets[1].Cells[IBQueryBankSTR_POISK_RAH.Value,IBQueryBankCOL_POISK_RAH.Value]))<>0 then
       begin
           MC:=RegularExpression.Matches(MsExcel.WorkSheets[1].Cells[IBQueryBankSTR_DT_VIP.Value,IBQueryBankCOL_DT_VIP.Value],'[0-9]{2}[.]{1}[0-9]{2}[.]{1}[0-9]{4}',[roMultiLine]);//получаем коллекцию совпадений
           for  i:=0 to MC.Count-1 do
             begin
              if i=0 then cxDateEdit1.Date:=StrToDate(MC.Item[i].Value);
              if i=1 then cxDateEdit2.Date:=StrToDate(MC.Item[i].Value);
             end;
          cxTextEdit4.Text:=IBQueryBankNAIM.Text;
       end;
     IBQueryBank.Next;
    end;

    if  (Length(cxTextEdit4.Text)=0)then
       begin
         ShowMessage('Це не банківська виписка!!!');
         path:='';
         cxTextEdit1.Text:='';
       end;





          MsExcel.ActiveWorkbook.Close;
          MsExcel.Application.Quit;
          MsExcel := null;


    //MsExcel := null;
  end;
end;

procedure TForm27.cxButton2Click(Sender: TObject);
var f1:boolean;
    i,ns,kolst,k,position:integer;
    sss,fio,str,sch,regallposl,strprizn,sp,sql,dtstr:string;
    RegularExpression : TRegEx;
    Match : TMatch;
    MC: TMatchCollection;
    sumExcel:currency;
    summa:double;
    ssum,ssum1,allsum,riznsum:Double;
    table:TDbf;
    dt:TDate;

begin



   if Length(path)=0 then
   begin
     ShowMessage('Виберіть файл');
     exit;
   end;

   try
    table:=TDbf.Create(self);
   // table.TableLevel := 25;
    table.TableName:=Form1.PathKvart+'dbf\opl.dbf';
    // table.ReadOnly:=false;
  //  table.Active:=true;
    table.Open;
    table.CanModify;
    table.OpenIndexFile('opl.cdx');

//    table.Exclusive := True;
       except
       on E : Exception do
       begin
        messagedlg('Помилка при підключенні до бази даних!!! - '+E.Message,mtError,[mbCancel],0);
        exit;
       end;
   end;





    MsExcel := CreateOleObject('Excel.Application');
    //    MsExcel.Workbooks.Add;
    MsExcel.Workbooks.Open[path];

   Form2.Label1.Caption:='Обрахування даних';
        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=0;
        Form2.cxProgressBar1.Position:=0;
   Application.ProcessMessages;
   IBPERIOD.Open;
   IBQueryWidAll.Open;

//        MsExcel.Visible := True;

   Form27.Enabled:=false;
   Form2.Show;

   f1:=true;
    IBQueryBank.First;
    while not IBQueryBank.Eof do
    begin
       if  Pos(IBQueryBankRAH.Text,trim(MsExcel.WorkSheets[1].Cells[IBQueryBankSTR_POISK_RAH.Value,IBQueryBankCOL_POISK_RAH.Value]))<>0 then
       begin
         Break;
       end;

    IBQueryBank.Next;
    end;

    IBQueryVipiska.close;
    IBQueryVipiska.SQL.Text:='select *  from SPR_VIPISKA where vidpoisk=:vid';
    IBQueryVipiska.ParamByName('vid').AsString:='posl';
    IBQueryVipiska.open;
    regallposl:='(';
    while not IBQueryVipiska.Eof do
    begin
      regallposl:=regallposl+IBQueryVipiskaPOISK.AsString+'{1}|';

    IBQueryVipiska.Next;
    end;
    regallposl:=Copy(regallposl,1,Length(regallposl)-1);
    regallposl:=regallposl+')';


       MsExcel.WorkSheets[1].Cells[IBQueryBankSTR_ST.Value-1,IBQueryBankCOL_END.Value+1]:='Параметри обробки';
       MsExcel.WorkSheets[1].Cells[IBQueryBankSTR_ST.Value-1,IBQueryBankCOL_END.Value+2]:='Результат обробки';

        kolst:=IBQueryBankSTR_ST.Value;
        if Length(IBQueryBankSTR_PRIZN_ENDDATA.Value)<>0 then
          while f1 do
          begin
          if pos(IBQueryBankSTR_PRIZN_ENDDATA.Value,MsExcel.WorkSheets[1].Cells[kolst,IBQueryBankCOL_POISK_ENDDATA.Value])<>0 then
             f1:=False
          else
            begin
            //MsExcel.WorkSheets[1].Cells[kolst,9]:='';
            kolst:=kolst+1;
            end;

          end
         else
          while f1 do
          begin
          if Length(MsExcel.WorkSheets[1].Cells[kolst,IBQueryBankCOL_POISK_ENDDATA.Value])=0 then
             f1:=False
          else
            begin
            //MsExcel.WorkSheets[1].Cells[kolst,9]:='';
            kolst:=kolst+1;
            end;

          end;

        MsExcel.DisplayAlerts := False;

      Application.ProcessMessages;
        MsExcel.Visible := True;
        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=kolst-1;
        Form2.cxProgressBar1.Position:=5;
        for I := IBQueryBankSTR_ST.Value to kolst do
        begin

          Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
          Application.ProcessMessages;

          sch:='';
          strprizn:=MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_PRIZN.Value];
          Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
          Application.ProcessMessages;
          if Length(MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_DOK.Value])=0 then Continue;  //№ документа не знайдено
          if Pos('Оброблено',MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_END.Value+2])<>0 then Continue; //Якщо рядок оброблено то перехід на інший рядок
          sch:=SearchSchet(strprizn);  //пошук Особ. рахунка
          if sch='' then
          begin
            MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_END.Value+2]:='Ос.рахунок не знайдено';
            Continue;
          end;
          if SearchAllPosl(strprizn,regallposl)='' then //пошук будь-якої послуги
          begin
            MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_END.Value+2]:='Послуги в призначені не знайдено';
            Continue;
          end;
         SearchPosl(strprizn); //пошук послуги
          if (StrList.Count=0) or (StrList[0]='not found posl') or (trim(StrList[0])='') then
          begin
            MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_END.Value+2]:='Послуги в призначені не знайдено';
            Continue;
          end;
          if StrList[0]='many posl' then
          begin
            MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_END.Value+2]:='Знайдено декілька різних послуг';
            Continue;
          end;
          f1:=false;
          for k:=0 to StrList.Count-1 do
          begin
              IBQueryObor.first;
              if not IBQueryObor.Locate('wid',StrList[k],[]) then
              begin
                IBQueryWidAll.First;
                IBQueryWidAll.Locate('wid',StrList[k],[]);
                MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_END.Value+2]:='Послуги '+IBQueryWidAllNAIM.Value+' в абонента '+sch+' не знайдено';
                f1:=true;
              end;

          end;
          if f1 then Continue;
         // summa:=0.00;
          if trim(MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_EDRPOU.Value])<>IBQueryBankSTR_EDRPOU.Value then
          begin
             str:=MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_SUM.Value];
             ssum:=StrToFloat(StringReplace(MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_SUM.Value],'.',',',[]));
          end
          else
          begin
            if RightStr(strprizn,1)=';' then Delete(strprizn, Length(strprizn), 1);
            position := LastDelimiter(';', strprizn);
            sp:=copy(strprizn,position+1,Length(strprizn));
            //summa:=StrToFloat(LeftStr(strprizn,position));
            ssum:=StrToFloat(StringReplace(copy(strprizn,position+1,Length(strprizn)),'.',',',[]));
          end;

          if ssum<=0 then
          begin
             MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_END.Value+2]:='Cума оплати в абонента '+sch+' рівна 0';
             Continue;
          end;
          dtstr:=MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_DT.Value];
//          dtstr:=formatdatetime('ddmmyyyy', strtodate(MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_DT.Value]));
          dt:=strtodate(MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_DT.Value]);
          table.First;
          f1:=false;
          while not table.Eof do
          begin
            if not table.Locate('schet;dt;opl',VarArrayOf([sch,dt,ssum]),[loPartialKey]) then
               break
            else
            begin
//               if table.FieldByName('opl').Value=ssum then
//               begin
               MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_END.Value+2]:='Платіж по рахунку '+sch+' за '+dtstr+' число, в сумі '+CurrToStr(ssum)+' вже існує';
               f1:=true;
               break;
//               end;
            end;
          table.next;
          end;
//          if f1 then Continue;

          IBQueryObor.Close;
          sql:='select obor.* from OBOR,WID where obor.wid=wid.wid and obor.period=:dt and obor.schet=:sch and (';
          for k:=0 to StrList.Count-1 do
          begin
              sql:=sql+'obor.wid='''+StrList[k]+''' or ';
          end;
          Delete(sql, Length(sql)-3, 4);
          IBQueryObor.SQL.Text:=sql+') order by wid.npp';
          IBQueryObor.ParamByName('sch').Value:=sch;
          IBQueryObor.ParamByName('dt').Value:=IBPERIODPERIOD.Value;
          IBQueryObor.Open;

          IBQueryObor.FetchAll;
//          while not IBQueryObor.Eof do
//          begin
//            ssum1:=0;
//          IBQueryObor.Next;
//          end;


          ssum1:=0;
          allsum:=ssum;
          if IBQueryObor.RecordCount=1 then
          begin
            table.Insert;
            table.Edit;
            table.FieldByName('schet').Value:=sch;
            table.FieldByName('dt').Value:=dt;
            table.FieldByName('opl').Value:=allsum;
            table.FieldByName('opl_'+IBQueryOborWID.Value).Value:=ssum;
            table.FieldByName('doc').Value:=MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_DOK.Value];
            table.Post;
            ssum:=0;
          end
          else
          begin
          table.Append;
          table.FieldByName('schet').Value:=sch;
          table.FieldByName('dt').Value:=dt;
          table.FieldByName('opl').Value:=allsum;
          table.FieldByName('doc').Value:=MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_DOK.Value];
          IBQueryObor.first;
            while not IBQueryObor.Eof do
            begin
              if (IBQueryObor.RecNo=1) then
              begin
                if (IBQueryOborSAL.Value>=ssum) then
                begin
                  ssum1:=ssum;
                  ssum:=0;
                  break;
                end
                else
                begin
                  if IBQueryOborSAL.Value>0 then
                  begin
                     ssum1:=IBQueryOborSAL.Value;
                     ssum:=ssum-IBQueryOborSAL.Value;
                  end;
                end;
              end
              else
              begin
                 if (IBQueryOborSAL.Value>0) and (ssum>0) then
                 begin
                    riznsum:=ssum-IBQueryOborSAL.Value;
                    if riznsum>0 then
                    begin
                      table.FieldByName('opl_'+IBQueryOborWID.Value).Value:=IBQueryOborSAL.Value;
                      ssum:=ssum-IBQueryOborSAL.Value;
                    end
                    else
                    begin
                      table.FieldByName('opl_'+IBQueryOborWID.Value).Value:=ssum;
                      ssum:=0;
                    end;

                 end;
              end;
            IBQueryObor.Next;
            end;
            if ssum>0 then
              ssum1:=ssum1+ssum;
            if ssum1>0 then
            begin
              IBQueryObor.first;
              table.FieldByName('opl_'+IBQueryOborWID.Value).Value:=ssum1;
            end;

          table.Post;
          end;
        end;

       table.Close;
       table.Free;



        MsExcel.ActiveWorkbook.save;
        MsExcel.ActiveWorkbook.Close;
        MsExcel.Application.Quit;
        MsExcel := null;
        Application.ProcessMessages;

      form2.Close;
      ShowMessage('Завантаження закінчено');
      Form27.Enabled:=true;

end;

procedure TForm27.FormCreate(Sender: TObject);
begin
strList := TStringList.Create;
end;

procedure TForm27.FormShow(Sender: TObject);
begin
IBQueryBank.Close;
IBQueryBank.Open;
end;

function TForm27.SearchSchet(str:string):string;
var RegularExpression : TRegEx;
    Match : TMatch;
    MC: TMatchCollection;
    sch:string;
begin
          Match:=RegularExpression.Match(str,'\b[0-9]{7}[а-я]{1}|\b[0-9]{7}\b',[roIgnoreCase]);
          if Match.Success then
          begin
            IBQueryObor.Close;
            IBQueryObor.SQL.Text:='select * from obor where upd=1 and period=:dt and schet=:sch';
            IBQueryObor.ParamByName('sch').Value:=Match.Value;
            IBQueryObor.ParamByName('dt').Value:=IBPERIODPERIOD.Value;
            IBQueryObor.Open;
            IBQueryObor.FetchAll;
            if IBQueryObor.RecordCount<>0 then
               Result:=Match.Value
            else Result:='';
          end
          else Result:='';
end;

function TForm27.SearchAllPosl(str:string;regallposl:string):string;
var RegularExpression : TRegEx;
    Match : TMatch;
    MC: TMatchCollection;
    sch:string;
begin
          Match:=RegularExpression.Match(str,regallposl,[roIgnoreCase]);
          if Match.Success then
          begin
               Result:=Match.Value;
          end
          else Result:='';
end;

procedure TForm27.SearchPosl(str:string);
var RegularExpression : TRegEx;
    Match : TMatch;
    MC: TMatchCollection;
    sch,regposl,wid:string;
   // a:integer;
   // posl:Arr;


begin
         strList.Clear;

       //   a:=0;
          wid:='';
          IBQueryVipiska.first;
          while not IBQueryVipiska.Eof do
          begin
            if IBQueryVipiskaWID.AsString<>wid then
            begin
              Match:=RegularExpression.Match(str,'('+IBQueryVipiskaPOISK.AsString+'{1})',[roIgnoreCase]);
              if Match.Success then
              begin
                   //posl[a]:=IBQueryVipiskaWID.AsString;
                   strList.Add(IBQueryVipiskaWID.AsString);
                  // arrstr[a]:=IBQueryVipiskaWID.AsString;
                  // a:=a+1;
              end;
            end;

          IBQueryVipiska.Next;
          end;

          if strList.count>1 then
          begin
            strList[0]:='many posl';
            exit;
          end;
          if strList.count=0 then
          begin
            strList[0]:='not found posl';
            exit;
          end;
          Match:=RegularExpression.Match(str,'(та абон{1})',[roIgnoreCase]);
              if Match.Success then
              begin
                 IBQueryWid.Close;
                 IBQueryWid.SQL.Text:='select * from wid where wid=:wid';
                 IBQueryWid.ParamByName('wid').AsString:=strList[strList.count-1];
                 IBQueryWid.open;
                 IBQueryWid.FetchAll;
                 if IBQueryWid.RecordCount<>0 then
                 begin
                    strList.Add(IBQueryWidABONPL.Value);
                    exit;
                 end;
              end;
          Match:=RegularExpression.Match(str,'(та внеск{1})',[roIgnoreCase]);
              if Match.Success then
              begin
                 IBQueryWid.Close;
                 IBQueryWid.SQL.Text:='select * from wid where wid=:wid';
                 IBQueryWid.ParamByName('wid').AsString:=strList[strList.count-1];
                 IBQueryWid.open;
                 IBQueryWid.FetchAll;
                 if IBQueryWid.RecordCount<>0 then
                 begin
                    strList.Add(IBQueryWidVNESK.Value);
                    exit;
                 end;
              end;
            Match:=RegularExpression.Match(str,'(абон{1})',[roIgnoreCase]);
              if Match.Success then
              begin
                 IBQueryWid.Close;
                 IBQueryWid.SQL.Text:='select * from wid where wid=:wid';
                 IBQueryWid.ParamByName('wid').AsString:=strList[strList.count-1];
                 IBQueryWid.open;
                 IBQueryWid.FetchAll;
                 if IBQueryWid.RecordCount<>0 then
                 begin
                    strList[0]:=IBQueryWidABONPL.Value;
                    exit;
                 end;
              end;
            Match:=RegularExpression.Match(str,'(внеск{1})',[roIgnoreCase]);
              if Match.Success then
              begin
                 IBQueryWid.Close;
                 IBQueryWid.SQL.Text:='select * from wid where wid=:wid';
                 IBQueryWid.ParamByName('wid').AsString:=strList[strList.count-1];
                 IBQueryWid.open;
                 IBQueryWid.FetchAll;
                 if IBQueryWid.RecordCount<>0 then
                 begin
                    strList[0]:=IBQueryWidVNESK.Value;
                    exit;
                 end;
              end;


end;


end.
