object PrevActWhIn_F: TPrevActWhIn_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1055#1088#1086#1089#1090#1086#1077' '#1089#1082#1083#1072#1076#1089#1082#1086#1077' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086
  ClientHeight = 425
  ClientWidth = 518
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnMouseWheel = FormMouseWheel
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 518
    Height = 40
    ButtonHeight = 38
    ButtonWidth = 39
    Caption = 'ToolBar1'
    DrawingStyle = dsGradient
    Images = Main_F.ImL_32
    TabOrder = 0
    object BtnPrint: TToolButton
      Left = 0
      Top = 0
      Caption = 'BtnPrint'
      ImageIndex = 20
      OnClick = BtnPrintClick
    end
  end
  object frxPrevWhActIn: TfrxPreview
    Left = 0
    Top = 40
    Width = 518
    Height = 385
    Align = alClient
    OutlineVisible = True
    OutlineWidth = 121
    ThumbnailVisible = False
    FindFmVisible = False
    UseReportHints = True
    OutlineTreeSortType = dtsUnsorted
    HideScrolls = False
  end
end
