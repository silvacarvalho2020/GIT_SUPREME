inherited ViewBaseListaNCMTDI: TViewBaseListaNCMTDI
  Caption = 'NCM'
  ClientHeight = 729
  ClientWidth = 1008
  ExplicitTop = -220
  TextHeight = 15
  inherited CP_cadastro: TCardPanel
    Width = 998
    Height = 598
    ExplicitWidth = 994
    ExplicitHeight = 597
    inherited card_consulta: TCard
      ExplicitWidth = 994
      ExplicitHeight = 597
      inherited pnlDadosPesquisa: TPanel
        ExplicitWidth = 994
        ExplicitHeight = 597
        inherited GRIDDados: TDBGridEh
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NCM'
              Footers = <>
              Width = 99
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DESCRICAO'
              Footers = <>
              Width = 598
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ATIVO'
              Footers = <>
              Width = 102
            end>
        end
      end
    end
  end
  inherited pnlTopo: TPanel
    Width = 1008
    ExplicitWidth = 1004
    inherited pnlPesquisa: TPanel
      ExplicitWidth = 1002
      inherited pnlImgPesquisa: TPanel
        ExplicitLeft = 970
      end
      inherited edtPesquisa: TEdit
        ExplicitWidth = 970
      end
    end
    inherited pnlFiltro: TPanel
      ExplicitWidth = 1004
      inherited pnlFiltroDatas: TPanel
        inherited lblTituloFiltroDatas: TLabel
          Visible = False
        end
        inherited edtDtaIni: TJvDateEdit
          Visible = False
        end
        inherited edtDtaFin: TJvDateEdit
          Visible = False
        end
      end
      inherited pnlNomeTela: TPanel
        inherited lblNomeTela: TLabel
          Width = 92
          Height = 28
          Caption = 'LISTA NCM'
          ExplicitWidth = 92
        end
      end
    end
  end
  inherited pnlRodapeBotoes: TPanel
    Top = 688
    Width = 1008
    ExplicitTop = 687
    ExplicitWidth = 1004
    inherited pnlBtnNovo: TPanel
      ExplicitLeft = 476
      inherited btnNovo: TSpeedButton
        OnClick = btnNovoClick
      end
    end
    inherited pnlBtnEditar: TPanel
      ExplicitLeft = 596
      inherited btnEditar: TSpeedButton
        OnClick = btnEditarClick
      end
    end
    inherited pnlBtnDeletar: TPanel
      ExplicitLeft = 721
      inherited btnDeletar: TSpeedButton
        OnClick = btnDeletarClick
      end
    end
    inherited pnlBtnImprimir: TPanel
      ExplicitLeft = 851
    end
  end
end
