unit mytools;

interface

uses Controls,SysUtils,dbgrids,Types,Forms,DB,
     Messages, Graphics,Classes,StdCtrls,
     TypInfo,bde,dbtables,Tlhelp32,IOUtils,StrUtils;


const DELTA_YEAR=10;
{$M+}
(* Have you seen the $M+ before???This tells delphi to publish RTTI info for
   enumerated types.  Basically allowing your enumerated types to act as
   strings with GetEnumName *)
type
  TVersionType=(vtCompanyName, vtFileDescription, vtFileVersion, vtInternalName,
                vtLegalCopyright,vtLegalTradeMark, vtOriginalFileName,
                vtProductName, vtProductVersion, vtComments);
{$M-}
  TrpVersionInfo = class(TComponent)
  private
    FVersionInfo : Array [0 .. ord(high(TVersionType))] of string;
  protected
    function GetCompanyName: string;
    function GetFileDescription: string;
    function GetFileVersion: string;
    function GetInternalName: string;
    function GetLegalCopyright: string;
    function GetLegalTradeMark: string;
    function GetOriginalFileName: string;
    function GetProductName: string;
    function GetProductVersion: string;
    function GetComments: string;
    function GetVersionInfo(VersionType: TVersionType): string; virtual;
    procedure SetVersionInfo; virtual;
  public
    constructor Create(AOwner: TComponent); override;
  published
(* Label1.Caption := VersionInfo1.FileVersion;  Simple as that.
   NOTE:  ALL the properties are READONLY so you can not view them with the
   Object Inspector *)
    property CompanyName: string read GetCompanyName;
    property FileDescription: string read GetFileDescription;
    property FileVersion: string read GetFileVersion;
    property InternalName: string read GetInternalName;
    property LegalCopyright: string read GetLegalCopyright;
    property LegalTradeMark: string read GetLegalTradeMark;
    property OriginalFileName: string read GetOriginalFileName;
    property ProductName: string read GetProductName;
    property ProductVersion: string read GetProductVersion;
    property Comments: string read GetComments;
  end;


function ckDate(const s:string;curr:TDate=0):string;
procedure SetRus;
procedure SetEng;
function str2int(s:string):integer;
function str2float(s:string):double;
function int2str(i:integer):string;
function LastDayMon(date:TDate): TDate;
function FirstDayMon(date:TDate): TDate;
function YearMon2Date(yearmon:integer): TDate;
function Date2YearMon(dt:TDate): integer;
function DaysPerMonth(Date: Integer): Integer;overload;
function DaysPerMonth(AYear, AMonth: Integer): Integer;overload;
function isSunday(dt,day:integer):Boolean;overload;
function isSunday(date:TDate):boolean;overload;
function numtostr(source:string):string;overload;
function numtostr2(source:string):string;
function numtostr(numb:double):string;overload;
function BoundCurrCell(grid:TDBGrid):TRect;
function dos2win(s:string):string;
function win2dos(s:string):string;
function strFromDelimiter(s:string;delimiter:char;num:integer=1):string;
function iif(f:boolean;val1,val2:variant):variant;
procedure StartWait;
procedure StopWait(cur:TCursor=crDefault);
function Date2Str(dt:TDate;fmt:String='yyyyMMdd'):string;
function DateTime2Str(dt:TDate;fmt:String='yyyymmdd'):string;
procedure ExportFile(dg:TDBGrid);overload;
procedure ExportFile(dt:TDataSet);overload;
function getVersionInfo(tag:string):string;
procedure setYearBox(box:TComboBox;curr:TDate=0);
function roundMoney(s:currency;cent:integer):currency;
function var2int(v:variant):integer;
function var2currency(v:variant):currency;
procedure ReindexTable(Table: TTable);
function date_slovo(date:TDate):string;
function mon_slovo(mon:integer):string;
function mon_slovoDt(date:TDate):string;
function mon_slovoDt2(date:TDate):string;
function Translit2Lat(const Str: string): string;

function GetComputerNetName: string;
function _GetTempPath: String;
function _GetCurrentDirectory: String;
function _GetSystemDirectory: String;
function _GetWindowsDirectory: String;
function _GetTempDirectory: String;
function GetCountTextInStr(pStr, pText: string): integer;
function StrToDateNoDelimiter(const S: string; const Formats: array of string): TDateTime;
function TryParseDate(const S, Format: string; out Year, Month, Day: Word): Boolean;
function GenerateCode: Integer;



implementation

uses DateUtils,Windows,Dialogs,activex,comobj,variants,math,Registry;

function GenerateCode: Integer;
var
  Year, Month, Day, Hour, Minute, Second, MilliSecond: Word;
  Code: Integer;
begin
  // �������� ������� ���� �� ���
  DecodeDateTime(Now, Year, Month, Day, Hour, Minute, Second, MilliSecond);

  // ����������� ��, �����, ����, ������, ������� �� ������� ��� ��������� ����
  // � ������ ������� ������ ������ �� ����� ���� � ������ ���� ���������� ���� �� ����
  Code := (Year mod 100) * 10000 + Month * 100 + Day + Hour + Minute + Second;

  // ������� ���, ��� ��� ��� �'����������
  Code := Code mod 100000;

  Result := Code;
end;


//ddmmyyyy,yymmdd
function TryParseDate(const S, Format: string; out Year, Month, Day: Word): Boolean;
  var
    YearStr, MonthStr, DayStr: string;
    I:integer;
  begin
    Result := False;
    if Length(S) <> Length(Format) then
      Exit;

    YearStr := '';
    MonthStr := '';
    DayStr := '';

    for I := 1 to Length(Format) do
    begin
      case Format[I] of
        'y': YearStr := YearStr + S[I];
        'm': MonthStr := MonthStr + S[I];
        'd': DayStr := DayStr + S[I];
      else
        Exit;
      end;
    end;

    if (YearStr = '') or (MonthStr = '') or (DayStr = '') then
      Exit;

    try
      if Length(YearStr)=4 then
         Year := StrToInt(YearStr);
      if Length(YearStr)=2 then
         Year := StrToInt('20'+YearStr);

      Month := StrToInt(MonthStr);
      Day := StrToInt(DayStr);
      Result := True;
    except
      on E: Exception do
        Exit;
    end;
  end;


function StrToDateNoDelimiter(const S: string; const Formats: array of string): TDateTime;
var
  Year, Month, Day: Word;
  Format: string;
  IsValidFormat: Boolean;
  I: Integer;
begin
  IsValidFormat := False;

  for Format in Formats do
  begin
    if TryParseDate(S, Format, Year, Month, Day) then
    begin
      IsValidFormat := True;
      Break;
    end;
  end;

  if not IsValidFormat then
    raise Exception.Create('Invalid date format.');

  Result := EncodeDate(Year, Month, Day);
end;

function GetCountTextInStr(pStr, pText: string): integer;
var
  aLen, i, res: integer;
begin
  aLen := Length(pText);
  res := -1;
  i := 1-aLen;
  Repeat
    i := PosEX(pText, pStr, i+aLen);
    Inc(res);
  Until i = 0;

  Result := res;
end;


function GetComputerNetName: string;
var
 buffer: array[0..255] of char;
 size: dword;
begin
 size := 256;
 if GetComputerName(buffer, size) then
   Result := buffer
 else
   Result := ''
end;

function _GetTempPath: String;
var
  Buffer: array[0..1023] of Char;
begin
  SetString(Result, Buffer, GetTempPath(Sizeof(Buffer)-1,Buffer));
end;

function _GetCurrentDirectory: String;
var
  Buffer: array[0..1023] of Char;
begin
  SetString(Result, Buffer, GetCurrentDirectory(Sizeof(Buffer)-1,Buffer));
end;

function _GetSystemDirectory: String;
var
  Buffer: array[0..1023] of Char;
begin
  SetString(Result, Buffer, GetSystemDirectory(Buffer,Sizeof(Buffer)-1));
end;

function _GetWindowsDirectory: String;
var
  Buffer: array[0..1023] of Char;
begin
  SetString(Result, Buffer, GetWindowsDirectory(Buffer,Sizeof(Buffer)-1));
end;

function _GetTempDirectory: String;
var
  Buffer: array[0..1023] of Char;
begin
  SetString(Result, Buffer, Windows.GetTempPath(Sizeof(Buffer)-1,Buffer));
end;



function Translit2Lat(const Str: string): string;
const
  RArrayL = '�����������������������������������';
  RArrayU = '�����Ũ�������������������������߲��';
  colChar = 36;
  arr: array[1..2, 1..ColChar] of string =
  (('a', 'b', 'v', 'g', 'd', 'e', 'yo', 'zh', 'z', 'i', 'y',
    'k', 'l', 'm', 'n', 'o', 'p', 'r', 's', 't', 'u', 'f',
    'kh', 'ts', 'ch', 'sh', 'sh', '''', 'y', '''', 'e', 'yu', 'ya','i','i','e'),
    ('A', 'B', 'V', 'G', 'D', 'E', 'Yo', 'Zh', 'Z', 'I', 'Y',
    'K', 'L', 'M', 'N', 'O', 'P', 'R', 'S', 'T', 'U', 'F',
    'Kh', 'Ts', 'Ch', 'Sh', 'Sh', '''', 'Y', '''', 'E', 'Yu', 'Ya','I','I','E'));
var
  i: Integer;
  LenS: Integer;
  p: integer;
  d: byte;
begin
  result := '';
  LenS := length(str);
  for i := 1 to lenS do
  begin
    d := 1;
    p := pos(str[i], RArrayL);
    if p = 0 then
    begin
      p := pos(str[i], RArrayU);
      d := 2
    end;
    if p <> 0 then
      result := result + arr[d, p]
    else
      result := result + str[i]; //���� �� ������� �����, �� ����� ��������
  end;
end;


function dos2win(s:string):string;
var c:STRING;
    I:INTEGeR;
    l:byte;
    dd:char;
begin
 i:=1;
 c:='';
 while i< length(s)+1 do
 begin
   l:=ord(s[i]);
   inc(i);
   if (l>=128) and (l<=192)then l:=l+64 else
   if (l>=224) and (l<240) then l:=l+16 else
   if l=241 then l:=184 else
   if l=240 then l:=168;
   dd:=chr(l);
   c:=c+dd;
 end;
 Result:=c;
end;

function win2dos(s:string):string;
var c:STRING;
    I:INTEGeR;
    l:byte;
    dd:char;
begin
 i:=1;
 c:='';
 while i< length(s)+1 do
 begin
   l:=ord(s[i]);
   inc(i);
   if (l>=192) and (l<240)then l:=l-64 else
   if (l>=240) and (l<256) then l:=l-16 else
   if l=184 then l:=241 else
   if l=168 then l:=240;
   dd:=chr(l);
   c:=c+dd;
 end;
 result:=c;
end;

{
const win='����������������������������������������������������������������������|++++++|++++++++-++++++++-+++++++++++++';
const dos='Ii���󀁂������������������������������������������������������������ﳴ�������������������������������������';

function dos2win(s:string):string;
var
  i,j:integer;
  c:char;
begin
  for j:=1 to length(s) do
  begin
    c:=s[j];
    i:=pos(c,dos);
    if i<>0 then s[j]:=win[i];
  end;
  result :=s;
end;

function win2dos(s:string):string;
var
  i,j:integer;
  c:char;
begin
  for j:=1 to length(s) do
  begin
    c:=s[j];
    i:=pos(c,win);
    if i<>0 then s[j]:=dos[i];
  end;
  result :=s;
end;
}


function ckDate(const s:string;curr:TDate):string;
var r:string;
    i,cnt:integer;
begin
  if curr=0 then curr:=now;
  r:=trim(s);
  if length(r)=0 then
  begin
    result:='';
    exit;
  end;

  cnt:=0;
  for i:=1 to length(r) do
  begin
    case r[i] of
      '0'..'9':;
      else
      begin
        inc(cnt);
        r[i]:='.';
        if cnt=3 then setlength(r,i);
      end;
    end;
  end;

  if cnt=0 then r:=r+'.';
  if (cnt<=1) and (r[length(r)]='.') then // no month
    r:=r+inttostr(MonthOf(curr))+'.';
  if (cnt<=2) and (r[length(r)]='.') then // no year
    r:=r+inttostr(YearOf(curr));

  result:=r;
end;

procedure SetRus;
begin
  LoadKeyboardLayout('00000419', KLF_ACTIVATE); //rus
end;

procedure SetEng;
begin
//  LoadKeyboardLayout('00000422', KLF_ACTIVATE); //ukr
  LoadKeyboardLayout('00000409', KLF_ACTIVATE); //eng
end;

function str2int(s:string):integer;
var i,c:integer;
begin
  val(s,i,c);
  Result:=i;
end;


function int2str(i:integer):string;
begin
  result:=inttostr(i);
end;


function LastDayMon(date:TDate): TDate;
var
  Year, Month, Day: Word;
begin
  DecodeDate(date, Year, Month, Day);
  inc(Month);
  if Month=13 then
  begin
    Month:=1;
    inc(year);
  end;
  Result := EncodeDate(year,month,1)-1;
end;

function FirstDayMon(date:TDate): TDate;
var
  Year, Month, Day: Word;
begin
  DecodeDate(date, Year, Month, Day);
  Result := EncodeDate(year,month,1);
end;

function YearMon2Date(yearmon:integer): TDate;
begin
  Result := EncodeDate(yearmon div 100 ,yearmon mod 100,1);
end;

function Date2YearMon(dt:TDate):integer;
var
  Year, Month, Day: Word;
begin
  DecodeDate(dt, Year, Month, Day);
  Result := Year*100+Month;
end;

function DaysPerMonth(Date: Integer): Integer;
begin
  Result:=DaysPerMonth(Date div 100,Date mod 100);
end;

function DaysPerMonth(AYear, AMonth: Integer): Integer;
const
  DaysInMonth: array[1..12] of Integer =
    (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
  Result := DaysInMonth[AMonth];
  if (AMonth = 2) and IsLeapYear(AYear) then Inc(Result); { leap-year Feb isspecial }
end;

function isSunday(dt,day:integer):Boolean;
begin
  Result:=isSunday(EncodeDate(dt div 100,dt mod 100,Day));
end;

function isSunday(date:TDate):boolean;
var d: Word;
begin
  d:= DayOfWeek(date);
  if (d=1) or (d=7) then Result := true
  else Result:=false;
end;

function str2float(s:string):double;
begin
  result:=0;
  try
    result:=strtofloat(s);
  except;
  end;
end;



function numtostr(numb:double):string;
begin
  result := numtostr(trim(format('%16.2f',[numb])));
end;

function numtostr(source:string):string;
const
  nul:string='����';
  kop:array[1..3] of string=('���.','���.','���.');
  dengi:array [1..3] of string=('���.','���.','���.');
  ed:array [1..9] of string=('����','���','���','������','�`���','�i���','�i�','�i�i�','���`���');
  ed1:array [1..9] of string=('����','��i','���','������','�`���','�i���','�i�','�i�i�','���`���');
  cat:array [1..10] of string=('������','�����������','����������','����������',
  '������������','�`���������','�i���������','�i��������','�i�i��������',
  '���`���������');
  dec:array [1..8] of string=('��������','��������','�����','�`�������','�i�������',
  '�i������','�i�i������','���`������');
  sto:array [1..9] of string=('���','��i��i','������','���������','�`�����','�i�����','�i����',
  '�i�i����','���`�����');
  tis:array [1..4] of string=('�����','�i�����i�','�i�����i�','�������i�');
  tis1:array [1..4] of string=('������','�i�����','�i�����','�������');
  tis2:array [1..4] of string=('�����i','�i������','�i������','��������');
var point,l,i:integer;
  gr,ost:integer;
  last,c:integer;
  ff,fl:integer;
  dd:integer;
  kp:string;

begin
  kp := '';
  point:=pos(',',source);
  if point>0 then
  begin
    kp:= copy(source,point+1,2);
    source:=copy(source,1,point-1);
  end;

  result:='';
  l := length(source);
  if (l=0) then exit;

  gr := l div 3;
  ost := l mod 3;
  if ost=0 then gr:=gr-1;  // � gr - ���������� ����� �� ��� 12.345.234 gr=3

  last := 0;
  fl:=0;
  ff:=0;
  c:=0;
////////  char c;

  for i:=1 to length(source) do //(char *p=source;*p;p++)
  begin
    c := ord(source[i])-48;
    case ost of
      0:       // �����
        begin
          if (c<>0) then
          begin
            result:=result+sto[c]+' ';
            fl:=1;
          end;
          ost:=2;
        end;
      2:       // �������
        begin
          if (c<>0) then
          begin
            if (c<>1) then
              result:=result + dec[c-1]+' ';
            fl:=1;
          end;
          ost:=1;
        end;
      1:        // �������
        begin
          if (last=1) then
            result:=result+cat[c+1]+' '
          else
          begin
            if ((c)<>0) then
            begin
              if (gr<=1) and (c<3) then
              begin
                result:=result+ed1[c]+ ' ';
              end
              else
              begin
                result:=result+ed[c]+ ' ';
              end;
              fl:=1;
            end;
          end;
          ost:=0;
          gr:=gr-1;
          if (gr<0) then break;
          if (length(result)<>0) then
          begin
            ff:=0;
            if (c=1) and (last<>1) then begin ff:=1;result := result+tis1[gr+1];end;
            if (c>1) and (c<5) and (last<>1) then begin ff:=1;result:=result+tis2[gr+1];end;
            if (c>=5) or  (last=1) or ((c=0) and (fl>0)) then begin ff:=1;result:=result+tis[gr+1];end;
            if (ff>0) then result:=result+' ';
          end;
          fl:=0;
        end;
    end;
    if (gr<0) then break;
    last := c;
  end;

  if length(result)=0 then result:=nul+' ';
  if (c=1) and (last<>1) then result := result+dengi[1];
  if (c>1) and (c<5) and (last<>1) then result:=result+dengi[2];
  if (c>=5) or  (last=1) or (c=0) then result:=result+dengi[3];
  if (ff>0) then result:=result+' ';

  if (point>0) then
  begin
    result := result + ' ' + kp+ ' ';
    i := str2int(kp);
    dd := (i div 10)*10;
    ost := i mod 10;
    if (dd<>10) and (ost=1) then result := result + kop[1];
    if (dd<>10) and ((ost>1) and  (ost<5)) then result := result + kop[2];
    if (dd=10) or (ost>=5) or (ost=0) then result := result + kop[3];
    //result := result + '.';
  end;
result[1]:=UpCase(result[1]);
end;




function numtostr2(source:string):string;
const
  nul:string='����';
  ed:array [1..9] of string=('����','���','���','������','�`���','�i���','�i�','�i�i�','���`���');
  ed1:array [1..9] of string=('����','��i','���','������','�`���','�i���','�i�','�i�i�','���`���');
  cat:array [1..10] of string=('������','�����������','����������','����������',
  '������������','�`���������','�i���������','�i��������','�i�i��������',
  '���`���������');
  dec:array [1..8] of string=('��������','��������','�����','�`�������','�i�������',
  '�i������','�i�i������','���`������');
  sto:array [1..9] of string=('���','��i��i','������','���������','�`�����','�i�����','�i����',
  '�i�i����','���`�����');
  tis:array [1..4] of string=('�����','�i�����i�','�i�����i�','�������i�');
  tis1:array [1..4] of string=('������','�i�����','�i�����','�������');
  tis2:array [1..4] of string=('�����i','�i������','�i������','��������');



var point,l,i:integer;
  gr,ost:integer;
  last,c:integer;
  ff,fl:integer;
  dd:integer;
  pp,kp,dr,dr_num:string;

begin
  kp := '';
  point:=pos(',',source);
  if point>0 then
  begin
    kp:= copy(source,point+1,2);
    dr_num:=copy(source,point+1,length(source)-point);
    dr:=numtostr2(dr_num);
    source:=copy(source,1,point-1);
  end;

  result:='';
  l := length(source);
  if (l=0) then exit;

  gr := l div 3;
  ost := l mod 3;
  if ost=0 then gr:=gr-1;  // � gr - ���������� ����� �� ��� 12.345.234 gr=3

  last := 0;
  fl:=0;
  ff:=0;
  c:=0;
////////  char c;

  for i:=1 to length(source) do //(char *p=source;*p;p++)
  begin
    c := ord(source[i])-48;
    case ost of
      0:       // �����
        begin
          if (c<>0) then
          begin
            result:=result+sto[c]+' ';
            fl:=1;
          end;
          ost:=2;
        end;
      2:       // �������
        begin
          if (c<>0) then
          begin
            if (c<>1) then
              result:=result + dec[c-1]+' ';
            fl:=1;
          end;
          ost:=1;
        end;
      1:        // �������
        begin
          if (last=1) then
            result:=result+cat[c+1]+' '
          else
          begin
            if ((c)<>0) then
            begin
              if (gr<=1) and (c<3) then
              begin
                result:=result+ed1[c]+ ' ';
              end
              else
              begin
                result:=result+ed[c]+ ' ';
              end;
              fl:=1;
            end;
          end;
          ost:=0;
          gr:=gr-1;
          if (gr<0) then break;
          if (length(result)<>0) then
          begin
            ff:=0;
            if (c=1) and (last<>1) then begin ff:=1;result := result+tis1[gr+1];end;
            if (c>1) and (c<5) and (last<>1) then begin ff:=1;result:=result+tis2[gr+1];end;
            if (c>=5) or  (last=1) or ((c=0) and (fl>0)) then begin ff:=1;result:=result+tis[gr+1];end;
            if (ff>0) then result:=result+' ';
          end;
          fl:=0;
        end;
    end;
    if (gr<0) then break;
    last := c;

  end;
  if source='0' then result:=nul+' ';
   if dr<>'' then
  begin
    if (source[length(source)]='1') and (source[length(source)-1]<>'1') then
        result:=result+'���� '+dr
   else result:=result+'����� '+dr;

    if (dr_num[length(dr_num)]='1') and (dr_num[length(dr_num)-1]<>'1') then
       case length(dr_num) of
        1: result:=result+'������';
        2: result:=result+'����';
        3: result:=result+'�������';
       end
    else
       case length(dr_num) of
        1: result:=result+'�������';
        2: result:=result+'�����';
        3: result:=result+'��������';
       end
 end;
pp:=result[1];
result[1]:=AnsiUpperCase(pp)[1];
end;








type
  TCrackClass = class(TDBGrid);


function BoundCurrCell(grid:TDBGrid):TRect;
begin

  result.Left:=0;
  result.Top:=0;
  result.Right:=0;
  result.Bottom:=0;

  if (Grid.DataSource=nil) or (grid.DataSource.DataSet=nil) or
     (grid.DataSource.DataSet.Active=false) then exit;

  result:=TCrackClass(Grid).CellRect(TCrackClass(Grid).col,TCrackClass(Grid).row);

  result.TopLeft:=grid.ClientToScreen(result.TopLeft);
  result.BottomRight:=grid.ClientToScreen(result.BottomRight);


end;

function strFromDelimiter(s:string;delimiter:char;num:integer):string;
var i:integer;
  n:integer;
begin
  result:='';
  n:=1;
  for i:=1 to length(s) do
  begin
    if s[i]=delimiter then inc(n)
    else
      if n=num then result:=result+s[i];

    if n>num then break;
  end;
end;


function iif(f:boolean;val1,val2:variant):variant;
begin
  if f then Result:=val1
  else Result:=val2;
end;

procedure StartWait;
begin
  Screen.Cursor := crHourGlass;
end;

procedure StopWait(cur:TCursor=crDefault);
begin
  Screen.Cursor := cur;
end;

function DateTime2Str(dt:TDate;fmt:string):string;
begin
  DateTimeToString(Result,fmt,dt);
end;

function Date2Str(dt:TDate;fmt:string):string;
{begin
  DateTimeToString(Result,fmt,dt);
end;}
var tt:TSystemTime;
  ret:array[1..255] of char;
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
  i:integer;
begin
  i:=pos('m',fmt);
  while i>0 do
  begin
    fmt[i]:='M';
    i:=pos('m',fmt);
  end;


  DecodeDate(dt, Year, Month, Day);

  tt.wYear:=year;
  tt.wMonth:=month;
  tt.wDay:=day;

  GetDateFormat(LOCALE_SYSTEM_DEFAULT,
                LOCALE_USE_CP_ACP,
                @tt,
                pchar(fmt),
                @ret,
                255);

  result:=pchar(@ret);
end;



function date_slovo(date:TDate):string;
var s,s1:string;
begin

s:=date2str(date,'ddMMyyyy');
s1:=inttostr(strtoint(copy(s,1,2)));

case strtoint(copy(s,3,2)) of
01:s1:=s1+'            ����     ';
02:s1:=s1+'            ������    ';
03:s1:=s1+'            �������   ';
04:s1:=s1+'            �����    ';
05:s1:=s1+'            ������    ';
06:s1:=s1+'            ������    ';
07:s1:=s1+'            �����     ';
08:s1:=s1+'            ������    ';
09:s1:=s1+'            �������   ';
10:s1:=s1+'            ������    ';
11:s1:=s1+'            ��������� ';
12:s1:=s1+'            ������    ';

end;

result:=s1+'                         '+copy(s,7,2);

end;

function mon_slovo(mon:integer):string;
var s,s1:string;
begin



case mon of
01:s1:='�����';
02:s1:='�����';
03:s1:='��������';
04:s1:='������';
05:s1:='�������';
06:s1:='�������';
07:s1:='������';
08:s1:='�������';
09:s1:='��������';
10:s1:='�������';
11:s1:='��������';
12:s1:='�������';

end;

result:=s1;

end;









procedure ExportFile(dg:TDBGrid);
var excel,book,sheet:oleVariant;
  filename:string;
  i:integer;
  row,col:integer;
  dt:TDataSet;
  fld:TField;
  sd:TSaveDialog;
//  NeedToUninitialize:boolean;

begin

{  sd:=TSaveDialog.Create(application);
  try
    sd.FileName := 'Table.xls';
    sd.Filter := 'Excel files (*.xls)|*.XLS';
    if not sd.Execute then exit;
    filename:=sd.FileName;
  finally
    sd.Free;
  end;


  DeleteFile(PAnsiChar(filename));
  if FileExists(filename) then
  begin
    MessageDlg('�� ���� ������� ���� ', mtError, [mbCancel], 0);
    exit;
  end;

}
  Succeeded(CoInitialize(nil));
//  NeedToUninitialize := Succeeded(CoInitialize(nil));

  StartWait;
  dt:=dg.DataSource.DataSet;

//  MainForm.Progress.Min:=1;
//  MainForm.Progress.Max:=dt.RecordCount;
//  MainForm.Progress.Position:=1;

//  MainForm.StatusBar.Visible:=false;
//  MainForm.PanelProgress.Visible:=true;
  Application.ProcessMessages;



  dt.DisableControls;
  excel := CreateOleObject('Excel.Application');
  try
    book := excel.Workbooks.Add;
    sheet := book.Worksheets[1];

    row:=1;

    dt.First;

      col:=1;
      for i:=0 to dg.Columns.Count-1 do
      begin
        Sheet.cells[row,col].value:=dg.Columns[i].Field.DisplayLabel;// .FullName;
        inc(col);
      end;
      inc(row);

    while not dt.eof do
    begin

      col:=1;
      for i:=0 to dg.Columns.Count-1 do
      begin
//        sheet.cells[row,col].color:=dg.Columns[i].Color;

        fld:=dg.Columns[i].Field;
        if (VarType(fld.Value)=varOleStr) or (VarType(fld.Value)=varString)
        then sheet.cells[row,col].value:=String(fld.Value)
        else if (VarType(fld.Value) in [varSmallint,varInteger,varLongWord,varShortInt]) then sheet.cells[row,col].value:=fld.asInteger
        else if (VarType(fld.Value) in [varSingle,varDouble,varCurrency]) then sheet.cells[row,col].value:=fld.asFloat
        else sheet.cells[row,col].value:=fld.Value;
//        sheet.Cells[row,col].NumberFormat:='0.00';

        inc(col);
      end;

      dt.next;
      inc(row);

//      MainForm.Progress.Position:=dt.RecNo;
//      Application.ProcessMessages;
    end;

  finally
    dt.enableControls;
//    try book.saveas(filename,$0000002b,'','',false,true,0,3,false); except end;
//    excel.quit;
    excel.visible:=true;



//    MainForm.Progress.Min:=1;
//    MainForm.Progress.Max:=26;
//    MainForm.Progress.Position:=1;

//    MainForm.StatusBar.Visible:=true;
//    MainForm.PanelProgress.Visible:=false;

    StopWait;

  end;
end;


procedure ExportFile(dt:TDataSet);
var excel,book,sheet:oleVariant;
  filename:string;
  i:integer;
  row,col:integer;
  sd:TSaveDialog;
//  NeedToUninitialize:boolean;

begin

{  sd:=TSaveDialog.Create(application);
  try
    sd.FileName := 'Table.xls';
    sd.Filter := 'Excel files (*.xls)|*.XLS';
    if not sd.Execute then exit;
    filename:=sd.FileName;
  finally
    sd.Free;
  end;
//  NeedToUninitialize:boolean;

  DeleteFile(PAnsiChar(filename));
  if FileExists(filename) then
  begin
    MessageDlg('�� ���� ������� ���� ', mtError, [mbCancel], 0);
    exit;
  end;
 }

  Succeeded(CoInitialize(nil));
//  NeedToUninitialize := Succeeded(CoInitialize(nil));

  StartWait;
//  MainForm.StartProgress(1,dt.RecordCount);
  Application.ProcessMessages;


  dt.DisableControls;
  excel := CreateOleObject('Excel.Application');

  try
    book := excel.Workbooks.Add;
    sheet := book.Worksheets[1];

    row:=1;

    dt.First;

      col:=1;
      for i:=0 to dt.Fields.Count-1 do
      begin
        Sheet.cells[row,col].value:=dt.Fields[i].DisplayLabel;// .FullName;
        inc(col);
      end;
      inc(row);

    while not dt.eof do
    begin

      col:=1;
      for i:=0 to dt.Fields.Count-1 do
      begin
        if (VarType(dt.Fields[i].Value)=varOleStr) or (VarType(dt.Fields[i].Value)=varString)
        then sheet.cells[row,col].value:=String(dt.Fields[i].Value)
        else sheet.cells[row,col].value:=dt.Fields[i].Value;
        sheet.cells[row,col].NumberFormat := 'General';
        inc(col);
      end;

      dt.next;
      inc(row);

//      MainForm.UpdateProgress(dt.RecNo);
//      Application.ProcessMessages;
    end;

  finally
    dt.enableControls;
//    try book.saveas(filename,$0000002b,'','',false,true,0,3,false); except end;
//    excel.quit;
    excel.visible:=true;


//    MainForm.StopProgress;

    StopWait;
  end;
end;

function getVersionInfo(tag:string):string;
var
  Stream: TCustomMemoryStream;
  Size:Smallint	;
  s:array[1..2048] of char;
  s1:array[1..2048] of char;
//  st:string;
  i,j:integer;
//  p:PChar;
  res:string;
  n:integer;

function memPos(m:array of char;s:string):integer;
function cpy(m:array of char;st,len:integer):string;
var i:integer;
begin
  result:='';
  for i:=st to st+len-1 do
    result:=result+m[i];
end;

var i:integer;
ss:string;
begin
  result:=-1;
  for i:=low(m) to high(m)-length(s) do
  begin
  ss:=cpy(m,i,length(s));
  if cpy(m,i,length(s))=s then
  begin
    result:=i;
    break;
  end;
  end;
end;



begin
  res:='';
  Stream := TResourceStream.CreateFromId(HInstance, 1, RT_VERSION);
  try
    stream.Read(size, 2);
    stream.Read(s,size-2);
  finally
    Stream.Free;
  end;

  j:=0;
  for i:=(156 div 2)  to (size div 2)  do
  begin
    inc(j);
    s1[j]:=s[i*2+1];
  end;
  s1[j+1]:=#0;
  i:=mempos(s1,tag);
  if i<>-1 then
  begin
    j:=i+3+length('CompanyName');
    res:='';
    n:=0;
    while s1[j]<>#0 do
    begin
      if (s1[j]='.') then
        if n=3 then break
        else inc(n);

      res:=res+s1[j];
      inc(j);
    end;
  end;

  result:=res;
end;


constructor TrpVersionInfo.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  SetVersionInfo;
end;

function TrpVersionInfo.GetCompanyName: string;
begin
  result := GeTVersionInfo(vtCompanyName);
end;

function TrpVersionInfo.GetFileDescription: string;
begin
  result := GeTVersionInfo(vtFileDescription);
end;

function TrpVersionInfo.GetFileVersion: string;
begin
  result := GeTVersionInfo(vtFileVersion);
end;

function TrpVersionInfo.GetInternalName: string;
begin
  result := GeTVersionInfo(vtInternalName);
end;

function TrpVersionInfo.GetLegalCopyright: string;
begin
  result := GeTVersionInfo(vtLegalCopyright);
end;

function TrpVersionInfo.GetLegalTradeMark: string;
begin
  result := GeTVersionInfo(vtLegalTradeMark);
end;

function TrpVersionInfo.GetOriginalFileName: string;
begin
  result := GeTVersionInfo(vtOriginalFileName);
end;

function TrpVersionInfo.GetProductName: string;
begin
  result := GeTVersionInfo(vtProductName);
end;

function TrpVersionInfo.GetProductVersion: string;
begin
  result := GeTVersionInfo(vtProductVersion);
end;

function TrpVersionInfo.GetComments: string;
begin
  result := GeTVersionInfo(vtComments);
end;

function TrpVersionInfo.GeTVersionInfo(VersionType: TVersionType): string;
begin
  result := FVersionInfo[ord(VersionType)];
end;

procedure TrpVersionInfo.SeTVersionInfo;
var
  sAppName,sVersionType : string;
  iAppSize, iLenOfValue, i: integer;
  pcBuf,pcValue: PChar;
begin
  sAppName := Application.ExeName;
  iAppSize:= GetFileVersionInfoSize(PChar(sAppName),DWORD(iAppSize));
  if iAppSize > 0 then
  begin
    pcBuf := AllocMem(iAppSize);
    GetFileVersionInfo(PChar(sAppName),0,iAppSize,pcBuf);
    for i := 0 to Ord(High(TVersionType)) do
    begin
      sVersionType := GetEnumName(TypeInfo(TVersionType),i);
      sVersionType := Copy(sVersionType,3,length(sVersionType));
      if VerQueryValue(pcBuf,PChar('StringFileInfo\040904E4\'+
         sVersionType), Pointer(pcValue),DWORD(iLenOfValue))
         then
        FVersionInfo[i] := pcValue;
    end;
    FreeMem(pcBuf,iAppSize);
  end;
end;

procedure setYearBox(box:TComboBox;curr:TDate);
var i:integer;
begin
  if curr=0 then curr:=now;
  Box.Items.Clear;
  for i:=yearof(curr)-DELTA_YEAR to yearof(curr) do
    Box.Items.Add(inttostr(i));
  Box.ItemIndex:=Box.Items.Count-1;

end;


function roundMoney(s:currency;cent:integer):currency;
var kop:integer;
  ost:integer;
  part:integer;
begin
  if cent>1 then
  begin
    kop := floor(s*100);
    ost := kop mod cent;
    part := cent div 2 + cent mod 2;
    if ost < part then kop := kop-ost
    else kop := kop + (cent-ost);
    result:=kop/100;
  end
  else
    result:=s;
end;

function var2int(v:variant):integer;
begin
  result:=0;
  if vartype(v) in [varSmallint,varInteger] then
    result:=v;
end;

function var2currency(v:variant):currency;
begin
  result:=0;
  if vartype(v) in [varSmallint,varInteger,varSingle,varDouble,varCurrency] then
    result:=v;
end;


function mon_slovoDt(date:TDate):string;
var s,s1:string;
begin

s:=date2str(date,'ddMMyyyy');
s1:=inttostr(strtoint(copy(s,1,2)));

case strtoint(copy(s,3,2)) of
01:s1:='�����';
02:s1:='�����';
03:s1:='��������';
04:s1:='������';
05:s1:='�������';
06:s1:='�������';
07:s1:='������';
08:s1:='�������';
09:s1:='��������';
10:s1:='�������';
11:s1:='��������';
12:s1:='�������';

end;

result:=s1+' '+copy(s,5,4);

end;

function mon_slovoDt2(date:TDate):string;
var s,s1,s2:string;
begin

s:=date2str(date,'ddMMyyyy');
s1:=inttostr(strtoint(copy(s,1,2)));

case strtoint(copy(s,3,2)) of
01:s2:='����';
02:s2:='������';
03:s2:='��������';
04:s2:='�����';
05:s2:='������';
06:s2:='������';
07:s2:='�����';
08:s2:='������';
09:s2:='�������';
10:s2:='������';
11:s2:='���������';
12:s2:='������';

end;

result:=s1+' '+s2+' '+copy(s,5,4);

end;

procedure ReindexTable(Table: TTable);
var
  WasActive: Boolean;
  WasExclusive: Boolean;
begin
  with Table do begin
    WasActive := Active;
    WasExclusive := Exclusive;
    DisableControls;
    try
      if not (WasActive and WasExclusive) then Close;
      try
        Exclusive := True;
        Open;
        Check(dbiRegenIndexes(Handle));
      finally
        if not (WasActive and WasExclusive) then begin
          Close;
          Exclusive := WasExclusive;
          Active := WasActive;
        end;
      end;
    finally
      EnableControls;
    end;
  end;
end;




end.
