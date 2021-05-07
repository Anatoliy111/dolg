unit Unit22;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit,
  Data.Win.ADODB, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, cxLabel,
  Vcl.StdCtrls, cxTextEdit, cxButtons, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dbf,dbf_common;

type
  TForm22 = class(TForm)
    cxButton1: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    OpenDialog1: TOpenDialog;
    IBQuery1: TIBQuery;
    DSQuery1: TDataSource;
    ADOCommand1: TADOCommand;
    cxLookupComboBox1: TcxLookupComboBox;
    IBWID: TIBDataSet;
    IBWIDWID: TIBStringField;
    IBWIDNAIM: TIBStringField;
    IBWIDCH: TIntegerField;
    DSWID: TDataSource;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLookupComboBox4: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    SaveDialog1: TSaveDialog;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    CheckBox1: TCheckBox;
    MemoLog: TMemo;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    cxLabel7: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form22: TForm22;
  st1,poslug,tip,nfile:string;
       MsExcel:Variant;
     period: TDateTime;
          kolborg,kolschet,kollgcode:integer;
     Rows, Columns: Integer;

implementation

{$R *.dfm}

uses comobj, Unit1, StrUtils, ShellAPI, Unit2, mytools, ExcelXP;

procedure TForm22.cxButton1Click(Sender: TObject);
var i,ns,kolst:integer;
    st:pchar;
    sss:string;
begin

           Rows:=0;
       Columns:=0;

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

    kolst:= Pos('.',st1)-1;
   // nfile:=trim(OpenDialog1.FileName);
   // Delete(nfile, Length(nfile)-3, 3);



    MsExcel := CreateOleObject('Excel.Application');
    //    MsExcel.Workbooks.Add;
    MsExcel.Workbooks.Open[OpenDialog1.FileName];

    Rows := MsExcel.ActiveSheet.UsedRange.Rows.Count;
    Columns := MsExcel.ActiveSheet.UsedRange.Columns.Count;

              MemoLog.Lines.Add('  Файл:'+OpenDialog1.FileName);
          MemoLog.Lines.Add('  Кіль.записів:'+IntToStr(Rows));
           MemoLog.Lines.Add('  Кіль.колонок:'+IntToStr(Columns));


    kolschet:=0;
    kollgcode:=0;
    kolborg:=0;

    for I := 1 to Columns-1 do
    begin
      if (trim(MsExcel.WorkSheets[1].Cells[1,I])='RASH') or (trim(MsExcel.WorkSheets[1].Cells[1,I])='RAH') then
      begin
         kolschet:=i;

      end;
      if (trim(MsExcel.WorkSheets[1].Cells[1,I])='LGCODE') then
      begin
         kollgcode:=i;
      end;
      if (trim(MsExcel.WorkSheets[1].Cells[1,I])='Summ_Borg') then
      begin
         kolborg:=i;
      end;


    end;

    if kolborg=0 then kolborg:=Columns+1;





       if kolschet=0 then
       begin
          ShowMessage('Неправильний файл, поле рахунок не знайдено');
          cxTextEdit1.Text:='';
          st1:='';
          Application.ProcessMessages;
          exit;
       end;

       if kollgcode=0 then
       begin
          ShowMessage('Неправильний файл, поле код категорії не знайдено');
          cxTextEdit1.Text:='';
          st1:='';
          Application.ProcessMessages;
          exit;
       end;

     //CopyFile(PChar(OpenDialog1.FileName), PChar(nfile), false);

          MsExcel.ActiveWorkbook.Close;
          MsExcel.Application.Quit;
          MsExcel := null;


       cxTextEdit1.Text:=st1;
       Application.ProcessMessages;
  end;








end;



procedure TForm22.cxButton2Click(Sender: TObject);
const
xlContinuous=1;
xlThin=2;
xlTop = -4160;
xlCenter = -4108;
xlHAlignRight=-4152;
xlVAlignBottom=-4107;
var i,ns,kolst,k,cod:integer;
    sum,sumExcel:currency;
    str,nam,sch,klasf,vid_rob,n_kres,gost,dekada,sss:string;
    kolwith,rowh,rowh1:Variant;
    f1:boolean;
    pathDBF,Path:string;
    adostr,cmd:WideString;
    ob,table:TDbf;
    ss:variant;


begin
  inherited;


  {  with CreateForm.DB do

  begin
    Exclusive:=CB1.Checked;
    TableName:=OpenDialog1.FileName;
    Open; FillSG;
  end;


      }




   if (Length(st1)=0) or (Length(OpenDialog1.FileName)=0) then
   begin
     ShowMessage('Виберіть файл');
     exit;
   end;



    MsExcel := CreateOleObject('Excel.Application');
    //    MsExcel.Workbooks.Add;
    MsExcel.Workbooks.Open[OpenDialog1.FileName];




   Form22.Enabled:=false;
   Form2.Show;

      f1:=true;
      kolst:=2;
      i:=0;

//      IBWID.First;
//      while not IBWID.eof do
//      begin
        MsExcel.WorkSheets[1].Cells[1,kolborg]:='Заборгованість';
        MsExcel.columns[kolborg].NumberFormat:='0,00';
//        i:=i+1;
//        IBWID.Next;
//      end;

   Form2.Label1.Caption:='Обрахування даних';
        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=0;
        Form2.cxProgressBar1.Position:=0;
   Application.ProcessMessages;

//        MsExcel.Visible := True;
   kolst:=Rows;

   MsExcel.DisplayAlerts := False;



   Form2.Label1.Caption:='Завантаження даних';
   Application.ProcessMessages;
   k:=0;

    IBQuery1.close;
    IBQuery1.SQL.Text:='select lg.cod, trim(t2.schet) as sch, t2.nach-t2.fullopl as summa from'+
                       ' (select t1.wid, t1.schet schet, sum(t1.nach) nach, sum(t1.fullopl) fullopl from'+
                       ' (select wid, schet, nach, 0 fullopl from vw_obor where period>=:d1 and period<=:d2'+
                       ' union all'+
                       ' select wid, schet, 0, fullopl from vw_obor where period>=:d3 and period<=:d4) t1'+
                       ' group by t1.wid, t1.schet) t2'+
                       ' left join lg_cod lg on t2.wid=lg.wid';

      IBQuery1.ParamByName('d1').AsDate:=cxLookupComboBox1.EditValue;
      IBQuery1.ParamByName('d2').AsDate:=cxLookupComboBox2.EditValue;
      IBQuery1.ParamByName('d3').AsDate:=cxLookupComboBox3.EditValue;
      IBQuery1.ParamByName('d4').AsDate:=cxLookupComboBox4.EditValue;
      //IBQuery1.ParamByName('wid').Value:=IBWIDWID.Value;

    IBQuery1.open;



        //MsExcel.Visible := True;
        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=kolst-1;
        Form2.cxProgressBar1.Position:=5;
        for I := 2 to kolst-1 do
        begin
          Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
          Application.ProcessMessages;

          sch:=MsExcel.WorkSheets[1].Cells[i,kolschet];
          cod:=MsExcel.WorkSheets[1].Cells[i,kollgcode];

          IBQuery1.First;
         // IBQuery1SCHET.Value;




//          if IBQuery1.Locate('schet',sch,[]) then
//          begin
//             //IBQuery1SCHET.Value;
//             if (CheckBox1.Checked) and (IBQuery1.FieldByName('summa').Value<0) then
//                MsExcel.WorkSheets[1].Cells[i,kolborg+k]:=0
//             else
//                MsExcel.WorkSheets[1].Cells[i,kolborg+k]:=IBQuery1.FieldByName('summa').Value;
//          end
//          else
//             MsExcel.WorkSheets[1].Cells[i,kolborg+k]:=0;


         ss := IBQuery1.Lookup('sch;cod', VarArrayOf([sch, cod]), 'summa');
  //       ss := IBQuery1.Lookup('SCH', sch, 'SUMMA');
         if ss <> null then
            sum:=ss
         else
         begin
           MemoLog.Lines.Add('Рахунок '+sch+' та код '+IntToStr(cod)+' - не знайдено' + #13#10);
           sum:=0;
         end;


//       IBQuery1SCH.Value;
//       IBQuery1.First;
//
//       if IBQuery1.Locate('sch',sch,[]) then
//          ss:=IBQuery1SUMMA.value
//       else
//       begin
//         MemoLog.Lines.Add('Рахунок '+sch+' та код '+IntToStr(cod)+' - не знайдено' + #13#10);
//         sum:=0;
//       end;

         if CheckBox1.Checked then
         begin
           if sum<0 then sum:=0;
         end;

        MsExcel.WorkSheets[1].Cells[i,kolborg]:=sum;
        end;





//     if tip='sub' then
//       CopyFile(PChar(Form1.PathDIR+'subs.dbf'), PChar(Form1.PathKvart+'dbf\subs.dbf'), false);
//     if tip='lg' then
//       CopyFile(PChar(Form1.PathDIR+'slgot.dbf'), PChar(Form1.PathKvart+'dbf\slgot.dbf'), false);

       // SaveDialog1.FileName:=cxTextEdit4.Text+' '+' боржники на '+'.xls';
        SaveDialog1.FileName:=LeftStr(st1,Pos('.',st1)-1)+' Заборгованість на '+DateTostr(IncMonth(cxLookupComboBox4.EditValue))+' пільги.xls';
        if SaveDialog1.Execute then begin

     //   MsExcel.Application.Workbooks[1].SaveCopyAs(SaveDialog1.FileName);
//        MsExcel.Application.Workbooks[1].SaveCopyAs(SaveDialog1.FileName,xlNormal,' ',' ',False,False);
        MsExcel.Application.Workbooks[1].SaveAs(SaveDialog1.FileName,-4143);
//        MsExcel.ActiveWorkbook.SaveAs('c:\temp\test.xls');
      //  MsExcel.ActiveWorkbook.save;
        MsExcel.Application.Workbooks[1].Close;
        //MsExcel.Application.ActiveWorkbook.Close;
        MsExcel.Application.Quit;
        MsExcel := null;
        ShowMessage('Реєстр збережено в файл:'#10+SaveDialog1.FileName);
        Application.ProcessMessages;


        end
        else begin
        MsExcel.Application.ActiveWorkbook.Close;
        MsExcel.Application.Quit;
        MsExcel := null;
          ShowMessage('Реєстр не збережено.');
        end;

     // DeleteFile(nfile);
      cxTextEdit1.Text:='';
      st1:='';
      form2.Close;
      ShowMessage('Завантаження закінчено');
      Form22.Enabled:=true;
end;

procedure TForm22.FormShow(Sender: TObject);
begin
cxLookupComboBox1.EditValue:=Form1.IBPERIODPERIOD.Value;
cxLookupComboBox2.EditValue:=Form1.IBPERIODPERIOD.Value;
cxLookupComboBox3.EditValue:=Form1.IBPERIODPERIOD.Value;
cxLookupComboBox4.EditValue:=Form1.IBPERIODPERIOD.Value;
IBWID.Open;
end;

end.
