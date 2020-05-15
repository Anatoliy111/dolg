unit Unit20;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit,
  Data.Win.ADODB, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, cxLabel,
  Vcl.StdCtrls, cxTextEdit, cxButtons, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dbf,dbf_common;

type
  TForm20 = class(TForm)
    cxButton1: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxLabel3: TcxLabel;
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
    IBQuery1SCHET: TIBStringField;
    IBQuery1DOLG: TFloatField;
    IBQuery1OPL: TFloatField;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form20: TForm20;
  st1,poslug,tip:string;
       MsExcel:Variant;
     period: TDateTime;

implementation

{$R *.dfm}

uses comobj, Unit1, StrUtils, ShellAPI, Unit2, mytools;

procedure TForm20.cxButton1Click(Sender: TObject);
var i,ns,kolst:integer;
    st:pchar;
    sss:string;
begin

       cxTextEdit4.Text:='';

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
    if kolst<>0 then
    begin
      if (kolst=12) and (UpperCase(RightStr(st1,3))='DBF') then
          cxTextEdit4.Text:='Субсидія'
      else
         if (kolst=8) and ((UpperCase(RightStr(st1,3))='P01') or (UpperCase(RightStr(st1,3))='S01')) then
         begin
             if UpperCase(RightStr(st1,3))='P01' then
                cxTextEdit4.Text:='Пільга P01';
             if UpperCase(RightStr(st1,3))='S01' then
                cxTextEdit4.Text:='Пільга S01';
         end
         else
         begin
            ShowMessage('Неправильний файл !!!');
            exit;
         end;



    end
    else
    begin
     ShowMessage('Неправильний файл !!!');
     exit;
    end;





    MsExcel := CreateOleObject('Excel.Application');
    //    MsExcel.Workbooks.Add;
    MsExcel.Workbooks.Open[OpenDialog1.FileName];


    if cxTextEdit4.Text='Субсидія' then
       if trim(MsExcel.WorkSheets[1].Cells[1,11])<>'RASH' then
       begin
          ShowMessage('Неправильний файл');
          cxTextEdit1.Text:='';
          cxTextEdit4.Text:='';
          st1:='';
          Application.ProcessMessages;
          exit;
       end;

    if (cxTextEdit4.Text='Пільга P01') or (cxTextEdit4.Text='Пільга S01') then
       if trim(MsExcel.WorkSheets[1].Cells[1,16])<>'RAH' then
       begin
          ShowMessage('Неправильний файл');
          cxTextEdit1.Text:='';
          cxTextEdit4.Text:='';
          st1:='';
          Application.ProcessMessages;
          exit;
       end;

          MsExcel.ActiveWorkbook.Close;
          MsExcel.Application.Quit;
          MsExcel := null;


       cxTextEdit1.Text:=st1;
       Application.ProcessMessages;
  end;








end;



procedure TForm20.cxButton2Click(Sender: TObject);
const
xlContinuous=1;
xlThin=2;
xlTop = -4160;
xlCenter = -4108;
xlHAlignRight=-4152;
xlVAlignBottom=-4107;
var i,ns,kolst,kolborg,kolschet,k:integer;
    sum,sumExcel:currency;
    str,nam,sch,klasf,vid_rob,n_kres,gost,dekada,sss:string;
    kolwith,rowh,rowh1:Variant;
    f1:boolean;
    pathDBF,Path:string;
    adostr,cmd:WideString;
    ob,table:TDbf;


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




   Form20.Enabled:=false;
   Form2.Show;

      f1:=true;
      kolst:=2;
      if cxTextEdit4.Text='Субсидія' then
      begin
       kolschet:=11;
       kolborg:=54;
      end;

      if (cxTextEdit4.Text='Пільга P01') or (cxTextEdit4.Text='Пільга S01') then
      begin
        kolschet:=16;
        kolborg:=19;
      end;

      i:=0;

      IBWID.First;
      while not IBWID.eof do
      begin
        MsExcel.WorkSheets[1].Cells[1,kolborg+i]:='Борг '+IBWIDNAIM.Value;
        i:=i+1;
        IBWID.Next;
      end;

   Form2.Label1.Caption:='Обрахування даних';
        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=0;
        Form2.cxProgressBar1.Position:=0;
   Application.ProcessMessages;

//        MsExcel.Visible := True;
        while f1 do
        begin
        if (Length(MsExcel.WorkSheets[1].Cells[kolst,1])=0) then
           f1:=False
        else
          begin
//            i:=0;
//            IBWID.First;
//            while not IBWID.eof do
//            begin
//              MsExcel.WorkSheets[1].Cells[kolst,kolborg+i]:=0;
//              i:=i+1;
//              IBWID.Next;
//            end;
          kolst:=kolst+1;
          end;

        end;

   MsExcel.DisplayAlerts := False;



   Form2.Label1.Caption:='Завантаження даних';
   Application.ProcessMessages;
   k:=0;
   IBWID.First;
   while not IBWID.eof do
   begin

     Form2.Label1.Caption:='Завантаження даних '+IBWIDNAIM.Value;
  // period:=StrToDate('01.'+MidStr(MsExcel.WorkSheets[1].Cells[1,4],6,2)+'.'+LeftStr(MsExcel.WorkSheets[1].Cells[1,4],4));


    //  form1.IBWID.First
    //  form1.IBWID.Locate('naim',cxLookupComboBox1.EditValue,[]);
    //  form1.IBWID.Lookup('naim',cxLookupComboBox1.EditValue,'wid');
      IBQuery1.Close;
      IBQuery1.SQL.Text:='select trim(vo.schet) schet, vo.dolg, op.opl from vw_obkr vo '+
                         'inner join (select schet, sum(fullopl) opl from vw_obkr where wid=:wid and period>=:dt2 and period<=:dt3 group by schet) op on op.schet=vo.schet where vo.wid=:wid and vo.period=:dt1 and op.opl=0 and vo.dolg>0';
      IBQuery1.ParamByName('dt1').AsDate:=cxLookupComboBox1.EditValue;
      IBQuery1.ParamByName('dt2').AsDate:=cxLookupComboBox3.EditValue;
      IBQuery1.ParamByName('dt3').AsDate:=cxLookupComboBox4.EditValue;
      IBQuery1.ParamByName('wid').Value:=IBWIDWID.Value;
      IBQuery1.Open;



        //MsExcel.Visible := True;
        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=kolst-1;
        Form2.cxProgressBar1.Position:=5;
        for I := 2 to kolst-1 do
        begin
          Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
          Application.ProcessMessages;

          sch:=MsExcel.WorkSheets[1].Cells[i,kolschet];
          IBQuery1.First;
          IBQuery1SCHET.Value;
          if IBQuery1.Locate('schet',sch,[]) then
          begin
             IBQuery1SCHET.Value;
             MsExcel.WorkSheets[1].Cells[i,kolborg+k]:=IBQuery1DOLG.Value;
          end
          else
             MsExcel.WorkSheets[1].Cells[i,kolborg+k]:=0;
        end;

   k:=k+1;
   IBWID.Next;
   end;



//     if tip='sub' then
//       CopyFile(PChar(Form1.PathDIR+'subs.dbf'), PChar(Form1.PathKvart+'dbf\subs.dbf'), false);
//     if tip='lg' then
//       CopyFile(PChar(Form1.PathDIR+'slgot.dbf'), PChar(Form1.PathKvart+'dbf\slgot.dbf'), false);

        SaveDialog1.FileName:=cxTextEdit4.Text+' '+LeftStr(st1,Pos('.',st1)-1)+' боржники на '+DateTostr(cxLookupComboBox1.EditValue)+'.xls';
        if SaveDialog1.Execute then begin

        MsExcel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
//        MsExcel.ActiveWorkbook.SaveAs('c:\temp\test.xls');
      //  MsExcel.ActiveWorkbook.save;
        MsExcel.ActiveWorkbook.Close;
        MsExcel.Application.Quit;
        MsExcel := null;
        ShowMessage('Реєстр збережено в файл:'#10+SaveDialog1.FileName);
        Application.ProcessMessages;

        end
        else begin
          MsExcel.DisplayAlerts := true;
          MsExcel.Visible := True;
          MsExcel := null;
          ShowMessage('Реєстр не збережено. Книга відкрита в MS Excel.');
        end;


      cxTextEdit1.Text:='';
      st1:='';
      cxTextEdit4.Text:='';
      form2.Close;
      ShowMessage('Завантаження закінчено');
      Form20.Enabled:=true;
end;

procedure TForm20.FormShow(Sender: TObject);
begin
cxLookupComboBox1.EditValue:=Form1.IBPERIODPERIOD.Value;
cxLookupComboBox3.EditValue:=Form1.IBPERIODPERIOD.Value;
cxLookupComboBox4.EditValue:=Form1.IBPERIODPERIOD.Value;
IBWID.Open;
end;

end.
