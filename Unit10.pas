unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dbf, dbf_common, inifiles,
  ExtCtrls, IBDatabase, IBCustomDataSet, DB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, IBQuery, DBClient, cxContainer, cxProgressBar, Provider, Grids,
  DBGrids, IdBaseComponent, IdDateTimeStamp, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, ComCtrls;

type
  TForm10 = class(TForm)
    Panel1: TPanel;
    Button10: TButton;
    cxProgressBar1: TcxProgressBar;
    Button2: TButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1PERIOD: TcxGridDBColumn;
    cxGridDBTableView1SCHET: TcxGridDBColumn;
    cxGridDBTableView1FIO: TcxGridDBColumn;
    cxGridDBTableView1DOLG: TcxGridDBColumn;
    cxGridDBTableView1NACH: TcxGridDBColumn;
    cxGridDBTableView1OPL: TcxGridDBColumn;
    cxGridDBTableView1ZADOLG: TcxGridDBColumn;
    cxGridDBTableView1ZADOLGK: TcxGridDBColumn;
    cxGridDBTableView1ZADOLGP: TcxGridDBColumn;
    Button3: TButton;
    procedure Button10Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    outpath:string;
    procedure ExportGrid(AGrid: TcxGrid;Filename:string='Table.xls');
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
    CLOSING:Boolean;



implementation

{$R *.dfm}

uses registry, cxGridExportLink, comobj, dateutils, Unit1;

procedure TForm10.Button10Click(Sender: TObject);
begin
  ExportGrid(cxGrid2);
end;


procedure TForm10.Button2Click(Sender: TObject);
var npp,mes,yy,stmes,styy:integer;
    str,en,start,kperiod,kschet,nperiod,nschet:string;
    ksum:Currency;
begin
Form1.DSREP2.Enabled:=false;
Button2.Enabled:= false;
ksum:= 0;
kperiod:='';
kschet:='';
nperiod:='';
nschet:='';
Button10.Enabled:= false;
CLOSING:=false;


//         Form1.IBNACH.close;
//         Form1.IBNACH.Open;
         Form1.IBQuery1.SQL.Text:= 'delete from rep2';
         Form1.IBQuery1.ExecSQL;
         Form1.IBREP2.close;
         Form1.IBREP2.Open;
         Form1.IBQuery2.Close;
         Form1.IBQuery2.SQL.Text:= 'select * from nach order by schet,period';
         Form1.IBQuery2.Open;
         Form1.IBQuery2.FetchAll;
         Form1.IBQuery2.DisableControls;


         cxProgressBar1.Position:=0;
         cxProgressBar1.Properties.Min:=0;
//        Form1.IBQuery2.FieldByName(.FetchAll;
       cxProgressBar1.Properties.Max:=Form1.IBQuery2.RecordCount-1;
//        Form1.IBQuery2.First;
         stmes:=strtoint(FormatDateTime('mm', Form1.IBQuery2.FieldByName('PERIOD').Value));
         styy:=strtoint(FormatDateTime('yyyy', Form1.IBQuery2.FieldByName('PERIOD').Value));
         mes:=strtoint(FormatDateTime('mm', Form1.IBQuery2.FieldByName('PERIOD').Value));
                       stmes:=strtoint(FormatDateTime('mm', Form1.IBQuery2.FieldByName('PERIOD').Value));
              styy:=strtoint(FormatDateTime('yyyy', Form1.IBQuery2.FieldByName('PERIOD').Value));
         if mes<10 then
         begin
             str:=inttostr(strtoint(FormatDateTime('yyyy', Form1.IBQuery2.FieldByName('PERIOD').Value))-1)+'-'+FormatDateTime('yyyy', Form1.IBQuery2.FieldByName('PERIOD').Value);
         end
         else
             str:=FormatDateTime('yyyy', Form1.IBQuery2.FieldByName('PERIOD').Value)+'-'+inttostr(strtoint(FormatDateTime('yyyy', Form1.IBQuery2.FieldByName('PERIOD').Value))+1);

         start:=str;

              while not Form1.IBQuery2.Eof do
              begin
              if CLOSING  then
                 exit;
              npp:=npp+1;
                cxProgressBar1.Position:=cxProgressBar1.Position+1;
                Application.ProcessMessages;
//              if Form1.IBQuery2.FieldByName('SCHET.Value = '8432062752' then
//              begin

              mes:=strtoint(FormatDateTime('mm', Form1.IBQuery2.FieldByName('PERIOD').Value));
              yy:=strtoint(FormatDateTime('yyyy', Form1.IBQuery2.FieldByName('PERIOD').Value));
//
//              if (mes>9) and (stmes<=9) and (yy=styy) then
//              begin
//                str:=FormatDateTime('yyyy', Form1.IBQuery2.FieldByName('PERIOD').Value)+'-'+inttostr(strtoint(FormatDateTime('yyyy', Form1.IBQuery2.FieldByName('PERIOD').Value))+1);
//              end;
//              if (yy=styy+1) and (mes>9) then
//              begin
//                str:=FormatDateTime('yyyy', Form1.IBQuery2.FieldByName('PERIOD').Value)+'-'+inttostr(strtoint(FormatDateTime('yyyy', Form1.IBQuery2.FieldByName('PERIOD').Value))+1);
//              end;
//              if (yy=styy+1) and (mes<=9) then
//              begin
//                  str:=inttostr(strtoint(FormatDateTime('yyyy', Form1.IBQuery2.FieldByName('PERIOD').Value))-1)+'-'+FormatDateTime('yyyy', Form1.IBQuery2.FieldByName('PERIOD').Value);
//              end;
//              if (yy>styy+1) and (mes<=9)then
//              begin
//                  str:=inttostr(strtoint(FormatDateTime('yyyy', Form1.IBQuery2.FieldByName('PERIOD').Value))-1)+'-'+FormatDateTime('yyyy', Form1.IBQuery2.FieldByName('PERIOD').Value);
//              end;
//              if (yy>styy+1) and (mes>9)then
//              begin
//                str:=FormatDateTime('yyyy', Form1.IBQuery2.FieldByName('PERIOD').Value)+'-'+inttostr(strtoint(FormatDateTime('yyyy', Form1.IBQuery2.FieldByName('PERIOD').Value))+1);
//              end;

                if mes<=9 then
                begin
                  str:=inttostr(yy-1)+'-'+inttostr(yy);
                end
                else
                  str:=inttostr(yy)+'-'+inttostr(yy+1);
                if (kperiod<>str) and (kperiod<>'') then
                begin
                 Form1.IBREP2.Edit;
                 Form1.IBREP2ZADOLG.Value:=Form1.IBREP2NACH.Value - Form1.IBREP2OPL.Value;
                 Form1.IBREP2ZADOLGP.Value:=Form1.IBREP2DOLG.Value + Form1.IBREP2NACH.Value - Form1.IBREP2OPL.Value;
                 Form1.IBREP2.Post;
                end;

                if (Form1.IBREP2SCHET.Value<>Form1.IBQuery2.FieldByName('SCHET').Value) and (Form1.IBREP2ZADOLGP.Value<>0) then
                begin
                   ksum:=Form1.IBREP2ZADOLGP.Value;
                   if (nperiod='') and (nschet='') then
                   begin
                             Form1.IBREP2.Edit;
                             Form1.IBREP2ZADOLGK.Value:=Form1.IBREP2ZADOLGP.Value;
                             Form1.IBREP2.Post;
                   end
                   else
                   begin
                     if (nperiod=Form1.IBREP2PERIOD.Value) and (nschet=Form1.IBREP2SCHET.Value) then
                     begin
                             Form1.IBREP2.Edit;
                             Form1.IBREP2ZADOLGK.Value:=Form1.IBREP2ZADOLGP.Value;
                             Form1.IBREP2.Post;
                     end
                     else
                     begin
                       if Form1.IBREP2.Locate('period;schet',VarArrayOf([nperiod,nschet]),[loPartialKey]) then
                       begin
                             Form1.IBREP2.Edit;
                             Form1.IBREP2ZADOLGK.Value:=ksum;
                             Form1.IBREP2.Post;
                       end;
                     end;
                   end;
                  nperiod:='';
                  nschet:='';
                  ksum:=0;
                end;
                if (Form1.IBREP2SCHET.Value<>Form1.IBQuery2.FieldByName('SCHET').Value) then
                begin
                  nperiod:='';
                  nschet:='';
                  ksum:=0;
                end;



                if (Form1.IBREP2PERIOD.Value=str) and (Form1.IBREP2SCHET.Value=Form1.IBQuery2.FieldByName('SCHET').Value) then
                begin
                                        Form1.IBREP2.Edit;
                                        Form1.IBREP2NACH.Value:=Form1.IBREP2NACH.Value + Form1.IBQuery2.FieldByName('NACH').Value;
                                        Form1.IBREP2OPL.Value:=Form1.IBREP2OPL.Value + Form1.IBQuery2.FieldByName('OPL').Value;
                                        Form1.IBREP2.Post;
                end
                else
                begin

//                 if Form1.IBREP2.Locate('period;schet',VarArrayOf([str,Form1.IBQuery2.FieldByName('SCHET').Value]),[loPartialKey]) then
//                 begin
//                                        Form1.IBREP2.Edit;
////                                        Form1.IBREP2DOLG.Value:=Form1.IBREP2DOLG.Value+Form1.IBQuery2.FieldByName('DOLG.Value;
//                                        Form1.IBREP2NACH.Value:=Form1.IBREP2NACH.Value + Form1.IBQuery2.FieldByName('NACH').Value;
//                                        Form1.IBREP2OPL.Value:=Form1.IBREP2OPL.Value + Form1.IBQuery2.FieldByName('OPL').Value;
//
//                                        Form1.IBREP2.Post;
//
//                 end
//                 else
//                 begin


                       Form1.IBREP2.Insert;
                       Form1.IBREP2PERIOD.Value:=str;
                       Form1.IBREP2SCHET.Value:=Form1.IBQuery2.FieldByName('SCHET').Value;
                       Form1.IBREP2FIO.Value:=Form1.IBQuery2.FieldByName('FIO').Value;
                       Form1.IBREP2DOLG.Value:=Form1.IBQuery2.FieldByName('DOLG').Value;
                       Form1.IBREP2NACH.Value:=Form1.IBQuery2.FieldByName('NACH').Value;
                       Form1.IBREP2OPL.Value:=Form1.IBQuery2.FieldByName('OPL').Value;




//                  end;
                end;
                kperiod:=str;
                if Form1.IBREP2NACH.Value <> 0 then
                begin
                  nperiod:=str;
                  nschet:=Form1.IBQuery2.FieldByName('SCHET').Value;
                end;
//              stmes:=strtoint(FormatDateTime('mm', Form1.IBQuery2.FieldByName('PERIOD').Value));
//              styy:=strtoint(FormatDateTime('yyyy', Form1.IBQuery2.FieldByName('PERIOD').Value));
//              end;
              Form1.IBQuery2.Next;

              end;


                 Form1.IBREP2.Edit;
                 Form1.IBREP2ZADOLG.Value:=Form1.IBREP2NACH.Value - Form1.IBREP2OPL.Value;
                 Form1.IBREP2ZADOLGP.Value:=Form1.IBREP2DOLG.Value + Form1.IBREP2NACH.Value - Form1.IBREP2OPL.Value;
                 Form1.IBREP2.Post;


                 if (Form1.IBREP2ZADOLGP.Value<>0) then
                begin
                   ksum:=Form1.IBREP2ZADOLGP.Value;
                   if (nperiod='') and (nschet='') then
                   begin
                             Form1.IBREP2.Edit;
                             Form1.IBREP2ZADOLGK.Value:=Form1.IBREP2ZADOLGP.Value;
                             Form1.IBREP2.Post;
                   end
                   else
                   begin
                     if (nperiod=Form1.IBREP2PERIOD.Value) and (nschet=Form1.IBREP2SCHET.Value) then
                     begin
                             Form1.IBREP2.Edit;
                             Form1.IBREP2ZADOLGK.Value:=Form1.IBREP2ZADOLGP.Value;
                             Form1.IBREP2.Post;
                     end
                     else
                     begin
                       if Form1.IBREP2.Locate('period;schet',VarArrayOf([nperiod,nschet]),[loPartialKey]) then
                       begin
                             Form1.IBREP2.Edit;
                             Form1.IBREP2ZADOLGK.Value:=ksum;
                             Form1.IBREP2.Post;
                       end;
                     end;
                   end;
                  nperiod:='';
                  nschet:='';
                  ksum:=0;
                end;


//                       cxProgressBar1.Position:=0;
//        cxProgressBar1.Properties.Min:=0;
////        Form1.IBREP2.FetchAll;
//       cxProgressBar1.Properties.Max:=Form1.IBREP2.RecordCount-1;
//
//              Form1.IBREP2.First;
//              while not Form1.IBREP2.Eof do
//              begin
//                cxProgressBar1.Position:=cxProgressBar1.Position+1;
//                Application.ProcessMessages;
//                 Form1.IBREP2.Edit;
////                 if Form1.IBREP2PERIOD.Value = start then
////                    Form1.IBREP2ZADOLG.Value:=Form1.IBREP2DOLG.Value + Form1.IBREP2NACH.Value - Form1.IBREP2OPL.Value
////                 else
////                 begin
//////                    Form1.IBREP2DOLG.Value := 0;
////                    Form1.IBREP2ZADOLG.Value:=Form1.IBREP2NACH.Value - Form1.IBREP2OPL.Value;
////                 end;
//                   Form1.IBREP2ZADOLG.Value:=Form1.IBREP2NACH.Value - Form1.IBREP2OPL.Value;
//                   Form1.IBREP2ZADOLGP.Value:=Form1.IBREP2DOLG.Value + Form1.IBREP2NACH.Value - Form1.IBREP2OPL.Value;
//                 Form1.IBREP2.Post;
//                 Form1.IBREP2.Next;
//              end;



//  Form1.IBTransaction1.CommitRetaining;
  ShowMessage('Імпорт виконано!');

Form1.DSREP2.Enabled:=true;
Button2.Enabled:= true;

Button10.Enabled:= true;


end;

procedure TForm10.Button3Click(Sender: TObject);
begin
CLOSING:=true;
Form1.DSREP2.Enabled:=true;
Button2.Enabled:= true;
Button10.Enabled:= true;
Form1.IBTransaction1.CommitRetaining;
end;

procedure TForm10.ExportGrid(AGrid: TcxGrid;Filename:string='Table.xls');
var
  sd:TSaveDialog;
  Excel: Variant;
  Reg: TRegistry;
  path:string;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if not Reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders' , False) then
      //ShowMessage('Error in opening key')
      path := '.\'
    else
    begin
      path := Reg.Readstring('Personal')+'\'
    end;
  finally
    Reg.Free;
  end;

  sd:=TSaveDialog.Create(application);
  try
    if FileName='Table.xls' then
    begin
//      DateTimeToString(Filename,'mmddhhmm',now);
      DateTimeToString(Filename,'dd mm yyyy',now);

      Filename:='Звіт по періодам'+Filename+'.xls'
    end;
    sd.FileName := path + Filename;
    sd.Filter := 'Excel files (*.xls)|*.XLS';
    if not sd.Execute then exit;
    filename:=sd.FileName;
  finally
    sd.Free;
  end;

  ExportGridToExcel(filename, AGrid,true,true,true);

  try
    Excel := CreateOLEObject('Excel.Application');
    Excel.Visible := True;

    Excel.WorkBooks.Open(FileName);
    Excel.ActiveWindow.DisplayGridlines := True;
    Excel.columns[5].NumberFormat:='0,00';

    Excel.ActiveWindow.View := 2;
    if Excel.ActiveSheet.VPageBreaks.count <> 0 then
       Excel.ActiveSheet.VPageBreaks[1].DragOff(Direction:=1, RegionIndex:=1);
    if Excel.ActiveSheet.HPageBreaks.count <> 0 then
       Excel.ActiveSheet.HPageBreaks[1].DragOff(Direction:=1, RegionIndex:=1);
    Excel.ActiveWindow.View := 1;

  except
  end;
end;

end.
