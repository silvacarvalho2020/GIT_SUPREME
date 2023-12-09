inherited ViewProdutoNaoEncontrado: TViewProdutoNaoEncontrado
  Align = alClient
  BorderStyle = bsNone
  Caption = 'ViewProdutoNaoEncontrado'
  ClientHeight = 544
  ClientWidth = 950
  TextHeight = 21
  object pnlCores: TPanel
    Left = 0
    Top = 0
    Width = 950
    Height = 544
    Align = alClient
    BevelOuter = bvNone
    Color = 3947775
    ParentBackground = False
    TabOrder = 0
    object lblInfo: TLabel
      Left = 0
      Top = 0
      Width = 950
      Height = 456
      Align = alClient
      Alignment = taCenter
      Caption = 'Produto n'#227'o Encontrado!'
      Font.Charset = ANSI_CHARSET
      Font.Color = 57311
      Font.Height = -133
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      WordWrap = True
      ExplicitTop = -6
    end
    object btnVoltar: TSpeedButton
      Left = 0
      Top = 456
      Width = 950
      Height = 88
      Cursor = crHandPoint
      Align = alBottom
      Caption = '[ VOLTAR - ESC ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = 43520
      Font.Height = -37
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnVoltarClick
    end
  end
end
