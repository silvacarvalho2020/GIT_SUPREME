inherited ViewCadastroCFOP: TViewCadastroCFOP
  Caption = 'ViewCadastroCFOP'
  ClientHeight = 339
  ClientWidth = 652
  OnShow = FormShow
  ExplicitWidth = 652
  ExplicitHeight = 339
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 16
    Top = 43
    Width = 30
    Height = 15
    Caption = 'CFOP'
  end
  object Label2: TLabel [1]
    Left = 16
    Top = 107
    Width = 84
    Height = 15
    Caption = 'Descri'#231#227'o CFOP'
  end
  inherited pnlTopo: TPanel
    Width = 652
    inherited pnlBtnFechar: TPanel
      Left = 576
    end
    inherited pnlDadosTitulo: TPanel
      Width = 576
      inherited pnlInfoTitulo: TPanel
        Width = 201
        ExplicitWidth = 201
        inherited lblNomeSistema: TLabel
          Width = 150
          Height = 27
          Caption = 'Cadastro de CFOP'
          ExplicitWidth = 150
        end
      end
    end
    inherited pnlLineTitulo: TPanel
      Width = 652
    end
  end
  inherited pnlRodapeCadastro: TPanel
    Top = 299
    Width = 652
    inherited pnlBtnCancelar: TPanel
      Left = 384
    end
    inherited pnlBtnSalvar: TPanel
      Left = 509
      inherited btnSalvar: TSpeedButton
        OnClick = btnSalvarClick
      end
    end
  end
  object DBEdit1: TDBEdit [4]
    Left = 16
    Top = 64
    Width = 121
    Height = 23
    DataField = 'CFOP'
    DataSource = DS_Cadastro
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [5]
    Left = 16
    Top = 128
    Width = 617
    Height = 23
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = DS_Cadastro
    TabOrder = 3
  end
  object DBCheckBoxEh1: TDBCheckBoxEh [6]
    Left = 456
    Top = 67
    Width = 97
    Height = 17
    Caption = 'Ativo'
    DataField = 'ATIVO'
    DataSource = DS_Cadastro
    DynProps = <>
    TabOrder = 4
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  inherited DS_Cadastro: TDataSource
    DataSet = ServiceCadastro.QRY_Cfop
  end
end
