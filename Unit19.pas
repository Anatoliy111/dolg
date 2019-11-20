unit Unit19;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxProgressBar,cxCalc, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TForm19 = class(TForm)
    OpenDialog1: TOpenDialog;
    cxButton1: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxButton2: TcxButton;
    cxProgressBar1: TcxProgressBar;
    IBQuery1: TIBQuery;
    DSQuery1: TDataSource;
    IBQuery1SCHET: TIBStringField;
    IBQuery1NACH: TFloatField;
    IBQuery1SAL: TFloatField;
    ADOQueryTAB: TADOQuery;
    DSADOQueryTAB: TDataSource;
    ADOQueryOBOR: TADOQuery;
    DSADOQueryOBOR: TDataSource;
    Memo1: TMemo;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxLabel3: TcxLabel;
    ADOTAB: TADODataSet;
    DSADOTAB: TDataSource;
    cxButton3: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ADOConnectionDBF: TADOConnection;
    ADOEDIT: TADODataSet;
    DSADOEDIT: TDataSource;
    cxGrid1DBTableView1SCHET: TcxGridDBColumn;
    cxGrid1DBTableView1YM: TcxGridDBColumn;
    cxGrid1DBTableView1SUBS_K: TcxGridDBColumn;
    cxGrid1DBTableView1SUBS_E: TcxGridDBColumn;
    cxGrid1DBTableView1RSUBS_K: TcxGridDBColumn;
    cxGrid1DBTableView1RSUBS_E: TcxGridDBColumn;
    cxGrid1DBTableView1S_EL: TcxGridDBColumn;
    cxGrid1DBTableView1S_HV: TcxGridDBColumn;
    cxGrid1DBTableView1S_KV: TcxGridDBColumn;
    cxGrid1DBTableView1S_OM: TcxGridDBColumn;
    cxGrid1DBTableView1S_OT: TcxGridDBColumn;
    cxGrid1DBTableView1S_RS: TcxGridDBColumn;
    cxGrid1DBTableView1S_SM: TcxGridDBColumn;
    cxGrid1DBTableView1S_SN: TcxGridDBColumn;
    cxGrid1DBTableView1S_SU: TcxGridDBColumn;
    cxGrid1DBTableView1S_UB: TcxGridDBColumn;
    cxGrid1DBTableView1OB_EL: TcxGridDBColumn;
    cxGrid1DBTableView1OB_HV: TcxGridDBColumn;
    cxGrid1DBTableView1OB_KV: TcxGridDBColumn;
    cxGrid1DBTableView1OB_OM: TcxGridDBColumn;
    cxGrid1DBTableView1OB_OT: TcxGridDBColumn;
    cxGrid1DBTableView1OB_RS: TcxGridDBColumn;
    cxGrid1DBTableView1OB_SM: TcxGridDBColumn;
    cxGrid1DBTableView1OB_SN: TcxGridDBColumn;
    cxGrid1DBTableView1OB_SU: TcxGridDBColumn;
    cxGrid1DBTableView1OB_UB: TcxGridDBColumn;
    cxGrid1DBTableView1SFIO: TcxGridDBColumn;
    cxGrid1DBTableView1SUL: TcxGridDBColumn;
    cxGrid1DBTableView1SDOM: TcxGridDBColumn;
    cxGrid1DBTableView1SKV: TcxGridDBColumn;
    cxGrid1DBTableView1SNORM: TcxGridDBColumn;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private


    { Private declarations }
  public
  mode:integer;
    { Public declarations }
  end;

var
  Form19: TForm19;
       st1,poslug,tip:string;
     MsExcel:Variant;
     period: TDateTime;




implementation

{$R *.dfm}

uses comobj, Unit1, StrUtils;

procedure TForm19.cxButton1Click(Sender: TObject);
var i,ns,kolst:integer;
    st:pchar;
    sss:string;
begin
  poslug:='';
         cxTextEdit2.Text:='';
       cxTextEdit3.Text:='';
       Memo1.Text:='';
       cxTextEdit4.Text:='';
       tip:='';
       if not VarIsEmpty(MsExcel) then
         if not MsExcel.Visible then
         begin
            MsExcel.Application.Quit;
            Application.ProcessMessages;
         end;

  if OpenDialog1.Execute then
  begin

    st:=pchar(OpenDialog1.FileName);
    for ns := 0 to Length(OpenDialog1.FileName) - 1 do
    begin
      if st[ns]<>'\' then
         st1:=st1+st[ns]
      else st1:='';
    end;





    MsExcel := CreateOleObject('Excel.Application');
    //    MsExcel.Workbooks.Add;
    MsExcel.Workbooks.Open[OpenDialog1.FileName];

    Form1.IBWID.First;
    while not Form1.IBWID.Eof do
    begin
    sss:= trim(MsExcel.WorkSheets[1].Cells[4,2]);
    if trim(Form1.posl.Values[Form1.IBWIDWID.Value])= sss then
    begin
       poslug:=Form1.IBWIDWID.Value;
       cxTextEdit2.Text:=Form1.IBWIDNAIM.Value;
       cxTextEdit3.Text:=MsExcel.WorkSheets[1].Cells[1,4];

       Break;
    end;
    Form1.IBWID.Next;
    end;

    Memo1.Text:=sss;


    sss:= trim(MsExcel.WorkSheets[1].Cells[6,3]);
    if  Pos('пільг',sss)<>0 then
    begin
        cxTextEdit4.Text:='Пільга';
        tip:='lg';
    end;
    if  Pos('субс',sss)<>0 then
    begin
        cxTextEdit4.Text:='Субсидія';
        tip:='sub';
    end;




    if (Length(poslug)=0) then
       begin
         ShowMessage('Послуга не знайдена!!!');
         st1:='';
       end;

    if  (Length(tip)=0)then
       begin
         ShowMessage('Тип реєстру не знайдено!!!');
         st1:='';
       end;

     cxTextEdit1.Text:=st1;






    //MsExcel := null;
  end;
end;

procedure TForm19.cxButton2Click(Sender: TObject);
const
xlContinuous=1;
xlThin=2;
xlTop = -4160;
xlCenter = -4108;
xlHAlignRight=-4152;
xlVAlignBottom=-4107;
var i,ns,kolst:integer;
    sum:currency;
    str,nam,sch,klasf,vid_rob,n_kres,gost,dekada:string;
    kolwith,rowh,rowh1:Variant;
    f1:boolean;
    pathDBF,Path:string;
    adostr:WideString;


begin
  inherited;


  {  with CreateForm.DB do

  begin
    Exclusive:=CB1.Checked;
    TableName:=OpenDialog1.FileName;
    Open; FillSG;
  end;


      }

   if Length(st1)=0 then
   begin
     ShowMessage('Виберіть файл');
     exit;
   end;


      f1:=true;
      kolst:=7;


//        MsExcel.Visible := True;
        while f1 do
        begin
        if (Length(MsExcel.WorkSheets[1].Cells[kolst,4])=0) then
           f1:=False
        else
          begin
          MsExcel.WorkSheets[1].Cells[kolst,8]:='';
          kolst:=kolst+1;
          end;

        end;








    period:=StrToDate('01.'+MidStr(MsExcel.WorkSheets[1].Cells[1,4],6,2)+'.'+LeftStr(MsExcel.WorkSheets[1].Cells[1,4],4));

   if mode=1 then
   begin
    //  form1.IBWID.First
    //  form1.IBWID.Locate('naim',cxLookupComboBox1.EditValue,[]);
    //  form1.IBWID.Lookup('naim',cxLookupComboBox1.EditValue,'wid');
      IBQuery1.Close;
      if (poslug='sm') then
      begin
      IBQuery1.SQL.Text:='select schet, sum(nach) nach, sum(sal) sal from (select trim(schet) as schet, nach+pere+wozw as nach, bgend as sal from vw_obor where period=:dt and (wid=''sm'' or wid=''sn'')) group by schet';
      IBQuery1.ParamByName('dt').AsDate:=period;
      end
      else
      begin
      IBQuery1.SQL.Text:='select trim(schet) as schet, nach+pere+wozw as nach, bgend as sal from vw_obor where period=:dt and wid=:wid';
      IBQuery1.ParamByName('dt').AsDate:=period;
      IBQuery1.ParamByName('wid').Value:=poslug;
      end;
      IBQuery1.Open;



        MsExcel.Visible := True;
        cxProgressBar1.Properties.Min:=0;
        cxProgressBar1.Properties.Max:=kolst-1;
        cxProgressBar1.Position:=5;
        for I := 7 to kolst-1 do
        begin
          cxProgressBar1.Position:=cxProgressBar1.Position+1;
          Application.ProcessMessages;

          sch:=MsExcel.WorkSheets[1].Cells[i,4];
          IBQuery1.First;
          IBQuery1SCHET.Value;
          if not IBQuery1.Locate('schet',sch,[]) then
          begin
          IBQuery1SCHET.Value;
             MsExcel.WorkSheets[1].Cells[i,5]:='рахунок не знайдено';
             MsExcel.WorkSheets[1].Cells[i,6]:='рахунок не знайдено';
          end
          else
          begin
             IBQuery1SCHET.Value;
             MsExcel.WorkSheets[1].Cells[i,5]:=IBQuery1NACH.Value;
             MsExcel.WorkSheets[1].Cells[i,6]:=IBQuery1SAL.Value;
          end;
        end;




        MsExcel.ActiveWorkbook.Close;
        MsExcel.Application.Quit;

        MsExcel := null;
   end;

   if mode=2 then
   begin

      ADOQueryTAB.Close;
      ADOQueryOBOR.Close;

      Path:=Form1.PathDIR+'subs.dbf';

      try
      deleteFile(Form1.PathDIR+'subs.dbf');
      deleteFile(Form1.PathDIR+'obor.dbf');
      deleteFile(Form1.PathDIR+'slgot.dbf');
       except
      on E : Exception do
      begin
      ShowMessage('Неможливо видалити файли з '+Form1.PathDIR+'.'+E.Message+'  Можливо файли відкриті в іншій програмі!');
      Exit;
      end;

      end;



     if tip='sub' then
       CopyFile(PChar(Form1.PathKvart+'dbf\subs.dbf'), PChar(Form1.PathDIR+'subs.dbf'), false);
     if tip='lg' then
       CopyFile(PChar(Form1.PathKvart+'dbf\slgot.dbf'), PChar(Form1.PathDIR+'slgot.dbf'), false);
     CopyFile(PChar(Form1.PathKvart+'dbf\obor.dbf'), PChar(Form1.PathDIR+'obor.dbf'), false);






//        if FileExists(data.DatabaseName+format('kvpl%d.dbf',[YM])) then
//        begin
//          copyfile(pchar(data.DatabaseName+format('kvpl%d.dbf',[YM])),
//             pchar(data.DatabaseName+data.TableName),false);
//          break;
//        end;





     try
//       if  not ADOConnectionDBF.Connected then
//       begin
            pathDBF:=Form1.PathDIR;
            Application.ProcessMessages;

            ADOConnectionDBF.Connected:=false;
//            pathDBF:=Form1.PathKvart+'dbf';
//            adostr:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+
//                      pathDBF+';Mode=ReadWrite;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";'+
//                      'Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=16;Jet OLEDB:Database Locking Mode=0;'+
//                      'Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;'+
//                      'Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;'+
//                      'Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don"t Copy Locale on Compact=False;'+
//                      'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;';

//            adostr:='Provider=MSDASQL.1;Persist Security Info=False;User ID=Admin;Data Source=dBASE Files;Mode=ReadWrite;Initial Catalog='+Form1.PathDIR+';';
//
//            ADOConnectionDBF.ConnectionString:=adostr;
            ADOConnectionDBF.ConnectionString:='Provider=VFPOLEDB.1;Data Source='+Form1.PathKvart+'dbf\;Mode=ReadWrite;Password="";Collating Sequence=MACHINE;CODEPAGE=866;ANSI=False';


            ADOConnectionDBF.Connected:=true;
//       end;

       if tip='sub' then
       begin
          ADOQueryTAB.SQL.Text:='select * from subs order by schet';
          ADOQueryTAB.Open;
       end;

       if tip='lg' then
       begin
          ADOQueryTAB.SQL.Text:='select * from slgot order by schet';
          ADOQueryTAB.Open;
       end;


       if (poslug='sm') then
          ADOQueryOBOR.SQL.Text:='select * from obor where wid=''sm'' or wid=''sn'' and koef<>0'
       else
          ADOQueryOBOR.SQL.Text:='select * from obor where wid='''+poslug+''' or wid='''+poslug+''' and koef<>0';
//
       ADOQueryOBOR.Open;

       ADOQueryOBOR.Close;
       ADOQueryTAB.Close;


       except
       on E : Exception do
       begin
        messagedlg('Помилка при підключенні до бази даних!!! - '+E.Message,mtError,[mbCancel],0);
        exit;
       end;



     end;


     try
            Application.ProcessMessages;
            ADOConnectionDBF.Connected:=false;
//            ADOConnectionDBF.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Form1.PathKvart+'dbf\;Mode=Share Deny Read|Share Deny Write;Extended Properties=dBase IV;Persist Security Info=False;Jet OLEDB:Database Locking Mode=0';
                ADOConnectionDBF.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Form1.PathKvart+'dbf\;Mode=ReadWrite;Extended Properties=dBase III;Persist Security Info=False;Jet OLEDB:Database Locking Mode=0';
            ADOConnectionDBF.Connected:=true;

            ADOQueryOBOR.Open;

            ADOQueryTAB.Open;



       except
       on E : Exception do
       begin
        messagedlg('Помилка при підключенні до бази даних!!! - '+E.Message,mtError,[mbCancel],0);
        exit;
       end;
     end;


//    ADOCommand1.CommandText:='';
//    ADOCommand1.CommandText:='CREATE INDEX IndexName ON subs (schet)';
//    ADOCommand1.Execute;






//            ADOQueryTAB.First;
//            while not ADOQueryTAB.Eof do
//            begin
//               ADOQueryTAB.Edit;
//               ADOQueryTAB.FieldByName('s_'+poslug).AsFloat:=0;
//               ADOQueryTAB.Post;
//               ADOQueryTAB.Next;
//            end;
//
//            if (poslug='sm') then
//            begin
//            ADOQueryTAB.First;
//              while not ADOQueryTAB.Eof do
//              begin
//                 ADOQueryTAB.Edit;
//                 ADOQueryTAB.FieldByName('s_sn').AsFloat:=0;
//                 ADOQueryTAB.Post;
//                 ADOQueryTAB.Next;
//              end;
//
//
//            end;


                        ADOEDIT.First;
            while not ADOEDIT.Eof do
            begin
               ADOEDIT.Edit;
               ADOEDIT.FieldByName('s_'+poslug).AsFloat:=0;
               ADOEDIT.Post;
               ADOEDIT.Next;
            end;

            if (poslug='sm') then
            begin
            ADOEDIT.First;
              while not ADOEDIT.Eof do
              begin
                 ADOEDIT.Edit;
                 ADOEDIT.FieldByName('s_sn').AsFloat:=0;
                 ADOEDIT.Post;
                 ADOEDIT.Next;
              end;


            end;





        cxProgressBar1.Properties.Min:=0;
        cxProgressBar1.Properties.Max:=kolst-1;
        cxProgressBar1.Position:=5;
        for I := 7 to kolst-1 do
        begin
          cxProgressBar1.Position:=cxProgressBar1.Position+1;
          Application.ProcessMessages;

//          ADOQueryOBOR.Close;
//          ADOQueryOBOR.CommandText:='select schet from obor where wid='''+cxLookupComboBox1.EditValue+''' and koef=1';







          sch:=trim(MsExcel.WorkSheets[1].Cells[i,4]);

          if StrToFloat(MsExcel.WorkSheets[1].Cells[i,7])<>0 then
          begin

            ADOQueryOBOR.First;
//            if ADOQueryOBOR.Locate('wid;schet',VarArrayOf([cxLookupComboBox1.EditValue,sch]),[loPartialKey]) then
            if ADOQueryOBOR.Locate('schet',sch,[]) then
            begin
               ADOQueryTAB.First;
               if not ADOQueryTAB.Locate('schet',sch,[]) then
               begin
                  ADOQueryTAB.Append;
                  ADOQueryTAB.FieldByName('schet').AsString:=sch;
               end
               else
                  ADOQueryTAB.Edit;


               ADOQueryTAB.FieldByName('s_'+ADOQueryOBOR.FieldByName('wid').AsString).AsFloat:=StrToFloat(MsExcel.WorkSheets[1].Cells[i,7]);
               ADOQueryTAB.Post;
            end
            else
               MsExcel.WorkSheets[1].Cells[i,8]:='рахунок (послуга по рахунку) не знайдено';
          end;
          end;

        ADOConnectionDBF.Close;
        MsExcel.Visible := True;
        MsExcel.ActiveWorkbook.save;
//        MsExcel.ActiveWorkbook.Close;
//        MsExcel.Application.Quit;


   end;

//     if tip='sub' then
//       CopyFile(PChar(Form1.PathDIR+'subs.dbf'), PChar(Form1.PathKvart+'dbf\subs.dbf'), false);
//     if tip='lg' then
//       CopyFile(PChar(Form1.PathDIR+'slgot.dbf'), PChar(Form1.PathKvart+'dbf\slgot.dbf'), false);



      ShowMessage('Завантаження закінчено');

end;

procedure TForm19.cxButton3Click(Sender: TObject);
const
xlContinuous=1;
xlThin=2;
xlTop = -4160;
xlCenter = -4108;
xlHAlignRight=-4152;
xlVAlignBottom=-4107;
var i,ns,kolst:integer;
    sum:currency;
    str,nam,sch,klasf,vid_rob,n_kres,gost,dekada:string;
    kolwith,rowh,rowh1:Variant;
    f1:boolean;
    pathDBF,Path:string;
    adostr:WideString;


begin
  inherited;


  {  with CreateForm.DB do

  begin
    Exclusive:=CB1.Checked;
    TableName:=OpenDialog1.FileName;
    Open; FillSG;
  end;


      }

   if Length(st1)=0 then
   begin
     ShowMessage('Виберіть файл');
     exit;
   end;


      f1:=true;
      kolst:=7;


//        MsExcel.Visible := True;
        while f1 do
        begin
        if (Length(MsExcel.WorkSheets[1].Cells[kolst,4])=0) then
           f1:=False
        else
          begin
          MsExcel.WorkSheets[1].Cells[kolst,8]:='';
          kolst:=kolst+1;
          end;

        end;








    period:=StrToDate('01.'+MidStr(MsExcel.WorkSheets[1].Cells[1,4],6,2)+'.'+LeftStr(MsExcel.WorkSheets[1].Cells[1,4],4));

   if mode=1 then
   begin
    //  form1.IBWID.First
    //  form1.IBWID.Locate('naim',cxLookupComboBox1.EditValue,[]);
    //  form1.IBWID.Lookup('naim',cxLookupComboBox1.EditValue,'wid');
      IBQuery1.Close;
      if (poslug='sm') then
      begin
      IBQuery1.SQL.Text:='select schet, sum(nach) nach, sum(sal) sal from (select trim(schet) as schet, nach+pere+wozw as nach, bgend as sal from vw_obor where period=:dt and (wid=''sm'' or wid=''sn'')) group by schet';
      IBQuery1.ParamByName('dt').AsDate:=period;
      end
      else
      begin
      IBQuery1.SQL.Text:='select trim(schet) as schet, nach+pere+wozw as nach, bgend as sal from vw_obor where period=:dt and wid=:wid';
      IBQuery1.ParamByName('dt').AsDate:=period;
      IBQuery1.ParamByName('wid').Value:=poslug;
      end;
      IBQuery1.Open;



        MsExcel.Visible := True;
        cxProgressBar1.Properties.Min:=0;
        cxProgressBar1.Properties.Max:=kolst-1;
        cxProgressBar1.Position:=5;
        for I := 7 to kolst-1 do
        begin
          cxProgressBar1.Position:=cxProgressBar1.Position+1;
          Application.ProcessMessages;

          sch:=MsExcel.WorkSheets[1].Cells[i,4];
          IBQuery1.First;
          IBQuery1SCHET.Value;
          if not IBQuery1.Locate('schet',sch,[]) then
          begin
          IBQuery1SCHET.Value;
             MsExcel.WorkSheets[1].Cells[i,5]:='рахунок не знайдено';
             MsExcel.WorkSheets[1].Cells[i,6]:='рахунок не знайдено';
          end
          else
          begin
             IBQuery1SCHET.Value;
             MsExcel.WorkSheets[1].Cells[i,5]:=IBQuery1NACH.Value;
             MsExcel.WorkSheets[1].Cells[i,6]:=IBQuery1SAL.Value;
          end;
        end;




        MsExcel.ActiveWorkbook.Close;
        MsExcel.Application.Quit;

        MsExcel := null;
   end;

   if mode=2 then
   begin



      Path:=Form1.PathDIR+'subs.dbf';

      try
      deleteFile(Form1.PathDIR+'subs.dbf');
      deleteFile(Form1.PathDIR+'obor.dbf');
      deleteFile(Form1.PathDIR+'slgot.dbf');
       except
      on E : Exception do
      begin
      ShowMessage('Неможливо видалити файли з '+Form1.PathDIR+'.'+E.Message+'  Можливо файли відкриті в іншій програмі!');
      Exit;
      end;

      end;



     if tip='sub' then
       CopyFile(PChar(Form1.PathKvart+'dbf\subs.dbf'), PChar(Form1.PathDIR+'subs.dbf'), false);
     if tip='lg' then
       CopyFile(PChar(Form1.PathKvart+'dbf\slgot.dbf'), PChar(Form1.PathDIR+'slgot.dbf'), false);
     CopyFile(PChar(Form1.PathKvart+'dbf\obor.dbf'), PChar(Form1.PathDIR+'obor.dbf'), false);






//        if FileExists(data.DatabaseName+format('kvpl%d.dbf',[YM])) then
//        begin
//          copyfile(pchar(data.DatabaseName+format('kvpl%d.dbf',[YM])),
//             pchar(data.DatabaseName+data.TableName),false);
//          break;
//        end;





     try



       except
       on E : Exception do
       begin
        messagedlg('Помилка при підключенні до бази даних!!! - '+E.Message,mtError,[mbCancel],0);
        exit;
       end;



     end;


     try


       except
       on E : Exception do
       begin
        messagedlg('Помилка при підключенні до бази даних!!! - '+E.Message,mtError,[mbCancel],0);
        exit;
       end;
     end;


//    ADOCommand1.CommandText:='';
//    ADOCommand1.CommandText:='CREATE INDEX IndexName ON subs (schet)';
//    ADOCommand1.Execute;






            ADOQueryTAB.First;
            while not ADOQueryTAB.Eof do
            begin
               ADOQueryTAB.Edit;
               ADOQueryTAB.FieldByName('s_'+poslug).AsFloat:=0;
               ADOQueryTAB.Post;
               ADOQueryTAB.Next;
            end;

            if (poslug='sm') then
            begin
            ADOQueryTAB.First;
            while not ADOQueryTAB.Eof do
            begin
               ADOQueryTAB.Edit;
               ADOQueryTAB.FieldByName('s_sn').AsFloat:=0;
               ADOQueryTAB.Post;
               ADOQueryTAB.Next;
            end;


            end;




        cxProgressBar1.Properties.Min:=0;
        cxProgressBar1.Properties.Max:=kolst-1;
        cxProgressBar1.Position:=5;
        for I := 7 to kolst-1 do
        begin
          cxProgressBar1.Position:=cxProgressBar1.Position+1;
          Application.ProcessMessages;

//          ADOQueryOBOR.Close;
//          ADOQueryOBOR.CommandText:='select schet from obor where wid='''+cxLookupComboBox1.EditValue+''' and koef=1';







          sch:=trim(MsExcel.WorkSheets[1].Cells[i,4]);

          if StrToFloat(MsExcel.WorkSheets[1].Cells[i,7])<>0 then
          begin

            ADOQueryOBOR.First;
//            if ADOQueryOBOR.Locate('wid;schet',VarArrayOf([cxLookupComboBox1.EditValue,sch]),[loPartialKey]) then
            if ADOQueryOBOR.Locate('schet',sch,[]) then
            begin
               ADOQueryTAB.First;
               if not ADOQueryTAB.Locate('schet',sch,[]) then
               begin
                  ADOQueryTAB.Append;
                  ADOQueryTAB.FieldByName('schet').AsString:=sch;
               end
               else
                  ADOQueryTAB.Edit;


               ADOQueryTAB.FieldByName('s_'+ADOQueryOBOR.FieldByName('wid').AsString).AsFloat:=StrToFloat(MsExcel.WorkSheets[1].Cells[i,7]);
               ADOQueryTAB.Post;
            end
            else
               MsExcel.WorkSheets[1].Cells[i,8]:='рахунок (послуга по рахунку) не знайдено';
          end;
          end;

        ADOConnectionDBF.Close;
        MsExcel.Visible := True;
        MsExcel.ActiveWorkbook.save;
//        MsExcel.ActiveWorkbook.Close;
//        MsExcel.Application.Quit;


   end;

//     if tip='sub' then
//       CopyFile(PChar(Form1.PathDIR+'subs.dbf'), PChar(Form1.PathKvart+'dbf\subs.dbf'), false);
//     if tip='lg' then
//       CopyFile(PChar(Form1.PathDIR+'slgot.dbf'), PChar(Form1.PathKvart+'dbf\slgot.dbf'), false);



      ShowMessage('Завантаження закінчено');


end;

procedure TForm19.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 ADOConnectionDBF.Close;
       if not VarIsEmpty(MsExcel)  then
         if not MsExcel.Visible then
         begin
            MsExcel.Application.Quit;
            Application.ProcessMessages;
         end;


end;

procedure TForm19.FormShow(Sender: TObject);
begin
ADOEDIT.Open;
end;

end.
