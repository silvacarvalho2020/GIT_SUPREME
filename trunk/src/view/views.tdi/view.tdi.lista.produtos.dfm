inherited ViewListaProdutosTDI: TViewListaProdutosTDI
  Caption = 'Produtos'
  ClientWidth = 1202
  ExplicitLeft = -414
  ExplicitTop = -219
  ExplicitWidth = 1214
  ExplicitHeight = 766
  TextHeight = 15
  inherited CP_cadastro: TCardPanel
    Width = 1192
    ExplicitWidth = 1188
    ExplicitHeight = 596
    inherited card_consulta: TCard
      Width = 1192
      Height = 597
      ExplicitWidth = 1188
      ExplicitHeight = 596
      inherited pnlDadosPesquisa: TPanel
        Width = 1192
        Height = 597
        ExplicitWidth = 1188
        ExplicitHeight = 596
        inherited GRIDDados: TDBGridEh
          Width = 1182
          Height = 387
          AutoFitColWidths = True
          IndicatorOptions = []
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'IDPRODUTO'
              Footers = <>
              Title.Caption = 'C'#243'digo'
              Width = 81
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DESCRICAO'
              Footers = <>
              Title.Caption = 'Produto'
              Width = 397
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'REFERENCIA'
              Footers = <>
              Title.Caption = 'Refer'#234'ncia'
              Width = 133
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CODBARRAS'
              Footers = <>
              Title.Caption = 'C'#243'd. Barras'
              Width = 132
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SIGLA'
              Footers = <>
              Title.Caption = 'Embalagem'
              Width = 84
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'vlrvendavista'
              Footers = <>
              Title.Caption = 'Valor da Venda'
              Width = 132
            end>
        end
        object pnlFilial: TPanel
          Left = 0
          Top = 397
          Width = 1192
          Height = 200
          Align = alBottom
          BevelOuter = bvNone
          Color = 15395562
          ParentBackground = False
          TabOrder = 1
          ExplicitTop = 396
          ExplicitWidth = 1188
          object pnlInfoDetalhe: TPanel
            Left = 0
            Top = 25
            Width = 969
            Height = 175
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object DBG_DetalheItem: TDBGridEh
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 959
              Height = 165
              Cursor = crHandPoint
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              ParentCustomHint = False
              Align = alClient
              AutoFitColWidths = True
              BiDiMode = bdLeftToRight
              BorderStyle = bsNone
              Color = clWhite
              ColumnDefValues.Title.TitleButton = True
              Ctl3D = True
              DataGrouping.Color = clWhite
              DataGrouping.ParentColor = False
              DataSource = DS_DetalheItens
              DynProps = <>
              EvenRowColor = clWhite
              FixedColor = clWhite
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              FooterRowCount = 1
              FooterParams.Color = clWhite
              FooterParams.Font.Charset = ANSI_CHARSET
              FooterParams.Font.Color = clBlack
              FooterParams.Font.Height = -13
              FooterParams.Font.Name = 'Segoe UI'
              FooterParams.Font.Style = []
              FooterParams.ParentFont = False
              FooterParams.RowLines = 1
              FooterParams.VertLines = False
              GridLineParams.DataHorzLines = False
              GridLineParams.DataVertLines = True
              GridLineParams.VertEmptySpaceStyle = dessNonEh
              HorzScrollBar.Tracking = False
              IndicatorOptions = []
              IndicatorParams.Color = 9131554
              IndicatorParams.FillStyle = cfstThemedEh
              IndicatorParams.HorzLineColor = clWhite
              IndicatorParams.VertLineColor = clWhite
              IndicatorParams.VertLines = True
              IndicatorTitle.TitleButton = True
              IndicatorTitle.UseGlobalMenu = False
              OddRowColor = clWhite
              Options = [dgTitles, dgColLines, dgMultiSelect]
              OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghMultiSortMarking, dghRowHighlight]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              RowDetailPanel.Color = clBtnFace
              SearchPanel.Enabled = True
              SearchPanel.FilterOnTyping = True
              SearchPanel.PersistentShowing = False
              SearchPanel.ShortCut = 16467
              SelectionDrawParams.SelectionStyle = gsdsGridThemedEh
              SelectionDrawParams.DrawFocusFrame = True
              SelectionDrawParams.DrawFocusFrameStored = True
              ShowHint = False
              SortLocal = True
              SumList.Active = True
              TabOrder = 0
              TitleParams.Color = 9531663
              TitleParams.FillStyle = cfstGradientEh
              TitleParams.Font.Charset = ANSI_CHARSET
              TitleParams.Font.Color = clWhite
              TitleParams.Font.Height = -13
              TitleParams.Font.Name = 'Segoe UI Semibold'
              TitleParams.Font.Style = [fsBold]
              TitleParams.MultiTitle = True
              TitleParams.ParentFont = False
              TitleParams.SecondColor = 9531663
              TitleParams.VertLineColor = 9531663
              VertScrollBar.VisibleMode = sbAlwaysShowEh
              OnDblClick = GRIDDadosDblClick
              OnKeyDown = GRIDDadosKeyDown
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'IDPRODUTOITEM'
                  Footers = <>
                  Title.Caption = 'C'#243'digo'
                  Width = 60
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'VLRVENDAVISTA'
                  Footers = <>
                  Title.Caption = '$ Vista'
                  Width = 73
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'VLRVENDAPRAZO'
                  Footers = <>
                  Title.Caption = '$ Prazo'
                  Width = 67
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'VLRATACADO'
                  Footers = <>
                  Title.Caption = '$ Atacado'
                  Width = 75
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'IDFILIAL'
                  Footers = <>
                  Title.Caption = 'Filial'
                  Width = 68
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'MARCA'
                  Footers = <>
                  Title.Caption = 'Marca'
                  Width = 165
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'GRUPO'
                  Footers = <>
                  Title.Caption = 'Grupo'
                  Width = 172
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'ESTOQUE'
                  Footers = <>
                  Title.Caption = 'Estoque'
                  Width = 75
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
          object pnlTituloDetalhe: TPanel
            Left = 0
            Top = 0
            Width = 1192
            Height = 25
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitWidth = 1188
            object lblTituloDetalheItens: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 153
              Height = 19
              Align = alLeft
              Alignment = taCenter
              Caption = '[ DETALHAMENTO DO '#205'TEM ]'
              Layout = tlCenter
              ExplicitHeight = 15
            end
            object pnlColorTit: TPanel
              Left = 159
              Top = 0
              Width = 1033
              Height = 25
              Align = alClient
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 0
              ExplicitWidth = 1029
            end
          end
          object pnlInfoDetalheProduto: TPanel
            Left = 969
            Top = 25
            Width = 223
            Height = 175
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 2
            ExplicitWidth = 219
          end
        end
      end
    end
  end
  inherited pnlTopo: TPanel
    Width = 1202
    ExplicitWidth = 1198
    inherited pnlPesquisa: TPanel
      Width = 1200
      ExplicitWidth = 1196
      inherited pnlImgPesquisa: TPanel
        Left = 1168
        ExplicitLeft = 1164
      end
      inherited edtPesquisa: TEdit
        Width = 1168
        ExplicitWidth = 1164
      end
    end
    inherited pnlFiltro: TPanel
      Width = 1202
      ExplicitWidth = 1198
      inherited pnlFiltroDatas: TPanel
        Left = 220
        ExplicitLeft = 220
      end
      inherited pnlNomeTela: TPanel
        Width = 217
        ExplicitWidth = 217
        inherited lblNomeTela: TLabel
          Width = 141
          Height = 28
          Caption = 'Lista de Produtos'
          ExplicitWidth = 141
        end
      end
    end
  end
  inherited pnlRodapeBotoes: TPanel
    Width = 1202
    ExplicitTop = 686
    ExplicitWidth = 1198
    inherited pnlBtnNovo: TPanel
      Left = 674
      ExplicitLeft = 670
      inherited btnNovo: TSpeedButton
        OnClick = btnNovoClick
        ExplicitTop = 1
      end
    end
    inherited pnlBtnEditar: TPanel
      Left = 794
      ExplicitLeft = 790
      inherited btnEditar: TSpeedButton
        OnClick = btnEditarClick
      end
    end
    inherited pnlBtnDeletar: TPanel
      Left = 919
      ExplicitLeft = 915
    end
    inherited pnlBtnImprimir: TPanel
      Left = 1049
      ExplicitLeft = 1045
    end
  end
  inherited DS_Dados: TDataSource
    OnDataChange = DS_DadosDataChange
  end
  object DS_DetalheItens: TDataSource
    Left = 680
    Top = 360
  end
end
