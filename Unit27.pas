unit Unit27;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxLabel, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, Data.Win.ADODB,
  cxTextEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit,
  cxCalendar;

type
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
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form27: TForm27;
   st1,poslug,tip,path:string;
     MsExcel:Variant;
     period: TDateTime;

implementation

{$R *.dfm}

uses comobj, Unit1, StrUtils, ShellAPI, Unit2, mytools, ExcelXP;

procedure TForm27.cxButton1Click(Sender: TObject);
var i,ns,kolst,nstr:integer;
    st:pchar;
    sss,str:string;
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
          cxTextEdit4.Text:=IBQueryBankNAIM.Text;
          if IBQueryBankNAIM.Text='Ощадбанк' then
          begin
             str:=trim(MsExcel.WorkSheets[1].Cells[7,6]);
             if Pos('за',str)<>0 then cxDateEdit1.Date:=StrToDate(Copy(str,Pos('за',str)+3,10));
          end;

          if IBQueryBankNAIM.Text='Приватбанк' then
          begin
            str:=trim(MsExcel.WorkSheets[1].Cells[2,1]);
            str:=Copy(str,Pos('з',str),Length(str));
            if Pos('з',str)<>0 then cxDateEdit1.Date:=StrToDate(Copy(str,Pos('з',str)+2,10));
            if Pos('по',str)<>0 then cxDateEdit2.Date:=StrToDate(Copy(str,Pos('по',str)+3,10));
          end;

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
    i,ns,kolst:integer;
begin
   if Length(path)=0 then
   begin
     ShowMessage('Виберіть файл');
     exit;
   end;


    MsExcel := CreateOleObject('Excel.Application');
    //    MsExcel.Workbooks.Add;
    MsExcel.Workbooks.Open[path];

   Form2.Label1.Caption:='Обрахування даних';
        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=0;
        Form2.cxProgressBar1.Position:=0;
   Application.ProcessMessages;

//        MsExcel.Visible := True;

   Form27.Enabled:=false;
   Form2.Show;

   f1:=true;



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
        for I := 13 to kolst-1 do
        begin
          Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
          Application.ProcessMessages;
          if Length(MsExcel.WorkSheets[1].Cells[I,3])=0 then Next;
          if Pos('Оброблено',MsExcel.WorkSheets[1].Cells[I,26])<>0 then Next;



        end;





        MsExcel.ActiveWorkbook.save;
        MsExcel.ActiveWorkbook.Close;
        MsExcel.Application.Quit;
        MsExcel := null;
        Application.ProcessMessages;

      form2.Close;
      ShowMessage('Завантаження закінчено');
      Form27.Enabled:=true;

end;

procedure TForm27.FormShow(Sender: TObject);
begin
IBQueryBank.Close;
IBQueryBank.Open;
end;

end.
