inherited ViewCadastroContatos: TViewCadastroContatos
  Caption = 'ViewCadastroContatos'
  ClientHeight = 274
  ClientWidth = 646
  OnShow = FormShow
  ExplicitWidth = 646
  ExplicitHeight = 274
  TextHeight = 15
  object Label2: TLabel [0]
    Left = 8
    Top = 40
    Width = 44
    Height = 15
    Caption = 'Telefone'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [1]
    Left = 314
    Top = 34
    Width = 37
    Height = 15
    Caption = 'Celular'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [2]
    Left = 8
    Top = 96
    Width = 34
    Height = 15
    Caption = 'E-Mail'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [3]
    Left = 8
    Top = 160
    Width = 62
    Height = 15
    Caption = 'Observa'#231#227'o'
    FocusControl = DBEdit5
  end
  inherited pnlTopo: TPanel
    Width = 646
    ExplicitWidth = 646
    inherited pnlBtnFechar: TPanel
      Left = 570
      ExplicitLeft = 570
    end
    inherited pnlDadosTitulo: TPanel
      Width = 570
      ExplicitWidth = 570
      inherited pnlInfoTitulo: TPanel
        Width = 89
        ExplicitWidth = 89
        inherited lblNomeSistema: TLabel
          Width = 74
          Height = 27
          Caption = 'Contatos'
          ExplicitWidth = 74
        end
      end
    end
    inherited pnlLineTitulo: TPanel
      Width = 646
      ExplicitWidth = 646
    end
  end
  inherited pnlRodapeCadastro: TPanel
    Top = 234
    Width = 646
    ExplicitTop = 234
    ExplicitWidth = 646
    inherited pnlBtnCancelar: TPanel
      Left = 378
      ExplicitLeft = 378
    end
    inherited pnlBtnSalvar: TPanel
      Left = 503
      ExplicitLeft = 503
      inherited btnSalvar: TSpeedButton
        OnClick = btnSalvarClick
      end
    end
  end
  object DBEdit2: TDBEdit [6]
    Left = 8
    Top = 61
    Width = 300
    Height = 23
    DataField = 'TELEFONE'
    DataSource = DS_Cadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [7]
    Left = 314
    Top = 61
    Width = 300
    Height = 23
    DataField = 'CELULAR'
    DataSource = DS_Cadastro
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [8]
    Left = 8
    Top = 120
    Width = 606
    Height = 23
    DataField = 'EMAIL'
    DataSource = DS_Cadastro
    TabOrder = 4
  end
  object DBEdit5: TDBEdit [9]
    Left = 8
    Top = 184
    Width = 606
    Height = 23
    DataField = 'OBSERVACAO'
    DataSource = DS_Cadastro
    TabOrder = 5
  end
  inherited DS_Cadastro: TDataSource
    Left = 480
    Top = 48
  end
end
