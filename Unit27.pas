unit Unit27;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxLabel, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, Data.Win.ADODB,
  cxTextEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit,
  cxCalendar,System.RegularExpressions;

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

  private

    function TrimAll(s:string):string;
    function SearchSchet(str:string):string;
    function SearchAllPosl(str:string;regallposl:string):string;
    function SearchPosl(str:string):Arr;
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
           MC:=RegularExpression.Matches(MsExcel.WorkSheets[1].Cells[IBQueryBankSTR_DT_VIP.Value,IBQueryBankCOL_DT_VIP.Value],'[0-9]{2}[.]{1}[0-9]{2}[.]{1}[0-9]{4}',[roMultiLine]);//�������� ��������� ����������
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
         ShowMessage('�� �� ��������� �������!!!');
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
    i,ns,kolst,k:integer;
    sss,fio,str,sch,regallposl,strprizn:string;
    RegularExpression : TRegEx;
    Match : TMatch;
    MC: TMatchCollection;
    Findposl:Arr;


begin
   if Length(path)=0 then
   begin
     ShowMessage('������� ����');
     exit;
   end;


    MsExcel := CreateOleObject('Excel.Application');
    //    MsExcel.Workbooks.Add;
    MsExcel.Workbooks.Open[path];

   Form2.Label1.Caption:='����������� �����';
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


       MsExcel.WorkSheets[1].Cells[IBQueryBankSTR_ST.Value-1,IBQueryBankCOL_END.Value+1]:='��������� �������';
       MsExcel.WorkSheets[1].Cells[IBQueryBankSTR_ST.Value-1,IBQueryBankCOL_END.Value+2]:='��������� �������';

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
          sch:='';
          strprizn:=MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_PRIZN.Value];
          Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
          Application.ProcessMessages;
          if Length(MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_DOK.Value])=0 then Next;
          if Pos('���������',MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_END.Value+2])<>0 then Next;
          sch:=SearchSchet(strprizn);
          if sch='' then
          begin
            MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_END.Value+2]:='��.������� �� ��������';
            Next;
          end;
          if SearchAllPosl(strprizn,regallposl)='' then
          begin
            MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_END.Value+2]:='������� �� ��������';
            Next;
          end;
          Findposl:=SearchPosl(strprizn);
          if Length(Findposl)=0 then
          begin
            MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_END.Value+2]:='������� �� ��������';
            Next;
          end;
          if Findposl[0]='many posl' then
          begin
            MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_END.Value+2]:='�������� ������� ����� ������';
            Next;
          end;
          if Findposl[0]='not found posl' then
          begin
            MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_END.Value+2]:='������ �� ��������';
            Next;
          end;
          for k:=0 to Length(Findposl) do
          begin
              IBQueryObor.first;
              if not IBQueryObor.Locate('wid',Findposl[0],[]) then
              begin
                IBQueryWidAll.First;
                IBQueryWidAll.Locate('wid',Findposl[0],[]);
                MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_END.Value+2]:='������� '+IBQueryWidAllNAIM.Value+' � �������� '+sch+' �� ��������';
                Next;
              end;

          end;
          for k:=0 to Length(Findposl) do
          begin
              IBQueryObor.first;
              if not IBQueryObor.Locate('wid',Findposl[0],[]) then
              begin
                IBQueryWidAll.First;
                IBQueryWidAll.Locate('wid',Findposl[0],[]);
                MsExcel.WorkSheets[1].Cells[I,IBQueryBankCOL_END.Value+2]:='������� '+IBQueryWidAllNAIM.Value+' � �������� '+sch+' �� ��������';
                Next;
              end;

          end;





        end;





        MsExcel.ActiveWorkbook.save;
        MsExcel.ActiveWorkbook.Close;
        MsExcel.Application.Quit;
        MsExcel := null;
        Application.ProcessMessages;

      form2.Close;
      ShowMessage('������������ ��������');
      Form27.Enabled:=true;

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
          Match:=RegularExpression.Match(str,'\b[0-9]{7}[�-�]{1}|\b[0-9]{7}\b',[roIgnoreCase]);
          if Match.Success then
          begin
            IBQueryObor.Close;
            IBQueryObor.SQL.Text:='select * from obor where upd=1 and period=:dt and schet=:sch';
            IBQueryObor.ParamByName('sch').Value:=Match.Value;
            IBQueryObor.ParamByName('dt').Value:=IBPERIODPERIOD.Value;
            IBQueryObor.Open;
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

function TForm27.SearchPosl(str:string):Arr;
var RegularExpression : TRegEx;
    Match : TMatch;
    MC: TMatchCollection;
    sch,regposl,wid:string;
    a:integer;
    posl:Arr;
begin
          a:=0;
          wid:='';
          IBQueryVipiska.first;
          while not IBQueryVipiska.Eof do
          begin
            if IBQueryVipiskaWID.AsString<>wid then
            begin
              Match:=RegularExpression.Match(str,'('+IBQueryVipiskaPOISK.AsString+'{1})',[roIgnoreCase]);
              if Match.Success then
              begin
                   posl[a]:=Match.Value;
                   a:=a+1;
              end;
            end;

          IBQueryVipiska.Next;
          end;
          if Length(posl)>1 then
          begin
            Result[0]:='many posl';
            exit;
          end;
          if Length(posl)=0 then
          begin
            Result[0]:='not found posl';
            exit;
          end;
          Match:=RegularExpression.Match(str,'(�� ����{1})',[roIgnoreCase]);
              if Match.Success then
              begin
                 IBQueryWid.Close;
                 IBQueryWid.SQL.Text:='select * from wid where abonpl=:wid';
                 IBQueryWid.ParamByName('wid').AsString:=posl[a-1];
                 IBQueryWid.open;
                 if IBQueryWid.RecordCount<>0 then
                 begin
                    posl[a]:=IBQueryWidWID.Value;
                    Result:=posl;
                    exit;
                 end;
              end;
          Match:=RegularExpression.Match(str,'(�� �����{1})',[roIgnoreCase]);
              if Match.Success then
              begin
                 IBQueryWid.Close;
                 IBQueryWid.SQL.Text:='select * from wid where abonpl=:wid';
                 IBQueryWid.ParamByName('wid').AsString:=posl[a-1];
                 IBQueryWid.open;
                 if IBQueryWid.RecordCount<>0 then
                 begin
                    posl[a]:=IBQueryWidWID.Value;
                    Result:=posl;
                    exit;
                 end;
              end;
            Match:=RegularExpression.Match(str,'(����{1})',[roIgnoreCase]);
              if Match.Success then
              begin
                 IBQueryWid.Close;
                 IBQueryWid.SQL.Text:='select * from wid where abonpl=:wid';
                 IBQueryWid.ParamByName('wid').AsString:=posl[a-1];
                 IBQueryWid.open;
                 if IBQueryWid.RecordCount<>0 then
                 begin
                    Result[0]:=IBQueryWidWID.Value;
                    exit;
                 end;
              end;
            Match:=RegularExpression.Match(str,'(�����{1})',[roIgnoreCase]);
              if Match.Success then
              begin
                 IBQueryWid.Close;
                 IBQueryWid.SQL.Text:='select * from wid where abonpl=:wid';
                 IBQueryWid.ParamByName('wid').AsString:=posl[a-1];
                 IBQueryWid.open;
                 if IBQueryWid.RecordCount<>0 then
                 begin
                    Result[0]:=IBQueryWidWID.Value;
                    exit;
                 end;
              end;


end;


end.