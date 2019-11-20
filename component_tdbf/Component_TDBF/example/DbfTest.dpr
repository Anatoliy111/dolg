program DbfTest;

uses
  Forms,
  Main in 'Main.pas' {Form1},
  NewTable in 'NewTable.pas' {CreateForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TCreateForm, CreateForm);
  Application.Run;
end.
