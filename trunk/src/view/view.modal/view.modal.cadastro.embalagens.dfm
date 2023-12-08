inherited ViewCadastroEmbalagem: TViewCadastroEmbalagem
  Caption = 'ViewCadastroEmbalagem'
  ClientHeight = 226
  ClientWidth = 613
  OnShow = FormShow
  ExplicitWidth = 613
  ExplicitHeight = 226
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 16
    Top = 57
    Width = 39
    Height = 15
    Caption = 'Codigo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 91
    Top = 57
    Width = 51
    Height = 15
    Caption = 'Descri'#231#227'o'
    FocusControl = DBEdit2
  end
  object Label5: TLabel [2]
    Left = 437
    Top = 57
    Width = 35
    Height = 15
    Caption = 'Fra'#231#227'o'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [3]
    Left = 367
    Top = 57
    Width = 25
    Height = 15
    Caption = 'Sigla'
    FocusControl = DBEdit6
  end
  inherited pnlTopo: TPanel
    Width = 613
    inherited pnlBtnFechar: TPanel
      Left = 537
    end
    inherited pnlDadosTitulo: TPanel
      Width = 537
      inherited pnlInfoTitulo: TPanel
        Width = 233
        ExplicitWidth = 233
        inherited lblNomeSistema: TLabel
          Width = 203
          Height = 27
          Caption = 'Cadastro de Embalagem'
          ExplicitWidth = 203
        end
      end
    end
    inherited pnlLineTitulo: TPanel
      Width = 613
    end
  end
  inherited pnlRodapeCadastro: TPanel
    Top = 186
    Width = 613
    inherited pnlBtnCancelar: TPanel
      Left = 345
    end
    inherited pnlBtnSalvar: TPanel
      Left = 470
      inherited btnSalvar: TSpeedButton
        OnClick = btnSalvarClick
      end
    end
  end
  object DBEdit1: TDBEdit [6]
    Left = 16
    Top = 82
    Width = 69
    Height = 23
    DataField = 'IDUNIDADE'
    DataSource = DS_Cadastro
    Enabled = False
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [7]
    Left = 91
    Top = 82
    Width = 270
    Height = 23
    DataField = 'DESCRICAO'
    DataSource = DS_Cadastro
    TabOrder = 3
  end
  object DBEdit5: TDBEdit [8]
    Left = 437
    Top = 82
    Width = 105
    Height = 23
    DataField = 'FRACAO'
    DataSource = DS_Cadastro
    TabOrder = 4
  end
  object DBEdit6: TDBEdit [9]
    Left = 367
    Top = 82
    Width = 64
    Height = 23
    DataField = 'SIGLA'
    DataSource = DS_Cadastro
    TabOrder = 5
  end
  object DBCheckBox1: TDBCheckBox [10]
    Left = 551
    Top = 85
    Width = 70
    Height = 17
    Caption = 'Ativo'
    DataField = 'ATIVO'
    DataSource = DS_Cadastro
    TabOrder = 6
  end
  inherited DS_Cadastro: TDataSource
    DataSet = ServiceCadastro.QRY_Embalagem
    Left = 232
    Top = 128
  end
end
