unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxProgressBar, ShellAPI;

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
  private
    { Private declarations }
    procedure UpdateBase;


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

 if Form1.IBDatabase1.Connected then
 begin
     Form2.Show;
     UpdateBase;
//     Form1.IBREPD.close;
//     Form1.IBREPD.ParamByName('kluser').Value:=Form1.IBUSERKL.Value;
//     Form1.IBREPD.open;
//     Form1.DSREPD.Enabled:=true;
       Form1.Enabled:=true;
       Form1.IBSP_ADRES.open;
       Form1.DSSPRADRES.Enabled:=true;
     Form2.Close;
 end;


end;


procedure TForm2.UpdateBase;
var pathDBF,pathARC,dateimport,strmes,strye,strfield1,strfield2:string;
    adostr,copy1,copy2:WideString;
    Y ,M, D: Word;
    DateUPD:TDateTime;
    DateUPDD,FilterDATE:Tdate;
    ii,cou,posstr,fl_insfield,apprec,rec4:integer;
    vArray:variant;
  SI: _STARTUPINFOW;
  PI: _PROCESS_INFORMATION;
  RarParam : String;

begin
   try
   Form1.Enabled:=false;
   Label1.Caption:='Завантаження поточних даних.Зачекайте...';
   Label2.visible:=true;

        Form1.IBDatabase1.Close;
        Form1.IBDatabase1.Open;
        Form1.IBTransaction1.StartTransaction;
        Form1.IBTransaction2.StartTransaction;


  Form1.IBKONTROL.open;
  Form1.IBUSER.open;
  Form1.IBADRES.open;
  Form1.IBNOTE.open;
  Form1.IBNOTE1.open;
  Form1.IBNOTE2.open;
  Form1.IBKART.open;
  Form1.IBOBOR.open;

  Form1.IBSPRADRES.open;
  Form1.IBSP_ADRES.open;
  Form1.IBSERVICES.open;
  Form1.IBPERIOD.open;




  Form1.IBWID.open;


//        cxProgressBar2.Visible:=true;
//        cxProgressBar2.Position:=0;
//        cxProgressBar2.Properties.Min:=0;
//       cxProgressBar2.Properties.Max:=5;

//          Label2.Caption:='Оновлення послуг';
//          Application.ProcessMessages;
//
//        Form1.IBTMPOPL.Close;
//        Form1.IBTMPOPL.InsertSQL.Clear;
//        Form1.IBTMPOPL.ModifySQL.Clear;
//        Form1.IBTMPOPL.InsertSQL.Add('insert into OPL');
//        Form1.IBTMPOPL.ModifySQL.Add('update OPL');
//        Form1.IBTMPOPL.ModifySQL.Add('set');
//        Form1.IBTMPOPL.ModifySQL.Add('DT = :DT,');
//        Form1.IBTMPOPL.ModifySQL.Add('KL = :KL,');
//        Form1.IBTMPOPL.ModifySQL.Add('SCHET = :SCHET,');
//        Form1.IBTMPOPL.ModifySQL.Add('OPL = :OPL,');
//
//
//        Form1.IBWID.First;
//            while not Form1.IBWID.eof do
//            begin
//                   if Form1.IBWID.FieldByName('fl_nonach').Value<>1 then
//                   begin
//                     strfield1:=strfield1+', OPL_'+trim(Form1.IBWID.FieldByName('wid').AsString);
//                     strfield2:=strfield2+', :OPL_'+trim(Form1.IBWID.FieldByName('wid').AsString);
//                     Form1.IBTMPOPL.ModifySQL.Add('OPL_'+trim(Form1.IBWID.FieldByName('wid').AsString)+' = :'+'OPL_'+trim(Form1.IBWID.FieldByName('wid').AsString+','));
//                   end;
//
//
//            Form1.IBWID.Next;
//            end;
//        Form1.IBTMPOPL.InsertSQL.Add('  (DT, KL, SCHET, OPL'+strfield1+')');
//        Form1.IBTMPOPL.InsertSQL.Add('values');
//        Form1.IBTMPOPL.InsertSQL.Add('  (:DT, :KL, :SCHET, :OPL'+strfield2+')');
//
//        Form1.IBTMPOPL.ModifySQL.Add('where');
//        Form1.IBTMPOPL.ModifySQL.Add('KL = :OLD_KL');
////


        Form1.IBTMPOPL.open;




//         ShellExecute(0, nil,'obor.bat',nil,nil,1);
//         WinExec(PAnsiChar('d:\WORK\KOMUN\dolg\Script\obor.bat'),SW_NORMAL);
//         WinExec(PAnsiChar('cmd /c d:\WORK\KOMUN\dolg\Script\IBEScript.exe "d:\WORK\KOMUN\dolg\Script\obor.ibb" -Dd:\WORK\KOMUN\dolg\dolg.gdb -USYSDBA -Pmasterkey'),SW_HIDE);
       //   AppToRun:='cmd /c';

     //     CommandLine:=' d:\WORK\KOMUN\dolg\Script\IBEScript.exe "d:\WORK\KOMUN\dolg\Script\obor.ibb" -Dd:\WORK\KOMUN\dolg\dolg.gdb -USYSDBA -Pmasterkey';
//          ShellExecute(Handle,'open',pchar('C:\send.bat'),pchar(bb),nil,SW_HIDE);
//         RarParam := 'd:\WORK\KOMUN\dolg\Script\IBEScript.exe "d:\WORK\KOMUN\dolg\Script\obor.ibb" -Dd:\WORK\KOMUN\dolg\dolg.gdb -USYSDBA -Pmasterkey';
//        FillChar(SI, sizeof(SI), #0);
//        SI.cb:=sizeof(SI);
//        FillChar(PI, sizeof(PI), #0);

//               ShellExecute(Handle,'open',pchar('d:\WORK\KOMUN\dolg\Script\obor.bat'),pchar(RarParam),nil,SW_NORMAL);
//               MessageBox(Handle,'good', 'info', 64);

//        CreateProcess(nil,PWideChar(RarParam),nil,nil,false,0,nil,nil,SI,PI);
//        WaitForInputIdle(PI.hProcess, INFINITE);
//        WaitForSingleObject(PI.hProcess,INFINITE);
//        ShowMessage('Finish');

//          FillChar( Si, SizeOf( Si ) , 0 );
//          with Si do begin
//          cb := SizeOf( Si);
//          dwFlags := startf_UseShowWindow;
//          wShowWindow := 1;
//          end;
//
//        CreateProcess(nil,PChar(RarParam),nil,nil,false, Create_default_error_mode,nil,nil,si,pi);
//        Waitforsingleobject(pi.hProcess,infinite);

//          Form1.ADOOBORREC.open;
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





       Form1.IBPERIOD.close;
       Form1.IBPERIOD.open;

       Form1.DateKVART:=Form1.IBPERIODPERIOD.Value;
       if Form1.cxLookupComboBox1.EditValue = null then
       begin
          Form1.cxLookupComboBox1.EditValue:=Form1.IBPERIODPERIOD.Value;
       end;




//       FilterDATE:=add_months(Form1.IBPERIODPERIOD.Value, -3);

//       Form1.IBPERIOD.Filter:= 'PERIOD = add_months('+DateToStr(Form1.DateKVART)+', -3)';
//       Form1.IBPERIOD.Filtered:=true;
//
//        Form1.IBTransaction2.CommitRetaining;
//        Form1.IBTransaction1.CommitRetaining;



        cxProgressBar2.Visible:=false;
        Label2.Visible:=false;


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

end.
