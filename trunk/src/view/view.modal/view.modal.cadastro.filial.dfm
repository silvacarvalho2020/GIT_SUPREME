inherited ViewCadastroFilial: TViewCadastroFilial
  Caption = 'ViewCadastroFilial'
  ClientHeight = 675
  ClientWidth = 930
  OnShow = FormShow
  ExplicitLeft = -170
  ExplicitTop = -224
  ExplicitWidth = 930
  ExplicitHeight = 675
  TextHeight = 15
  inherited pnlTopo: TPanel
    Width = 930
    ExplicitWidth = 930
    inherited pnlBtnFechar: TPanel
      Left = 854
      ExplicitLeft = 854
    end
    inherited pnlDadosTitulo: TPanel
      Width = 854
      ExplicitWidth = 854
      inherited pnlInfoTitulo: TPanel
        Width = 169
        ExplicitWidth = 169
        inherited lblNomeSistema: TLabel
          Width = 140
          Height = 27
          Caption = 'Cadastro da Filial'
          ExplicitWidth = 140
        end
      end
    end
    inherited pnlLineTitulo: TPanel
      Width = 930
      ExplicitWidth = 930
    end
  end
  inherited pnlRodapeCadastro: TPanel
    Top = 635
    Width = 930
    ExplicitTop = 635
    ExplicitWidth = 930
    inherited pnlBtnCancelar: TPanel
      Left = 662
      ExplicitLeft = 662
    end
    inherited pnlBtnSalvar: TPanel
      Left = 787
      ExplicitLeft = 787
      inherited btnSalvar: TSpeedButton
        OnClick = btnSalvarClick
        ExplicitTop = 3
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 30
    Width = 930
    Height = 605
    Align = alClient
    BevelOuter = bvNone
    Caption = 'ATIVO'
    TabOrder = 2
    object DBEdit4: TDBEdit
      Left = 808
      Top = 196
      Width = 106
      Height = 23
      CharCase = ecUpperCase
      DataField = 'COMPLEMENTO'
      DataSource = DS_Cadastro
      TabOrder = 0
    end
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 313
      Width = 924
      Height = 314
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object PageControl1: TPageControl
        AlignWithMargins = True
        Left = 3
        Top = 38
        Width = 918
        Height = 256
        ActivePage = TabSheet3
        Align = alTop
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'TabSheet1'
          object Label13: TLabel
            Left = 15
            Top = 4
            Width = 93
            Height = 15
            Caption = 'Regime Tributario'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 1842431
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 16
            Top = 56
            Width = 96
            Height = 15
            Caption = 'Regime PIS Cofins'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 1842431
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 16
            Top = 110
            Width = 106
            Height = 15
            Caption = 'Criterio Escritura'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 1842431
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 17
            Top = 167
            Width = 31
            Height = 15
            Caption = 'CNAE'
            Font.Charset = ANSI_CHARSET
            Font.Color = 1842431
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 334
            Top = 4
            Width = 76
            Height = 15
            Caption = 'Tipo Atividade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 1842431
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 564
            Top = 4
            Width = 27
            Height = 15
            Caption = 'Perfil'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 1842431
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 334
            Top = 56
            Width = 220
            Height = 15
            Caption = 'Tipo de Contribui'#231#227'o Apurada no Periodo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 1842431
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 334
            Top = 110
            Width = 76
            Height = 15
            Caption = 'Per Cred ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = 1842431
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object DBComboBoxEh1: TDBComboBoxEh
            Left = 17
            Top = 25
            Width = 296
            Height = 23
            DataField = 'CRT'
            DataSource = DS_Cadastro
            DynProps = <>
            EditButtons = <>
            Items.Strings = (
              '1 - Simples Nacional')
            KeyItems.Strings = (
              '1')
            TabOrder = 0
            Visible = True
          end
          object DBComboBoxEh2: TDBComboBoxEh
            Left = 17
            Top = 77
            Width = 296
            Height = 23
            DataField = 'PISCOFINS'
            DataSource = DS_Cadastro
            DynProps = <>
            EditButtons = <>
            Items.Strings = (
              '1 - Nao Cumulativo')
            KeyItems.Strings = (
              '1')
            TabOrder = 1
            Visible = True
          end
          object DBComboBoxEh3: TDBComboBoxEh
            Left = 17
            Top = 131
            Width = 296
            Height = 23
            DataField = 'ESCRITURACAO'
            DataSource = DS_Cadastro
            DynProps = <>
            EditButtons = <>
            Items.Strings = (
              '1 - Regime de Caixa - Escritura'#231#227'o Consolidada')
            KeyItems.Strings = (
              '1')
            TabOrder = 2
            Visible = True
          end
          object DBEdit10: TDBEdit
            Left = 17
            Top = 188
            Width = 224
            Height = 23
            CharCase = ecUpperCase
            DataField = 'CNAE'
            DataSource = DS_Cadastro
            TabOrder = 3
          end
          object DBComboBoxEh4: TDBComboBoxEh
            Left = 334
            Top = 25
            Width = 224
            Height = 23
            DataField = 'ATIVIDADE'
            DataSource = DS_Cadastro
            DynProps = <>
            EditButtons = <>
            Items.Strings = (
              '1 - Outros')
            KeyItems.Strings = (
              '1')
            TabOrder = 4
            Visible = True
          end
          object DBComboBoxEh6: TDBComboBoxEh
            Left = 564
            Top = 25
            Width = 90
            Height = 23
            DataField = 'PERFIL'
            DataSource = DS_Cadastro
            DynProps = <>
            EditButtons = <>
            Items.Strings = (
              'Perfil A')
            KeyItems.Strings = (
              'A')
            TabOrder = 5
            Visible = True
          end
          object DBComboBoxEh5: TDBComboBoxEh
            Left = 334
            Top = 77
            Width = 320
            Height = 23
            DataField = 'CONTRIBUICAO'
            DataSource = DS_Cadastro
            DynProps = <>
            EditButtons = <>
            Items.Strings = (
              '1 - Aliquota B'#225'sica')
            KeyItems.Strings = (
              '1')
            TabOrder = 6
            Visible = True
          end
          object DBCurrencyEdit1: TDBCurrencyEdit
            Left = 334
            Top = 131
            Width = 152
            Height = 23
            DisplayFormat = '0.00; 0.00'
            TabOrder = 7
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'TabSheet2'
          ImageIndex = 1
          object DBImage1: TDBImage
            Left = 42
            Top = 22
            Width = 162
            Height = 201
            DataField = 'LOGO1'
            DataSource = DS_Cadastro
            Stretch = True
            TabOrder = 0
          end
          object DBImage2: TDBImage
            Left = 390
            Top = 16
            Width = 162
            Height = 177
            DataField = 'LOGO2'
            DataSource = DS_Cadastro
            Stretch = True
            TabOrder = 1
          end
          object Panel3: TPanel
            AlignWithMargins = True
            Left = 220
            Top = 60
            Width = 80
            Height = 32
            Margins.Left = 1
            Margins.Bottom = 0
            BevelOuter = bvNone
            Color = 13948116
            ParentBackground = False
            TabOrder = 2
            object spdprocurarfoto1: TSpeedButton
              Left = 0
              Top = 0
              Width = 80
              Height = 32
              Cursor = crHandPoint
              Align = alClient
              Caption = 'Procurar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 3815994
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = spdprocurarfoto1Click
              ExplicitLeft = -10
              ExplicitTop = 2
            end
          end
          object Panel4: TPanel
            AlignWithMargins = True
            Left = 220
            Top = 100
            Width = 80
            Height = 29
            Margins.Left = 1
            Margins.Bottom = 0
            BevelOuter = bvNone
            Color = 13948116
            ParentBackground = False
            TabOrder = 3
            object spdexcluir1: TSpeedButton
              Left = 0
              Top = 0
              Width = 80
              Height = 29
              Cursor = crHandPoint
              Align = alClient
              Caption = 'Excluir'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 3815994
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = spdexcluir1Click
              ExplicitTop = -2
            end
          end
          object Panel5: TPanel
            AlignWithMargins = True
            Left = 579
            Top = 60
            Width = 89
            Height = 32
            Margins.Left = 1
            Margins.Bottom = 0
            BevelOuter = bvNone
            Color = 13948116
            ParentBackground = False
            TabOrder = 4
            object SpeedButton3: TSpeedButton
              Left = 0
              Top = 0
              Width = 89
              Height = 32
              Cursor = crHandPoint
              Align = alClient
              DisabledImageName = 'spdprocurar2'
              Caption = 'Procurar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 3815994
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpeedButton3Click
              ExplicitLeft = 2
              ExplicitTop = -3
              ExplicitWidth = 80
            end
          end
          object Panel6: TPanel
            AlignWithMargins = True
            Left = 579
            Top = 98
            Width = 89
            Height = 31
            Margins.Left = 1
            Margins.Bottom = 0
            BevelOuter = bvNone
            Color = 13948116
            ParentBackground = False
            TabOrder = 5
            object spdexcluir2: TSpeedButton
              Left = 0
              Top = 0
              Width = 89
              Height = 31
              Cursor = crHandPoint
              Align = alClient
              Caption = 'Excluir'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 3815994
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = spdexcluir2Click
              ExplicitLeft = 2
              ExplicitTop = -3
              ExplicitWidth = 80
              ExplicitHeight = 32
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'TabSheet3'
          ImageIndex = 2
          object Label26: TLabel
            Left = 51
            Top = 15
            Width = 63
            Height = 15
            Caption = 'Contabilista'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 1842431
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Panel7: TPanel
            AlignWithMargins = True
            Left = 208
            Top = 36
            Width = 33
            Height = 24
            Margins.Top = 2
            Margins.Bottom = 2
            BevelOuter = bvNone
            Color = 13948116
            ParentBackground = False
            TabOrder = 0
            object SpeedButton5: TSpeedButton
              Left = 0
              Top = 0
              Width = 33
              Height = 24
              Cursor = crHandPoint
              Align = alClient
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 3815994
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Glyph.Data = {
                36090000424D3609000000000000360000002800000018000000180000000100
                2000000000000009000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000FF8F6010FB8C5E90FF8F60100000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000FD8C5DD0FC8C5DFFFD8C5DD0FF8F601000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000FB8B5C40FC8C5DEFFC8C5DFFFC8C5DF0FA8A6030000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000FA8A6030FD8C5CCFFC8C5DFFFC8C5DF0FC8D5D600000
                0000000000000000000000000000FF8F6010FB8B5C40FF8F6010000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000FF8F6010FD8C5CCFFC8C5DFFFC8C5DFFFC8D
                5D6000000000FC8D5D60FD8C5DD0FC8C5DFFFC8C5DFFFC8C5DFFFC8C5DF0FB8B
                5E80FF8F60100000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000FC8C5CA0FC8C5DFFFC8C
                5DE0FC8C5CA0FC8C5DFFFC8C5DFFFC8C5DFFFC8C5DBFFC8C5DEFFC8C5DFFFC8C
                5DFFFC8C5DE0FF8F602000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000FB8B5C40FD8C
                5CCFFC8C5DFFFC8C5DEFFD8C5C6FFF8F60100000000000000000FA8A6030FC8C
                5DBFFC8C5DFFFD8C5DD0FF8F6010000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000FF8F6020FC8C
                5DFFFC8C5DFFFA8A60300000000000000000000000000000000000000000FF8F
                6010FD8C5CCFFC8C5DFFFB8B5E80000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000FB8B5E80FC8C
                5DFFFC8C5CA00000000000000000000000000000000000000000000000000000
                0000FA8A6030FC8C5DFFFC8C5DE0000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000FC8B5DC0FC8C
                5DFFFC8C5C500000000000000000000000000000000000000000000000000000
                000000000000FC8C5DF0FC8C5DFFFF8F60200000000000000000000000000000
                0000000000000000000000000000000000000000000000000000FC8B5DC0FC8C
                5DFFFB8B5C400000000000000000000000000000000000000000000000000000
                000000000000FC8C5DE0FC8C5DFFFF8F60100000000000000000000000000000
                0000000000000000000000000000000000000000000000000000FB8C5E90FC8C
                5DFFFD8B5D700000000000000000000000000000000000000000000000000000
                0000FF8F6010FC8C5DFFFC8C5DFF000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000FC8C5C50FC8C
                5DFFFC8C5DE00000000000000000000000000000000000000000000000000000
                0000FB8B5E80FC8C5DFFFC8C5DBF000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000000000FD8C
                5DD0FC8C5DFFFC8C5CA00000000000000000000000000000000000000000FC8C
                5C50FC8C5DF0FC8C5DFFFB8B5C40000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000000000FA8A
                6030FC8C5DEFFC8C5DFFFC8C5DE0FB8B5E80FB8B5C40FC8D5D60FC8C5CA0FC8C
                5DFFFC8C5DFFFB8C5E9000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000FA8A6030FD8C5CCFFC8C5DFFFC8C5DFFFC8C5DFFFC8C5DFFFC8C5DFFFC8C
                5DFFFC8D5D600000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000FC8D5D60FB8D5D8FFC8C5DBFFC8C5DAFFC8C5E5FFF8F
                6020000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              ParentFont = False
              OnClick = SpeedButton5Click
              ExplicitLeft = 5
            end
          end
          object edtcontabilista: TDBEdit
            Left = 51
            Top = 36
            Width = 156
            Height = 23
            CharCase = ecUpperCase
            DataField = 'CONTABILISTA'
            DataSource = DS_Cadastro
            ReadOnly = True
            TabOrder = 1
          end
          object DBCheckBoxEh1: TDBCheckBoxEh
            Left = 51
            Top = 80
            Width = 347
            Height = 17
            Caption = 'Autorizar Contador Baixar XML dos Documentos Fiscais'
            DataField = 'XML_FISCAIS'
            DataSource = DS_Cadastro
            DynProps = <>
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBoxEh2: TDBCheckBoxEh
            Left = 51
            Top = 103
            Width = 347
            Height = 17
            Caption = 'Receber Email de Documentos Fiscal (NFe/NFC-e)'
            DataField = 'REC_EMAIL'
            DataSource = DS_Cadastro
            DynProps = <>
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBEdit12: TDBEdit
            Left = 51
            Top = 126
            Width = 489
            Height = 23
            CharCase = ecLowerCase
            DataField = 'EMAIL_CONTABILISTA'
            DataSource = DS_Cadastro
            TabOrder = 4
          end
        end
      end
      object pnlAbas: TPanel
        Left = 0
        Top = 0
        Width = 924
        Height = 35
        Margins.Left = 5
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object PnBtnObs: TPanel
          AlignWithMargins = True
          Left = 188
          Top = 3
          Width = 80
          Height = 32
          Margins.Left = 1
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          Color = 13948116
          ParentBackground = False
          TabOrder = 0
          object BtnObservacao: TSpeedButton
            Left = 0
            Top = 0
            Width = 80
            Height = 32
            Cursor = crHandPoint
            Align = alClient
            Caption = 'Contabilista'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 3815994
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = BtnObservacaoClick
            ExplicitLeft = 2
          end
        end
        object PnBtnReferencia: TPanel
          AlignWithMargins = True
          Left = 104
          Top = 3
          Width = 80
          Height = 32
          Margins.Left = 1
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          Color = 13948116
          ParentBackground = False
          TabOrder = 1
          object BtnReferencia: TSpeedButton
            Left = 0
            Top = 0
            Width = 80
            Height = 32
            Cursor = crHandPoint
            Align = alClient
            Caption = 'Logos'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 3815994
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = BtnReferenciaClick
            ExplicitLeft = 1
            ExplicitTop = 1
            ExplicitWidth = 96
            ExplicitHeight = 47
          end
        end
        object PnBtnEnderecos: TPanel
          AlignWithMargins = True
          Left = 20
          Top = 3
          Width = 80
          Height = 32
          Margins.Left = 20
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          Color = 7625228
          ParentBackground = False
          TabOrder = 2
          object btnfiscal: TSpeedButton
            Left = 0
            Top = 0
            Width = 80
            Height = 32
            Cursor = crHandPoint
            Align = alClient
            Caption = 'Fiscal'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnfiscalClick
            ExplicitTop = -3
          end
        end
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 0
      Width = 930
      Height = 310
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 2
      object Label1: TLabel
        Left = 20
        Top = 2
        Width = 39
        Height = 15
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 123
        Top = 2
        Width = 108
        Height = 15
        Caption = 'Nome/Raz'#227'o Social*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 1842431
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object LbFantasia: TLabel
        Left = 512
        Top = 0
        Width = 43
        Height = 15
        Caption = 'Fantasia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 1842431
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 20
        Top = 56
        Width = 79
        Height = 15
        Caption = 'Fisica/Juridica*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 1842431
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object LBCPFCNPJ: TLabel
        Left = 180
        Top = 56
        Width = 59
        Height = 15
        Caption = 'CPF / CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 1842431
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object LBRgIncEstadual: TLabel
        Left = 385
        Top = 56
        Width = 94
        Height = 15
        Caption = 'Inscri'#231#227'o Estadual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 1842431
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 465
        Top = 109
        Width = 44
        Height = 15
        Caption = 'Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 1842431
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 20
        Top = 108
        Width = 49
        Height = 15
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 1842431
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 569
        Top = 54
        Width = 103
        Height = 15
        Caption = 'Inscri'#231#227'o Municipal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 1842431
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 608
        Top = 106
        Width = 77
        Height = 15
        Caption = 'Complemento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 1842431
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 568
        Top = 158
        Width = 34
        Height = 15
        Caption = 'Bairro '
        Font.Charset = ANSI_CHARSET
        Font.Color = 1842431
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 506
        Top = 160
        Width = 35
        Height = 15
        Caption = 'Estado'
        Font.Charset = ANSI_CHARSET
        Font.Color = 1842431
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 104
        Top = 160
        Width = 54
        Height = 15
        Caption = 'Municipio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 1842431
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 750
        Top = 56
        Width = 119
        Height = 15
        Caption = 'Data de Homologa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 1842431
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 20
        Top = 211
        Width = 44
        Height = 15
        Caption = 'Telefone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 175
        Top = 211
        Width = 18
        Height = 15
        Caption = 'Fax'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 332
        Top = 211
        Width = 37
        Height = 15
        Caption = 'Celular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 506
        Top = 211
        Width = 34
        Height = 15
        Caption = 'E-mail'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 20
        Top = 160
        Width = 52
        Height = 15
        Caption = 'COD IBGE'
        Font.Charset = ANSI_CHARSET
        Font.Color = 1842431
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 20
        Top = 265
        Width = 41
        Height = 15
        Caption = 'Gerente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 1842431
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 808
        Top = 158
        Width = 21
        Height = 15
        Caption = 'CEP'
        Font.Charset = ANSI_CHARSET
        Font.Color = 1842431
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object EdtRazao: TDBEdit
        Tag = 5
        Left = 123
        Top = 23
        Width = 381
        Height = 23
        Hint = 'Nome/Raz'#227'o Social'
        CharCase = ecUpperCase
        DataField = 'RAZAO'
        DataSource = DS_Cadastro
        TabOrder = 0
      end
      object EdtFantasia: TDBEdit
        Left = 511
        Top = 23
        Width = 402
        Height = 23
        CharCase = ecUpperCase
        DataField = 'FANTASIA'
        DataSource = DS_Cadastro
        TabOrder = 1
      end
      object EdtRG: TDBEdit
        Tag = 5
        Left = 383
        Top = 80
        Width = 176
        Height = 23
        Hint = 'RG/Inc Estadual'
        CharCase = ecUpperCase
        DataField = 'IE'
        DataSource = DS_Cadastro
        TabOrder = 2
      end
      object EdtEndereco: TDBEdit
        Tag = 5
        Left = 21
        Top = 129
        Width = 438
        Height = 23
        Hint = 'Endere'#231'o'
        CharCase = ecUpperCase
        DataField = 'ENDERECO'
        DataSource = DS_Cadastro
        TabOrder = 3
      end
      object EdtBairro: TDBEdit
        Tag = 5
        Left = 605
        Top = 127
        Width = 307
        Height = 23
        Hint = 'Bairro'
        CharCase = ecUpperCase
        DataField = 'COMPLEMENTO'
        DataSource = DS_Cadastro
        TabOrder = 4
      end
      object EdtComplemento: TDBEdit
        Left = 568
        Top = 181
        Width = 233
        Height = 23
        CharCase = ecUpperCase
        DataField = 'BAIRRO'
        DataSource = DS_Cadastro
        TabOrder = 5
      end
      object EdtCodigo: TDBEdit
        Left = 20
        Top = 23
        Width = 95
        Height = 23
        TabStop = False
        DataField = 'IDEMPRESA'
        DataSource = DS_Cadastro
        Enabled = False
        ReadOnly = True
        TabOrder = 6
      end
      object cbxFisicaJuridica: TAdvDBComboBox
        Left = 23
        Top = 79
        Width = 151
        Height = 23
        Color = clWindow
        Version = '1.0.6.0'
        Visible = True
        Style = csDropDownList
        BevelInner = bvNone
        BevelOuter = bvNone
        ButtonWidth = 17
        DataField = 'TIPO'
        DataSource = DS_Cadastro
        DragCursor = crHandPoint
        DropWidth = 0
        Enabled = True
        ItemIndex = 0
        Items.Strings = (
          'FISICA'
          'JURIDICA')
        Items.StoredStrings = (
          'F'
          'J')
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        TabOrder = 7
      end
      object pnlBtnPesquisaGenerica: TPanel
        AlignWithMargins = True
        Left = 460
        Top = 181
        Width = 35
        Height = 24
        Margins.Top = 2
        Margins.Bottom = 2
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 8
        object btnPesquisaGenerica: TSpeedButton
          Left = 0
          Top = 0
          Width = 35
          Height = 24
          Cursor = crHandPoint
          Align = alClient
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3815994
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Glyph.Data = {
            36090000424D3609000000000000360000002800000018000000180000000100
            2000000000000009000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000FF8F6010FB8C5E90FF8F60100000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000FD8C5DD0FC8C5DFFFD8C5DD0FF8F601000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000FB8B5C40FC8C5DEFFC8C5DFFFC8C5DF0FA8A6030000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000FA8A6030FD8C5CCFFC8C5DFFFC8C5DF0FC8D5D600000
            0000000000000000000000000000FF8F6010FB8B5C40FF8F6010000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000FF8F6010FD8C5CCFFC8C5DFFFC8C5DFFFC8D
            5D6000000000FC8D5D60FD8C5DD0FC8C5DFFFC8C5DFFFC8C5DFFFC8C5DF0FB8B
            5E80FF8F60100000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FC8C5CA0FC8C5DFFFC8C
            5DE0FC8C5CA0FC8C5DFFFC8C5DFFFC8C5DFFFC8C5DBFFC8C5DEFFC8C5DFFFC8C
            5DFFFC8C5DE0FF8F602000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FB8B5C40FD8C
            5CCFFC8C5DFFFC8C5DEFFD8C5C6FFF8F60100000000000000000FA8A6030FC8C
            5DBFFC8C5DFFFD8C5DD0FF8F6010000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF8F6020FC8C
            5DFFFC8C5DFFFA8A60300000000000000000000000000000000000000000FF8F
            6010FD8C5CCFFC8C5DFFFB8B5E80000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FB8B5E80FC8C
            5DFFFC8C5CA00000000000000000000000000000000000000000000000000000
            0000FA8A6030FC8C5DFFFC8C5DE0000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FC8B5DC0FC8C
            5DFFFC8C5C500000000000000000000000000000000000000000000000000000
            000000000000FC8C5DF0FC8C5DFFFF8F60200000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FC8B5DC0FC8C
            5DFFFB8B5C400000000000000000000000000000000000000000000000000000
            000000000000FC8C5DE0FC8C5DFFFF8F60100000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FB8C5E90FC8C
            5DFFFD8B5D700000000000000000000000000000000000000000000000000000
            0000FF8F6010FC8C5DFFFC8C5DFF000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FC8C5C50FC8C
            5DFFFC8C5DE00000000000000000000000000000000000000000000000000000
            0000FB8B5E80FC8C5DFFFC8C5DBF000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FD8C
            5DD0FC8C5DFFFC8C5CA00000000000000000000000000000000000000000FC8C
            5C50FC8C5DF0FC8C5DFFFB8B5C40000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FA8A
            6030FC8C5DEFFC8C5DFFFC8C5DE0FB8B5E80FB8B5C40FC8D5D60FC8C5CA0FC8C
            5DFFFC8C5DFFFB8C5E9000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000FA8A6030FD8C5CCFFC8C5DFFFC8C5DFFFC8C5DFFFC8C5DFFFC8C5DFFFC8C
            5DFFFC8D5D600000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000FC8D5D60FB8D5D8FFC8C5DBFFC8C5DAFFC8C5E5FFF8F
            6020000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentFont = False
          OnClick = btnPesquisaGenericaClick
          ExplicitLeft = 4
        end
      end
      object edtDtaNascimento: TJvDBDateEdit
        Left = 751
        Top = 77
        Width = 162
        Height = 23
        DataField = 'HOMOLOGACAO'
        DataSource = DS_Cadastro
        ShowNullDate = False
        TabOrder = 9
      end
      object EdtCPFCNPJ: TJvDBMaskEdit
        Tag = 5
        Left = 180
        Top = 79
        Width = 197
        Height = 23
        Hint = 'CPF/CNPJ'
        CharCase = ecUpperCase
        DataField = 'CNPJ'
        DataSource = DS_Cadastro
        TabOrder = 10
        EditMask = ''
        OnEnter = EdtCPFCNPJEnter
      end
      object EdtCep: TJvDBMaskEdit
        Tag = 5
        Left = 465
        Top = 129
        Width = 134
        Height = 23
        Hint = 'CEP'
        CharCase = ecUpperCase
        DataField = 'NUMERO'
        DataSource = DS_Cadastro
        TabOrder = 11
        EditMask = ''
      end
      object DBEdit1: TDBEdit
        Tag = 5
        Left = 568
        Top = 77
        Width = 176
        Height = 23
        Hint = 'RG/Inc Estadual'
        CharCase = ecUpperCase
        DataField = 'IM'
        DataSource = DS_Cadastro
        TabOrder = 12
      end
      object edtestado: TDBEdit
        Left = 507
        Top = 181
        Width = 55
        Height = 23
        DataField = 'ESTADO'
        DataSource = DS_Cadastro
        ReadOnly = True
        TabOrder = 13
      end
      object edtcidade: TDBEdit
        Left = 104
        Top = 181
        Width = 354
        Height = 23
        DataField = 'CIDADE'
        DataSource = DS_Cadastro
        ReadOnly = True
        TabOrder = 14
      end
      object DBEdit5: TDBEdit
        Left = 20
        Top = 232
        Width = 148
        Height = 23
        CharCase = ecUpperCase
        DataField = 'TELEFONE'
        DataSource = DS_Cadastro
        TabOrder = 15
      end
      object DBEdit6: TDBEdit
        Left = 175
        Top = 232
        Width = 148
        Height = 23
        CharCase = ecUpperCase
        DataField = 'FAX'
        DataSource = DS_Cadastro
        TabOrder = 16
      end
      object DBEdit7: TDBEdit
        Left = 330
        Top = 232
        Width = 165
        Height = 23
        CharCase = ecUpperCase
        DataField = 'CELULAR'
        DataSource = DS_Cadastro
        TabOrder = 17
      end
      object DBEdit8: TDBEdit
        Left = 506
        Top = 232
        Width = 407
        Height = 23
        CharCase = ecLowerCase
        DataField = 'EMAIL'
        DataSource = DS_Cadastro
        TabOrder = 18
      end
      object edtcodibge: TDBEdit
        Left = 20
        Top = 181
        Width = 77
        Height = 23
        DataField = 'CODIGOIBGE'
        DataSource = DS_Cadastro
        ReadOnly = True
        TabOrder = 19
      end
      object DBEdit2: TDBEdit
        Left = 807
        Top = 181
        Width = 106
        Height = 23
        CharCase = ecUpperCase
        DataField = 'CEP'
        DataSource = DS_Cadastro
        TabOrder = 20
      end
      object DBCheckBox1: TDBCheckBox
        Left = 511
        Top = 288
        Width = 97
        Height = 17
        Caption = 'Ativo'
        DataField = 'ATIVO'
        DataSource = DS_Cadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 21
        ValueChecked = 'Ativo'
        ValueUnchecked = 'Inativo'
      end
      object edtgerente: TDBEdit
        Tag = 5
        Left = 20
        Top = 284
        Width = 439
        Height = 23
        Hint = 'Endere'#231'o'
        CharCase = ecUpperCase
        DataField = 'ENDERECO'
        DataSource = DS_Cadastro
        TabOrder = 22
      end
      object Panel9: TPanel
        AlignWithMargins = True
        Left = 459
        Top = 284
        Width = 35
        Height = 24
        Margins.Top = 2
        Margins.Bottom = 2
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 23
        object spdgerente: TSpeedButton
          Left = 0
          Top = 0
          Width = 35
          Height = 24
          Cursor = crHandPoint
          Align = alClient
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3815994
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Glyph.Data = {
            36090000424D3609000000000000360000002800000018000000180000000100
            2000000000000009000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000FF8F6010FB8C5E90FF8F60100000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000FD8C5DD0FC8C5DFFFD8C5DD0FF8F601000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000FB8B5C40FC8C5DEFFC8C5DFFFC8C5DF0FA8A6030000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000FA8A6030FD8C5CCFFC8C5DFFFC8C5DF0FC8D5D600000
            0000000000000000000000000000FF8F6010FB8B5C40FF8F6010000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000FF8F6010FD8C5CCFFC8C5DFFFC8C5DFFFC8D
            5D6000000000FC8D5D60FD8C5DD0FC8C5DFFFC8C5DFFFC8C5DFFFC8C5DF0FB8B
            5E80FF8F60100000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FC8C5CA0FC8C5DFFFC8C
            5DE0FC8C5CA0FC8C5DFFFC8C5DFFFC8C5DFFFC8C5DBFFC8C5DEFFC8C5DFFFC8C
            5DFFFC8C5DE0FF8F602000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FB8B5C40FD8C
            5CCFFC8C5DFFFC8C5DEFFD8C5C6FFF8F60100000000000000000FA8A6030FC8C
            5DBFFC8C5DFFFD8C5DD0FF8F6010000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF8F6020FC8C
            5DFFFC8C5DFFFA8A60300000000000000000000000000000000000000000FF8F
            6010FD8C5CCFFC8C5DFFFB8B5E80000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FB8B5E80FC8C
            5DFFFC8C5CA00000000000000000000000000000000000000000000000000000
            0000FA8A6030FC8C5DFFFC8C5DE0000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FC8B5DC0FC8C
            5DFFFC8C5C500000000000000000000000000000000000000000000000000000
            000000000000FC8C5DF0FC8C5DFFFF8F60200000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FC8B5DC0FC8C
            5DFFFB8B5C400000000000000000000000000000000000000000000000000000
            000000000000FC8C5DE0FC8C5DFFFF8F60100000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FB8C5E90FC8C
            5DFFFD8B5D700000000000000000000000000000000000000000000000000000
            0000FF8F6010FC8C5DFFFC8C5DFF000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FC8C5C50FC8C
            5DFFFC8C5DE00000000000000000000000000000000000000000000000000000
            0000FB8B5E80FC8C5DFFFC8C5DBF000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FD8C
            5DD0FC8C5DFFFC8C5CA00000000000000000000000000000000000000000FC8C
            5C50FC8C5DF0FC8C5DFFFB8B5C40000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FA8A
            6030FC8C5DEFFC8C5DFFFC8C5DE0FB8B5E80FB8B5C40FC8D5D60FC8C5CA0FC8C
            5DFFFC8C5DFFFB8C5E9000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000FA8A6030FD8C5CCFFC8C5DFFFC8C5DFFFC8C5DFFFC8C5DFFFC8C5DFFFC8C
            5DFFFC8D5D600000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000FC8D5D60FB8D5D8FFC8C5DBFFC8C5DAFFC8C5E5FFF8F
            6020000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentFont = False
          OnClick = spdgerenteClick
          ExplicitLeft = 6
          ExplicitTop = -1
        end
      end
    end
  end
  inherited DS_Cadastro: TDataSource
    DataSet = ServiceCadastro.QRY_Filial
    Left = 592
    Top = 352
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 319
    Top = 653
  end
  object OpenPictureDialog2: TOpenPictureDialog
    Left = 591
    Top = 653
  end
  object DS_GERENTE: TDataSource
    DataSet = ServiceCadastro.QRY_Usuarios
    Left = 675
    Top = 334
  end
end
