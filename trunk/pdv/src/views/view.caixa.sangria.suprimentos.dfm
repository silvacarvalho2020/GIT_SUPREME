inherited ViewSangriaSuprimento: TViewSangriaSuprimento
  Caption = 'ViewSangriaSuprimento'
  ClientHeight = 293
  ClientWidth = 577
  ExplicitWidth = 577
  ExplicitHeight = 293
  TextHeight = 21
  object lblValor: TLabel [0]
    Left = 24
    Top = 96
    Width = 61
    Height = 37
    Caption = 'Valor'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  inherited pnlTopo: TPanel
    Width = 577
    ExplicitWidth = 577
    inherited lblTitulo: TLabel
      Width = 187
      Height = 34
      Caption = 'Sangria / Suprimento'
      ExplicitWidth = 187
    end
    inherited pnlFechar: TPanel
      Left = 509
      ExplicitLeft = 509
    end
  end
  inherited pnlRodape: TPanel
    Top = 253
    Width = 577
    ExplicitTop = 253
    ExplicitWidth = 577
    inherited pnlBtnNovo: TPanel
      Left = 317
      ExplicitLeft = 317
      inherited btnNovo: TSpeedButton
        OnClick = btnNovoClick
      end
    end
    inherited pnlBtnSalvar: TPanel
      Left = 437
      Enabled = False
      ExplicitLeft = 437
      inherited ShapeBtnSalvar: TShape
        Brush.Color = 7960955
      end
      inherited btnSalvar: TSpeedButton
        OnClick = btnSalvarClick
        ExplicitTop = 2
        ExplicitWidth = 136
        ExplicitHeight = 34
      end
    end
  end
  object pnlTopoSuprimentosSangrias: TPanel [3]
    Left = 0
    Top = 36
    Width = 577
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object rdoSuprimento: TRadioButton
      AlignWithMargins = True
      Left = 5
      Top = 0
      Width = 228
      Height = 41
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = '[ SUPRIMENTOS ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object rdoSangrias: TRadioButton
      Left = 410
      Top = 0
      Width = 167
      Height = 41
      Cursor = crHandPoint
      Align = alRight
      Caption = '[ SANGRIAS ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object edtValor: TsCurrencyEdit [4]
    Left = 24
    Top = 139
    Width = 209
    Height = 29
    TabOrder = 3
  end
  inherited DS_Dados: TDataSource
    OnStateChange = DS_DadosStateChange
    Left = 304
    Top = 120
  end
end
