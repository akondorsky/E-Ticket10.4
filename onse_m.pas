unit onse_m;

interface

uses
SysUtils, Classes, Windows, Forms;

type
TSharedMem = class(TObject)
public
FHandle: THandle;
FCreated: Boolean;
Buffer: Pointer;
constructor Create(const Name: string);
destructor Destroy; override;
end;

var FAID: PInteger;
FSharedMem: TSharedMem;
CLIENT_NAME:string;

procedure CheckPreviousInstance;
function If_Running(var Hndl: THandle): Boolean;
procedure one_init;
procedure one_free;

implementation

procedure CheckPreviousInstance;
var
H: THandle;
s:string;
begin
if If_Running(H) then
begin
s:='Приложение ' + ExtractFileName(Application.ExeName)+' уже запущено';
Application.MessageBox(PChar(s),'Внимание',MB_ICONASTERISK+MB_OK);
if IsIconic(H) then ShowWindow(H, SW_RESTORE);
SetForegroundWindow(H);
Halt(0);
end;
end;

function If_Running(var Hndl: THandle): Boolean;
var
SharedMem: TSharedMem;
begin
SharedMem := TSharedMem.Create(CLIENT_NAME);
Hndl := PHandle(SharedMem.Buffer)^;
Result := Hndl <> 0;
SharedMem.Free;
end;

constructor TSharedMem.Create(const Name: string);
begin
try
FHandle := CreateFileMapping($FFFFFFFF, nil,
PAGE_READWRITE, 0, 4, PChar(Name));
if FHandle = 0 then abort;
FCreated := GetLastError = 0;
Buffer := MapViewOfFile(FHandle, FILE_MAP_WRITE, 0, 0, 4);
if Buffer = nil then abort;
except
raise Exception.Create(Format('Error creating shared memory %s (%d)',
[Name, GetLastError]));
end;
end;

destructor TSharedMem.Destroy;
begin
if Buffer <> nil then UnmapViewOfFile(Buffer);
if FHandle <> 0 then CloseHandle(FHandle);
end;

procedure one_free;
begin
FSharedMem.Free;
end;

procedure one_init;
begin
CLIENT_NAME:=ExtractFileName(Application.ExeName);
CheckPreviousInstance;
FSharedMem := TSharedMem.Create(CLIENT_NAME);
FAID := FSharedMem.Buffer;
FAID^ := Application.Handle;
end;

initialization
one_init;
finalization
one_free;
end.
