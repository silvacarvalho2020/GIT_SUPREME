inherited ViewCaixaCardex: TViewCaixaCardex
  Align = alClient
  Caption = 'ViewCaixaCardex'
  ClientHeight = 794
  ClientWidth = 1478
  ExplicitWidth = 1478
  ExplicitHeight = 794
  TextHeight = 21
  inherited pnlTopo: TPanel
    Width = 1478
    ExplicitWidth = 1478
    inherited lblTitulo: TLabel
      Width = 46
      Height = 34
      Caption = 'Caixa'
      ExplicitWidth = 46
    end
    inherited pnlFechar: TPanel
      Left = 1410
      ExplicitLeft = 1410
    end
  end
  inherited pnlRodape: TPanel
    Top = 754
    Width = 1478
    ExplicitTop = 754
    ExplicitWidth = 1478
    inherited pnlBtnDeletar: TPanel
      Left = 1208
      Visible = False
      ExplicitLeft = 1208
    end
    inherited pnlBtnEditar: TPanel
      Left = 1083
      Visible = False
      ExplicitLeft = 1083
    end
    inherited pnlBtnImprimir: TPanel
      Left = 1338
      ExplicitLeft = 1338
    end
    inherited pnlBtnNovo: TPanel
      Left = 963
      Visible = False
      ExplicitLeft = 963
    end
    inherited pnlBtnCancelar: TPanel
      Left = -5000
      Align = alNone
      ExplicitLeft = -5000
      inherited btnCancelar: TSpeedButton
        ExplicitLeft = 3
        ExplicitWidth = 121
      end
    end
    inherited pnlBtnSalvar: TPanel
      Left = -5000
      Align = alNone
      ExplicitLeft = -5000
    end
  end
  inherited pnlLinhaFundo: TPanel
    Width = 1478
    Height = 718
    ExplicitWidth = 1478
    ExplicitHeight = 718
    inherited CardPanel_conteudo: TCardPanel
      Width = 1474
      Height = 718
      ExplicitWidth = 1474
      ExplicitHeight = 718
      inherited card_pesquisa: TCard
        Width = 1474
        Height = 718
        ExplicitWidth = 1474
        ExplicitHeight = 718
        inherited pnlFiltroPesquisa: TPanel
          Width = 1474
          ExplicitWidth = 1474
          inherited pnlPesquisar: TPanel
            Width = 1474
            ExplicitWidth = 1474
            inherited edtPesquisa: TSearchBox
              Width = 1468
              OnInvokeSearch = edtPesquisaInvokeSearch
              ExplicitWidth = 1468
            end
          end
          inherited pnlFiltro: TPanel
            Width = 1474
            ExplicitWidth = 1474
            object btnAbrirCaixa: TSpeedButton
              AlignWithMargins = True
              Left = 1108
              Top = 3
              Width = 159
              Height = 54
              Cursor = crHandPoint
              Align = alRight
              GroupIndex = 1
              Down = True
              Caption = 'Abrir Fechar Caixa'
              Flat = True
              OnClick = btnAbrirCaixaClick
              ExplicitLeft = 262
              ExplicitTop = 13
              ExplicitHeight = 41
            end
            object btnSuprimentoSangrias: TSpeedButton
              AlignWithMargins = True
              Left = 1273
              Top = 3
              Width = 198
              Height = 54
              Cursor = crHandPoint
              Align = alRight
              GroupIndex = 1
              Caption = 'Suprimentos / Sangrias'
              Flat = True
              OnClick = btnSuprimentoSangriasClick
              ExplicitLeft = 427
              ExplicitTop = 13
              ExplicitHeight = 41
            end
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
          Width = 1464
          Height = 608
          AutoFitColWidths = False
          OnDrawColumnCell = DBG_ListaDadosDrawColumnCell
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'IDCAIXACARDEX'
              Footers = <>
              Title.Caption = 'Lan'#231'amento'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DTAMOVIMENTO'
              Footers = <>
              Title.Caption = 'Dta. Movimento'
              Width = 109
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'HRAMOVIMENTO'
              Footers = <>
              Title.Caption = 'Hra. Movimento'
              Width = 107
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'TIPO'
              Footer.Alignment = taRightJustify
              Footer.Value = 'Totais:'
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = 'Entrada / Sa'#237'da'
              Width = 107
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SALDO_ANTERIOR'
              Footer.Alignment = taCenter
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Saldo Anterior'
              Width = 115
            end
            item
              CellButtons = <>
              Color = 13807703
              DynProps = <>
              EditButtons = <>
              FieldName = 'ENTRADAS'
              Footer.Alignment = taCenter
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Vlr. Entrada'
              Width = 83
            end
            item
              CellButtons = <>
              Color = 8947967
              DynProps = <>
              EditButtons = <>
              FieldName = 'SAIDAS'
              Footer.Alignment = taCenter
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Vlr. Sa'#237'da'
              Width = 76
            end
            item
              CellButtons = <>
              Color = 5614080
              DynProps = <>
              EditButtons = <>
              FieldName = 'SALDO_ATUAL'
              Footer.Alignment = taCenter
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Saldo Atual'
              Width = 87
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'FORMA_PAGAMENTO'
              Footers = <>
              Title.Caption = 'Forma de Pagamento'
              Width = 161
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NUMCAIXA'
              Footers = <>
              Title.Caption = 'N'#250'm. Caixa'
              Width = 86
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'statuscaixa'
              Footers = <>
              Title.Caption = 'Status do Caixa'
              Width = 112
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'OBSERVACAO'
              Footers = <>
              Title.Caption = 'Observa'#231#227'o'
              Width = 500
            end>
        end
      end
      inherited card_cadastro: TCard
        Width = 1474
        Height = 718
        ExplicitWidth = 1474
        ExplicitHeight = 718
        inherited pnlFiltroCadastro: TPanel
          Width = 1474
          ExplicitWidth = 1474
          inherited btnVoltar: TSpeedButton
            Left = 1312
            ExplicitLeft = 1312
          end
          inherited lblTituloCadastro: TLabel
            Height = 42
          end
        end
      end
    end
  end
  object frxReport: TfrxReport
    Version = '2022.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45160.591273634300000000
    ReportOptions.LastChange = 45251.882871145830000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 496
    Top = 264
    Datasets = <
      item
        DataSet = frxDBD_Vendas
        DataSetName = 'frxDBD_Vendas'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 14211288
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'Relatorio de Vendas')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110236220000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 44.384489700000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Id.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 44.384489700000000000
          Width = 75.481773150000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Dta. Mov:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 120.102502860000000000
          Width = 72.563286600000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Hra. Mov:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 192.681559460000000000
          Width = 67.931820700000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Tipo E/S')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 260.627308150000000000
          Width = 81.418465550000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Vlr. Entrada')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 342.045773700000000000
          Width = 75.871542780000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Vlr. Sa'#237'da')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 417.827150000000000000
          Width = 299.480111770000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Observa'#231#227'o')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBD_Vendas."FORMA_PAGAMENTO"'
        object Memo12: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataSet = frxDBD_Vendas
          DataSetName = 'frxDBD_Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            '[frxDBD_Vendas."FORMA_PAGAMENTO"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = frxDBD_Vendas
        DataSetName = 'frxDBD_Vendas'
        RowCount = 0
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Width = 44.384489700000000000
          Height = 18.897650000000000000
          DataField = 'IDCAIXACARDEX'
          DataSet = frxDBD_Vendas
          DataSetName = 'frxDBD_Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBD_Vendas."IDCAIXACARDEX"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 44.384489700000000000
          Width = 75.481773150000000000
          Height = 18.897650000000000000
          DataField = 'DTAMOVIMENTO'
          DataSet = frxDBD_Vendas
          DataSetName = 'frxDBD_Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBD_Vendas."DTAMOVIMENTO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 120.102502860000000000
          Width = 72.563286600000000000
          Height = 18.897650000000000000
          DataField = 'HRAMOVIMENTO'
          DataSet = frxDBD_Vendas
          DataSetName = 'frxDBD_Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBD_Vendas."HRAMOVIMENTO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 192.681559460000000000
          Width = 67.931820700000000000
          Height = 18.897650000000000000
          DataField = 'TIPO'
          DataSet = frxDBD_Vendas
          DataSetName = 'frxDBD_Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBD_Vendas."TIPO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 260.627308150000000000
          Width = 81.418465550000000000
          Height = 18.897650000000000000
          DataField = 'ENTRADAS'
          DataSet = frxDBD_Vendas
          DataSetName = 'frxDBD_Vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBD_Vendas."ENTRADAS"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 342.045773700000000000
          Width = 75.871542780000000000
          Height = 18.897650000000000000
          DataSet = frxDBD_Vendas
          DataSetName = 'frxDBD_Vendas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBD_Vendas."SAIDAS"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 417.827150000000000000
          Width = 299.480111770000000000
          Height = 18.897650000000000000
          DataField = 'OBSERVACAO'
          DataSet = frxDBD_Vendas
          DataSetName = 'frxDBD_Vendas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBD_Vendas."OBSERVACAO"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 517.795610000000000000
        Width = 718.110700000000000000
        object Memo22: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo24: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 166.299320000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 113.385900000000000000
          Width = 381.732530000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Total L'#237'quido: [SUM(<frxDBD_Vendas."ENTRADAS">-<frxDBD_Vendas."S' +
              'AIDAS">)]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 11.338590000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Color = 13421772
          Frame.Typ = []
          Diagonal = True
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 52.913420000000000000
          Width = 381.732530000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Entradas: [SUM(<frxDBD_Vendas."ENTRADAS">,MasterData1)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 83.149660000000000000
          Width = 381.732530000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Saidas: [SUM(<frxDBD_Vendas."SAIDAS">,MasterData1)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 22.677180000000000000
          Width = 381.732530000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'SALDO FINAL')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 706.772110000000000000
          Height = 132.283550000000000000
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
        end
      end
    end
  end
  object frxDBD_Vendas: TfrxDBDataset
    UserName = 'frxDBD_Vendas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IDCAIXACARDEX=IDCAIXACARDEX'
      'DTAMOVIMENTO=DTAMOVIMENTO'
      'HRAMOVIMENTO=HRAMOVIMENTO'
      'TIPO=TIPO'
      'SALDO_ANTERIOR=SALDO_ANTERIOR'
      'ENTRADAS=ENTRADAS'
      'SAIDAS=SAIDAS'
      'SALDO_ATUAL=SALDO_ATUAL'
      'OBSERVACAO=OBSERVACAO'
      'FORMA_PAGAMENTO=FORMA_PAGAMENTO'
      'NUMCAIXA=NUMCAIXA'
      'STATUSCAIXA=STATUSCAIXA')
    BCDToCurrency = False
    DataSetOptions = []
    Left = 354
    Top = 268
  end
end
