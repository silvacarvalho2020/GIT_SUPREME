inherited ViewGrupoClientesCadastro: TViewGrupoClientesCadastro
  Caption = 'ViewGrupoClientesCadastro'
  ClientHeight = 239
  ClientWidth = 524
  OnShow = FormShow
  ExplicitWidth = 524
  ExplicitHeight = 239
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 8
    Top = 48
    Width = 49
    Height = 15
    Caption = 'Id. Grupo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 112
    Width = 86
    Height = 15
    Caption = 'Nome do Grupo'
    FocusControl = edtNomeGrupo
  end
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
        Width = 153
        ExplicitWidth = 153
        inherited lblNomeSistema: TLabel
          Width = 146
          Caption = 'Grupo de Clientes'
          ExplicitWidth = 146
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
  object DBEdit1: TDBEdit [4]
    Left = 8
    Top = 72
    Width = 139
    Height = 23
    DataField = 'IDGRUPOCLIENTES'
    DataSource = DS_Cadastro
    ReadOnly = True
    TabOrder = 2
  end
  object edtNomeGrupo: TDBEdit [5]
    Left = 8
    Top = 136
    Width = 500
    Height = 23
    CharCase = ecUpperCase
    DataField = 'TIPOGRUPO'
    DataSource = DS_Cadastro
    TabOrder = 3
  end
  inherited DS_Cadastro: TDataSource
    DataSet = ServiceCadastro.QRY_Pessoas_Grupos
    Left = 264
    Top = 48
  end
end
