unit movingwnd;

interface


procedure ShowMovingWindow(aText:String);

implementation
{.$define useIDAF}
{.$define intwndproc}

uses
{$ifdef useIDAF}
  idAntiFreeze,
{$endif}
SysUtils, Classes, Windows, Forms, Controls, StdCtrls, Graphics;

procedure ShowMovingWindow(aText:String);
var
  ShellHandle:THandle;
  Rect:TRect;
  NeedTop:Integer;
  HintForm:TForm;
  HintLabel:TLabel;
{$ifdef intwndproc}
  ActiveWnd:THandle;
{$endif}
{$ifdef useIDAF}
  ida:TIdAntiFreeze;
{$endif}
begin
  //Ищем "окошко с часиками"
  ShellHandle := FindWindow('Shell_TrayWnd', nil);
  if ShellHandle = 0 then
    exit;
{$ifdef useIDAF}
  ida:=TIdAntiFreeze.Create(nil);
{$endif}
  GetWindowRect(ShellHandle, Rect);
  //Создаем форму
  HintForm:=TForm.Create(nil);
  with HintForm do
  begin
    Width:=245;
    Height:=100;
    Color:=clSkyBlue;
    BorderStyle:=bsNone;
    //Создаём текст
    HintLabel:=TLabel.Create(nil);
    with HintLabel do
    begin
        Parent:=HintForm;
        WordWrap:=true;
        Caption:=' '+Trim(aText)+' ';
        Align:=alClient;
        Layout:=tlCenter;
        Alignment:=taCenter;
    end;

    AlphaBlend:=true;
    AlphaBlendValue:=220;
{$ifdef intwndproc}
    ActiveWnd:=GetActiveWindow;
{$endif}
    ShowWindow(Handle,SW_SHOWNOACTIVATE);
{$ifdef intwndproc}
    SetActiveWindow(ActiveWnd);
{$endif}
    Left:=Screen.Width-Width;
    Top:=Screen.Height-20;
    //Выезжаем вверх
    NeedTop:=Rect.Top-Height;
    while Top>NeedTop do
    begin
      Top:=Top-2;
      Repaint;
{$ifdef useIDAF}
      ida.Sleep(10);
      ida.Process;
{$else}
      Sleep(10);
{$endif}
    end;
{$ifdef useIDAF}
      ida.Sleep(2000);
{$else}
      Sleep(2000);
{$endif}
    //Выезжаем вниз
    NeedTop:=Screen.Width-20;
    while Top<NeedTop do
    begin
      Top:=Top+2;
      Repaint;
{$ifdef useIDAF}
      ida.Sleep(10);
      ida.Process;
{$else}
      Sleep(10);
{$endif}
    end;
    HintLabel.Free;
    Free;
  end;
{$ifdef useIDAF}
  ida.Free;
{$endif}
end;
end.
