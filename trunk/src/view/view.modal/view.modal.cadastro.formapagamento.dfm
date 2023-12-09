inherited ViewCadastroPagamento: TViewCadastroPagamento
  Caption = 'ViewCadastroPagamento'
  ClientHeight = 330
  ClientWidth = 696
  OnShow = FormShow
  ExplicitWidth = 696
  ExplicitHeight = 330
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 21
    Top = 48
    Width = 39
    Height = 15
    Caption = 'Codigo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 20
    Top = 107
    Width = 77
    Height = 15
    Caption = 'Cliente Padr'#227'o'
    FocusControl = edtclientepadrao
  end
  object Label3: TLabel [2]
    Left = 111
    Top = 48
    Width = 184
    Height = 15
    Caption = 'Descri'#231#227'o da Forma de Pagamento'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 24
    Top = 157
    Width = 37
    Height = 15
    Caption = 'Moeda'
  end
  object Label5: TLabel [4]
    Left = 319
    Top = 157
    Width = 69
    Height = 15
    Caption = 'Gera Receber'
  end
  object Label6: TLabel [5]
    Left = 304
    Top = 107
    Width = 29
    Height = 15
    Caption = 'Prazo'
    FocusControl = DBEdit3
  end
  object Label7: TLabel [6]
    Left = 392
    Top = 107
    Width = 63
    Height = 15
    Caption = 'Desconto %'
    FocusControl = DBEdit3
  end
  object Label8: TLabel [7]
    Left = 147
    Top = 105
    Width = 44
    Height = 15
    Caption = 'Atacado'
  end
  object Label9: TLabel [8]
    Left = 229
    Top = 107
    Width = 22
    Height = 15
    Caption = 'PDV'
  end
  object Label10: TLabel [9]
    Left = 487
    Top = 107
    Width = 63
    Height = 15
    Caption = 'Aumento %'
    FocusControl = DBEdit3
  end
  object Label11: TLabel [10]
    Left = 581
    Top = 105
    Width = 43
    Height = 15
    Caption = 'Parcelas'
    FocusControl = DBEdit3
  end
  inherited pnlTopo: TPanel
    Width = 696
    TabOrder = 1
    ExplicitWidth = 696
    inherited pnlBtnFechar: TPanel
      Left = 620
      ExplicitLeft = 620
    end
    inherited pnlDadosTitulo: TPanel
      Width = 620
      ExplicitWidth = 620
      inherited pnlInfoTitulo: TPanel
        Width = 305
        ExplicitWidth = 305
        inherited lblNomeSistema: TLabel
          Width = 255
          Height = 27
          Caption = 'Cadastro Forma de Pagamento'
          ExplicitWidth = 255
        end
      end
    end
    inherited pnlLineTitulo: TPanel
      Width = 696
      ExplicitWidth = 696
    end
  end
  inherited pnlRodapeCadastro: TPanel
    Top = 290
    Width = 696
    TabOrder = 2
    ExplicitTop = 290
    ExplicitWidth = 696
    inherited pnlBtnCancelar: TPanel
      Left = 428
      ExplicitLeft = 428
    end
    inherited pnlBtnSalvar: TPanel
      Left = 553
      ExplicitLeft = 553
      inherited btnSalvar: TSpeedButton
        OnClick = btnSalvarClick
      end
    end
  end
  object DBEdit1: TDBEdit [13]
    Left = 21
    Top = 69
    Width = 84
    Height = 23
    DataField = 'IDPGTO'
    DataSource = DS_Cadastro
    Enabled = False
    TabOrder = 3
  end
  object edtclientepadrao: TDBEdit [14]
    Left = 21
    Top = 126
    Width = 84
    Height = 23
    DataField = 'IDCLIENTEPADRAO'
    DataSource = DS_Cadastro
    ReadOnly = True
    TabOrder = 4
  end
  object DBEdit3: TDBEdit [15]
    Left = 111
    Top = 69
    Width = 458
    Height = 23
    DataField = 'DESCRICAO'
    DataSource = DS_Cadastro
    TabOrder = 0
  end
  object DBComboBoxEh1: TDBComboBoxEh [16]
    Left = 319
    Top = 178
    Width = 353
    Height = 23
    DataField = 'GERARECEBER'
    DataSource = DS_Cadastro
    DynProps = <>
    EditButtons = <>
    Items.Strings = (
      'SIM'
      'NAO')
    KeyItems.Strings = (
      'SIM'
      'NAO')
    TabOrder = 5
    Visible = True
  end
  object DBComboBoxEh2: TDBComboBoxEh [17]
    Left = 21
    Top = 178
    Width = 292
    Height = 23
    DataField = 'MOEDA'
    DataSource = DS_Cadastro
    DynProps = <>
    EditButtons = <>
    Items.Strings = (
      '1 - Cart'#227'o de Credito '
      '2 - Cart'#227'o de Debito'
      '3 - Dinheiro'
      '4 - Pix Pagamento Instant'#226'neo'
      '5 - Boleto'
      '6 - Duplicata'
      '7-  Prazo')
    KeyItems.Strings = (
      'CAC'
      'CAD'
      'DIN'
      'PIX'
      'BOL'
      'DUP'
      'PRA')
    TabOrder = 6
    Visible = True
  end
  object Panel9: TPanel [18]
    AlignWithMargins = True
    Left = 106
    Top = 125
    Width = 35
    Height = 25
    Margins.Top = 2
    Margins.Bottom = 2
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 7
    object spdgerente: TSpeedButton
      Left = 0
      Top = 0
      Width = 35
      Height = 25
      Cursor = crHandPoint
      Align = alClient
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3815994
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000FF8F6010FB8C5E90FF8F60100000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000FD8C5DD0FC8C5DFFFD8C5DD0FF8F601000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000FB8B5C40FC8C5DEFFC8C5DFFFC8C5DF0FA8A6030000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000FA8A6030FD8C5CCFFC8C5DFFFC8C5DF0FC8D5D600000
        0000000000000000000000000000FF8F6010FB8B5C40FF8F6010000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FF8F6010FD8C5CCFFC8C5DFFFC8C5DFFFC8D
        5D6000000000FC8D5D60FD8C5DD0FC8C5DFFFC8C5DFFFC8C5DFFFC8C5DF0FB8B
        5E80FF8F60100000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FC8C5CA0FC8C5DFFFC8C
        5DE0FC8C5CA0FC8C5DFFFC8C5DFFFC8C5DFFFC8C5DBFFC8C5DEFFC8C5DFFFC8C
        5DFFFC8C5DE0FF8F602000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FB8B5C40FD8C
        5CCFFC8C5DFFFC8C5DEFFD8C5C6FFF8F60100000000000000000FA8A6030FC8C
        5DBFFC8C5DFFFD8C5DD0FF8F6010000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF8F6020FC8C
        5DFFFC8C5DFFFA8A60300000000000000000000000000000000000000000FF8F
        6010FD8C5CCFFC8C5DFFFB8B5E80000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FB8B5E80FC8C
        5DFFFC8C5CA00000000000000000000000000000000000000000000000000000
        0000FA8A6030FC8C5DFFFC8C5DE0000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FC8B5DC0FC8C
        5DFFFC8C5C500000000000000000000000000000000000000000000000000000
        000000000000FC8C5DF0FC8C5DFFFF8F60200000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FC8B5DC0FC8C
        5DFFFB8B5C400000000000000000000000000000000000000000000000000000
        000000000000FC8C5DE0FC8C5DFFFF8F60100000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FB8C5E90FC8C
        5DFFFD8B5D700000000000000000000000000000000000000000000000000000
        0000FF8F6010FC8C5DFFFC8C5DFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FC8C5C50FC8C
        5DFFFC8C5DE00000000000000000000000000000000000000000000000000000
        0000FB8B5E80FC8C5DFFFC8C5DBF000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000FD8C
        5DD0FC8C5DFFFC8C5CA00000000000000000000000000000000000000000FC8C
        5C50FC8C5DF0FC8C5DFFFB8B5C40000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000FA8A
        6030FC8C5DEFFC8C5DFFFC8C5DE0FB8B5E80FB8B5C40FC8D5D60FC8C5CA0FC8C
        5DFFFC8C5DFFFB8C5E9000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FA8A6030FD8C5CCFFC8C5DFFFC8C5DFFFC8C5DFFFC8C5DFFFC8C5DFFFC8C
        5DFFFC8D5D600000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000FC8D5D60FB8D5D8FFC8C5DBFFC8C5DAFFC8C5E5FFF8F
        6020000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentFont = False
      OnClick = spdgerenteClick
      ExplicitTop = 2
    end
  end
  object DBComboBoxEh3: TDBComboBoxEh [19]
    Left = 147
    Top = 126
    Width = 76
    Height = 23
    DataField = 'ATACADO'
    DataSource = DS_Cadastro
    DynProps = <>
    EditButtons = <>
    Items.Strings = (
      'SIM'
      'NAO')
    KeyItems.Strings = (
      'SIM'
      'NAO')
    TabOrder = 8
    Visible = True
  end
  object DBComboBoxEh4: TDBComboBoxEh [20]
    Left = 229
    Top = 126
    Width = 69
    Height = 23
    DataField = 'PDV'
    DataSource = DS_Cadastro
    DynProps = <>
    EditButtons = <>
    Items.Strings = (
      'SIM'
      'NAO')
    KeyItems.Strings = (
      'SIM'
      'NAO')
    TabOrder = 9
    Visible = True
  end
  object DBEdit2: TDBEdit [21]
    Left = 304
    Top = 126
    Width = 82
    Height = 23
    DataField = 'PRAZO'
    DataSource = DS_Cadastro
    TabOrder = 10
  end
  object DBEdit4: TDBEdit [22]
    Left = 581
    Top = 126
    Width = 93
    Height = 23
    DataField = 'PARCELAS'
    DataSource = DS_Cadastro
    TabOrder = 11
  end
  object DBCheckBox1: TDBCheckBox [23]
    Left = 583
    Top = 72
    Width = 97
    Height = 17
    Caption = 'Neutro'
    DataField = 'NEUTRO'
    DataSource = DS_Cadastro
    TabOrder = 12
    ValueChecked = 'SIM'
    ValueUnchecked = 'NAO'
  end
  object JvDBCalcEdit1: TJvDBCalcEdit [24]
    Left = 392
    Top = 126
    Width = 86
    Height = 23
    DisplayFormat = '###,###,##0.00'
    TabOrder = 13
    DecimalPlacesAlwaysShown = False
    DataField = 'DESCONTO'
    DataSource = DS_Cadastro
  end
  object JvDBCalcEdit2: TJvDBCalcEdit [25]
    Left = 487
    Top = 126
    Width = 86
    Height = 23
    DisplayFormat = '###,###,##0.00'
    TabOrder = 14
    DecimalPlacesAlwaysShown = False
    DataField = 'AUMENTO'
    DataSource = DS_Cadastro
  end
  inherited DS_Cadastro: TDataSource
    DataSet = ServiceCadastro.QRY_FormaPagamento
    Left = 24
    Top = 264
  end
end
