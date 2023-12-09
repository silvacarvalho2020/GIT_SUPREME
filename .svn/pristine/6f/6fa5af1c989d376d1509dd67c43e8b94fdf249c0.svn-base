object ServiceConexao: TServiceConexao
  OnCreate = DataModuleCreate
  Height = 299
  Width = 141
  object FDConn: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=C:\Programacao\SUPR_SIS\Dados\cliente_juliana\BANCODADO' +
        'S_30.FDB'
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    LoginPrompt = False
    Left = 32
    Top = 32
  end
  object FBDriverLink: TFDPhysFBDriverLink
    Left = 32
    Top = 120
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 32
    Top = 200
  end
end
