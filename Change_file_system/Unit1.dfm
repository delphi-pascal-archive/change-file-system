object Form1: TForm1
  Left = 227
  Top = 130
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Change file system'
  ClientHeight = 389
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 224
    Width = 247
    Height = 16
    Caption = #1055#1091#1090#1100' '#1082' '#1087#1072#1087#1082#1077' '#1080#1083#1080' '#1076#1080#1089#1082#1091' '#1076#1083#1103' '#1089#1083#1077#1078#1077#1085#1080#1103':'
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 659
    Height = 217
    Align = alTop
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 280
    Width = 121
    Height = 25
    Caption = 'Start'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 136
    Top = 280
    Width = 121
    Height = 25
    Caption = 'stop'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 248
    Width = 457
    Height = 24
    TabOrder = 3
    Text = 'C:\'
  end
  object CheckBox1: TCheckBox
    Left = 280
    Top = 224
    Width = 190
    Height = 21
    Caption = #1042#1082#1083#1102#1095#1072#1103' '#1087#1086#1076#1082#1072#1090#1072#1083#1086#1075#1080
    Checked = True
    State = cbChecked
    TabOrder = 4
  end
  object CheckBox2: TCheckBox
    Left = 488
    Top = 223
    Width = 145
    Height = 21
    Caption = #1080#1084#1077#1085#1080' '#1092#1072#1081#1083#1072
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object CheckBox3: TCheckBox
    Left = 488
    Top = 242
    Width = 153
    Height = 21
    Caption = #1080#1084#1077#1085#1080' '#1087#1072#1087#1082#1080
    Checked = True
    State = cbChecked
    TabOrder = 6
  end
  object CheckBox4: TCheckBox
    Left = 488
    Top = 262
    Width = 161
    Height = 21
    Caption = #1072#1090#1088#1080#1073#1091#1090#1086#1074' '#1092#1072#1081#1083#1072
    Checked = True
    State = cbChecked
    TabOrder = 7
  end
  object CheckBox5: TCheckBox
    Left = 488
    Top = 282
    Width = 169
    Height = 21
    Caption = #1088#1072#1079#1084#1077#1088#1072
    Checked = True
    State = cbChecked
    TabOrder = 8
  end
  object CheckBox6: TCheckBox
    Left = 488
    Top = 301
    Width = 169
    Height = 21
    Caption = #1087#1086#1089#1083#1077#1076#1085#1077#1081' '#1079#1072#1087#1080#1089#1080
    Checked = True
    State = cbChecked
    TabOrder = 9
  end
  object CheckBox7: TCheckBox
    Left = 488
    Top = 321
    Width = 169
    Height = 21
    Caption = #1087#1086#1089#1083#1077#1076#1085#1077#1075#1086' '#1076#1086#1089#1090#1091#1087#1072
    Checked = True
    State = cbChecked
    TabOrder = 10
  end
  object CheckBox8: TCheckBox
    Left = 488
    Top = 341
    Width = 113
    Height = 21
    Caption = #1089#1086#1079#1076#1072#1085#1080#1103
    Checked = True
    State = cbChecked
    TabOrder = 11
  end
  object CheckBox9: TCheckBox
    Left = 488
    Top = 360
    Width = 129
    Height = 21
    Caption = #1087#1088#1072#1074' '#1076#1086#1089#1090#1091#1087#1072
    Checked = True
    State = cbChecked
    TabOrder = 12
  end
end
