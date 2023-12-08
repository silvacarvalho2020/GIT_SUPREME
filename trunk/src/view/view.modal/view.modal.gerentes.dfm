inherited ViewPesquisaGerentes: TViewPesquisaGerentes
  Caption = 'ViewPesquisaGerentes'
  OnShow = FormShow
  ExplicitLeft = -212
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited pnlDadosTitulo: TPanel
      inherited pnlInfoTitulo: TPanel
        Width = 169
        ExplicitWidth = 169
        inherited lblTituloTela: TLabel
          Width = 138
          Height = 27
          Caption = 'LISTA GERENTES'
          ExplicitWidth = 138
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
        Width = 461
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FANTASIA'
        Footers = <>
        Title.Caption = 'Fantasia'
        Width = 367
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CNPJ'
        Footers = <>
        Width = 222
      end>
  end
end
