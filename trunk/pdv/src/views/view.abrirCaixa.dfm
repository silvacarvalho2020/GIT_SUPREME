inherited ViewAbrirCaixa: TViewAbrirCaixa
  Caption = 'ViewAbrirCaixa'
  ClientHeight = 520
  ClientWidth = 766
  ExplicitWidth = 766
  ExplicitHeight = 520
  TextHeight = 21
  inherited pnlTopo: TPanel
    Width = 766
    ExplicitWidth = 766
    inherited lblTitulo: TLabel
      Width = 95
      Height = 34
      Caption = 'Abrir Caixa'
      ExplicitWidth = 95
    end
    inherited pnlFechar: TPanel
      Left = 698
      ExplicitLeft = 698
    end
  end
  inherited pnlRodape: TPanel
    Top = 480
    Width = 766
    ExplicitTop = 480
    ExplicitWidth = 766
    inherited pnlBtnDeletar: TPanel
      Left = -5000
      Align = alNone
      ExplicitLeft = -5000
    end
    inherited pnlBtnEditar: TPanel
      Left = 376
      ExplicitLeft = 376
      inherited btnEditar: TSpeedButton
        ExplicitLeft = 359
      end
    end
    inherited pnlBtnImprimir: TPanel
      Left = -5000
      Align = alNone
      ExplicitLeft = -5000
      inherited ShapeBtnImprimir: TShape
        ExplicitLeft = -120
        ExplicitTop = 2
      end
      inherited btnImprimir: TSpeedButton
        ExplicitLeft = -55
        ExplicitWidth = 136
      end
    end
    inherited pnlBtnNovo: TPanel
      Left = 256
      ExplicitLeft = 256
      inherited btnNovo: TSpeedButton
        ExplicitLeft = 237
      end
    end
    inherited pnlBtnCancelar: TPanel
      Left = 501
      ExplicitLeft = 501
    end
    inherited pnlBtnSalvar: TPanel
      Left = 626
      ExplicitLeft = 626
    end
  end
  inherited pnlLinhaFundo: TPanel
    Width = 766
    Height = 444
    ExplicitWidth = 766
    ExplicitHeight = 444
    inherited CardPanel_conteudo: TCardPanel
      Width = 762
      Height = 444
      ActiveCard = card_cadastro
      ExplicitWidth = 762
      ExplicitHeight = 444
      inherited card_pesquisa: TCard
        Width = 762
        Height = 444
        ExplicitWidth = 762
        ExplicitHeight = 444
        inherited pnlFiltroPesquisa: TPanel
          Width = 762
          ExplicitWidth = 762
          inherited pnlPesquisar: TPanel
            Width = 762
            ExplicitWidth = 908
            inherited edtPesquisa: TSearchBox
              Width = 756
              ExplicitWidth = 902
            end
          end
          inherited pnlFiltro: TPanel
            Width = 762
            ExplicitWidth = 762
            object pnlFiltroCaixa: TPanel
              AlignWithMargins = True
              Left = 10
              Top = 3
              Width = 749
              Height = 54
              Margins.Left = 10
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object rdoAberto: TRadioButton
                AlignWithMargins = True
                Left = 262
                Top = 3
                Width = 113
                Height = 48
                Margins.Left = 10
                Align = alLeft
                Caption = 'Aberto'
                Checked = True
                DragCursor = crHandPoint
                TabOrder = 0
                TabStop = True
                OnClick = rdoAbertoClick
              end
              object rdoFechado: TRadioButton
                AlignWithMargins = True
                Left = 381
                Top = 3
                Width = 113
                Height = 48
                Align = alLeft
                Caption = 'Fechado'
                DragCursor = crHandPoint
                TabOrder = 1
                OnClick = rdoFechadoClick
              end
              object edtDtaIni: TsDateEdit
                AlignWithMargins = True
                Left = 3
                Top = 15
                Width = 120
                Height = 31
                Margins.Top = 15
                Margins.Bottom = 8
                Align = alLeft
                MaxLength = 10
                TabOrder = 2
                ExplicitHeight = 29
              end
              object edtDtaFin: TsDateEdit
                AlignWithMargins = True
                Left = 129
                Top = 15
                Width = 120
                Height = 31
                Margins.Top = 15
                Margins.Bottom = 8
                Align = alLeft
                MaxLength = 10
                TabOrder = 3
                ExplicitHeight = 29
              end
            end
          end
        end
        inherited DBG_ListaDados: TDBGridEh
          Width = 752
          Height = 334
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'IDABRIRCAIXA'
              Footers = <>
              Title.Caption = 'N'#250'm. Caixa'
              Width = 80
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DTAABRE'
              Footers = <>
              Title.Caption = 'Dta. Abre'
              Width = 89
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'HRAABRE'
              Footers = <>
              Title.Caption = 'Hra. Abre'
              Width = 88
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'VALORINICIAL'
              Footers = <>
              Title.Caption = 'Valor Inicial'
              Width = 90
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DTAFECHA'
              Footers = <>
              Title.Caption = 'Dta. Fecha'
              Width = 88
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'HRAFECHA'
              Footers = <>
              Title.Caption = 'Hra. Abre'
              Width = 80
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'VALORFINAL'
              Footers = <>
              Title.Caption = 'Vlr. Final'
              Width = 83
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'STATUSCAIXA'
              Footers = <>
              Title.Caption = 'Status'
              Width = 80
            end>
        end
      end
      inherited card_cadastro: TCard
        Width = 762
        Height = 444
        ExplicitWidth = 762
        ExplicitHeight = 444
        object lblVlrInicial: TLabel [0]
          Left = 16
          Top = 80
          Width = 83
          Height = 21
          Caption = 'Saldo Inicial'
        end
        object lblObservacao: TLabel [1]
          Left = 16
          Top = 144
          Width = 145
          Height = 21
          Caption = 'Observa'#231#227'o do Caixa'
          FocusControl = edtObservacao
        end
        object lblStatusCaixa: TLabel [2]
          Left = 143
          Top = 80
          Width = 105
          Height = 21
          Caption = 'Status do Caixa'
        end
        inherited pnlFiltroCadastro: TPanel
          Width = 762
          ExplicitWidth = 762
          inherited btnVoltar: TSpeedButton
            Left = 600
            ExplicitLeft = 574
          end
          inherited lblTituloCadastro: TLabel
            Height = 42
          end
        end
        object edtObservacao: TDBEdit
          Left = 16
          Top = 168
          Width = 717
          Height = 29
          DataField = 'OBSERVACAO'
          DataSource = DS_Dados
          TabOrder = 1
        end
        object VistaPrazo: TAdvDBComboBox
          Left = 143
          Top = 107
          Width = 157
          Height = 29
          Color = clWindow
          Version = '1.0.6.0'
          Visible = True
          Style = csDropDownList
          BevelInner = bvNone
          BevelOuter = bvNone
          ButtonWidth = 17
          DataField = 'STATUSCAIXA'
          DataSource = DS_Dados
          DragCursor = crHandPoint
          DropWidth = 0
          Enabled = True
          ItemIndex = -1
          Items.Strings = (
            'Aberto'
            'Fechado')
          Items.StoredStrings = (
            'ABERTO'
            'FECHADO')
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          TabOrder = 2
        end
        object edtValorInicial: TDBEdit
          Left = 16
          Top = 107
          Width = 121
          Height = 29
          DataField = 'VALORINICIAL'
          DataSource = DS_Dados
          TabOrder = 3
        end
      end
    end
  end
  inherited ImageList_24: TImageList
    Left = 146
    Top = 276
  end
  inherited DS_Dados: TDataSource
    Left = 240
    Top = 280
  end
end
