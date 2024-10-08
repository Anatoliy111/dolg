unit Unit27;

interface

uses
  Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxLabel, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, Data.Win.ADODB,
  cxTextEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit,
  cxCalendar,System.RegularExpressions,dbf,dbf_common, Vcl.ExtCtrls;

type
    Arr = array[0..10] of string;
  TForm27 = class(TForm)
    cxTextEdit1: TcxTextEdit;
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
    IBQueryVipiska: TIBQuery;
    DSQueryVipiska: TDataSource;
    IBQueryVipiskaKL: TIntegerField;
    IBQueryVipiskaKL_BANK: TIntegerField;
    IBQueryVipiskaWID: TIBStringField;
    IBQueryVipiskaVIDPOISK: TIBStringField;
    IBQueryVipiskaPOISK: TIBStringField;
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
    Timer1: TTimer;
    cxLabel5: TcxLabel;
    CheckBox2: TCheckBox;
    cxButton3: TcxButton;
    IBQueryBankKL: TIntegerField;
    IBQueryBankNAIM: TIBStringField;
    IBQueryBankRAH: TIBStringField;
    IBQueryBankCOL_POISK_ENDDATA: TIntegerField;
    IBQueryBankSTR_PRIZN_ENDDATA: TIBStringField;
    IBQueryBankCOL_PRIZN: TIntegerField;
    IBQueryBankCOL_SUM: TIntegerField;
    IBQueryBankCOL_DT: TIntegerField;
    IBQueryBankCOL_DOK: TIntegerField;
    IBQueryBankCOL_END: TIntegerField;
    IBQueryBankCOL_KONTR: TIntegerField;
    IBQueryBankSTR_POISK_RAH: TIntegerField;
    IBQueryBankCOL_POISK_RAH: TIntegerField;
    IBQueryBankCOL_EDRPOU: TIntegerField;
    IBQueryBankSTR_EDRPOU: TIBStringField;
    IBQueryBankCOL_DT_VIP: TIntegerField;
    IBQueryBankSTR_DT_VIP: TIntegerField;
    IBQueryBankREGEXP_FILE: TIBStringField;
    IBQueryBankCOL_CODPOSL: TIntegerField;
    IBQueryBankREGEXP_DATE: TIBStringField;
    IBQueryBankFORMAT_DATE_SEPARATOR: TIBStringField;
    IBQueryBankCOL_RAH: TIntegerField;
    IBQueryBankSTR_PRIZN_STARTDATA: TIBStringField;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private

    function TrimAll(s:string):string;
    procedure addanaliz(nameposl:string;sumposl:Double;sumposlproc:Double);


    procedure SearchPosl(str:string);
    function StrAnsiToOem(const S: AnsiString): AnsiString;
    procedure RunProcessCmd(const ACommand:string);
    procedure RunProcessHideCmd(const ACommand: string);

//    procedure RunProcessCmd(const ACommand:string;procParam:TStringList);
//


    { Private declarations }
  public
  MsExcel:Variant;
  ExcelWorkbook: Variant;
  onlysearchposl,Row,startROW,endROW,maxcolposl:integer;
  newpl,err:boolean;
  regallposl,strprizn:string;
  procedure addopl;
  procedure endlistexel;
  function SearchSchet(schet:string):string;
  procedure SearchAllPosl;
  procedure startlistexel;
  procedure startlistonlysearchposl;
  procedure CloseData;
  procedure CloseDataOnlySearchPosl;
  procedure CloseDataNotSave;
  procedure SearchSum;
    { Public declarations }
  end;

var
  Form27: TForm27;

     st1,poslug,tip,path,filepath,pathtmp:string;
     period: TDateTime;
     strList:TStringList;
     table,tobor,twid,topl:TDbf;
     dt:TDate;
     kolst:integer;
     fl:boolean;



implementation

{$R *.dfm}

uses Winapi.Windows, comobj, Unit1, StrUtils, ShellAPI, Unit2, mytools, ExcelXP, SysUtils, Unit33, DateUtils, math, dprocess;


function TForm27.TrimAll(s:string):string;
begin
 s := StringReplace(s , ' ','', [rfReplaceAll, rfIgnoreCase]);
 s := StringReplace(s, Chr(160), '', [rfReplaceAll, rfIgnoreCase]);
 result:=s;
end;


procedure TForm27.SearchAllPosl;
var RegularExpression : TRegEx;
    Match : TMatch;
    MC: TMatchCollection;
    sch:string;
    k:integer;
    notfindposl:boolean;
begin



             //����� �������
            if StrList.Count=0 then
              err:=true
            else
            begin
                for k:=0 to StrList.Count-1 do
                begin
                    if (Form33.ADOQueryOBOR.Active) and (Form33.ADOQueryOBOR.RecordCount<>0) then
                    begin
                      Form33.ADOQueryOBOR.first;
                      if not Form33.ADOQueryOBOR.Locate('wid',StrList[k],[]) then
                      begin
                        notfindposl:=true;

                        if StrList[k]='sn' then
                        begin
                           Form33.ADOQueryOBOR.first;
                           if not Form33.ADOQueryOBOR.Locate('wid','sm',[]) then
                           begin
                            IBQueryWidAll.First;
                            IBQueryWidAll.Locate('wid','sn',[]);
                            Form33.cxLabel1.Caption:=Form33.cxLabel1.Caption+'������� '+IBQueryWidAllNAIM.Value;
                            IBQueryWidAll.First;
                            IBQueryWidAll.Locate('wid','sm',[]);
                            Form33.cxLabel1.Caption:=Form33.cxLabel1.Caption+' ��� '+IBQueryWidAllNAIM.Value+' � �������� '+trim(Form33.cxTextEdit1.Text)+' �� ��������!';
                            err:=true;
                           end
                           else
                           begin
                             StrList[k]:='sm';
                             notfindposl:=false;
                           end;
                        end
                        else
                        if StrList[k]='sm' then
                        begin
                           Form33.ADOQueryOBOR.first;
                           if not Form33.ADOQueryOBOR.Locate('wid','sn',[]) then
                           begin
                            IBQueryWidAll.First;
                            IBQueryWidAll.Locate('wid','sn',[]);
                            Form33.cxLabel1.Caption:=Form33.cxLabel1.Caption+'������� '+IBQueryWidAllNAIM.Value;
                            IBQueryWidAll.First;
                            IBQueryWidAll.Locate('wid','sm',[]);
                            Form33.cxLabel1.Caption:=Form33.cxLabel1.Caption+' ��� '+IBQueryWidAllNAIM.Value+' � �������� '+trim(Form33.cxTextEdit1.Text)+' �� ��������!';
                            err:=true;
                           end
                           else
                           begin
                             StrList[k]:='sn';
                             notfindposl:=false;
                           end;
                        end;

                        if StrList[k]='ot' then
                        begin
                           Form33.ADOQueryOBOR.first;
                           if not Form33.ADOQueryOBOR.Locate('wid','om',[]) then
                           begin
                            IBQueryWidAll.First;
                            IBQueryWidAll.Locate('wid','ot',[]);
                            Form33.cxLabel1.Caption:=Form33.cxLabel1.Caption+'������� '+IBQueryWidAllNAIM.Value;
                            IBQueryWidAll.First;
                            IBQueryWidAll.Locate('wid','om',[]);
                            Form33.cxLabel1.Caption:=Form33.cxLabel1.Caption+' ��� '+IBQueryWidAllNAIM.Value+' � �������� '+trim(Form33.cxTextEdit1.Text)+' �� ��������!';
                            err:=true;
                           end
                           else
                           begin
                             StrList[k]:='om';
                             notfindposl:=false;
                           end;
                        end;

                        if notfindposl then
                        begin
                          IBQueryWidAll.First;
                          IBQueryWidAll.Locate('wid',StrList[k],[]);
                          Form33.cxLabel1.Caption:=Form33.cxLabel1.Caption+'������� '+IBQueryWidAllNAIM.Value+' � �������� '+trim(Form33.cxTextEdit1.Text)+' �� ��������!';
                          err:=true;
                        end;
                      end;
                    end
                    else
                    begin
                          Form33.cxLabel1.Caption:=Form33.cxLabel1.Caption+'�� ��������� ������� '+trim(Form33.cxTextEdit1.Text)+' �� �� ������. ������� ������� � ��.�������';
                          Form33.cxTextEdit1.Properties.ReadOnly:=false;

                         // Form33.cxTextEdit1.SetFocus;
                          err:=true;
                    end;

                end;
            end;


end;




procedure TForm27.SearchSum;
var str,posl2,strtmp:string;
    RegularExpression : TRegEx;
    Match : TMatch;
    MC: TMatchCollection;
    ssum,ssum1,allsum,riznsum,allsumposl,sumposl1,sumposl2,vipsum,priznsum:Double;
    k,tmpint:integer;
    exitsum:boolean;
begin
             ssum:=0;
             priznsum:=0;
             vipsum:=0;
             str:=trim(ExcelWorkbook.WorkSheets[1].Cells[row,IBQueryBankCOL_SUM.Value]);

//                str:=StringReplace(str,',',DecimalSeparator,[rfReplaceAll]);
//                str:= StringReplace(str,'.',DecimalSeparator,[rfReplaceAll]);
//                if TryStrToFloat(str) then
//                vipsum:=StrToFloat(StringReplace(str,'.',',',[]))


             if str<>'' then
                vipsum:=MyStrToFloat(str)
             else
               vipsum:=0;
             Form33.cxCalcEdit2.Value:=vipsum;

    //      strtmp:=trim(ExcelWorkbook.WorkSheets[1].Cells[row,IBQueryBankCOL_EDRPOU.Value]);
      //    tmpint:=Pos(IBQueryBankSTR_EDRPOU.Value,strtmp);

          if (not IBQueryBankCOL_EDRPOU.IsNull) and (IBQueryBankCOL_EDRPOU.Value<>0) and (Pos(IBQueryBankSTR_EDRPOU.Value,trim(ExcelWorkbook.WorkSheets[1].Cells[row,IBQueryBankCOL_EDRPOU.Value]))>0) then
          begin
//            RegularExpression := TRegEx.Create('[;]\d+(?:[\.,]\d+)?[\w]');
            RegularExpression := TRegEx.Create('[;]\d+(?:[\.,]\d+)?');
            str:=StringReplace(strprizn,' ','',[rfReplaceAll, rfIgnoreCase]);
            MC := RegularExpression.Matches(str);
            if MC.Count > 0 then
            begin
//              Match.Groups
              str:=StringReplace(MC.Item[MC.Count-1].Value,';','',[rfReplaceAll, rfIgnoreCase]);
              str:=StringReplace(str,'.',',',[rfReplaceAll, rfIgnoreCase]);
              str:=StringReplace(str,'#$A','',[rfReplaceAll, rfIgnoreCase]);
              priznsum:=StrToFloat(str);
              ssum:=priznsum;
              if priznsum<=vipsum then
              begin
                Form33.cxLabel1.Caption:=Form33.cxLabel1.Caption+'��� ��������� �������� ���� � ����������� ������� ���� ����� ��� � ���� �������! ������� ���� � ����������� �� ���������!!!';
                Form33.cxCalcEdit1.Properties.ReadOnly:=false;
                err:=true;
              end;
            end
            else
            begin
              Form33.cxLabel1.Caption:=Form33.cxLabel1.Caption+'��� ��������� �������� ���� ������� ���� � �����������!!!';
              priznsum:=0;
              ssum:=priznsum;
              Form33.cxCalcEdit1.Properties.ReadOnly:=false;
              err:=true;
            end;
          end
          else
             ssum:=vipsum;


          if ssum<=0 then
          begin
             Form33.cxLabel1.Caption:=Form33.cxLabel1.Caption+'C��� ������ � �������� '+trim(Form33.cxTextEdit1.Text)+' ������ ��� ���� 0!';
             Form33.cxCalcEdit1.Properties.ReadOnly:=false;
             err:=true;
          end;



         ssum1:=0;
         allsum:=ssum;
         Form33.cxCalcEdit1.Value:=ssum;

         posl2:='';
         allsumposl:=0;
         exitsum:=false;
         if (Form33.ADOQueryOBOR.Active) and (StrList.Count<>0) then
         begin
            Form33.ADOQueryOBOR.First;
            if Form33.ADOQueryOBOR.Locate('wid',StrList[0],[]) and (trim(Form33.ADOQueryOBORabonpl.Value)<>'') then
            begin
               //allsumposl:=Form33.ADOQueryOBORsal.Value;
               sumposl1:=Form33.ADOQueryOBORsal.Value;
               posl2:=Form33.ADOQueryOBORabonpl.Value;
               Form33.ADOQueryOBOR.First;
               if Form33.ADOQueryOBOR.Locate('wid',posl2,[]) and (Form33.ADOQueryOBORsal.Value>0) then
               begin
                 sumposl2:=Form33.ADOQueryOBORsal.Value;
                 allsumposl:=sumposl1+Form33.ADOQueryOBORsal.Value;
                 if sumposl1<>allsum then
                 begin
                   if sumposl2=allsum then
                   begin
                       strList.Clear;
                       strList.Add(posl2);
                   end
                   else if (allsum-sumposl1>=2) and (StrList.Count=1) then
                        strList.Add(posl2);
                 end;
               end;

            end;
         end;

//                               else if (sumposl1<=0) and (sumposl2>=allsum) then
//                     begin
//                       strList.Clear;
//                       strList.Add(posl2);
//                     end

         //                 if ((allsum-sumposl<=2) and (allsum-sumposl>=-2)) or (sumposl-allsum>=2) then



          if (Form33.ADOQueryOBOR.Active) and (StrList.Count<>0) then
          begin
            for k:=0 to StrList.Count-1 do
            begin
              Form33.ADOQueryOBOR.First;
              if Form33.ADOQueryOBOR.Locate('wid',StrList[k],[]) then
              begin
                 Form33.ADOQueryOBOR.Edit;
                 Form33.ADOQueryOBORch.Value:=1;

                 if (k=0) then
                 begin
                  if (Form33.ADOQueryOBORsal.AsFloat>=ssum) then
                  begin
                    ssum1:=ssum;
                    ssum:=0;
                    break;
                  end
                  else
                  begin
                    if Form33.ADOQueryOBORsal.AsFloat>0 then
                    begin
                       ssum1:=Form33.ADOQueryOBORsal.AsFloat;
                       ssum:=ssum-Form33.ADOQueryOBORsal.AsFloat;
                    end;
                  end;
                 end
                 else
                 begin
                   if (Form33.ADOQueryOBORsal.Value>0) and (ssum>0) then
                   begin
                      riznsum:=ssum-Form33.ADOQueryOBORsal.Value;
                      if riznsum>0 then
                      begin
                        Form33.ADOQueryOBORsumpl.AsFloat:=Form33.ADOQueryOBORsal.AsFloat;
                        ssum:=ssum-Form33.ADOQueryOBORsal.AsFloat;
                      end
                      else
                      begin
                        Form33.ADOQueryOBORsumpl.AsFloat:=SimpleRoundTo(ssum,-2);
                        ssum:=0;
                      end;

                   end;
                 end;
                 Form33.ADOQueryOBOR.Post;

              end;


            end;

            if ssum>0 then
               ssum1:=ssum1+ssum;

            if (StrList.count>0) then
            begin
                Form33.ADOQueryOBOR.first;
                if Form33.ADOQueryOBOR.Locate('wid',StrList[0],[]) then
                begin
                  Form33.ADOQueryOBOR.Edit;
                  if (ssum1>0) then
                      Form33.ADOQueryOBORsumpl.AsFloat:=ssum1
                  else
                      Form33.ADOQueryOBORch.Value:=0;

                  Form33.ADOQueryOBOR.Post;
                end;


            end;


          end;

end;

function GetColumnName(ColumnNumber: Integer): string;
var
  ColumnLetter: string;
begin
  ColumnLetter := '';
  while ColumnNumber > 0 do
  begin
    Dec(ColumnNumber);
    ColumnLetter := Chr(Ord('A') + ColumnNumber mod 26) + ColumnLetter;
    ColumnNumber := ColumnNumber div 26;
  end;
  Result := ColumnLetter;
end;

procedure TForm27.addanaliz(nameposl:string;sumposl:Double;sumposlproc:Double);
var strposl:string;
    fl:boolean;
    rowanaliz:integer;
    sum:Double;
begin
  //  strposl:=ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+10];
    rowanaliz:=startROW+1;
    fl:=true;
    while fl do
    begin
      strposl:=ExcelWorkbook.WorkSheets[1].Cells[rowanaliz,IBQueryBankCOL_END.Value+maxcolposl+1];
      if Length(strposl)=0 then
      begin
         ExcelWorkbook.WorkSheets[1].Cells[rowanaliz,IBQueryBankCOL_END.Value+maxcolposl+1]:=nameposl;
      end;
      strposl:=ExcelWorkbook.WorkSheets[1].Cells[rowanaliz,IBQueryBankCOL_END.Value+maxcolposl+1];
      if strposl=nameposl then
      begin
         sum:=ExcelWorkbook.WorkSheets[1].Cells[rowanaliz,IBQueryBankCOL_END.Value+maxcolposl+2];
         ExcelWorkbook.WorkSheets[1].Cells[rowanaliz,IBQueryBankCOL_END.Value+maxcolposl+2]:=sum+sumposl;
         sum:=ExcelWorkbook.WorkSheets[1].Cells[rowanaliz,IBQueryBankCOL_END.Value+maxcolposl+3];
         ExcelWorkbook.WorkSheets[1].Cells[rowanaliz,IBQueryBankCOL_END.Value+maxcolposl+3]:=sum+sumposlproc;
         fl:=false;
      end;
      inc(rowanaliz);
    end;
end;

procedure TForm27.CloseData;
var     MyFile: TFileStream;
  Excel: Variant;
  Workbooks: Variant;
  Workbook: Variant;
  FileInfo: TSHFileInfo;
    i:integer;
begin
          row:=0;

          table.Close;
          table.Free;

          tobor.Close;
          tobor.Free;

          topl.Close;
          topl.Free;

         Sleep(100);

      try
        MyFile := TFileStream.Create(path, fmOpenRead or fmShareExclusive or fmShareDenyWrite);
        try
          // ���� ������ ��� ������ � ��� ����� ������������ �����
        finally
          MyFile.Free;
        end;
      except
           MyFile.Free;
        // ��������� ������ ��� �������� �����
            try
              Excel := GetActiveOleObject('Excel.Application');
              Excel.DisplayAlerts:=false;
              Workbooks := Excel.Workbooks;
              if Workbooks.Count=0 then
                 Excel.Application.Quit
              else
              for i := 1 to Workbooks.Count do
              begin
                Workbook := Workbooks.Item[i];
                if SameText(ExtractFileName(Workbook.FullName), st1) then
                begin
                    Workbook.Close(True);
                    Break;
                end;
              end;
              Workbooks := Excel.Workbooks;
              if Workbooks.Count=0 then
              begin
                 Excel.Application.Quit;
                 Excel.Quit;

//                 WinExec(PANsiChar('taskkill /F /IM EXCEL.EXE'), SW_HIDE);
                 RunProcessHideCmd('cmd.exe /c taskkill /F /IM EXCEL.EXE');

              end;

            except
              ShowMessage('������� ���� ��� ������� � ����� ������� ��� �� ������ ����"����. �������� ���� '+st1+' �� ��������� �����!!!');
              ExcelWorkbook.SaveAs(path);
              ExcelWorkbook.Close;
              MsExcel := null;
              path:='';
              cxTextEdit1.Text:='';

             // Excel.Free;
              exit;
            end;
      end;


        ExcelWorkbook.save;
        ExcelWorkbook.Close;
        MsExcel := null;

        CopyFile(PChar(pathtmp), PChar(path), false);

        DeleteFile(pathtmp);

        Form33.ADOQueryOBOR.Close;

        form2.Close;

        Application.ProcessMessages;


end;


procedure TForm27.CloseDataOnlySearchPosl;
var     MyFile: TFileStream;
  Excel: Variant;
  Workbooks: Variant;
  Workbook: Variant;
  FileInfo: TSHFileInfo;
    i:integer;
begin
          row:=0;

        ExcelWorkbook.Close;
        MsExcel := null;

        Form33.ADOQueryOBOR.Close;

        form2.Close;

        Application.ProcessMessages;


end;

procedure TForm27.CloseDataNotSave;
var     MyFile: TFileStream;
  Excel: Variant;
  Workbooks: Variant;
  Workbook: Variant;
  FileInfo: TSHFileInfo;
    i:integer;
begin
          row:=0;

          table.Close;
          table.Free;

          tobor.Close;
          tobor.Free;

          topl.Close;
          topl.Free;

         Sleep(100);

        ExcelWorkbook.Close;
        MsExcel := null;

        DeleteFile(pathtmp);

        Form33.ADOQueryOBOR.Close;

        form2.Close;

        Application.ProcessMessages;


end;


procedure TForm27.endlistexel;
var cmd:WideString;
    procParam: TStringList;
    proc,ColumnName,posl,nameposl1,nameposl,strs,strsum:string;


  Range: OleVariant;
  flrow,fl:boolean;
  rowa,ii,kk,p1,s1,m1,m2,m3:integer;
  sums,sumallvip,sumallproc,sumposl1,sumposl,sumvip,procent,allprocent,sumsum,sumavip,sumaproc:Double;
  Cell_1, Cell_2: OLEVariant;
  MyRange: OLEVariant;
begin

        form2.show;
        Form2.Label1.Caption:='���������� ������. ���������!!!';
        Application.ProcessMessages;
        m1:= maxcolposl;
        m2:=3;
        m3:=8;
        while m1>8 do
        begin
           ExcelWorkbook.WorkSheets[1].Cells[startROW,IBQueryBankCOL_END.Value+m3]:='������� '+IntToStr(m2);
           ExcelWorkbook.WorkSheets[1].Cells[startROW,IBQueryBankCOL_END.Value+m3+1]:='���� '+IntToStr(m2);
           inc(m2);
           m1:=m1-2;
           m3:=m3+2;
        end;


        maxcolposl:=maxcolposl+1;

     //   ExcelWorkbook.WorkSheets[1].Cells[startROW,IBQueryBankCOL_END.Value+10]:='����� ������� �� ��������';
        ExcelWorkbook.WorkSheets[1].Cells[startROW,IBQueryBankCOL_END.Value+maxcolposl+1]:='�������';
        ExcelWorkbook.WorkSheets[1].Cells[startROW,IBQueryBankCOL_END.Value+maxcolposl+2]:='���� �� ������';
        ExcelWorkbook.WorkSheets[1].Cells[startROW,IBQueryBankCOL_END.Value+maxcolposl+3]:='���� ������� � %';

        rowa:=startROW+1;

        while length(ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+maxcolposl+1])<>0 do
        begin
           ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+maxcolposl+1]:='';
           ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+maxcolposl+2]:='';
           ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+maxcolposl+3]:='';
           inc(rowa);
        end;

        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=endROW-1;
        Form2.cxProgressBar1.Position:=0;

        rowa:=startROW+1;
        flrow:=true;
           while flrow do
           begin

              Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
              Application.ProcessMessages;

              if rowa=endROW+1 then
              begin
                flrow:=false;
                Continue;
              end;


              strsum:=trim(ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_SUM.Value]);
              strs:=iif(Length(strsum)=0,'0',strsum);
              try
                 sumallvip:=MyStrToFloat(strs);
              except
                 begin
                 ShowMessage('������� � ��� '+strsum);
                 sumallvip:=0;
                 Form27.CloseDataNotSave;
                 exit;
                 end;
              end;
              strsum:=trim(ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+3]);
              strs:=iif(Length(strsum)=0,'0',strsum);
              try
                sumallproc:=StrToFloat(strs);
              except
                begin
                ShowMessage('������� � ��� '+strsum);
                sumallproc:=0;
                Form27.CloseDataNotSave;
                exit;
                end;
              end;

              if (sumallproc<>0) then
              begin
                nameposl1:=ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+4];
                sumposl1:=StrToFloat(ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+5]);
                if sumallproc=sumposl1 then
                   addanaliz(nameposl1,sumallvip,sumallproc)
                else
                begin
                  p1:=4;
                  s1:=5;
                  sumsum:=0;
                  allprocent:=0;
                  fl:=true;
                  while fl do
                  begin
                    nameposl:=ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+p1];
                    strs:=ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+s1];
                    if Length(nameposl)=0 then sumposl:=0
                    else sumposl:=StrToFloat(strs);
                    if Length(nameposl)<>0 then
                    begin
                      if sumallvip=sumallproc then
                         addanaliz(nameposl,sumposl,sumposl)
                      else
                      begin
                        procent:=(sumposl/sumallproc)*100;
                        allprocent:=allprocent+procent;
                        sumvip:=SimpleRoundTo((sumallvip/100)*procent,-2);
                        sumsum:=sumsum+sumvip;
                        strs:=ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+p1+2];
                        if Length(strs)=0 then
  //                      if (allprocent>=99) and (allprocent<=101) then
                        begin
                           if sumallvip-sumsum>=0 then
                              sumvip:=sumvip+(sumallvip-sumsum)
                           else
                              sumvip:=sumvip-(sumsum-sumallvip);

                           addanaliz(nameposl,sumvip,sumposl);
                        end
                        else addanaliz(nameposl,sumvip,sumposl);
                      end;
                    end
                    else fl:=false;

                    p1:=p1+2;
                    s1:=s1+2;
                  end;

                end;

              end;

             inc(rowa);
           end;
        sumavip:=0;
        sumaproc:=0;
        rowa:=startROW+1;
        strs:=ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+maxcolposl+1];
        while strs<>'' do
        begin
          strs:=ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+maxcolposl+1];
          sumavip:=sumavip+StrToFloat(ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+maxcolposl+2]);
          sumaproc:=sumaproc+StrToFloat(ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+maxcolposl+3]);
          inc(rowa);
          strs:=ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+maxcolposl+1];
        end;

        ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+maxcolposl+1]:='������';
        ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+maxcolposl+2]:=sumavip;
        ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+maxcolposl+3]:=sumaproc;

       // ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+1].Select;

        Cell_1:=ExcelWorkbook.WorkSheets[1].Cells[startROW+1,IBQueryBankCOL_END.Value+maxcolposl+1];

        Cell_2:=ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+maxcolposl+3];

        MyRange:=ExcelWorkbook.WorkSheets[1].Range[Cell_1, Cell_2];


        MyRange.Borders.LineStyle := xlContinuous;
//        MyRange.Borders[xlEdgeTop].LineStyle := xlContinuous;
//        MyRange.Borders[xlEdgeBottom].LineStyle := xlContinuous;
//        MyRange.Borders[xlEdgeRight].LineStyle := xlContinuous;

        Cell_1:=ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+maxcolposl+1];

        Cell_2:=ExcelWorkbook.WorkSheets[1].Cells[rowa,IBQueryBankCOL_END.Value+maxcolposl+3];

        MyRange:=ExcelWorkbook.WorkSheets[1].Range[Cell_1, Cell_2];

        MyRange.Font.Bold := True;


        Form2.Label1.Caption:='���������� �����. ���������!!!';
        Application.ProcessMessages;

          ExcelWorkbook.WorkSheets[1].Columns[IBQueryBankCOL_END.Value+1].Select;
          ExcelWorkbook.WorkSheets[1].UsedRange.Columns.AutoFit;


         CloseData;

         cmd:=Form1.PathFox+'foxprox.exe -t '+Form1.PathKvart+'imp_opl '+filepath+' '+Form1.PathKvart;
         ShellExecute(0, 'open', 'cmd.exe', PChar('/C '+cmd), nil, SW_HIDE);

        // WinExec(PANsiChar(cmd), SW_HIDE);

   //      RunProcessCmd(cmd);

//        MsExcel.Application.Quit;
//        MsExcel := null;
        Application.ProcessMessages;


      ShowMessage('������������ ��������');
      Form27.Enabled:=true;

end;



//procedure WaitProcessExit(const AProcess: TProcess);
//begin
//  while AProcess.Running do
//  begin
//    Application.ProcessMessages;
//    Sleep(100);
//  end;
//end;

procedure TForm27.RunProcessCmd(const ACommand:string);
var
  Process: TProcess;
  i:integer;
  cmd:string;
begin

//         cmd:=Form1.PathFox+'foxprox.exe -t '+Form1.PathKvart+'imp_opl '+filepath+' '+Form1.PathKvart;


  Process := TProcess.Create(nil);
  try
//     Process.CommandLine := 'c:\FPD26\FOXPROX.EXE';
//    Process.Options := [poUsePipes, poNoConsole];
    Process.Executable := 'cmd.exe';
    Process.Parameters.Add('/C');
    Process.Parameters.Add(ACommand);
//     for i := 0 to procParam.Count - 1 do
//       Process.Parameters.Add(procParam[i]);

//    Process.Executable := Form1.PathFox+'foxprox.exe';
//    Process.Parameters.Add(Form1.PathKvart+'imp_opl '+filepath+' '+Form1.PathKvart);
//    Process.Parameters.Add(ACommand);

    Process.Options := [poNoConsole, poWaitOnExit];
    Process.Execute;
    while Process.Running do
    begin
      Application.ProcessMessages;
      Sleep(100);
    end;
//    WaitProcessExit(Process);
  finally
    Process.Free;
  end;
end;


procedure TForm27.RunProcessHideCmd(const ACommand: string);
var
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
  ret: DWORD;
begin
  ZeroMemory(@StartupInfo, SizeOf(TStartupInfo));
  StartupInfo.cb := SizeOf(TStartupInfo);
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := SW_HIDE;

  if CreateProcess(nil, PWideChar(ACommand), nil, nil, False,
  CREATE_NO_WINDOW, nil, nil, StartupInfo, ProcessInfo) then
  begin
    // ������� ������� �������
    WaitForSingleObject(ProcessInfo.hProcess, INFINITE);
    // ������� ����������
    GetExitCodeProcess(ProcessInfo.hProcess, ret);
    CloseHandle(ProcessInfo.hProcess);
    CloseHandle(ProcessInfo.hThread);
  end
  else
  begin
    // ��������� ������
  end;
end;





procedure TForm27.cxButton1Click(Sender: TObject);
var i,ns,nstr,iii,i1,i2:integer;
    coli:integer;
    st:pchar;
    sss,str,strDate,str1,str2,str3:string;
    RegularExpression:TRegEx;
    Match : TMatch;
    MC: TMatchCollection;
    MyFile: TFileStream;
  Excel: Variant;
  Workbooks: Variant;
  Workbook: Variant;
  fileXL: OLEVariant;
  FileInfo: TSHFileInfo;
  vDateTime:TDate;
  Format:TFormatSettings;

begin




  if Row<>0 then
     exit;




       cxDateEdit1.Text:='';

       MemoLog.Text:='';
       cxTextEdit4.Text:='';
       cxTextEdit1.Text:='';
       Row:=0;

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

      try
        MyFile := TFileStream.Create(OpenDialog1.FileName, fmOpenRead or fmShareExclusive or fmShareDenyWrite);
        try
          // ���� ������ ��� ������ � ��� ����� ������������ �����
        finally
          MyFile.Free;
        end;
      except
           MyFile.Free;
        // ��������� ������ ��� �������� �����
            try
              Excel := GetActiveOleObject('Excel.Application');
              Excel.DisplayAlerts:=false;
              Workbooks := Excel.Workbooks;
              if Workbooks.Count=0 then
                 Excel.Application.Quit
              else
              for i := 1 to Workbooks.Count do
              begin
                Workbook := Workbooks.Item[i];
                if SameText(ExtractFileName(Workbook.FullName), st1) then
                begin
                    Workbook.Close(True);
                    Break;
                end;
              end;
              Workbooks := Excel.Workbooks;
              if Workbooks.Count=0 then
              begin
                 Excel.Application.Quit;
                 Excel.Quit;

//                 WinExec(PANsiChar('taskkill /F /IM EXCEL.EXE'), SW_HIDE);
                 RunProcessHideCmd('cmd.exe /c taskkill /F /IM EXCEL.EXE');

              end;

            except
              ShowMessage('������� ���� ��� ������� � ����� ������� ��� �� ������ ����"����. �������� ���� '+st1+' �� ��������� �����!!!');
              cxTextEdit1.Text:='';
              path:='';
             // Excel.Free;
              exit;
            end;
      end;


    MsExcel := CreateOleObject('Excel.Application');

//    for fileXL in MsExcel.ActiveWorkbook.Worksheets do
//    begin
//        fileXL.AutoFilterMode:=False;
//        fileXL.Names('_FilterDatabase').Delete;
//        Next;
//    End;

    //ExcelWorkbook:= ComObjGet(path);
    //    ExcelWorkbook.Workbooks.Add;
   // ExcelWorkbook.Workbooks.Open[OpenDialog1.FileName];

     // MsExcel.ActiveWorkbook.Names('_FilterDatabase').Delete();

   // MsExcel.Workbooks.Names.Item('_FilterDatabase').Delete;
//    MsExcel.ActiveWorkbook.Item('_FilterDatabase').Delete();

//    Sheets("data").Names("_FilterDatabase").Delete
//     .Names.Item("_FilterDatabase").Delete()
    ExcelWorkbook := MsExcel.Workbooks.Open[OpenDialog1.FileName];



//    IBQueryBank.First;
//    while not IBQueryBank.Eof do
//    begin
//       if  Pos(IBQueryBankRAH.Text,trim(ExcelWorkbook.WorkSheets[1].Cells[IBQueryBankSTR_POISK_RAH.Value,IBQueryBankCOL_POISK_RAH.Value]))<>0 then
//       begin
//           MC:=RegularExpression.Matches(ExcelWorkbook.WorkSheets[1].Cells[IBQueryBankSTR_DT_VIP.Value,IBQueryBankCOL_DT_VIP.Value],'[0-9]{2}[.]{1}[0-9]{2}[.]{1}[0-9]{4}',[roMultiLine]);//�������� ��������� ����������
//           for  i:=0 to MC.Count-1 do
//             begin
//              if i=0 then cxDateEdit1.Date:=StrToDate(MC.Item[i].Value);
//              if i=1 then cxDateEdit2.Date:=StrToDate(MC.Item[i].Value);
//             end;
//          cxTextEdit4.Text:=IBQueryBankNAIM.Text;
//       end;
//     IBQueryBank.Next;
//    end;


    IBQueryBank.Close;
    IBQueryBank.Open;



    IBQueryBank.First;
    while not IBQueryBank.Eof do
    begin
            RegularExpression := TRegEx.Create(IBQueryBankREGEXP_FILE.Value);
            Match := RegularExpression.Match(st1);
            if Match.Success then
            begin
//               vDateTime := StrToDate(Match.value,'yy.mm.dd');
               RegularExpression := TRegEx.Create(IBQueryBankREGEXP_DATE.Value);
               Match := RegularExpression.Match(st1);
               if Match.Success then
               begin
                 strDate:=Match.value;

                 Format := TFormatSettings.Create();
                 Format.ShortDateFormat:=IBQueryBankFORMAT_DATE_SEPARATOR.Value;

                 RegularExpression := TRegEx.Create('[^\w\s�-��-�]');
                 Match := RegularExpression.Match(IBQueryBankFORMAT_DATE_SEPARATOR.Value);
                 if Match.Success then
                 begin
                    str:=Match.value;
                    Format.DateSeparator:=Match.value[1];
                    vDateTime := StrToDate(strDate,Format);
                    cxDateEdit1.Date:=vDateTime;
                 end
                 else
                 begin
                   vDateTime := StrToDateNoDelimiter(strDate, [IBQueryBankFORMAT_DATE_SEPARATOR.Value]);
                   cxDateEdit1.Date:=vDateTime;

//                    str1:=Copy(strDate, 1, 2);
//                    str2:=Copy(strDate, 3, 2);
//                    str3:=Copy(strDate, 5, 4);

//                    cxDateEdit1.Date := SysUtils.EncodeDate(
//                      StrToInt(str3),
//                      StrToInt(str2),
//                      StrToInt(str1)
//                    );

//                    cxDateEdit1.Date := EncodeDate(
//                      StrToInt(Copy(strDate, pos('y',IBQueryBankFORMAT_DATE_SEPARATOR.Value), GetCountTextInStr(IBQueryBankFORMAT_DATE_SEPARATOR.Value,'y'))),
//                      StrToInt(Copy(strDate, pos('m',IBQueryBankFORMAT_DATE_SEPARATOR.Value), GetCountTextInStr(IBQueryBankFORMAT_DATE_SEPARATOR.Value,'m'))),
//                      StrToInt(Copy(strDate, pos('d',IBQueryBankFORMAT_DATE_SEPARATOR.Value), GetCountTextInStr(IBQueryBankFORMAT_DATE_SEPARATOR.Value,'d')))
//                    );
                 end;




                 cxTextEdit4.Text:=IBQueryBankNAIM.Text;
                 Break;
               end
               else
               begin
                 ShowMessage('�� ���� ������ ���� � ����� �����');
                 path:='';
                 cxTextEdit1.Text:='';

               end;



            end;

     IBQueryBank.Next;
    end;

    if  (Length(cxTextEdit4.Text)=0)then
       begin
         ShowMessage('�� �� ��������� �������!!!');
         path:='';
         cxTextEdit1.Text:='';
       end;





          ExcelWorkbook.Close;
          MsExcel.Application.Quit;
          MsExcel := null;


    //ExcelWorkbook := null;
  end;
end;


procedure TForm27.cxButton2Click(Sender: TObject);
var f1:boolean;
    stroka,strmes,tempDir, strtmp:string;
    dt1,dt2,i,pusto,kol:integer;
    f : TextFile;
    MyFile: TFileStream;
  Excel: Variant;
  Workbooks: Variant;
  Workbook: Variant;
  FileInfo: TSHFileInfo;
    RegularExpression:TRegEx;
    Match : TMatch;

begin

onlysearchposl:=0;
kolst:=0;
startROW:=0;
pusto:=0;
kol:=0;
//row:=0;
endROW:=0;
//error:=0;
maxcolposl:=0;




  if row<>0 then
     exit;

   row:=0;
   if Length(path)=0 then
   begin
     ShowMessage('������� ����');
     exit;
   end;

   tempDir:='c:\temp\';
//
//   if not DirectoryExists(tempDir) then
//   begin
//     try
//       mkdir(tempDir);
//     except
//              ShowMessage('�� ������� �������� ����� '+tempDir+' !!!');
//              cxTextEdit1.Text:='';
//              path:='';
//             // Excel.Free;
//              exit;
//     end;
//   end;

    if DirectoryExists('c:\temp') then
      filepath:='c:\temp\'
    else
    if DirectoryExists('c:\TEMP') then
      filepath:='c:\TEMP\'
    else
    if DirectoryExists(Form1.PathTMP) then
      filepath:=Form1.PathTMP+'\';

    pathtmp:=filepath+st1;

    if FileExists(pathtmp) then
    begin


      try
        MyFile := TFileStream.Create(pathtmp, fmOpenRead or fmShareExclusive or fmShareDenyWrite);
        try
          // ���� ������ ��� ������ � ��� ����� ������������ �����
        finally
          MyFile.Free;
          DeleteFile(pathtmp);

        end;
      except
           MyFile.Free;
        // ��������� ������ ��� �������� �����
            try
              Excel := GetActiveOleObject('Excel.Application');
              Excel.DisplayAlerts:=false;
              Workbooks := Excel.Workbooks;
              if Workbooks.Count=0 then
                 Excel.Application.Quit
              else
              for i := 1 to Workbooks.Count do
              begin
                Workbook := Workbooks.Item[i];
                if SameText(ExtractFileName(Workbook.FullName), st1) then
                begin
//                  if application.MessageBox('���� ��� ������� � Excel. �������� ���� ���������?','ϳ�����������',MB_YESNO)=IDYES then
//                  begin
                 //   Excel.DisplayAlerts:=false;

                    Workbook.Close(True);
                    //Excel.Free;
                    Break;
//                  end
//                  else
//                  begin
//                    cxTextEdit1.Text:='';
//                    path:='';
//                    exit;
//                  end;
                end;
              end;
              Workbooks := Excel.Workbooks;
              if Workbooks.Count=0 then
              begin
                 Excel.Application.Quit;
                 Excel.Quit;

                 WinExec(PANsiChar('taskkill /F /IM EXCEL.EXE'), SW_HIDE);
                 Sleep(1000);

              end;

            DeleteFile(pathtmp);

            except
              ShowMessage('������� ���� ��� ������� � ����� ������� ��� �� ������ ����"����. �������� ���� '+st1+' �� ��������� �����!!!');
              cxTextEdit1.Text:='';
              path:='';
             // Excel.Free;
              exit;
            end;
      end;

    end;


   try

       AssignFile(f, Form1.PathKvart+'\cur_date.mem');
       FileMode := fmOpenRead;
       Reset(f);
       Readln(f, stroka);
       strmes:=trim(Copy(stroka, 33, 2));
       CloseFile(f);
       dt2:=0;
       dt1:=StrToInt(strmes);

       if dt1=12 then dt2:=1
       else dt2:=dt1+1;


       if not ((dt1=MonthOf(cxDateEdit1.Date)) or (dt2=MonthOf(cxDateEdit1.Date))) then
       begin
           ShowMessage('���� ������� �� ������� ����� ������������');
           exit;
       end;


      CopyFile(PChar(path), PChar(pathtmp), false);


      CopyFile(PChar(Form1.PathKvart+'dbf\obor.dbf'), PChar(filepath+'\obor.dbf'), false);
      CopyFile(PChar(Form1.PathKvart+'dbf\wids.dbf'), PChar(filepath+'\wids.dbf'), false);
      CopyFile(PChar(Form1.PathKvart+'dbf\opl.dbf'), PChar(filepath+'\opltmp.dbf'), false);
      CopyFile(PChar(Form1.PathKvart+'dbf\opl.dbf'), PChar(filepath+'\opl.dbf'), false);

    Form33.ADOQueryOBOR.Close;
//    Form33.ADOQueryOBOR.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+filepath+';Mode=Read;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=16;Jet OLEDB:Database Locking Mode=0;Jet OLEDB:Global Partial Bulk Ops=2;';
//    Form33.ADOQueryOBOR.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Password="";Data Source=c:\temp\;Mode=ReadWrite;Jet OLEDB:Engine Type=16';
   // Form33.ADOQueryOBOR.ConnectionString:='Provider=MSDASQL.1;Persist Security Info=False;User ID=Admin;Data Source=dBASE Files;Mode=ReadWrite;Initial Catalog='+filepath;
    Form33.ADOQueryOBOR.ConnectionString:='Provider=MSDASQL.1;Persist Security Info=False;User ID=Admin;Data Source=dBASE Files;Mode=ReadWrite;Initial Catalog='+filepath;

    DeleteFile(filepath+'obor.mdx');
    DeleteFile(filepath+'wids.mdx');
    DeleteFile(filepath+'opltmp.mdx');

   try
    table:=TDbf.Create(self);
   // table.TableLevel := 25;
    table.TableName:=filepath+'opltmp.dbf';
    // table.ReadOnly:=false;
  //  table.Active:=true;
    table.Open;
    table.TryExclusive;
    table.CanModify;
    table.EmptyTable;
    table.PackTable;
//    table.OpenIndexFile('opl.cdx');

    topl:=TDbf.Create(self);
    topl.TableName:=filepath+'opl.dbf';
    topl.Open;

    tobor:=TDbf.Create(self);
    tobor.TableName:=filepath+'obor.dbf';
    tobor.Open;

    tobor.AddIndex('obor', 'schet', [ixCaseInsensitive]);

    twid:=TDbf.Create(self);
    twid.TableName:=filepath+'wids.dbf';
    twid.Open;

    twid.AddIndex('wids', 'wid', [ixCaseInsensitive]);

    //tobor.Free;
    twid.close;
    twid.Free;
   // table.Free;



//    table.Exclusive := True;
       except
       on E : Exception do
       begin
        messagedlg('������� ��� ���������� �� ���� �����!!! - '+E.Message,mtError,[mbCancel],0);
        exit;
       end;
   end;





    MsExcel := CreateOleObject('Excel.Application');
    //    ExcelWorkbook.Workbooks.Add;
    ExcelWorkbook:= MsExcel.Workbooks.Open[pathtmp];

   Form2.Label1.Caption:='����������� �����';
        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=0;
        Form2.cxProgressBar1.Position:=0;
   Application.ProcessMessages;
   IBPERIOD.Open;
   IBQueryWidAll.Open;

//        ExcelWorkbook.Visible := True;

  // Form27.Enabled:=false;
   Form2.Show;

   f1:=true;
    IBQueryBank.First;
    while not IBQueryBank.Eof do
    begin
            RegularExpression := TRegEx.Create(IBQueryBankREGEXP_FILE.Value);
            Match := RegularExpression.Match(st1);
            if Match.Success then
               Break;

    IBQueryBank.Next;
    end;

    IBQueryVipiska.close;
    IBQueryVipiska.SQL.Text:='select *  from SPR_VIPISKA where vidpoisk=:vid';
    IBQueryVipiska.ParamByName('vid').AsString:='posl';
    IBQueryVipiska.open;
    regallposl:='(';
    while not IBQueryVipiska.Eof do
    begin
      if IBQueryVipiskaPOISK.AsString<>'' then
         regallposl:=regallposl+IBQueryVipiskaPOISK.AsString+'{1}|';

    IBQueryVipiska.Next;
    end;
    regallposl:=Copy(regallposl,1,Length(regallposl)-1);
    regallposl:=regallposl+')';


        kolst:=1;

        //����� �������

        f1:=true;
        startROW:=0;

           while f1 do
            begin
            if trim(IBQueryBankSTR_PRIZN_STARTDATA.Value)=trim(ExcelWorkbook.WorkSheets[1].Cells[kolst,1]) then
            begin
               startROW:=kolst;
               f1:=False
            end
            else kolst:=kolst+1;

              if kolst=3000 then
              begin
               ShowMessage('ʳ������ ������ ������� ������. �� �������� ������� �����!!!');
               CloseDataNotSave;
               exit;
              end;

          end;

        if startROW=0 then
        begin
          ShowMessage('������� ����� �� ��������');
               CloseDataNotSave;
               exit;
        end;

        kolst:=startROW+1;
        //���� �����
        f1:=true;
        pusto:=0;

        if Length(IBQueryBankSTR_PRIZN_ENDDATA.Value)<>0 then
          while f1 do
            begin

            if pos(IBQueryBankSTR_PRIZN_ENDDATA.Value,ExcelWorkbook.WorkSheets[1].Cells[kolst,IBQueryBankCOL_POISK_ENDDATA.Value])<>0 then
               f1:=False
            else
              begin
              //ExcelWorkbook.WorkSheets[1].Cells[kolst,9]:='';
              kolst:=kolst+1;
              end;

              if kolst=3000 then
              begin
               ShowMessage('ʳ������ ������ ������� ������. �� �������� ����� �����!!!');
               CloseDataNotSave;
               exit;
              end;

          end
          else
          while f1 do
          begin

            if (Length(ExcelWorkbook.WorkSheets[1].Cells[kolst,IBQueryBankCOL_POISK_ENDDATA.Value])=0) then
            begin
              pusto:=pusto+1;
              kolst:=kolst+1
            end
            else
            begin
              //ExcelWorkbook.WorkSheets[1].Cells[kolst,9]:='';
              kolst:=kolst+1;
              pusto:=0;
            end;

            if pusto=3 then
               f1:=False;

              if kolst=3000 then
              begin
               ShowMessage('ʳ������ ������ ������� ������. �� �������� ����� �����!!!');
               CloseDataNotSave;
               exit;
              end;

          end;



       MsExcel.DisplayAlerts := False;

       endROW:=kolst-pusto;


       ExcelWorkbook.WorkSheets[1].Cells[startROW,IBQueryBankCOL_END.Value+1]:='��������� �������';
       ExcelWorkbook.WorkSheets[1].Cells[startROW,IBQueryBankCOL_END.Value+2]:='��.�������';
       ExcelWorkbook.WorkSheets[1].Cells[startROW,IBQueryBankCOL_END.Value+3]:='���� ������ � %';
       ExcelWorkbook.WorkSheets[1].Cells[startROW,IBQueryBankCOL_END.Value+4]:='������� 1';
       ExcelWorkbook.WorkSheets[1].Cells[startROW,IBQueryBankCOL_END.Value+5]:='���� 1';
       ExcelWorkbook.WorkSheets[1].Cells[startROW,IBQueryBankCOL_END.Value+6]:='������� 2';
       ExcelWorkbook.WorkSheets[1].Cells[startROW,IBQueryBankCOL_END.Value+7]:='���� 2';

       ExcelWorkbook.WorkSheets[1].columns[IBQueryBankCOL_END.Value+2].NumberFormat:='@';
       ExcelWorkbook.WorkSheets[1].columns[IBQueryBankCOL_END.Value+3].NumberFormat:='0,00';
       ExcelWorkbook.WorkSheets[1].columns[IBQueryBankCOL_END.Value+5].NumberFormat:='0,00';
       ExcelWorkbook.WorkSheets[1].columns[IBQueryBankCOL_END.Value+7].NumberFormat:='0,00';


      Application.ProcessMessages;

        MsExcel.Visible := False;
        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=endROW-1;
        Form2.cxProgressBar1.Position:=0;

        row:=startROW;
        newpl:=true;
        kol:=IBQueryBankCOL_END.Value;
        f1:=true;


        while f1 do
        begin
           kol:=kol+1;
           strtmp:=ExcelWorkbook.WorkSheets[1].Cells[startROW,kol];
           if strtmp='�������' then ExcelWorkbook.WorkSheets[1].Columns[kol].delete;
           strtmp:=ExcelWorkbook.WorkSheets[1].Cells[startROW,kol];
           if strtmp='���� �� ������' then ExcelWorkbook.WorkSheets[1].Columns[kol].delete;
           strtmp:=ExcelWorkbook.WorkSheets[1].Cells[startROW,kol];
           if strtmp='���� ������� � %' then ExcelWorkbook.WorkSheets[1].Columns[kol].delete;
           if length(ExcelWorkbook.WorkSheets[1].Cells[startROW,kol])=0 then
           begin
             maxcolposl:=kol-IBQueryBankCOL_END.Value;
             f1:=false;
           end;

        end;


        f1:=true;
        while f1 do
        begin
           kol:=kol+1;
           if length(ExcelWorkbook.WorkSheets[1].Cells[startROW,kol])=0 then
           begin
             maxcolposl:=kol-IBQueryBankCOL_END.Value;
             f1:=false;
           end;
        end;


   except
               on E : Exception do
               begin
                messagedlg('�������!!! - '+E.Message,mtError,[mbCancel],0);
                CloseDataNotSave;
                exit;
               end;
   end;

//        endlistexel;

        startlistexel;

end;






procedure TForm27.cxButton3Click(Sender: TObject);
var sch,sql,str,sp,dtstr,posl2:string;
    RegularExpression : TRegEx;
    Match : TMatch;
    MC: TMatchCollection;
    k,position:integer;
   f1:boolean;
    stroka,strmes,tempDir:string;
    dt1,dt2,i,pusto:integer;
    f : TextFile;
    MyFile: TFileStream;
  Excel: Variant;
  Workbooks: Variant;
  Workbook: Variant;
  FileInfo: TSHFileInfo;
begin

onlysearchposl:=1;

  if row<>0 then
     exit;

   row:=0;
   if Length(path)=0 then
   begin
     ShowMessage('������� ����');
     exit;
   end;

   tempDir:='c:\temp\';



    MsExcel := CreateOleObject('Excel.Application');
    //    ExcelWorkbook.Workbooks.Add;
    ExcelWorkbook:= MsExcel.Workbooks.Open[path];

   Form2.Label1.Caption:='����������� �����';
        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=0;
        Form2.cxProgressBar1.Position:=0;
   Application.ProcessMessages;
   IBPERIOD.Open;
   IBQueryWidAll.Open;

//        ExcelWorkbook.Visible := True;

  // Form27.Enabled:=false;
   Form2.Show;

   f1:=true;
    IBQueryBank.First;
    while not IBQueryBank.Eof do
    begin
       if  Pos(IBQueryBankRAH.Text,trim(ExcelWorkbook.WorkSheets[1].Cells[IBQueryBankSTR_POISK_RAH.Value,IBQueryBankCOL_POISK_RAH.Value]))<>0 then
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
      if IBQueryVipiskaPOISK.AsString<>'' then
         regallposl:=regallposl+IBQueryVipiskaPOISK.AsString+'{1}|';

    IBQueryVipiska.Next;
    end;
    regallposl:=Copy(regallposl,1,Length(regallposl)-1);
    regallposl:=regallposl+')';


        kolst:=1;

        //����� �������

        f1:=true;
        startROW:=0;

           while f1 do
            begin
            if trim(ExcelWorkbook.WorkSheets[1].Cells[kolst,1])=IBQueryBankSTR_PRIZN_STARTDATA.Value then
            begin
               startROW:=kolst;
               f1:=False
            end
            else kolst:=kolst+1;

              if kolst=3000 then
              begin
               ShowMessage('ʳ������ ������ ������� ������. �� �������� ������� �����!!!');
               CloseDataNotSave;
               exit;
              end;

          end;

        if startROW=0 then
        begin
          ShowMessage('������� ����� �� ��������');
               CloseDataNotSave;
               exit;
        end;

        kolst:=startROW+1;
        //���� �����
        f1:=true;
        pusto:=0;

        if Length(IBQueryBankSTR_PRIZN_ENDDATA.Value)<>0 then
          while f1 do
            begin

            if pos(IBQueryBankSTR_PRIZN_ENDDATA.Value,ExcelWorkbook.WorkSheets[1].Cells[kolst,IBQueryBankCOL_POISK_ENDDATA.Value])<>0 then
               f1:=False
            else
              begin
              //ExcelWorkbook.WorkSheets[1].Cells[kolst,9]:='';
              kolst:=kolst+1;
              end;

              if kolst=3000 then
              begin
               ShowMessage('ʳ������ ������ ������� ������. �� �������� ����� �����!!!');
               CloseDataNotSave;
               exit;
              end;

          end
          else
          while f1 do
          begin

            if (Length(ExcelWorkbook.WorkSheets[1].Cells[kolst,IBQueryBankCOL_POISK_ENDDATA.Value])=0) then
            begin
              pusto:=pusto+1;
              kolst:=kolst+1
            end
            else
            begin
              //ExcelWorkbook.WorkSheets[1].Cells[kolst,9]:='';
              kolst:=kolst+1;
              pusto:=0;
            end;

            if pusto=3 then
               f1:=False;

              if kolst=3000 then
              begin
               ShowMessage('ʳ������ ������ ������� ������. �� �������� ����� �����!!!');
               CloseDataNotSave;
               exit;
              end;

          end;



       MsExcel.DisplayAlerts := False;

       endROW:=kolst-pusto;

      Application.ProcessMessages;

        MsExcel.Visible := False;
        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=endROW-1;
        Form2.cxProgressBar1.Position:=0;

        row:=startROW;
        newpl:=true;

        startlistonlysearchposl;


end;

procedure TForm27.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Row<>0 then
     exit;

end;

procedure TForm27.FormCreate(Sender: TObject);
begin
strList := TStringList.Create;
end;

procedure TForm27.startlistexel;
var sch,sql,str,strtmp,sp,dtstr,posl2:string;
    RegularExpression : TRegEx;
    Match : TMatch;
    MC: TMatchCollection;
    k,position:integer;
begin
   fl:=true;
   Timer1.Enabled:=False;
   Form2.Visible:=true;
   while fl do
   begin

            row:=row+1;
            if row=endROW+1 then
            begin
              fl:=false;
              endlistexel;
              exit;
            end;
      try
//          if newpl then
//          begin
            Form33.cxTextEdit1.Clear;
            Form33.Memo1.Clear;
            Form33.cxCalcEdit1.Clear;
            Form33.cxCalcEdit2.Clear;
            Form33.cxDateEdit1.Clear;
            Form33.cxLabel1.Clear;
            Form33.CheckBox1.Checked:=false;
            Form33.CheckBox2.Checked:=false;
            Form33.CheckBox2.Visible:=false;
            Form33.cxCalcEdit1.Properties.ReadOnly:=true;

            Form33.ADOQueryOBOR.Close;
//          end;
          StrList.Clear;
          err:=false;
          Form33.cxLabel1.Caption:='';

          Form2.cxProgressBar1.Position:=row;
          Application.ProcessMessages;

          sch:='';
          strprizn:=ExcelWorkbook.WorkSheets[1].Cells[Row,IBQueryBankCOL_PRIZN.Value];

          Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
          Application.ProcessMessages;

          if (not IBQueryBankCOL_DOK.IsNull) and (IBQueryBankCOL_DOK.Value<>0) then
             if Length(ExcelWorkbook.WorkSheets[1].Cells[Row,IBQueryBankCOL_DOK.Value])=0 then Continue;  //� ��������� �� ��������

          if trim(ExcelWorkbook.WorkSheets[1].Cells[row,IBQueryBankCOL_SUM.Value])='' then Continue;    //���� �� ��������


          if Pos('���������',ExcelWorkbook.WorkSheets[1].Cells[Row,IBQueryBankCOL_END.Value+1])<>0 then Continue; //���� ����� ��������� �� ������� �� ����� �����



          Form27.ExcelWorkbook.WorkSheets[1].Cells[Form27.Row,Form27.IBQueryBankCOL_END.Value+1]:='';
          Form27.ExcelWorkbook.WorkSheets[1].Cells[Form27.Row,Form27.IBQueryBankCOL_END.Value+2]:='';
          Form27.ExcelWorkbook.WorkSheets[1].Cells[Form27.Row,Form27.IBQueryBankCOL_END.Value+3]:='';
          Form27.ExcelWorkbook.WorkSheets[1].Cells[Form27.Row,Form27.IBQueryBankCOL_END.Value+4]:='';
          Form27.ExcelWorkbook.WorkSheets[1].Cells[Form27.Row,Form27.IBQueryBankCOL_END.Value+5]:='';
          Form27.ExcelWorkbook.WorkSheets[1].Cells[Form27.Row,Form27.IBQueryBankCOL_END.Value+6]:='';
          Form27.ExcelWorkbook.WorkSheets[1].Cells[Form27.Row,Form27.IBQueryBankCOL_END.Value+7]:='';

          //����� ����. �������



          if (not IBQueryBankCOL_RAH.IsNull) and (IBQueryBankCOL_RAH.Value<>0) then
          begin
             str:= Form27.ExcelWorkbook.WorkSheets[1].Cells[Form27.Row,IBQueryBankCOL_RAH.Value];
             if Length(str)<>0 then
               Form33.cxTextEdit1.Text:=trim(str);
          end;

          if Form33.cxTextEdit1.Text='' then
          begin
            Match:=RegularExpression.Match(LowerCase(strprizn),'[0-9]{8}[�-�a-z]?',[]);
            if Match.Success then
               Form33.cxTextEdit1.Text:=trim(Match.value)
            else
            begin
              Match:=RegularExpression.Match(LowerCase(strprizn),'[0-9]{7}[�-�a-z]?',[]);
              if Match.Success then
                 Form33.cxTextEdit1.Text:=trim(Match.value)
              else
                 Form33.cxTextEdit1.Text:=' ';
            end;
          end;







          if trim(Form33.cxTextEdit1.Text)='' then
          begin
            Form33.cxLabel1.Caption:='��.������� �� ��������!';
            Form33.cxTextEdit1.Properties.ReadOnly:=false;
            //Form33.cxTextEdit1.SetFocus;
            err:=true;
          end;


          //����� ������

          strList.Clear;

          if (not IBQueryBankCOL_CODPOSL.IsNull) and (IBQueryBankCOL_CODPOSL.Value<>0) then
          begin
            str:=trim(Form27.ExcelWorkbook.WorkSheets[1].Cells[Form27.Row,IBQueryBankCOL_CODPOSL.Value]);
            if Length(str)<>0 then
            begin
              strList.Add(str);
              SearchAllPosl;
            end;
          end
          else

          if strList.Count=0 then
          begin
            Match:=RegularExpression.Match(LowerCase(strprizn),LowerCase(regallposl),[roIgnoreCase]);
            if not Match.Success then
            begin
              Form33.cxLabel1.Caption:=Form33.cxLabel1.Caption+'������ � ���������� �� ��������!!!';
              err:=true;
             // strList[0]:='';
            end
            else
            begin
              SearchPosl(strprizn);
              SearchAllPosl;
            end;
          end;


         SearchSum;

         // summa:=0.00;

         if Pos('��������', IBQueryBankNAIM.Text)>0 then
         begin
         strtmp:=ExcelWorkbook.WorkSheets[1].Cells[row,IBQueryBankCOL_DT.Value];
         if Pos('���������', LowerCase(strtmp))>0 then
              begin
              strtmp:=ExcelWorkbook.WorkSheets[1].Cells[row+2,IBQueryBankCOL_DT.Value];
                 if Pos('�����������', LowerCase(strtmp))>0 then
                 begin
                    Match:=RegularExpression.Match(LowerCase(strtmp),'(\d{2}\.\d{2}\.\d{4})',[roIgnoreCase]);
                    if Match.Success then
                     begin
                         dtstr:=Match.value;
                         dt:=strtodate(dtstr);
                     end;
                 end;
              end;
         end
         else
         begin
         dtstr:=ExcelWorkbook.WorkSheets[1].Cells[row,IBQueryBankCOL_DT.Value];
//          dtstr:=formatdatetime('ddmmyyyy', strtodate(ExcelWorkbook.WorkSheets[1].Cells[I,IBQueryBankCOL_DT.Value]));
          dt:=strtodate(ExcelWorkbook.WorkSheets[1].Cells[row,IBQueryBankCOL_DT.Value]);

         end;






          //  Form33.cxLabel1.Caption:=errmess;
//            Form33.cxTextEdit1.Text:=sch;
            Form33.Memo1.Text:=strprizn;

            Form33.cxDateEdit1.Date:=dt;

            if (not IBQueryBankCOL_KONTR.IsNull) and (IBQueryBankCOL_KONTR.Value<>0) then
                Form33.Memo2.Text:=ExcelWorkbook.WorkSheets[1].Cells[row,IBQueryBankCOL_KONTR.Value];

            if CheckBox2.Checked then
            begin
              if err then
              begin
                Form33.Show;
                fl:=false;
              end
              else
              begin
                addopl;
              end;
            end
            else
            begin
                Form33.Show;
                fl:=false;
            end;
      except
               on E : Exception do
               begin
                messagedlg('�������!!! - '+E.Message + #13#10 + ' ��� ���� ���������� �� �������! �� ���� ���� ���������',mtError,[mbCancel],0);
                endlistexel;
              //  Form27.CloseDataOnlySearchPosl;
                exit;
               end;


      end;




   end;

end;


procedure TForm27.startlistonlysearchposl;
var sch,sql,str,sp,dtstr,posl2:string;
    RegularExpression : TRegEx;
    Match : TMatch;
    MC: TMatchCollection;
    k,position:integer;
begin
   fl:=true;
   Timer1.Enabled:=False;
   Form2.Visible:=true;
   while fl do
   begin

            row:=row+1;
            if row=endROW+1 then
            begin
              fl:=false;
              CloseDataOnlySearchPosl;
              exit;
            end;

//          if newpl then
//          begin
            Form33.cxTextEdit1.Clear;
            Form33.Memo1.Clear;
            Form33.cxCalcEdit1.Clear;
            Form33.cxCalcEdit2.Clear;
            Form33.cxDateEdit1.Clear;
            Form33.cxLabel1.Clear;
            Form33.CheckBox1.Checked:=false;
            Form33.CheckBox2.Checked:=false;
            Form33.CheckBox2.Visible:=false;
            Form33.cxCalcEdit1.Properties.ReadOnly:=true;

            Form33.ADOQueryOBOR.Close;
//          end;
          StrList.Clear;
          err:=false;
          Form33.cxLabel1.Caption:='';

          Form2.cxProgressBar1.Position:=row;
          Application.ProcessMessages;

          sch:='';
          strprizn:=ExcelWorkbook.WorkSheets[1].Cells[Row,IBQueryBankCOL_PRIZN.Value];

          Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
          Application.ProcessMessages;

          if (not IBQueryBankCOL_DOK.IsNull) and (IBQueryBankCOL_DOK.Value<>0) then
            if Length(ExcelWorkbook.WorkSheets[1].Cells[Row,IBQueryBankCOL_DOK.Value])=0 then Continue;  //� ��������� �� ��������

         // if Pos('���������',ExcelWorkbook.WorkSheets[1].Cells[Row,IBQueryBankCOL_END.Value+1])<>0 then Continue; //���� ����� ��������� �� ������� �� ����� �����
          if trim(ExcelWorkbook.WorkSheets[1].Cells[row,IBQueryBankCOL_SUM.Value])='' then
          begin
           // ExcelWorkbook.WorkSheets[1].Cells[Row,IBQueryBankCOL_END.Value+1]:='���������';
            Continue;
          end;

          //����� ����. �������



          Form33.Memo1.Text:=strprizn;


          Match:=RegularExpression.Match(LowerCase(strprizn),LowerCase(regallposl),[roIgnoreCase]);
          if not Match.Success then
          begin

            Form33.cxLabel1.Caption:=Form33.cxLabel1.Caption+'������ � ���������� �� ��������!!!';
            err:=true;
           // strList[0]:='';
          end;




            if CheckBox2.Checked then
            begin
              if err then
              begin
                Form33.Show;
                fl:=false;
              end;
            end
            else
            begin
                Form33.Show;
                fl:=false;
            end;





   end;

end;



procedure TForm27.Timer1Timer(Sender: TObject);
begin
//  Timer1.Enabled:=false;
//  row:=row+1;
  if onlysearchposl=0 then
     startlistexel;

  if onlysearchposl=1 then
     startlistonlysearchposl;


end;

procedure TForm27.addopl;
var s,s2,s3,s4,s5,sss,schet,strobr:string;
    RegularExpression : TRegEx;
    Match : TMatch;
    DosEncoding: TEncoding;
    WindowsEncoding: TEncoding;
    DosData: TBytes;
    x:TArray<Byte>;
    error,countsum:integer;
    sum1,sum2:Currency;
    sum11,sum22:Double;

begin

          Form33.cxLabel1.Caption:='';
          if Form33.ADOQueryOBOR.RecordCount=0 then
          begin
              Form33.cxLabel1.Caption:='�������� ������� �� ��������!!!';
              Form33.Show;
              fl:=false;
              exit;
          end;



          if Trim(FloatToStr(Form33.cxGridDBTableView1.DataController.Summary.FooterSummaryValues[3]))<> Trim(FloatToStr(Form33.cxCalcEdit1.Value)) then
          begin
            Form33.cxLabel1.Caption:='C��� ������ ����������� �� ���� ������� �������!!!';
            Form33.Show;
            fl:=false;
            exit;
          end;


          if (Form33.cxGridDBTableView1.DataController.Summary.FooterSummaryValues[3])=0 then
          begin
            Form33.cxLabel1.Caption:='C��� ������ �� ���� ���� 0!!!';
            Form33.Show;
            fl:=false;
            exit;
          end;

          if (not IBQueryBankCOL_EDRPOU.IsNull) and (IBQueryBankCOL_EDRPOU.Value<>0) and (Pos(IBQueryBankSTR_EDRPOU.Value,trim(ExcelWorkbook.WorkSheets[1].Cells[row,IBQueryBankCOL_EDRPOU.Value]))>0) then
          begin
             if Form33.cxGridDBTableView1.DataController.Summary.FooterSummaryValues[3]<=Form33.cxCalcEdit2.Value then
             begin
                Form33.cxLabel1.Caption:=Form33.cxLabel1.Caption+'��� ��������� �������� ���� ������ ������� ���� ����� ��� � ���� �������!!!';
                Form33.Show;
                fl:=false;
                exit;
             end;

          end;


          if (Form33.cxGridDBTableView1.DataController.Summary.FooterSummaryValues[1])=0 then
          begin
            Form33.cxLabel1.Caption:='�� ��������� ����� ������� ��� ������!!!';
            Form33.Show;
            fl:=false;
            exit;
          end;

          if  DateToStr(Form33.cxDateEdit1.Date)='' then
          begin
            Form33.cxLabel1.Caption:='�� ��������� ���� ������!!!';
            Form33.Show;
            fl:=false;
            exit;
          end;

          Form33.ADOQueryOBOR.First;
          while not Form33.ADOQueryOBOR.Eof do
          begin
            if (Form33.ADOQueryOBORch.Value=1) and (Form33.ADOQueryOBORsumpl.Value=0) then
            begin
              Form33.cxLabel1.Caption:='������� ������� '+Form33.ADOQueryOBORnaim.Value+' ��� ����!!!';
              Form33.Show;
              fl:=false;
              exit;
            end;
          Form33.ADOQueryOBOR.next;
          end;

          Form33.ADOQueryOBOR.First;
          while not Form33.ADOQueryOBOR.Eof do
          begin
            if (Form33.ADOQueryOBORch.Value=0) and (Form33.ADOQueryOBORsumpl.Value<>0) then
            begin
              Form33.cxLabel1.Caption:='���� �, � ������� '+Form33.ADOQueryOBORnaim.Value+' �� �������!!!';
              Form33.Show;
              fl:=false;
              exit;
            end;
          Form33.ADOQueryOBOR.next;
          end;

          error:=0;
          if not Form33.CheckBox2.Checked then
          begin
            topl.First;
            if topl.Locate('schet;dt;opl',VarArrayOf([trim(Form33.cxTextEdit1.Text),DateToStr(Form33.cxDateEdit1.Date),Form33.cxGridDBTableView1.DataController.Summary.FooterSummaryValues[3]]),[loPartialKey]) then
            begin
              Form33.ADOQueryOBOR.First;
              while not Form33.ADOQueryOBOR.Eof do
              begin
                if (Form33.ADOQueryOBORch.Value=1) and (Form33.ADOQueryOBORsumpl.Value<>0) then
                begin
                  if topl.FieldByName('opl_'+Form33.ADOQueryOBORwid.AsString).AsFloat=Form33.ADOQueryOBORsumpl.AsFloat then
                  begin
                     Form33.cxLabel1.Caption:=Form33.cxLabel1.Caption+'����� �� ������� '+trim(Form33.cxTextEdit1.Text)+' �� '+DateToStr(Form33.cxDateEdit1.Date)+' �����, �� ������ '+Form33.ADOQueryOBORnaim.Value+' � ��� '+CurrToStr(Form33.ADOQueryOBORsumpl.Value)+' ��� ����!';
                     error:=error+1;
                  end;
                end;
              Form33.ADOQueryOBOR.Next;
              end;
            end;
          end;



           //   strobr:='rah='+trim(Form33.cxTextEdit1.Text)+';';


          if error>0 then
          begin

             Form33.Show;
             Form33.CheckBox2.Visible:=true;
             fl:=false;
             exit;
          end;


          strobr:='';

          schet:=trim(Form33.cxTextEdit1.Text);


//          try
//          table:=TDbf.Create(self);
//          table.TableName:=Form1.PathKvart+'dbf\opl.dbf';
//          table.Open;
//          table.CanModify;
//        //  table.OpenIndexFile(Form1.PathKvart+'dbf\opl.cdx');
//               except
//               on E : Exception do
//               begin
//                messagedlg('������� ��� ���������� �� ���� �����!!! - '+E.Message,mtError,[mbCancel],0);
//                table.Close;
//                table.Free;
//                endlistexel;
//                exit;
//               end;
//          end;


              table.Append;
              RegularExpression := TRegEx.Create('[�-�]');
              Match := RegularExpression.Match(trim(Form33.cxTextEdit1.Text));
              if Match.Success then
                begin
                   s2:=StrAnsiToOem(RightStr(trim(Form33.cxTextEdit1.Text),1));
                   table.FieldByName('schet').Value:=LeftStr(trim(Form33.cxTextEdit1.Text),Length(trim(Form33.cxTextEdit1.Text))-1)+s2;
                end
                else
                   table.FieldByName('schet').Value:=trim(Form33.cxTextEdit1.Text);

               Form33.ADOQueryOBOR.First;
                while not Form33.ADOQueryOBOR.Eof do
                begin
                  if (Form33.ADOQueryOBORch.Value=1) and (Form33.ADOQueryOBORsumpl.Value<>0) then
                  begin
                    table.FieldByName('opl_'+Form33.ADOQueryOBORwid.AsString).AsFloat:=Form33.ADOQueryOBORsumpl.AsFloat;

                   if tobor.Locate('schet;wid',VarArrayOf([Form33.ADOQueryOBORschet.Value,Form33.ADOQueryOBORwid.Value]),[loPartialKey]) then
                   begin
                    tobor.Edit;
                    tobor.FieldByName('sal').AsFloat:=tobor.FieldByName('sal').AsFloat-Form33.ADOQueryOBORsumpl.AsFloat;
                    tobor.post;
                   end;
                  end;

                Form33.ADOQueryOBOR.Next;
                end;



          table.FieldByName('dt').Value:=Form33.cxDateEdit1.Date;
          table.FieldByName('pach').Value:=DayOf(Form33.cxDateEdit1.Date);
          table.FieldByName('opl').Value:=Form33.cxGridDBTableView1.DataController.Summary.FooterSummaryValues[3];
          if (not IBQueryBankCOL_DOK.IsNull) and (IBQueryBankCOL_DOK.Value<>0) then
             table.FieldByName('doc').Value:=ExcelWorkbook.WorkSheets[1].Cells[row,IBQueryBankCOL_DOK.Value];
          table.post;


//          if Form33.ADOQueryOBOR.Locate('schet;wid',VarArrayOf([trim(Form33.cxTextEdit1.Text),]),[]) then


        //  table.UpdateIndexDefs;
//          table.RepageIndexFile(Form1.PathKvart+'dbf\opl.cdx');
//          table.Close;
//          table.Free;

            ExcelWorkbook.WorkSheets[1].Cells[Row,IBQueryBankCOL_END.Value+2]:=trim(Form33.cxTextEdit1.Text);
            ExcelWorkbook.WorkSheets[1].Cells[Row,IBQueryBankCOL_END.Value+3]:=Form33.cxGridDBTableView1.DataController.Summary.FooterSummaryValues[3];


            countsum:=3;
              Form33.ADOQueryOBOR.first;
                while not Form33.ADOQueryOBOR.Eof do
                begin
                  if (Form33.ADOQueryOBORch.Value=1) and (Form33.ADOQueryOBORsumpl.Value<>0) then
                  begin
                    countsum:=countsum+1;
                    ExcelWorkbook.WorkSheets[1].Cells[Row,IBQueryBankCOL_END.Value+countsum]:=Form33.ADOQueryOBORnaim.AsString;
                    countsum:=countsum+1;
                    ExcelWorkbook.WorkSheets[1].Cells[Row,IBQueryBankCOL_END.Value+countsum]:=Form33.ADOQueryOBORsumpl.AsFloat;
                    if countsum>maxcolposl then maxcolposl:=countsum;
                  end;
                Form33.ADOQueryOBOR.Next;
                end;


          ExcelWorkbook.WorkSheets[1].Cells[Row,IBQueryBankCOL_END.Value+1]:='���������';

//          ExcelWorkbook.save;
          if Form33.Showing then
          begin
            Form33.closeform:=1;
            Form33.close;
          end;
end;


function TForm27.StrAnsiToOem(const S: AnsiString): AnsiString;
begin
  SetLength(Result, Length(S));
  AnsiToOemBuff(@S[1], @Result[1], Length(S));
end;

function TForm27.SearchSchet(schet:string):string;
var s,sql:string;
    RegularExpression : TRegEx;
    Match : TMatch;
begin
            s:=RightStr(schet,1);
            Match:=RegularExpression.Match(LowerCase(s),'\b[a-z]\b',[roIgnoreCase]);
            if Match.Success then
            begin
              if LowerCase(s)='a' then schet:=LeftStr(schet,Length(schet)-1)+'�';
              if LowerCase(s)='o' then schet:=LeftStr(schet,Length(schet)-1)+'�';
              if LowerCase(s)='c' then schet:=LeftStr(schet,Length(schet)-1)+'�';
              if LowerCase(s)='p' then schet:=LeftStr(schet,Length(schet)-1)+'�';
              if LowerCase(s)='k' then schet:=LeftStr(schet,Length(schet)-1)+'�';
              if LowerCase(s)='x' then schet:=LeftStr(schet,Length(schet)-1)+'�';
              if LowerCase(s)='m' then schet:=LeftStr(schet,Length(schet)-1)+'�';
            end;

            sql:='select wids.wid, wids.naim, wids.abonpl, obor.fio, obor.schet, obor.sal, 0 as ch, su_dolg as sumpl from wids,obor where wids.wid=obor.wid and obor.schet='''+trim(schet)+''' order by wids.npp';
            Form33.ADOQueryOBOR.Close;
            Form33.ADOQueryOBOR.SQL.Clear;
            Form33.ADOQueryOBOR.SQL.Append(sql);

//            Form33.ADOQueryOBOR.Parameters.ParamByName('sch').Value:=trim(schet);
            Form33.ADOQueryOBOR.Open;

//            Form33.ADOQueryOBOR.FetchAll;
            if Form33.ADOQueryOBOR.RecordCount<>0 then
               Result:=schet
            else Result:='';

//            IBQueryObor.Close;
//            IBQueryObor.SQL.Text:='select * from obor where upd=1 and period=:dt and schet=:sch';
//            IBQueryObor.ParamByName('sch').Value:=schet;
//            IBQueryObor.ParamByName('dt').Value:=IBPERIODPERIOD.Value;
//            IBQueryObor.Open;
//            IBQueryObor.FetchAll;
//            if IBQueryObor.RecordCount<>0 then
//               Result:=schet
//            else Result:='';

end;

procedure TForm27.SearchPosl(str:string);
var RegularExpression : TRegEx;
    Match : TMatch;
    MC: TMatchCollection;
    sch,regposl,wid:string;
    Index,k: Integer;
begin


       //   a:=0;
          wid:='';
          StrList.Clear;
          IBQueryVipiska.first;
          while not IBQueryVipiska.Eof do
          begin
//            if IBQueryVipiskaWID.AsString<>wid then
//            begin
              if IBQueryVipiskaPOISK.AsString<>'' then
              begin
              Match:=RegularExpression.Match(LowerCase(str),'('+LowerCase(IBQueryVipiskaPOISK.AsString)+'{1})',[roIgnoreCase]);
                if Match.Success then
                begin
                     //posl[a]:=IBQueryVipiskaWID.AsString;
                     if not strList.Find(IBQueryVipiskaWID.AsString,Index) then
                         strList.Add(IBQueryVipiskaWID.AsString);
                    // arrstr[a]:=IBQueryVipiskaWID.AsString;
                    // a:=a+1;
                end;
              end;
//            end;

          IBQueryVipiska.Next;
          end;

          for k:=0 to StrList.Count-1 do
          begin
            if StrList[k]='om' then
            begin
               StrList.Clear;
               strList.Add('om');
               Break;
            end;
          end;

          if strList.count>1 then
          begin
            StrList.Clear;
            Form33.cxLabel1.Caption:=Form33.cxLabel1.Caption+'�������� ������� ����� ������!';
            exit;
          end;
          if strList.count=0 then
          begin
            StrList.Clear;
            Form33.cxLabel1.Caption:=Form33.cxLabel1.Caption+'������� � ���������� �� ��������!';
            exit;
          end;
          Match:=RegularExpression.Match(LowerCase(str),'(�� ����{1})',[roIgnoreCase]);
              if Match.Success then
              begin
                 IBQueryWid.Close;
                 IBQueryWid.SQL.Text:='select * from wid where wid=:wid';
                 IBQueryWid.ParamByName('wid').AsString:=strList[strList.count-1];
                 IBQueryWid.open;
                 IBQueryWid.FetchAll;
                 if (IBQueryWid.RecordCount<>0) and (trim(IBQueryWidABONPL.Value)<>'') then
                 begin
                    strList.Add(IBQueryWidABONPL.Value);
                    exit;
                 end;
              end;
          Match:=RegularExpression.Match(LowerCase(str),'(�� �����{1})',[roIgnoreCase]);
              if Match.Success then
              begin
                 IBQueryWid.Close;
                 IBQueryWid.SQL.Text:='select * from wid where wid=:wid';
                 IBQueryWid.ParamByName('wid').AsString:=strList[strList.count-1];
                 IBQueryWid.open;
                 IBQueryWid.FetchAll;
                 if (IBQueryWid.RecordCount<>0) and (trim(IBQueryWidVNESK.Value)<>'') then
                 begin
                    strList.Add(IBQueryWidVNESK.Value);
                    exit;
                 end;
              end;
            Match:=RegularExpression.Match(LowerCase(str),'(����{1})',[roIgnoreCase]);
              if Match.Success then
              begin
                 IBQueryWid.Close;
                 IBQueryWid.SQL.Text:='select * from wid where wid=:wid';
                 IBQueryWid.ParamByName('wid').AsString:=strList[strList.count-1];
                 IBQueryWid.open;
                 IBQueryWid.FetchAll;
                 if (IBQueryWid.RecordCount<>0) and (trim(IBQueryWidABONPL.Value)<>'')then
                 begin
                    strList[0]:=IBQueryWidABONPL.Value;
                    exit;
                 end;
              end;
            Match:=RegularExpression.Match(LowerCase(str),'(�����{1})',[roIgnoreCase]);
              if Match.Success then
              begin
                 IBQueryWid.Close;
                 IBQueryWid.SQL.Text:='select * from wid where wid=:wid';
                 IBQueryWid.ParamByName('wid').AsString:=strList[strList.count-1];
                 IBQueryWid.open;
                 IBQueryWid.FetchAll;
                 if (IBQueryWid.RecordCount<>0) and (trim(IBQueryWidVNESK.Value)<>'') then
                 begin
                    strList[0]:=IBQueryWidVNESK.Value;
                    exit;
                 end;
              end;


end;





end.
