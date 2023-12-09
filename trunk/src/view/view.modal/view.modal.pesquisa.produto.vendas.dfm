inherited ViewPesquisaProdutosVenda: TViewPesquisaProdutosVenda
  Align = alClient
  Caption = 'ViewPesquisaPr'
  OnShow = FormShow
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited pnlDadosTitulo: TPanel
      inherited pnlInfoTitulo: TPanel
        Width = 241
        ExplicitWidth = 241
        inherited lblTituloTela: TLabel
          Width = 224
          Height = 27
          Caption = ' CONSULTA DE PRODUTOS'
          ExplicitWidth = 224
        end
      end
    end
  end
  inherited DBG_ListaDados: TDBGridEh
    Height = 306
    Options = [dgTitles, dgColLines, dgRowSelect, dgMultiSelect]
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CODIGO'
        Footers = <>
        Title.Caption = 'Codigo'
        Width = 85
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'REFERENCIA'
        Footers = <>
        Title.Alignment = taLeftJustify
        Title.Caption = 'Referencia'
        Width = 233
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CODBARRA'
        Footers = <>
        Title.Alignment = taLeftJustify
        Title.Caption = 'Codigo de Barras'
        Width = 198
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DESCRICAO'
        Footers = <>
        Title.Alignment = taLeftJustify
        Title.Caption = 'Descri'#231#227'o'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VALOR'
        Footers = <>
        Title.Caption = 'Valor Vista'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PRAZO'
        Footers = <>
        Title.Caption = 'Valor Prazo'
      end>
  end
  object pnlinformacoes: TPanel [4]
    Left = 0
    Top = 376
    Width = 912
    Height = 125
    Align = alBottom
    BevelOuter = bvNone
    Color = 15066597
    ParentBackground = False
    TabOrder = 4
    object Label1: TLabel
      Left = 179
      Top = 3
      Width = 47
      Height = 23
      Caption = 'Marca'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 376
      Top = 3
      Width = 87
      Height = 23
      Caption = 'Localiza'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 568
      Top = 3
      Width = 88
      Height = 23
      Caption = 'Referencia2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 736
      Top = 3
      Width = 88
      Height = 23
      Caption = 'Referencia3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 179
      Top = 22
      Width = 182
      Height = 25
      DataField = 'MARCA'
      DataSource = DS_Dados
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 376
      Top = 22
      Width = 186
      Height = 25
      DataField = 'LOCALIZACAO'
      DataSource = DS_Dados
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 568
      Top = 22
      Width = 162
      Height = 25
      DataField = 'REFERENCIA2'
      DataSource = DS_Dados
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 736
      Top = 22
      Width = 153
      Height = 25
      DataField = 'REFERENCIA3'
      DataSource = DS_Dados
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
end
