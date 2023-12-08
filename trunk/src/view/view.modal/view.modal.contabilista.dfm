inherited ViewPesquisaContabilista: TViewPesquisaContabilista
  Caption = 'ViewPesquisaContabilista'
  OnShow = FormShow
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited pnlDadosTitulo: TPanel
      inherited pnlInfoTitulo: TPanel
        Width = 217
        ExplicitWidth = 217
        inherited lblTituloTela: TLabel
          Width = 182
          Height = 27
          Caption = 'LISTA CONTABILISTAS'
          ExplicitWidth = 182
        end
      end
    end
  end
  inherited DBG_ListaDados: TDBGridEh
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'IDPESSOAS'
        Footers = <>
        Title.Caption = 'Codigo'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RAZAOSOCIAL'
        Footers = <>
        Title.Caption = 'Raz'#227'o Social'
        Width = 537
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FANTASIA'
        Footers = <>
        Title.Caption = 'Fantasia'
        Width = 418
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CNPJ'
        Footers = <>
        Width = 255
      end>
  end
  inherited DS_Dados: TDataSource
    DataSet = ServiceCadastro.QRY_Pessoas
  end
end
