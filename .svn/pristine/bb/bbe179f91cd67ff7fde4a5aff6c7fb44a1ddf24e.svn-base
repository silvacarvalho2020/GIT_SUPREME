inherited ViewAbrirCaixaUsuario: TViewAbrirCaixaUsuario
  Caption = 'ViewAbrirCaixaUsuario'
  ClientHeight = 369
  ClientWidth = 618
  OnShow = FormShow
  ExplicitWidth = 618
  ExplicitHeight = 369
  TextHeight = 21
  inherited pnlTopo: TPanel
    Width = 618
    ExplicitWidth = 618
    inherited lblTitulo: TLabel
      Width = 214
      Height = 34
      Caption = 'USUARIO - Abrir o Caixa'
      ExplicitWidth = 214
    end
    inherited pnlFechar: TPanel
      Left = 550
      ExplicitLeft = 550
    end
  end
  inherited pnlRodape: TPanel
    Top = 329
    Width = 618
    ExplicitTop = 329
    ExplicitWidth = 618
    inherited pnlBtnNovo: TPanel
      Left = -5000
      Align = alNone
      ExplicitLeft = -5000
      inherited btnNovo: TSpeedButton
        ExplicitTop = 1
      end
    end
    inherited pnlBtnSalvar: TPanel
      Left = 478
      ExplicitLeft = 478
      inherited btnSalvar: TSpeedButton
        OnClick = btnSalvarClick
        ExplicitLeft = 2
        ExplicitTop = 1
        ExplicitWidth = 136
        ExplicitHeight = 34
      end
    end
  end
  object PC_AbrirCaixaUsuario: TPageControl [2]
    Left = 0
    Top = 36
    Width = 618
    Height = 293
    Cursor = crHandPoint
    ActivePage = tab_abrirCaixa
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI Semilight'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object tab_abrirCaixa: TTabSheet
      Caption = 'Abrir o Caixa'
      object lblConta: TLabel
        Left = 3
        Top = 21
        Width = 43
        Height = 21
        Caption = 'Conta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblSaldo: TLabel
        Left = 479
        Top = 21
        Width = 41
        Height = 21
        Caption = 'Saldo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblOperador: TLabel
        Left = 3
        Top = 87
        Width = 71
        Height = 21
        Caption = 'Operador'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblData: TLabel
        Left = 3
        Top = 159
        Width = 37
        Height = 21
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblHora: TLabel
        Left = 195
        Top = 159
        Width = 40
        Height = 21
        Caption = 'Hora:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTrocoInicial: TLabel
        Left = 392
        Top = 159
        Width = 92
        Height = 21
        Caption = 'Troco Inicial:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtConta: TDBEdit
        Left = 3
        Top = 48
        Width = 473
        Height = 33
        TabOrder = 0
      end
      object edtSaldo: TDBEdit
        Left = 479
        Top = 48
        Width = 121
        Height = 33
        TabOrder = 1
      end
      object cbxOperador: TComboBox
        Left = 3
        Top = 114
        Width = 597
        Height = 33
        Style = csDropDownList
        TabOrder = 2
        Items.Strings = (
          'MICHAEL RM'
          'RENARIA RM'
          'TESTE RM')
      end
      object edtDtaAbertura: TDBDateEdit
        Left = 3
        Top = 186
        Width = 175
        Height = 33
        Cursor = crHandPoint
        DataField = 'DTAABRE'
        DataSource = DS_Dados
        ReadOnly = True
        DialogTitle = 'Selecione uma Data'
        GlyphKind = gkDropDown
        NumGlyphs = 1
        TabOrder = 3
      end
      object edtTrocoInicial: TJvDBCalcEdit
        Left = 392
        Top = 186
        Width = 208
        Height = 33
        BevelInner = bvNone
        BevelOuter = bvNone
        Flat = False
        ParentFlat = False
        ButtonFlat = True
        ClickKey = 0
        DisplayFormat = ',0.00'
        FormatOnEditing = True
        ImageKind = ikCustom
        ShowButton = False
        TabOrder = 4
        ClipboardCommands = []
        DecimalPlacesAlwaysShown = True
        DataField = 'VALORINICIAL'
        DataSource = DS_Dados
      end
      object edtHraAbertura: TJvDBDateTimePicker
        Left = 195
        Top = 186
        Width = 186
        Height = 33
        BevelInner = bvNone
        BevelOuter = bvNone
        Date = 45167.000000000000000000
        Time = 0.826176956019480700
        DoubleBuffered = False
        DragCursor = crHandPoint
        Kind = dtkTime
        ParentDoubleBuffered = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 5
        DropDownDate = 45167.000000000000000000
        DataField = 'HRAABRE'
        DataSource = DS_Dados
        ReadOnly = True
      end
    end
    object tab_caixasAbertos: TTabSheet
      Caption = 'Caixas Abertos'
      ImageIndex = 1
    end
  end
  inherited DS_Dados: TDataSource
    Left = 368
    Top = 64
  end
end
