object TnvedUpdate_F: TTnvedUpdate_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1058#1053#1042#1069#1044'. '#1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072
  ClientHeight = 135
  ClientWidth = 598
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClick = FormClick
  OnShow = FormShow
  DesignSize = (
    598
    135)
  PixelsPerInch = 96
  TextHeight = 13
  object Btn_Update: TButton
    Left = 224
    Top = 40
    Width = 153
    Height = 25
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1058#1053#1042#1069#1044'(tnved4)'
    TabOrder = 0
    OnClick = Btn_UpdateClick
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 118
    Width = 598
    Height = 17
    Align = alBottom
    Step = 1
    TabOrder = 1
  end
  object OpenDlg1: TOpenDialog
    FileName = 'C:\FB_DB\TNVED3.DBF'
    Filter = 'DbfFiles|*.dbf;*.dbt'
    InitialDir = 'c:\'
    Left = 56
    Top = 8
  end
  object Dbf1: TDbf
    IndexDefs = <>
    TableLevel = 4
    Left = 120
    Top = 16
  end
end
