unit controller.conversao.pdv;

interface

uses
  SysUtils,
  StrUtils,
  Classes;

type
  TPCTipoDocumentoFiscal = (tdNFe, tdNFCe);
  TPCStatus = (tsAtivo, tsInativo, tsAberto, tsFechado);

  function TipoDocumentoFiscalToStr(const t: TPCTipoDocumentoFiscal): String;
  function StatusToStr(const t: TPCStatus): String;

implementation

function TipoDocumentoFiscalToStr(const t: TPCTipoDocumentoFiscal): String;
begin
  case t of
    tdNFe   : Result := 'NFE';
    tdNFCe  : Result := 'NFCE';
  end;
end;

function StatusToStr(const t: TPCStatus): String;
begin
  case t of
    tsAtivo   : Result := 'ATIVO';
    tsInativo : Result := 'INATIVO';
    tsAberto  : Result := 'ABERTO';
    tsFechado : Result := 'FECHADO';
  end;
end;

end.
