inherited ViewVendasListagem: TViewVendasListagem
  Align = alClient
  Caption = 'ViewVendasListagem'
  ClientHeight = 657
  ClientWidth = 1252
  ExplicitWidth = 1252
  ExplicitHeight = 657
  TextHeight = 21
  inherited pnlTopo: TPanel
    Width = 1252
    inherited lblTitulo: TLabel
      Width = 133
      Height = 34
      Caption = 'Lista de Vendas'
      ExplicitWidth = 133
    end
    inherited pnlFechar: TPanel
      Left = 1184
    end
  end
  inherited pnlRodape: TPanel
    Top = 617
    Width = 1252
    inherited pnlBtnDeletar: TPanel
      Left = 842
    end
    inherited pnlBtnEditar: TPanel
      Left = 592
    end
    inherited pnlBtnImprimir: TPanel
      Left = 1112
    end
    inherited pnlBtnNovo: TPanel
      Left = 472
    end
    inherited pnlBtnCancelar: TPanel
      Left = 717
    end
    inherited pnlBtnSalvar: TPanel
      Left = 972
    end
  end
  inherited pnlLinhaFundo: TPanel
    Width = 1252
    Height = 581
    inherited CardPanel_conteudo: TCardPanel
      Width = 1248
      Height = 581
      inherited card_pesquisa: TCard
        Width = 1248
        Height = 581
        ExplicitLeft = 40
        ExplicitTop = -3
        ExplicitWidth = 1248
        ExplicitHeight = 581
        inherited pnlFiltroPesquisa: TPanel
          Width = 1248
          inherited pnlPesquisar: TPanel
            Width = 1248
            inherited edtPesquisa: TSearchBox
              Width = 1242
              OnInvokeSearch = edtPesquisaInvokeSearch
            end
          end
          inherited pnlFiltro: TPanel
            Width = 1248
            object edtDtaIni: TsDateEdit
              Left = 5
              Top = 16
              Width = 124
              Height = 29
              MaxLength = 10
              TabOrder = 0
            end
            object edtDtaFin: TsDateEdit
              Left = 132
              Top = 16
              Width = 124
              Height = 29
              MaxLength = 10
              TabOrder = 1
            end
          end
        end
        inherited DBG_ListaDados: TDBGridEh
          Width = 1238
          Height = 271
          AutoFitColWidths = False
          PopupMenu = PopupMenu
          OnCellClick = DBG_ListaDadosCellClick
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'IDVENDA'
              Footers = <>
              Title.Caption = 'N'#250'm. Venda'
              Width = 150
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DTAVENDA'
              Footers = <>
              Title.Caption = 'Dta. Venda'
              Width = 150
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'VLRLIQUIDO'
              Footers = <>
              Title.Caption = 'Valor Venda'
              Width = 150
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ORIGEMVENDA'
              Footers = <>
              Title.Caption = 'Origem Venda'
              Width = 150
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NUMNFE'
              Footers = <>
              Title.Caption = 'N'#250'm. NF-e'
              Width = 110
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NUMNFCE'
              Footers = <>
              Title.Caption = 'N'#250'm. NFC-e'
              Width = 99
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'MODELOFISCAL'
              Footers = <>
              Title.Caption = 'Modelo Fiscal'
              Width = 110
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'STATUS_NF'
              Footers = <>
              Title.Caption = 'Status NF-e'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'STATUS_NFCE'
              Footers = <>
              Title.Caption = 'Status NFC-e'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'STATUS'
              Footers = <>
              Title.Caption = 'Situa'#231#227'o'
              Width = 127
            end>
        end
        object pnlInfoVenda: TPanel
          Left = 0
          Top = 381
          Width = 1248
          Height = 200
          Align = alBottom
          BevelOuter = bvNone
          Color = 14342874
          ParentBackground = False
          TabOrder = 2
          ExplicitTop = 273
          ExplicitWidth = 1020
          object pnlFPGto: TPanel
            Left = 876
            Top = 0
            Width = 372
            Height = 200
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitLeft = 648
            object DBG_FormasPGTO: TDBGridEh
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 362
              Height = 190
              Cursor = crHandPoint
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              ParentCustomHint = False
              Align = alClient
              BiDiMode = bdLeftToRight
              BorderStyle = bsNone
              Color = clWhite
              ColumnDefValues.Title.TitleButton = True
              Ctl3D = True
              DataGrouping.Color = clWhite
              DataGrouping.ParentColor = False
              DataSource = DS_FormasPGTO
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
              PopupMenu = PopupMenu
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
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'IDPGTO'
                  Footers = <>
                  Title.Caption = 'Id'
                  Width = 64
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DESCRICAO'
                  Footers = <>
                  Title.Caption = 'Forma de Pagamento'
                  Width = 183
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'VLRDOCUMENTO'
                  Footers = <>
                  Title.Caption = 'Valor'
                  Width = 100
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
          object pnlProdutosVenda: TPanel
            Left = 0
            Top = 0
            Width = 876
            Height = 200
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitWidth = 648
            object DBG_ProdutosVendas: TDBGridEh
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 866
              Height = 190
              Cursor = crHandPoint
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              ParentCustomHint = False
              Align = alClient
              BiDiMode = bdLeftToRight
              BorderStyle = bsNone
              Color = clWhite
              ColumnDefValues.Title.TitleButton = True
              Ctl3D = True
              DataGrouping.Color = clWhite
              DataGrouping.ParentColor = False
              DataSource = DS_ProdutosVendas
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
              PopupMenu = PopupMenu
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
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'IDPRODUTO'
                  Footers = <>
                  Title.Caption = 'Produto'
                  Width = 69
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PROD_CEAN'
                  Footers = <>
                  Title.Caption = 'C'#243'd. Barras'
                  Width = 114
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PROD_XPROD'
                  Footers = <>
                  Title.Caption = 'Nome do Produto'
                  Width = 405
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PROD_UCOM'
                  Footers = <>
                  Title.Caption = 'EMB'
                  Width = 83
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PROD_QCOM'
                  Footers = <>
                  Title.Caption = 'Qtd'
                  Width = 61
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PROD_VUNCOM'
                  Footers = <>
                  Title.Caption = 'Vlr. Unit'
                  Width = 84
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PROD_VPROD'
                  Footers = <>
                  Title.Caption = 'Sub. Total'
                  Width = 100
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
      end
      inherited card_cadastro: TCard
        Width = 1248
        Height = 581
        inherited pnlFiltroCadastro: TPanel
          Width = 1248
          inherited btnVoltar: TSpeedButton
            Left = 1086
          end
          inherited lblTituloCadastro: TLabel
            Height = 42
          end
        end
      end
    end
  end
  object PopupMenu: TPopupMenu
    Left = 584
    Top = 256
    object E1: TMenuItem
      Caption = 'Emitir NF-e'
      OnClick = E1Click
    end
    object E2: TMenuItem
      Caption = 'Emitir NFC-e'
      OnClick = E2Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object R1: TMenuItem
      Caption = 'Reimprimir a Venda N'#227'o Fiscal'
      OnClick = R1Click
    end
  end
  object DS_ProdutosVendas: TDataSource
    Left = 272
    Top = 352
  end
  object DS_FormasPGTO: TDataSource
    DataSet = ServiceCadastro.QRY_FormasPGTOVenda
    Left = 704
    Top = 368
  end
end
