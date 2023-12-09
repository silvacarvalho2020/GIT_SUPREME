inherited ServiceAtualizacao: TServiceAtualizacao
  Height = 433
  Width = 781
  inherited FDConn: TFDConnection
    Params.Strings = (
      
        'Database=C:\Programacao\SUPR_SIS\Dados\cliente_juliana\BANCODADO' +
        'S_30.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=win1252'
      'Server=127.0.0.1'
      'Port=3050'
      'DriverID=FB')
  end
  object FDScript: TFDScript
    SQLScripts = <
      item
        Name = 'Atualiza_base'
        SQL.Strings = (
          '/* TABELAS */'
          ''
          'SET SQL DIALECT 3;'
          'CREATE GENERATOR GEN_MOVIMENTOESTOQUE_ID;'
          'CREATE TABLE MOVIMENTOESTOQUE ('
          '    IDESTOQUE       INTEGER NOT NULL,'
          '    IDPRODUTO       INTEGER,'
          '    IDFILIAL        INTEGER,'
          '    PRODUTO         VARCHAR(200),'
          '    QUANTIDADE      NUMERIC(15,4),'
          '    DTAMOVIMENTO    DATE,'
          '    HRAMOVIMENTO    TIME,'
          '    IDMOVIMENTO     INTEGER,'
          '    IDPRODUTOITENS  INTEGER'
          ');'
          
            'ALTER TABLE MOVIMENTOESTOQUE ADD CONSTRAINT PK_MOVIMENTOESTOQUE ' +
            'PRIMARY KEY (IDESTOQUE);'
          
            'ALTER TABLE MOVIMENTOESTOQUE ADD CONSTRAINT FK_MOVIMENTOESTOQUE_' +
            '1 FOREIGN KEY (IDMOVIMENTO) REFERENCES MOVIMENTOTRIBUTACAO (IDMO' +
            'VTRIBUTACAO);'
          
            'ALTER TABLE MOVIMENTOESTOQUE ADD CONSTRAINT FK_MOVIMENTOESTOQUE_' +
            '2 FOREIGN KEY (IDPRODUTO) REFERENCES ESTPRODUTOS (IDPRODUTO);'
          
            'ALTER TABLE MOVIMENTOESTOQUE ADD CONSTRAINT FK_MOVIMENTOESTOQUE_' +
            '3 FOREIGN KEY (IDFILIAL) REFERENCES EMPRESA (IDEMPRESA);'
          
            'ALTER TABLE MOVIMENTOESTOQUE ADD CONSTRAINT FK_MOVIMENTOESTOQUE_' +
            '4 FOREIGN KEY (IDPRODUTOITENS) REFERENCES ESTPRODUTOSITENS (IDPR' +
            'ODUTOITEM);'
          'SET TERM ^ ;'
          'CREATE OR ALTER TRIGGER MOVIMENTOESTOQUE_BI FOR MOVIMENTOESTOQUE'
          'ACTIVE BEFORE INSERT POSITION 0'
          'as'
          'begin'
          '  if (new.idestoque is null) then'
          '    new.idestoque = gen_id(gen_movimentoestoque_id,1);'
          'end'
          '^'
          'SET TERM ; ^'
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          '/* AVULSAS */'
          'ALTER TABLE ESTPRODUTOSITENS'
          '    ADD ESTOQUE NUMERIC(15,4);'
          ''
          ''
          ''
          'ALTER TABLE ESTPRODUTOS'
          '    ADD VENDEFRACIONADO VARCHAR(50) DEFAULT '#39'NAO'#39';'
          ''
          ''
          'ALTER TABLE ESTPRODUTOS'
          '    ADD PRECOLIVRE VARCHAR(20) DEFAULT '#39'NAO'#39';'
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          '')
      end>
    Connection = FDConn
    Params = <>
    Macros = <>
    FetchOptions.AssignedValues = [evItems, evAutoClose, evAutoFetchAll]
    FetchOptions.AutoClose = False
    FetchOptions.Items = [fiBlobs, fiDetails]
    ResourceOptions.AssignedValues = [rvMacroCreate, rvMacroExpand, rvDirectExecute, rvPersistent]
    ResourceOptions.MacroCreate = False
    ResourceOptions.DirectExecute = True
    Left = 448
    Top = 56
  end
end
