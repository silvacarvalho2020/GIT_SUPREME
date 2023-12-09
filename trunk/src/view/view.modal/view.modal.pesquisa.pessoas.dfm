inherited ViewPesquisaPessoas: TViewPesquisaPessoas
  Caption = 'ViewPesquisaPessoas'
  ClientHeight = 639
  ClientWidth = 1250
  OnShow = FormShow
  ExplicitWidth = 1250
  ExplicitHeight = 639
  TextHeight = 15
  inherited pnlTopo: TPanel
    Width = 1250
    ExplicitWidth = 1250
    inherited pnlBtnFechar: TPanel
      Left = 1174
      ExplicitLeft = 1174
    end
    inherited pnlDadosTitulo: TPanel
      Width = 1174
      ExplicitWidth = 1174
      inherited pnlInfoTitulo: TPanel
        Width = 177
        ExplicitWidth = 177
        inherited lblTituloTela: TLabel
          Width = 154
          Caption = 'LISTA DE PESSOAS'
          ExplicitWidth = 154
        end
      end
    end
    inherited pnlLineTitulo: TPanel
      Width = 1250
      ExplicitWidth = 1250
    end
  end
  inherited pnlRodapeCadastro: TPanel
    Top = 599
    Width = 1250
    ExplicitTop = 599
    ExplicitWidth = 1250
    inherited pnlBtnCancelar: TPanel
      Left = 982
      ExplicitLeft = 982
    end
    inherited pnlBtnSalvar: TPanel
      Left = 1107
      ExplicitLeft = 1107
    end
  end
  inherited pnlFiltro: TPanel
    Width = 1250
    ExplicitWidth = 1250
    inherited pnlPesquisa: TPanel
      Width = 1248
      ExplicitWidth = 1248
      inherited pnlImgPesquisa: TPanel
        Left = 1216
        ExplicitLeft = 1216
      end
      inherited edtPesquisa: TEdit
        Width = 1216
        ExplicitWidth = 1216
      end
    end
  end
  inherited DBG_ListaDados: TDBGridEh
    Width = 1240
    Height = 529
    Options = [dgTitles, dgColLines, dgRowSelect, dgMultiSelect]
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'IDPESSOAS'
        Footers = <>
        Title.Caption = 'Codigo'
        Width = 71
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RAZAOSOCIAL'
        Footers = <>
        Title.Caption = 'Raz'#227'o Social / Nome'
        Width = 459
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FANTASIA'
        Footers = <>
        Width = 253
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ENDERECO'
        Footers = <>
        Width = 231
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CNPJ'
        Footers = <>
        Width = 190
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'EMAIL'
        Footers = <>
        Width = 218
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NOMECIDADE'
        Footers = <>
        Title.Caption = 'Cidade'
        Width = 244
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ATIVO'
        Footers = <>
        Width = 58
      end>
  end
  inherited DS_Dados: TDataSource
    DataSet = ServiceCadastro.QRY_Pessoas
    Left = 512
    Top = 256
  end
end
