unit Unit26;

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
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dbf,dbf_common;

type
  TForm26 = class(TForm)
    OpenDialog1: TOpenDialog;
    cxButton1: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxButton2: TcxButton;
    IBQuery1: TIBQuery;
    DSQuery1: TDataSource;
    IBQuery1SCHET: TIBStringField;
    IBQuery1NACH: TFloatField;
    IBQuery1SAL: TFloatField;
    Memo1: TMemo;
    cxTextEdit2: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    Label7: TLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    cxTextEdit3: TcxTextEdit;
    cxButton3: TcxButton;
    cxTextEdit5: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxTextEdit6: TcxTextEdit;
    cxLabel6: TcxLabel;
    Memo2: TMemo;
    IBQuery2: TIBQuery;
    IBStringField1: TIBStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    DataSource1: TDataSource;
    IBQuery3: TIBQuery;
    IBStringField2: TIBStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    DataSource2: TDataSource;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);

  private


    { Private declarations }
  public
  mode:integer;
    { Public declarations }
  end;

var
  Form26: TForm26;
       st1,st2,poslug1,poslug2,tip1,tip2:string;
     MsExcel:Variant;
     period: TDateTime;




implementation

{$R *.dfm}

uses comobj, Unit1, StrUtils, ShellAPI, Unit2;




procedure TForm26.cxButton1Click(Sender: TObject);
var i,ns,kolst:integer;
    st:pchar;
    sss:string;
begin
  poslug1:='';
         cxTextEdit2.Text:='';

       Memo1.Text:='';
       cxTextEdit4.Text:='';
       tip1:='';
//       if not VarIsEmpty(MsExcel) then
//         if not MsExcel.Visible then
//         begin
//            MsExcel.Application.Quit;
//            Application.ProcessMessages;
//         end;

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
       poslug1:=Form1.IBWIDWID.Value;
       cxTextEdit2.Text:=Form1.IBWIDNAIM.Value;
     //  cxTextEdit3.Text:=MsExcel.WorkSheets[1].Cells[1,4];

       Break;
    end;
    Form1.IBWID.Next;
    end;

    Memo1.Text:=sss;


    sss:= trim(MsExcel.WorkSheets[1].Cells[6,3]);
    if  Pos('субс',sss)<>0 then
    begin
        cxTextEdit4.Text:='Субсидія';
        tip1:='sub';
    end
    else
    begin
      ShowMessage('Це не файл реєстру субсидії!!!');
      st1:='';
    end;




    if (Length(poslug1)=0) then
       begin
         ShowMessage('Послуга не знайдена!!!');
         st1:='';
       end;

    if  (Length(tip1)=0)then
       begin
         ShowMessage('Тип реєстру не знайдено!!!');
         st1:='';
       end;

     cxTextEdit1.Text:=st1;






    //MsExcel := null;
  end;
end;

procedure TForm26.cxButton2Click(Sender: TObject);
const
xlContinuous=1;
xlThin=2;
xlTop = -4160;
xlCenter = -4108;
xlHAlignRight=-4152;
xlVAlignBottom=-4107;
var i,ns,kolst:integer;
    sum,sumExcel:currency;
    str,nam,sch,klasf,vid_rob,n_kres,gost,dekada,sss:string;
    kolwith,rowh,rowh1:Variant;
    f1:boolean;
    pathDBF,Path:string;
    adostr,cmd:WideString;
    ob,table:TDbf;
    d1,d2,d3,d4,cod,rr:integer;


begin
  inherited;


  {  with CreateForm.DB do

  begin
    Exclusive:=CB1.Checked;
    TableName:=OpenDialog1.FileName;
    Open; FillSG;
  end;


      }

   d1:=StrToInt(Concat(Copy(cxLookupComboBox1.EditValue,7,4),Copy(cxLookupComboBox1.EditValue,4,2)));
   d2:=StrToInt(Concat(Copy(cxLookupComboBox2.EditValue,7,4),Copy(cxLookupComboBox2.EditValue,4,2)));

       if (d1 > d2) then
    begin
      ShowMessage('Початковий період нарахування більший за кінцевий');
      exit;
    end;


//   if (Length(st1)=0) and (Length(st2)=0) then
//   begin
//     ShowMessage('Виберіть файл');
//     exit;
//   end;


   Form26.Enabled:=false;
   Form2.Show;


   if (Length(st1)<>0) then
   begin

      f1:=true;
      kolst:=7;
   Form2.Label1.Caption:='Обрахування даних';
        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=0;
        Form2.cxProgressBar1.Position:=0;
   Application.ProcessMessages;

//        MsExcel.Visible := True;
        while f1 do
        begin
        if (Length(MsExcel.WorkSheets[1].Cells[kolst,4])=0) then
           f1:=False
        else
          begin
          sch:=sch+','+trim(MsExcel.WorkSheets[1].Cells[i,4]);
          MsExcel.WorkSheets[1].Cells[kolst,9]:='';
          kolst:=kolst+1;

          end;

        end;

   MsExcel.DisplayAlerts := False;






   // period:=StrToDate('01.'+MidStr(MsExcel.WorkSheets[1].Cells[1,4],6,2)+'.'+LeftStr(MsExcel.WorkSheets[1].Cells[1,4],4));


    //  form1.IBWID.First
    //  form1.IBWID.Locate('naim',cxLookupComboBox1.EditValue,[]);
    //  form1.IBWID.Lookup('naim',cxLookupComboBox1.EditValue,'wid');



        MsExcel.ActiveWorkbook.Close;
        MsExcel.Application.Quit;
        MsExcel := null;
        Application.ProcessMessages;




      IBQuery1.Close;
      if (poslug1='sm') then
      begin
      IBQuery1.SQL.Text:='select sum(nach) nach,sum(fullopl) opl,case when sum(nach)>0 then (sum(fullopl)/sum(nach))*100 else 100 end as procent,sum(bgend) as sal from'+
                         ' (select trim(schet) as schet, nach+pere+wozw as nach, fullopl ,bgend from vw_obor where schet in ('+sch+') and period>=:d1 and period<=:d2 and (wid=''sm'' or wid=''sn''))';

      IBQuery1.ParamByName('d1').AsDate:=d1;
      IBQuery1.ParamByName('d2').AsDate:=d2;
      end
      else
      begin
      IBQuery1.SQL.Text:='select sum(nach) nach,sum(fullopl) opl,case when sum(nach)>0 then (sum(fullopl)/sum(nach))*100 else 100 end as procent,sum(bgend) as sal from'+
                         ' (select trim(schet) as schet, nach+pere+wozw as nach, fullopl ,bgend from vw_obor where schet in ('+sch+') and period>=:d1 and period<=:d2 and wid=:wid)';
      IBQuery1.ParamByName('d1').AsDate:=d1;
      IBQuery1.ParamByName('d2').AsDate:=d2;
      IBQuery1.ParamByName('wid').Value:=poslug1;
      end;
      IBQuery1.Open;
   end;







  
//     if tip='sub' then
//       CopyFile(PChar(Form1.PathDIR+'subs.dbf'), PChar(Form1.PathKvart+'dbf\subs.dbf'), false);
//     if tip='lg' then
//       CopyFile(PChar(Form1.PathDIR+'slgot.dbf'), PChar(Form1.PathKvart+'dbf\slgot.dbf'), false);

      cxTextEdit1.Text:='';
      st1:='';

      form2.Close;
     // ShowMessage('Завантаження закінчено');
      Form26.Enabled:=true;
end;

procedure TForm26.cxButton3Click(Sender: TObject);
var i,ns,kolst:integer;
    st:pchar;
    sss:string;
begin
  poslug2:='';
         cxTextEdit5.Text:='';

       Memo2.Text:='';
       cxTextEdit6.Text:='';
       tip2:='';
//       if not VarIsEmpty(MsExcel) then
//         if not MsExcel.Visible then
//         begin
//            MsExcel.Application.Quit;
//            Application.ProcessMessages;
//         end;

  if OpenDialog1.Execute then
  begin

    st:=pchar(OpenDialog1.FileName);
    for ns := 0 to Length(OpenDialog1.FileName) - 1 do
    begin
      if st[ns]<>'\' then
         st2:=st2+st[ns]
      else st2:='';
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
       poslug2:=Form1.IBWIDWID.Value;
       cxTextEdit5.Text:=Form1.IBWIDNAIM.Value;
     //  cxTextEdit3.Text:=MsExcel.WorkSheets[1].Cells[1,4];

       Break;
    end;
    Form1.IBWID.Next;
    end;

    Memo1.Text:=sss;


    sss:= trim(MsExcel.WorkSheets[1].Cells[6,3]);
    if  Pos('пільг',sss)<>0 then
    begin
        cxTextEdit6.Text:='Пільга';
        tip2:='lg';
    end
    else
    begin
      ShowMessage('Це не файл реєстру пільговиків!!!');
      st2:='';
    end;





    if (Length(poslug2)=0) then
       begin
         ShowMessage('Послуга не знайдена!!!');
         st2:='';
       end;

    if  (Length(tip2)=0)then
       begin
         ShowMessage('Тип реєстру не знайдено!!!');
         st2:='';
       end;

     cxTextEdit3.Text:=st2;






    //MsExcel := null;
  end;
end;

end.
