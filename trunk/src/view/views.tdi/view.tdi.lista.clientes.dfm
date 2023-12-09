inherited ViewListaClientesTDI: TViewListaClientesTDI
  Caption = 'Clientes'
  TextHeight = 15
  inherited CP_cadastro: TCardPanel
    inherited card_consulta: TCard
      inherited pnlDadosPesquisa: TPanel
        inherited GRIDDados: TDBGridEh
          Height = 383
          IndicatorOptions = []
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'IDPESSOAS'
              Footers = <>
              Title.Caption = 'C'#243'digo'
              Width = 80
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'RAZAOSOCIAL'
              Footers = <>
              Title.Caption = 'Raz'#227'o Social'
              Width = 300
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'FANTASIA'
              Footers = <>
              Title.Caption = 'Fantasia'
              Width = 250
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CNPJ'
              Footers = <>
              Title.Caption = 'CNPJ / CPF'
              Width = 150
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'IE'
              Footers = <>
              Title.Caption = 'RG / IE'
              Width = 150
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ENDERECO'
              Footers = <>
              Title.Caption = 'Endere'#231'o'
              Width = 250
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NUMERO'
              Footers = <>
              Title.Caption = 'N'#250'mero'
              Width = 78
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'BAIRRO'
              Footers = <>
              Title.Caption = 'Bairro'
              Width = 150
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'MUNICIPIO'
              Footers = <>
              Title.Caption = 'Cidade'
              Width = 200
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ATIVO'
              Footers = <>
              Title.Caption = 'Ativo'
              Width = 100
            end>
        end
        object pnlDadosAgregados: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 393
          Width = 998
          Height = 200
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 5
          Align = alBottom
          BevelOuter = bvNone
          Color = 15921906
          ParentBackground = False
          TabOrder = 1
          object pnlDadosContatos: TPanel
            Left = 0
            Top = 0
            Width = 500
            Height = 200
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object pnlTitContatos: TPanel
              Left = 0
              Top = 0
              Width = 500
              Height = 35
              Align = alTop
              BevelOuter = bvNone
              Color = 14540253
              ParentBackground = False
              TabOrder = 0
              object lblTitContatos: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 5
                Width = 142
                Height = 25
                Margins.Top = 5
                Margins.Bottom = 5
                Align = alLeft
                Caption = 'Lista de Contatos'
                Color = clBlack
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -19
                Font.Name = 'Segoe UI Semilight'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                ExplicitLeft = 5
              end
            end
            object DBG_DadosContatos: TDBGridEh
              AlignWithMargins = True
              Left = 0
              Top = 35
              Width = 500
              Height = 165
              Cursor = crHandPoint
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              ParentCustomHint = False
              Align = alClient
              BiDiMode = bdLeftToRight
              BorderStyle = bsNone
              Color = clWhite
              ColumnDefValues.Title.TitleButton = True
              Ctl3D = True
              DataGrouping.Color = clWhite
              DataGrouping.ParentColor = False
              DataSource = DS_Contatos
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
              TabOrder = 1
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
                  FieldName = 'TELEFONE'
                  Footers = <>
                  Title.Caption = 'Telefone'
                  Width = 150
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'CELULAR'
                  Footers = <>
                  Title.Caption = 'Celular'
                  Width = 150
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'EMAIL'
                  Footers = <>
                  Title.Caption = 'E-Mail'
                  Width = 300
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'OBSERVACAO'
                  Footers = <>
                  Title.Caption = 'Observa'#231#227'o'
                  Width = 600
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
          object pnlDadosEndereco: TPanel
            AlignWithMargins = True
            Left = 505
            Top = 0
            Width = 493
            Height = 200
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object pnlTitEndereco: TPanel
              Left = 0
              Top = 0
              Width = 493
              Height = 35
              Align = alTop
              BevelOuter = bvNone
              Color = 14540253
              ParentBackground = False
              TabOrder = 0
              object lblTitListEnderecos: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 5
                Width = 153
                Height = 25
                Margins.Top = 5
                Margins.Bottom = 5
                Align = alLeft
                Caption = 'Lista de Endere'#231'os'
                Color = clBlack
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -19
                Font.Name = 'Segoe UI Semilight'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
            end
            object DBG_DadosEndereco: TDBGridEh
              AlignWithMargins = True
              Left = 5
              Top = 40
              Width = 483
              Height = 155
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
              DataSource = DS_Enderecos
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
              TabOrder = 1
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
                  FieldName = 'NOMECIDADE'
                  Footers = <>
                  Title.Caption = 'Cidade'
                  Width = 299
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'ENDERECO'
                  Footers = <>
                  Title.Caption = 'Endere'#231'o'
                  Width = 310
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'BAIRRO'
                  Footers = <>
                  Title.Caption = 'Bairro'
                  Width = 186
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'NUMERO'
                  Footers = <>
                  Title.Caption = 'N'#250'mero'
                  Width = 77
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'UF'
                  Footers = <>
                  Width = 78
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'CEP'
                  Footers = <>
                  Width = 100
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'TIPOENDERECO'
                  Footers = <>
                  Title.Caption = 'Tipo de Endere'#231'o'
                  Width = 150
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
      end
    end
  end
  inherited pnlTopo: TPanel
    inherited pnlPesquisa: TPanel
      inherited pnlImgPesquisa: TPanel
        inherited imgPesquisaAzulClaro: TImage
          OnClick = imgPesquisaAzulClaroClick
        end
        inherited imgPesquisaAzulEscuro: TImage
          ExplicitLeft = 3
          ExplicitTop = 0
          ExplicitWidth = 32
          ExplicitHeight = 30
        end
      end
    end
    inherited pnlFiltro: TPanel
      inherited pnlNomeTela: TPanel
        inherited lblNomeTela: TLabel
          Width = 132
          Caption = 'Lista de Clientes'
          ExplicitWidth = 132
        end
      end
    end
  end
  inherited pnlRodapeBotoes: TPanel
    inherited pnlBtnNovo: TPanel
      inherited btnNovo: TSpeedButton
        OnClick = BtnNovoClick
      end
    end
    inherited pnlBtnEditar: TPanel
      inherited btnEditar: TSpeedButton
        OnClick = BtnEditarClick
      end
    end
  end
  inherited DS_Dados: TDataSource
    OnDataChange = DS_DadosDataChange
  end
  object DS_Contatos: TDataSource
    Left = 221
    Top = 245
  end
  object DS_Enderecos: TDataSource
    Left = 640
    Top = 368
  end
end
