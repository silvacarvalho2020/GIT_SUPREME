inherited ViewCadastroCst: TViewCadastroCst
  Caption = 'ViewCadastroCst'
  ClientHeight = 305
  ClientWidth = 774
  OnShow = FormShow
  ExplicitWidth = 774
  ExplicitHeight = 305
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 24
    Top = 59
    Width = 20
    Height = 15
    Caption = 'CST'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 121
    Top = 59
    Width = 91
    Height = 15
    Caption = 'Descri'#231#227'o do CST'
    FocusControl = DBEdit2
  end
  inherited pnlTopo: TPanel
    Width = 774
    inherited pnlBtnFechar: TPanel
      Left = 698
    end
    inherited pnlDadosTitulo: TPanel
      Width = 698
      inherited pnlInfoTitulo: TPanel
        inherited lblNomeSistema: TLabel
          Width = 137
          Height = 27
          Caption = 'Cadastro de CST'
          ExplicitLeft = 0
          ExplicitTop = 4
          ExplicitWidth = 137
          ExplicitHeight = 27
        end
      end
    end
    inherited pnlLineTitulo: TPanel
      Width = 774
    end
  end
  inherited pnlRodapeCadastro: TPanel
    Top = 265
    Width = 774
    inherited pnlBtnCancelar: TPanel
      Left = 506
    end
    inherited pnlBtnSalvar: TPanel
      Left = 631
      inherited btnSalvar: TSpeedButton
        OnClick = btnSalvarClick
      end
    end
  end
  object DBEdit1: TDBEdit [4]
    Left = 24
    Top = 80
    Width = 91
    Height = 23
    DataField = 'CST'
    DataSource = DS_Cadastro
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [5]
    Left = 121
    Top = 80
    Width = 577
    Height = 23
    DataField = 'DESCRICAO'
    DataSource = DS_Cadastro
    TabOrder = 3
  end
  object DBCheckBoxEh1: TDBCheckBoxEh [6]
    Left = 704
    Top = 83
    Width = 52
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
    DataSet = ServiceCadastro.QRY_CST
    Left = 368
    Top = 160
  end
end
