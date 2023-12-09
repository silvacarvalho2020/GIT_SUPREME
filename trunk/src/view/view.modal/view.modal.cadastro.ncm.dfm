inherited ViewCadastroNCM: TViewCadastroNCM
  Caption = 'ViewCadastroNCM'
  ClientHeight = 416
  ClientWidth = 676
  OnShow = FormShow
  ExplicitWidth = 676
  ExplicitHeight = 416
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 24
    Top = 48
    Width = 28
    Height = 15
    Caption = 'NCM'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 154
    Top = 48
    Width = 99
    Height = 15
    Caption = 'Descri'#231#227'o do NCM'
    Color = clRed
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 28
    Top = 105
    Width = 47
    Height = 15
    Caption = 'Nacional'
  end
  object Label4: TLabel [3]
    Left = 180
    Top = 105
    Width = 56
    Height = 15
    Caption = 'Importado'
  end
  object Label5: TLabel [4]
    Left = 345
    Top = 105
    Width = 44
    Height = 15
    Caption = 'Estadual'
  end
  object Label6: TLabel [5]
    Left = 508
    Top = 105
    Width = 53
    Height = 15
    Caption = 'Municipal'
  end
  object Label7: TLabel [6]
    Left = 24
    Top = 254
    Width = 59
    Height = 15
    Caption = 'PIS Entrada'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 345
    Top = 255
    Width = 47
    Height = 15
    Caption = 'PIS Saida'
    FocusControl = DBEdit8
  end
  object Label10: TLabel [8]
    Left = 345
    Top = 309
    Width = 72
    Height = 15
    Caption = 'COFINS Saida'
    FocusControl = DBEdit10
  end
  object Label11: TLabel [9]
    Left = 24
    Top = 309
    Width = 84
    Height = 15
    Caption = 'COFINS Entrada'
    FocusControl = DBEdit11
  end
  object Label9: TLabel [10]
    Left = 22
    Top = 219
    Width = 65
    Height = 25
    Caption = 'Entrada'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel [11]
    Left = 343
    Top = 219
    Width = 46
    Height = 25
    Caption = 'Saida'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel [12]
    Left = 169
    Top = 253
    Width = 64
    Height = 15
    Caption = 'Aliquota PIS'
    FocusControl = DBEdit7
  end
  object Label14: TLabel [13]
    Left = 169
    Top = 309
    Width = 89
    Height = 15
    Caption = 'Aliquota COFINS'
    FocusControl = DBEdit11
  end
  object Label15: TLabel [14]
    Left = 492
    Top = 255
    Width = 64
    Height = 15
    Caption = 'Aliquota PIS'
    FocusControl = DBEdit8
  end
  object Label16: TLabel [15]
    Left = 492
    Top = 309
    Width = 89
    Height = 15
    Caption = 'Aliquota COFINS'
    FocusControl = DBEdit10
  end
  object Label17: TLabel [16]
    Left = 157
    Top = 159
    Width = 26
    Height = 15
    Caption = 'CEST'
    FocusControl = DBEdit3
  end
  object Label18: TLabel [17]
    Left = 27
    Top = 159
    Width = 34
    Height = 15
    Caption = 'Vers'#227'o'
    FocusControl = DBEdit4
  end
  inherited pnlTopo: TPanel
    Width = 676
    ExplicitWidth = 676
    inherited pnlBtnFechar: TPanel
      Left = 600
      ExplicitLeft = 600
    end
    inherited pnlDadosTitulo: TPanel
      Width = 600
      ExplicitWidth = 600
      inherited pnlInfoTitulo: TPanel
        Width = 169
        ExplicitWidth = 169
        inherited lblNomeSistema: TLabel
          Width = 147
          Height = 27
          Caption = 'Cadastro de NCM'
          ExplicitWidth = 147
        end
      end
    end
    inherited pnlLineTitulo: TPanel
      Width = 676
      ExplicitWidth = 676
    end
  end
  inherited pnlRodapeCadastro: TPanel
    Top = 376
    Width = 676
    ExplicitTop = 376
    ExplicitWidth = 676
    inherited pnlBtnCancelar: TPanel
      Left = 408
      ExplicitLeft = 408
    end
    inherited pnlBtnSalvar: TPanel
      Left = 533
      ExplicitLeft = 533
      inherited btnSalvar: TSpeedButton
        OnClick = btnSalvarClick
      end
    end
  end
  object DBEdit1: TDBEdit [20]
    Left = 24
    Top = 69
    Width = 124
    Height = 23
    DataField = 'NCM'
    DataSource = DS_Cadastro
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [21]
    Left = 154
    Top = 69
    Width = 446
    Height = 23
    DataField = 'DESCRICAO'
    DataSource = DS_Cadastro
    TabOrder = 3
  end
  object DBEdit7: TDBEdit [22]
    Left = 24
    Top = 274
    Width = 122
    Height = 23
    DataField = 'PISENTRADA'
    DataSource = DS_Cadastro
    TabOrder = 4
  end
  object DBEdit8: TDBEdit [23]
    Left = 345
    Top = 274
    Width = 124
    Height = 23
    DataField = 'PISSAIDA'
    DataSource = DS_Cadastro
    TabOrder = 5
  end
  object DBEdit10: TDBEdit [24]
    Left = 345
    Top = 330
    Width = 124
    Height = 23
    DataField = 'COFINSSAIDA'
    DataSource = DS_Cadastro
    TabOrder = 6
  end
  object DBEdit11: TDBEdit [25]
    Left = 24
    Top = 330
    Width = 122
    Height = 23
    DataField = 'COFINSENTRADA'
    DataSource = DS_Cadastro
    TabOrder = 7
  end
  object JvDBCalcEdit1: TJvDBCalcEdit [26]
    Left = 27
    Top = 128
    Width = 147
    Height = 23
    DisplayFormat = '###,###,##0.00'
    TabOrder = 8
    DecimalPlacesAlwaysShown = False
    DataField = 'ALIQNACIONAL'
    DataSource = DS_Cadastro
  end
  object JvDBCalcEdit2: TJvDBCalcEdit [27]
    Left = 180
    Top = 128
    Width = 159
    Height = 23
    DisplayFormat = '###,###,##0.00'
    TabOrder = 9
    DecimalPlacesAlwaysShown = False
    DataField = 'ALIQIMPORTADO'
    DataSource = DS_Cadastro
  end
  object JvDBCalcEdit3: TJvDBCalcEdit [28]
    Left = 345
    Top = 128
    Width = 157
    Height = 23
    DisplayFormat = '###,###,##0.00'
    TabOrder = 10
    DecimalPlacesAlwaysShown = False
    DataField = 'ALIQESTADUAL'
    DataSource = DS_Cadastro
  end
  object JvDBCalcEdit4: TJvDBCalcEdit [29]
    Left = 508
    Top = 128
    Width = 157
    Height = 23
    DisplayFormat = '###,###,##0.00'
    TabOrder = 11
    DecimalPlacesAlwaysShown = False
    DataField = 'ALIQMUNICIPAL'
    DataSource = DS_Cadastro
  end
  object JvDBCalcEdit5: TJvDBCalcEdit [30]
    Left = 169
    Top = 274
    Width = 128
    Height = 23
    DisplayFormat = '###,###,##0.00'
    TabOrder = 12
    DecimalPlacesAlwaysShown = False
    DataField = 'ALIQPISENTRADA'
    DataSource = DS_Cadastro
  end
  object JvDBCalcEdit6: TJvDBCalcEdit [31]
    Left = 169
    Top = 330
    Width = 128
    Height = 23
    DisplayFormat = '###,###,##0.00'
    TabOrder = 13
    DecimalPlacesAlwaysShown = False
    DataField = 'ALIQCOFINSENTRADA'
    DataSource = DS_Cadastro
  end
  object JvDBCalcEdit7: TJvDBCalcEdit [32]
    Left = 492
    Top = 274
    Width = 128
    Height = 23
    DisplayFormat = '###,###,##0.00'
    TabOrder = 14
    DecimalPlacesAlwaysShown = False
    DataField = 'ALIQPISSAIDA'
    DataSource = DS_Cadastro
  end
  object JvDBCalcEdit8: TJvDBCalcEdit [33]
    Left = 492
    Top = 330
    Width = 128
    Height = 23
    DisplayFormat = '###,###,##0.00'
    TabOrder = 15
    DecimalPlacesAlwaysShown = False
    DataField = 'ALIQCOFINSSAIDA'
    DataSource = DS_Cadastro
  end
  object DBCheckBoxEh1: TDBCheckBoxEh [34]
    Left = 610
    Top = 72
    Width = 55
    Height = 17
    Caption = 'Ativo'
    DataField = 'ATIVO'
    DataSource = DS_Cadastro
    DynProps = <>
    TabOrder = 16
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBEdit3: TDBEdit [35]
    Left = 157
    Top = 180
    Width = 157
    Height = 23
    DataField = 'CEST'
    DataSource = DS_Cadastro
    TabOrder = 17
  end
  object DBEdit4: TDBEdit [36]
    Left = 27
    Top = 180
    Width = 124
    Height = 23
    DataField = 'VERSAO'
    DataSource = DS_Cadastro
    TabOrder = 18
  end
  inherited DS_Cadastro: TDataSource
    DataSet = ServiceCadastro.QRY_NCM
    Left = 472
    Top = 178
  end
end
