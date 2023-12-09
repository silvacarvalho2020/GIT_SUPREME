inherited ViewListaSubGrupoTDI: TViewListaSubGrupoTDI
  Caption = 'Sub. Grupos'
  TextHeight = 15
  inherited CP_cadastro: TCardPanel
    inherited card_consulta: TCard
      inherited pnlDadosPesquisa: TPanel
        inherited GRIDDados: TDBGridEh
          AutoFitColWidths = True
          IndicatorOptions = []
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'IDSUBGRUPO'
              Footers = <>
              Title.Caption = 'C'#243'digo'
            end
            item
              Alignment = taLeftJustify
              BiDiMode = bdLeftToRight
              CellButtons = <>
              Checkboxes = False
              DynProps = <>
              EditButtons = <>
              FieldName = 'DESCRICAO'
              Footers = <>
              Title.Caption = 'Sub. Grupo'
              Width = 600
              WordWrap = False
            end>
        end
      end
    end
  end
  inherited pnlTopo: TPanel
    inherited pnlPesquisa: TPanel
      inherited edtPesquisa: TEdit
        OnChange = edtPesquisaChange
      end
    end
    inherited pnlFiltro: TPanel
      inherited pnlNomeTela: TPanel
        inherited lblNomeTela: TLabel
          Width = 99
          Caption = 'Sub. Grupos'
          ExplicitWidth = 99
        end
      end
    end
  end
  inherited pnlRodapeBotoes: TPanel
    inherited pnlBtnNovo: TPanel
      inherited btnNovo: TSpeedButton
        OnClick = btnNovoClick
      end
    end
    inherited pnlBtnEditar: TPanel
      inherited btnEditar: TSpeedButton
        OnClick = btnEditarClick
      end
    end
  end
end
