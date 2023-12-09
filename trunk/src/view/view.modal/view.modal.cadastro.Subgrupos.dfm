inherited ViewCadastroSubGrupos: TViewCadastroSubGrupos
  Caption = 'ViewCadastroSubGrupos'
  ClientHeight = 239
  ClientWidth = 524
  OnShow = FormShow
  ExplicitWidth = 524
  ExplicitHeight = 239
  TextHeight = 15
  inherited pnlTopo: TPanel
    Width = 524
    ExplicitWidth = 524
    inherited pnlBtnFechar: TPanel
      Left = 448
      ExplicitLeft = 448
    end
    inherited pnlDadosTitulo: TPanel
      Width = 448
      ExplicitWidth = 448
      inherited pnlInfoTitulo: TPanel
        inherited lblNomeSistema: TLabel
          Width = 99
          Caption = 'Sub. Grupos'
          ExplicitWidth = 99
        end
      end
    end
    inherited pnlLineTitulo: TPanel
      Width = 524
      ExplicitWidth = 524
    end
  end
  inherited pnlRodapeCadastro: TPanel
    Top = 199
    Width = 524
    ExplicitTop = 199
    ExplicitWidth = 524
    inherited pnlBtnCancelar: TPanel
      Left = 256
      ExplicitLeft = 256
    end
    inherited pnlBtnSalvar: TPanel
      Left = 381
      ExplicitLeft = 381
      inherited btnSalvar: TSpeedButton
        OnClick = btnSalvarClick
      end
    end
  end
  object DBEdit1: TDBEdit [2]
    Left = 8
    Top = 72
    Width = 139
    Height = 23
    DataField = 'IDSUBGRUPO'
    DataSource = DS_Cadastro
    ReadOnly = True
    TabOrder = 2
  end
  object edtNomeSubGrupo: TDBEdit [3]
    Left = 8
    Top = 136
    Width = 500
    Height = 23
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = DS_Cadastro
    TabOrder = 3
  end
  inherited DS_Cadastro: TDataSource
    DataSet = ServiceCadastro.Qry_SubGrupos
    Left = 320
    Top = 56
  end
end
