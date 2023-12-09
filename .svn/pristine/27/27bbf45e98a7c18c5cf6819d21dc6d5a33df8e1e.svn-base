inherited ViewAutorizacaoGerencial: TViewAutorizacaoGerencial
  Caption = 'ViewAutorizacaoGerencial'
  ClientHeight = 350
  ClientWidth = 600
  ExplicitWidth = 600
  ExplicitHeight = 350
  TextHeight = 21
  object lblReferente: TLabel [0]
    Left = 53
    Top = 48
    Width = 82
    Height = 25
    Caption = 'Referente:'
    Font.Charset = ANSI_CHARSET
    Font.Color = 5395026
    Font.Height = -19
    Font.Name = 'Segoe UI Semilight'
    Font.Style = []
    ParentFont = False
  end
  object lblSolicitadoPor: TLabel [1]
    Left = 17
    Top = 88
    Width = 118
    Height = 25
    Caption = 'Solicitado por:'
    Font.Charset = ANSI_CHARSET
    Font.Color = 5395026
    Font.Height = -19
    Font.Name = 'Segoe UI Semilight'
    Font.Style = []
    ParentFont = False
  end
  object lblSolicitacao: TLabel [2]
    Left = 43
    Top = 128
    Width = 92
    Height = 25
    Caption = 'Solicita'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = 5395026
    Font.Height = -19
    Font.Name = 'Segoe UI Semilight'
    Font.Style = []
    ParentFont = False
  end
  object lblValorNormal: TLabel [3]
    Left = 23
    Top = 176
    Width = 112
    Height = 25
    Caption = 'Valor Normal:'
    Font.Charset = ANSI_CHARSET
    Font.Color = 5395026
    Font.Height = -19
    Font.Name = 'Segoe UI Semilight'
    Font.Style = []
    ParentFont = False
  end
  object lblTitReferente: TLabel [4]
    Left = 149
    Top = 48
    Width = 351
    Height = 25
    Caption = 'TITULO DA OPERA'#199#195'O QUE SER'#193' FEITA'
    Font.Charset = ANSI_CHARSET
    Font.Color = 196
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTitSolicitadoPor: TLabel [5]
    Left = 149
    Top = 88
    Width = 196
    Height = 25
    Caption = 'NOME DO OPERADOR'
    Font.Charset = ANSI_CHARSET
    Font.Color = 196
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTitSolicitacao: TLabel [6]
    Left = 149
    Top = 128
    Width = 297
    Height = 25
    Caption = '00 - Nome da A'#231#227'o que ser'#225' Feita'
    Font.Charset = ANSI_CHARSET
    Font.Color = 196
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTitValorNormal: TLabel [7]
    Left = 149
    Top = 176
    Width = 76
    Height = 25
    Caption = '1.500,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = 196
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblSenhaAutorizacao: TLabel [8]
    Left = 183
    Top = 224
    Width = 183
    Height = 25
    Caption = 'Senha de Autoriza'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = 5395026
    Font.Height = -19
    Font.Name = 'Segoe UI Semilight'
    Font.Style = []
    ParentFont = False
  end
  inherited pnlTopo: TPanel
    Width = 600
    ExplicitWidth = 600
    inherited lblTitulo: TLabel
      Width = 191
      Height = 34
      Caption = 'Autoriza'#231#227'o Gerencial'
      ExplicitWidth = 191
    end
    inherited pnlFechar: TPanel
      Left = 532
      ExplicitLeft = 532
    end
  end
  inherited pnlRodape: TPanel
    Top = 310
    Width = 600
    ExplicitTop = 310
    ExplicitWidth = 600
    inherited pnlBtnNovo: TPanel
      Left = -5000
      Align = alNone
      ExplicitLeft = -5000
    end
    inherited pnlBtnSalvar: TPanel
      Left = 460
      ExplicitLeft = 460
      inherited ShapeBtnSalvar: TShape
        Brush.Color = 40192
      end
      inherited btnSalvar: TSpeedButton
        Caption = 'Autorizar | F10'
        Glyph.Data = {00000000}
        Margin = -1
        OnClick = btnSalvarClick
      end
    end
    object pnlBtnCancelar: TPanel
      AlignWithMargins = True
      Left = 0
      Top = 1
      Width = 193
      Height = 38
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      BevelOuter = bvNone
      Padding.Left = 2
      Padding.Top = 2
      Padding.Right = 2
      Padding.Bottom = 2
      TabOrder = 2
      object ShapeBtnCancelar: TShape
        Left = 2
        Top = 2
        Width = 189
        Height = 34
        Align = alClient
        Brush.Color = 196
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitLeft = 0
        ExplicitTop = 1
        ExplicitWidth = 185
        ExplicitHeight = 50
      end
      object btnCancelar: TSpeedButton
        Left = 2
        Top = 2
        Width = 189
        Height = 34
        Cursor = crHandPoint
        Align = alClient
        Caption = 'N'#227'o Autorizar - Esc'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentFont = False
        OnClick = btnCancelarClick
        ExplicitLeft = 1
        ExplicitWidth = 116
      end
    end
  end
  object edtSenhaAutorizacao: TEdit [11]
    Left = 183
    Top = 255
    Width = 183
    Height = 29
    PasswordChar = '*'
    TabOrder = 2
    OnKeyDown = edtSenhaAutorizacaoKeyDown
  end
  inherited DS_Dados: TDataSource
    Left = 448
    Top = 88
  end
end
