inherited ServiceConexao: TServiceConexao
  OnCreate = DataModuleCreate
  Height = 343
  Width = 132
  object FDConn: TFDConnection
    Params.Strings = (
      
        'Database=C:\Programacao\SUPR_SIS\Dados\cliente_juliana\BANCODADO' +
        'S_30.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'Port=3050'
      'CharacterSet=win1252'
      'DriverID=FB')
    ConnectedStoredUsage = []
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object FBDriverLink: TFDPhysFBDriverLink
    Left = 32
    Top = 168
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 32
    Top = 104
  end
  object QRY_Usuarios: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from uctabusers uc where uc.uctyperec = :uctyperec')
    Left = 32
    Top = 247
    ParamData = <
      item
        Name = 'UCTYPEREC'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
        Value = Null
      end>
    object QRY_UsuariosUCIDUSER: TIntegerField
      FieldName = 'UCIDUSER'
      Origin = 'UCIDUSER'
    end
    object QRY_UsuariosUCUSERNAME: TStringField
      FieldName = 'UCUSERNAME'
      Origin = 'UCUSERNAME'
      Size = 30
    end
    object QRY_UsuariosUCLOGIN: TStringField
      FieldName = 'UCLOGIN'
      Origin = 'UCLOGIN'
      Size = 30
    end
    object QRY_UsuariosUCPASSWORD: TStringField
      FieldName = 'UCPASSWORD'
      Origin = 'UCPASSWORD'
      Size = 250
    end
    object QRY_UsuariosUCPASSEXPIRED: TStringField
      FieldName = 'UCPASSEXPIRED'
      Origin = 'UCPASSEXPIRED'
      FixedChar = True
      Size = 10
    end
    object QRY_UsuariosUCUSEREXPIRED: TIntegerField
      FieldName = 'UCUSEREXPIRED'
      Origin = 'UCUSEREXPIRED'
    end
    object QRY_UsuariosUCUSERDAYSSUN: TIntegerField
      FieldName = 'UCUSERDAYSSUN'
      Origin = 'UCUSERDAYSSUN'
    end
    object QRY_UsuariosUCEMAIL: TStringField
      FieldName = 'UCEMAIL'
      Origin = 'UCEMAIL'
      Size = 150
    end
    object QRY_UsuariosUCPRIVILEGED: TIntegerField
      FieldName = 'UCPRIVILEGED'
      Origin = 'UCPRIVILEGED'
    end
    object QRY_UsuariosUCTYPEREC: TStringField
      FieldName = 'UCTYPEREC'
      Origin = 'UCTYPEREC'
      FixedChar = True
      Size = 1
    end
    object QRY_UsuariosUCPROFILE: TIntegerField
      FieldName = 'UCPROFILE'
      Origin = 'UCPROFILE'
    end
    object QRY_UsuariosUCKEY: TStringField
      FieldName = 'UCKEY'
      Origin = 'UCKEY'
      Size = 250
    end
    object QRY_UsuariosUCINATIVE: TIntegerField
      FieldName = 'UCINATIVE'
      Origin = 'UCINATIVE'
    end
    object QRY_UsuariosUCIMAGE: TMemoField
      FieldName = 'UCIMAGE'
      Origin = 'UCIMAGE'
      BlobType = ftMemo
    end
  end
end
