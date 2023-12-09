object frmLoginWindow: TfrmLoginWindow
  Left = 343
  Top = 286
  Align = alClient
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Login'
  ClientHeight = 799
  ClientWidth = 1295
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 21
  object PTop: TPanel
    Left = -5000
    Top = 0
    Width = 350
    Height = 17
    BevelOuter = bvNone
    TabOrder = 0
    object ImgTop: TImage
      Left = 0
      Top = 0
      Width = 0
      Height = 0
      AutoSize = True
      Center = True
    end
  end
  object PLeft: TPanel
    Left = -5000
    Top = 17
    Width = 10
    Height = 124
    BevelOuter = bvNone
    TabOrder = 1
    object imgLeft: TImage
      Left = 0
      Top = 0
      Width = 0
      Height = 0
      AutoSize = True
      Center = True
      Transparent = True
    end
  end
  object PBottom: TPanel
    Left = -5000
    Top = 141
    Width = 350
    Height = 11
    BevelOuter = bvNone
    TabOrder = 2
    object ImgBottom: TImage
      Left = 0
      Top = 0
      Width = 0
      Height = 0
      AutoSize = True
      Center = True
    end
  end
  object pnlBackground: TPanel
    Left = 0
    Top = 0
    Width = 1295
    Height = 780
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object pnlLogoSupreme: TPanel
      Left = 0
      Top = 0
      Width = 1295
      Height = 200
      Align = alTop
      BevelOuter = bvNone
      Color = 9531663
      ParentBackground = False
      TabOrder = 0
      object imgLogoSupreme: TImage
        Left = 0
        Top = 0
        Width = 1295
        Height = 200
        Align = alClient
        Center = True
        ExplicitLeft = -6
        ExplicitTop = 27
        ExplicitWidth = 409
        ExplicitHeight = 710
      end
    end
    object pnlDadosLogin: TPanel
      Left = 0
      Top = 200
      Width = 1295
      Height = 540
      Align = alClient
      BevelOuter = bvNone
      Caption = 'ServiceConexao.FDConn'
      TabOrder = 1
      object PLogin: TPanel
        Left = 400
        Top = 50
        Width = 441
        Height = 380
        BevelOuter = bvNone
        Color = 13816530
        ParentBackground = False
        TabOrder = 0
        object pnlDadosLoginInterno: TPanel
          AlignWithMargins = True
          Left = 1
          Top = 1
          Width = 439
          Height = 378
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object lbEsqueci: TLabel
            Left = -5000
            Top = 246
            Width = 79
            Height = 13
            Cursor = crHandPoint
            Caption = 'Esqueci a senha'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            Visible = False
          end
          object LbSenha: TLabel
            Left = 73
            Top = 211
            Width = 50
            Height = 21
            Alignment = taRightJustify
            Caption = 'Senha :'
          end
          object LbUsuario: TLabel
            Left = 71
            Top = 156
            Width = 61
            Height = 21
            Alignment = taRightJustify
            Caption = 'Usu'#225'rio :'
          end
          object BtCancela: TBitBtn
            AlignWithMargins = True
            Left = -5000
            Top = 133
            Width = 185
            Height = 42
            Cursor = crHandPoint
            Margins.Left = 10
            Margins.Top = 10
            Margins.Right = 10
            Margins.Bottom = 10
            Cancel = True
            Caption = '[ CANCELAR E SAIR ]'
            Font.Charset = ANSI_CHARSET
            Font.Color = 10790052
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = False
            OnClick = BtCancelaClick
          end
          object btOK: TBitBtn
            AlignWithMargins = True
            Left = -5000
            Top = 81
            Width = 185
            Height = 42
            Cursor = crHandPoint
            Margins.Left = 10
            Margins.Top = 10
            Margins.Right = 10
            Margins.Bottom = 0
            Caption = '[ LOGAR NO SISTEMA ]'
            Font.Charset = ANSI_CHARSET
            Font.Color = 45824
            Font.Height = -16
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            TabStop = False
            OnClick = btOKClick
          end
          object EditSenha: TEdit
            Left = 138
            Top = 203
            Width = 225
            Height = 29
            Ctl3D = True
            MaxLength = 10
            ParentCtl3D = False
            PasswordChar = '*'
            TabOrder = 2
            Text = 'SUPREME'
            OnExit = EditSenhaExit
          end
          object pnlIconeLogin: TPanel
            Left = 0
            Top = 0
            Width = 439
            Height = 97
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 4
            object imgLogoLogin: TImage
              Left = 0
              Top = 0
              Width = 439
              Height = 97
              Cursor = crHandPoint
              Align = alClient
              Center = True
              ExplicitLeft = 32
              ExplicitTop = 107
              ExplicitWidth = 409
              ExplicitHeight = 778
            end
          end
          object EditUsuario: TComboBox
            Left = 138
            Top = 155
            Width = 225
            Height = 29
            BevelOuter = bvNone
            Style = csDropDownList
            CharCase = ecUpperCase
            TabOrder = 1
          end
          object pnlBtnMeuOk: TPanel
            AlignWithMargins = True
            Left = 0
            Top = 276
            Width = 439
            Height = 50
            Margins.Left = 0
            Margins.Top = 1
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alBottom
            BevelOuter = bvNone
            Padding.Left = 2
            Padding.Top = 2
            Padding.Right = 2
            Padding.Bottom = 2
            TabOrder = 5
            object ShapeBtnMeuOk: TShape
              Left = 2
              Top = 2
              Width = 435
              Height = 46
              Align = alClient
              Brush.Color = 7625228
              Pen.Style = psClear
              Shape = stRoundRect
              ExplicitLeft = 0
              ExplicitTop = 1
              ExplicitWidth = 185
              ExplicitHeight = 50
            end
            object btnMeuOk: TSpeedButton
              Left = 2
              Top = 2
              Width = 435
              Height = 46
              Cursor = crHandPoint
              Align = alClient
              Caption = 'ENTRAR NO SISTEMA'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Segoe UI Semilight'
              Font.Style = []
              ParentFont = False
              OnClick = btnMeuOkClick
              ExplicitLeft = -1
            end
          end
          object pnlBtnMeuCancelar: TPanel
            AlignWithMargins = True
            Left = 0
            Top = 327
            Width = 439
            Height = 50
            Margins.Left = 0
            Margins.Top = 1
            Margins.Right = 0
            Margins.Bottom = 1
            Align = alBottom
            BevelOuter = bvNone
            Padding.Left = 2
            Padding.Top = 2
            Padding.Right = 2
            Padding.Bottom = 2
            TabOrder = 6
            object ShapeBtnMeuCancelar: TShape
              Left = 2
              Top = 2
              Width = 435
              Height = 46
              Align = alClient
              Brush.Color = 11908533
              Pen.Style = psClear
              Shape = stRoundRect
              ExplicitLeft = 0
              ExplicitTop = 1
              ExplicitWidth = 185
              ExplicitHeight = 50
            end
            object btnMeuCancelar: TSpeedButton
              Left = 2
              Top = 2
              Width = 435
              Height = 46
              Cursor = crHandPoint
              Align = alClient
              Caption = 'CANCELAR E SAIR'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Segoe UI Semilight'
              Font.Style = []
              ParentFont = False
              OnClick = btnMeuCancelarClick
              ExplicitLeft = -1
            end
          end
        end
      end
    end
    object pnlIfoLogin: TPanel
      Left = 0
      Top = 740
      Width = 1295
      Height = 40
      Align = alBottom
      BevelOuter = bvNone
      Color = 7822349
      ParentBackground = False
      TabOrder = 2
      object lblSiteSupreme: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 1285
        Height = 30
        Cursor = crHandPoint
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        Alignment = taCenter
        Caption = 'www.supreme.com'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        OnMouseEnter = lblSiteSupremeMouseEnter
        OnMouseLeave = lblSiteSupremeMouseLeave
        ExplicitWidth = 127
        ExplicitHeight = 21
      end
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 780
    Width = 1295
    Height = 19
    Panels = <
      item
        Alignment = taRightJustify
        Text = 'Tentativa: '
        Width = 60
      end
      item
        Alignment = taCenter
        Width = 80
      end
      item
        Alignment = taRightJustify
        Text = 'Limite de Tentativas: '
        Width = 130
      end
      item
        Alignment = taCenter
        Width = 50
      end>
  end
end
