inherited ViewConsultaPrecos: TViewConsultaPrecos
  Align = alClient
  Caption = 'ViewConsultaPrecos'
  ClientHeight = 810
  ClientWidth = 1386
  Position = poDefault
  ExplicitWidth = 1386
  ExplicitHeight = 810
  TextHeight = 21
  inherited pnlTopo: TPanel
    Width = 1386
    ExplicitWidth = 1386
    inherited lblTitulo: TLabel
      Width = 138
      Height = 34
      Caption = 'Consulta Pre'#231'os'
      ExplicitWidth = 138
    end
    inherited pnlFechar: TPanel
      Left = 1318
      ExplicitLeft = 1318
    end
  end
  inherited pnlRodape: TPanel
    Top = 770
    Width = 1386
    ExplicitTop = 770
    ExplicitWidth = 1386
    inherited pnlBtnDeletar: TPanel
      Left = -5000
      Align = alNone
      Visible = False
      ExplicitLeft = -5000
    end
    inherited pnlBtnEditar: TPanel
      Left = -5000
      Align = alNone
      Visible = False
      ExplicitLeft = -5000
    end
    inherited pnlBtnImprimir: TPanel
      Left = -5000
      Align = alNone
      Visible = False
      ExplicitLeft = -5000
    end
    inherited pnlBtnNovo: TPanel
      Left = -5000
      Align = alNone
      Visible = False
      ExplicitLeft = -5000
    end
    inherited pnlBtnCancelar: TPanel
      Left = -5000
      Align = alNone
      Visible = False
      ExplicitLeft = -5000
    end
    inherited pnlBtnSalvar: TPanel
      Left = 1246
      ExplicitLeft = 1246
    end
  end
  inherited pnlLinhaFundo: TPanel
    Width = 1386
    Height = 734
    ExplicitWidth = 1386
    ExplicitHeight = 734
    inherited CardPanel_conteudo: TCardPanel
      Width = 1382
      Height = 734
      ExplicitWidth = 1382
      ExplicitHeight = 734
      inherited card_pesquisa: TCard
        Width = 1382
        Height = 734
        ExplicitWidth = 1382
        ExplicitHeight = 734
        inherited pnlFiltroPesquisa: TPanel
          Width = 1382
          Height = 65
          ExplicitWidth = 1382
          ExplicitHeight = 65
          inherited pnlPesquisar: TPanel
            Top = 0
            Width = 1382
            Height = 65
            Align = alClient
            ExplicitTop = 0
            ExplicitWidth = 1382
            ExplicitHeight = 65
            inherited edtPesquisa: TSearchBox
              Width = 1376
              Height = 59
              Color = 16770764
              Font.Charset = ANSI_CHARSET
              Font.Height = -40
              Font.Name = 'Segoe UI Semilight'
              TextHint = 'Fa'#231'a sua Pesquisa aqui!'
              OnKeyDown = edtPesquisaKeyDown
              ExplicitLeft = 1
              ExplicitWidth = 1376
              ExplicitHeight = 59
            end
          end
          inherited pnlFiltro: TPanel
            Left = -5000
            Top = 37
            Align = alNone
            Visible = False
            ExplicitLeft = -5000
            ExplicitTop = 37
          end
        end
        inherited DBG_ListaDados: TDBGridEh
          Left = -5000
          Top = 107
          Width = 1372
          Height = 383
          Align = alNone
          Font.Height = -27
          TitleParams.Font.Height = -21
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'IDPRODUTO'
              Footers = <>
              Title.Caption = 'C'#243'digo'
              Width = 79
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DESCRICAO'
              Footers = <>
              Title.Caption = 'Produto'
              Width = 517
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CODBARRAS'
              Footers = <>
              Title.Caption = 'C'#243'd. Barras'
              Width = 157
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'VLRVENDAVISTA'
              Footers = <>
              Title.Caption = 'Venda Vista'
              Width = 141
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'VLRVENDAPRAZO'
              Footers = <>
              Title.Caption = 'Venda Prazo'
              Width = 143
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'VLRATACADO'
              Footers = <>
              Title.Caption = 'Venda Atacado'
              Width = 153
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ATIVO'
              Footers = <>
              Title.Caption = 'Ativo'
              Width = 155
            end>
        end
        object pnlDadosProduto: TPanel
          Left = 0
          Top = 65
          Width = 1382
          Height = 669
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object pnlDadosPreco: TPanel
            Left = 0
            Top = 0
            Width = 1382
            Height = 453
            Align = alClient
            BevelOuter = bvNone
            Color = 14408667
            ParentBackground = False
            TabOrder = 0
            object DBG_Produtos: TDBGridEh
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 1372
              Height = 443
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
              DataSource = DS_Dados
              DynProps = <>
              EvenRowColor = clWhite
              FixedColor = clWhite
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -19
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
              Options = [dgTitles, dgColLines, dgRowSelect, dgMultiSelect]
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
              TitleParams.Font.Height = -19
              TitleParams.Font.Name = 'Segoe UI Semibold'
              TitleParams.Font.Style = [fsBold]
              TitleParams.MultiTitle = True
              TitleParams.ParentFont = False
              TitleParams.SecondColor = 9531663
              TitleParams.VertLineColor = 9531663
              VertScrollBar.VisibleMode = sbAlwaysShowEh
              OnKeyDown = DBG_ProdutosKeyDown
              OnKeyPress = DBG_ProdutosKeyPress
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'IDPRODUTO'
                  Footers = <>
                  Title.Caption = 'C'#243'digo'
                  Width = 79
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DESCRICAO'
                  Footers = <>
                  Title.Caption = 'Produto'
                  Width = 617
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'CODBARRAS'
                  Footers = <>
                  Title.Caption = 'C'#243'd. Barras'
                  Width = 225
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'estoque'
                  Footers = <>
                  Title.Caption = 'Estoque'
                  Width = 122
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'VLRVENDAVISTA'
                  Footers = <>
                  Title.Caption = 'Venda Vista'
                  Width = 141
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'VLRVENDAPRAZO'
                  Footers = <>
                  Title.Caption = 'Venda Prazo'
                  Width = 143
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'VLRATACADO'
                  Footers = <>
                  Title.Caption = 'Venda Atacado'
                  Width = 153
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'ATIVO'
                  Footers = <>
                  Title.Caption = 'Ativo'
                  Width = 58
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
          object pnlPrecoGrande: TPanel
            Left = 0
            Top = 453
            Width = 1382
            Height = 216
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object Label1: TLabel
              Left = 5
              Top = 97
              Width = 111
              Height = 32
              Caption = 'Valor Vista'
              FocusControl = DBEdit1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -24
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object lbl: TLabel
              Left = 311
              Top = 97
              Width = 211
              Height = 32
              Caption = 'Unidade de Medida'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -24
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 1372
              Height = 53
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              TabStop = False
              Align = alTop
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              Color = 16770764
              DataField = 'DESCRICAO'
              DataSource = DS_Dados
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -33
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit1: TDBEdit
              Left = 5
              Top = 131
              Width = 300
              Height = 75
              TabStop = False
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              Color = 16770764
              DataField = 'VLRVENDAVISTA'
              DataSource = DS_Dados
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -53
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 311
              Top = 131
              Width = 300
              Height = 75
              TabStop = False
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              Color = 16770764
              DataField = 'SIGLA'
              DataSource = DS_Dados
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -53
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
          end
        end
      end
      inherited card_cadastro: TCard
        Width = 1382
        Height = 734
        ExplicitWidth = 1382
        ExplicitHeight = 734
        inherited pnlFiltroCadastro: TPanel
          Width = 1382
          ExplicitWidth = 1382
          inherited btnVoltar: TSpeedButton
            Left = 1220
            ExplicitLeft = 1220
          end
          inherited lblTituloCadastro: TLabel
            Height = 42
          end
        end
      end
    end
  end
  inherited ImageList_24: TImageList
    Left = 754
    Top = 396
  end
end
