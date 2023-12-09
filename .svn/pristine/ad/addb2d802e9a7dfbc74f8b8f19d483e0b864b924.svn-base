unit providers.conversao;

interface

uses
  Classes,
  StrUtils,
  SysUtils;

type
  TPCEstoque = (teCompra, teVenda, teDevolucao);
  TPCTipoDocFiscal = (tfNFe, tfNFCe);
  TPCTipoOperacaoFiscal = (toCancelar, toCorrecao, toImprimirDanfe, toInutilizarNumeroDFe);
  TPCAcaoDataSet = (tpIncluir, tpEditar);

  function EstoqueToStr(const t: TPCEstoque): integer;
  function TipoDocFiscalToStr(const t: TPCTipoDocFiscal): string;
  function AcaoDataSetToStr(const t: TPCAcaoDataSet): string;

implementation

function AcaoDataSetToStr(const t: TPCAcaoDataSet): string;
begin
  case t of
    tpIncluir: Result := 'Incluir';
    tpEditar: Result  := 'Editar';
  end;
end;

function TipoDocFiscalToStr(const t: TPCTipoDocFiscal): string;
begin
  case t of
    tfNFe:    Result := 'NFE';
    tfNFCe:   Result := 'NFCE';
  end;

end;

function EstoqueToStr(const t: TPCEstoque): integer;
begin
  case t of
    teCompra:      Result := 1;
    teVenda:       Result := 2;
    teDevolucao:   Result := 3;
  end;
end;

end.
