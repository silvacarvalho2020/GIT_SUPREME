object FrmMensagem: TFrmMensagem
  Left = 0
  Top = 0
  BiDiMode = bdLeftToRight
  BorderStyle = bsNone
  ClientHeight = 309
  ClientWidth = 550
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 15
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 550
    Height = 309
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel3'
    Color = 1644825
    ParentBackground = False
    TabOrder = 0
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 1
      Top = 41
      Width = 548
      Height = 267
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object LbTitulo: TLabel
        Left = 195
        Top = 10
        Width = 47
        Height = 23
        Caption = 'Titulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LbMsg: TLabel
        AlignWithMargins = True
        Left = 195
        Top = 31
        Width = 349
        Height = 188
        Margins.Top = 30
        Margins.Bottom = 47
        Align = alRight
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = 'Mensagem para o usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        WordWrap = True
        ExplicitHeight = 210
      end
      object ImgMsg: TImage
        AlignWithMargins = True
        Left = 11
        Top = 11
        Width = 171
        Height = 245
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alLeft
        Center = True
        Proportional = True
        ExplicitLeft = 6
        ExplicitTop = 6
        ExplicitHeight = 176
      end
      object Panel4: TPanel
        Left = 352
        Top = 224
        Width = 177
        Height = 33
        BevelOuter = bvNone
        TabOrder = 0
        object PnNao: TPanel
          Left = 0
          Top = 0
          Width = 87
          Height = 33
          Margins.Left = 55
          Margins.Top = 10
          Margins.Bottom = 55
          Align = alLeft
          BevelOuter = bvNone
          Color = 3815994
          ParentBackground = False
          TabOrder = 0
          object BtnNao: TSpeedButton
            Left = 0
            Top = 0
            Width = 87
            Height = 33
            Align = alClient
            Caption = 'N'#195'O (ESC)'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = BtnNaoClick
          end
        end
        object PnSim: TPanel
          Left = 96
          Top = 0
          Width = 81
          Height = 33
          Margins.Left = 20
          Margins.Top = 10
          Margins.Bottom = 55
          Align = alRight
          BevelOuter = bvNone
          Color = 7625228
          ParentBackground = False
          TabOrder = 1
          object BtnSim: TSpeedButton
            Left = 0
            Top = 0
            Width = 81
            Height = 33
            Align = alClient
            Caption = 'SIM (ENTER)'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = BtnSimClick
            ExplicitLeft = 48
            ExplicitTop = 32
            ExplicitWidth = 97
            ExplicitHeight = 41
          end
        end
      end
    end
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 1
      Top = 1
      Width = 548
      Height = 40
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      Color = 7625228
      ParentBackground = False
      TabOrder = 1
      object LbTituloJanela: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 3
        Width = 79
        Height = 34
        Margins.Left = 5
        Align = alLeft
        Alignment = taCenter
        Caption = 'ATEN'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 23
      end
    end
  end
end
