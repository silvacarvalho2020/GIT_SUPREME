unit view.tdi.lista.formaspagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.tdi.base.listas, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, System.Actions,
  Vcl.ActnList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.WinXPanels;

type
  TViewFormasPagamentoTDI = class(TViewBaseListasTDI)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewFormasPagamentoTDI: TViewFormasPagamentoTDI;

implementation

{$R *.dfm}

uses service.cadastro, view.telaFundo, view.modal.cadastro.formapagamento;

procedure TViewFormasPagamentoTDI.btnDeletarClick(Sender: TObject);
begin
  inherited;
if application.MessageBox('DESEJA EXCLUIR A FORMA DE PAGAMENTO SELECIONADA ? ','ATENÇAO ',MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
  FService.QRY_FormaPagamento.delete ;
  end else
  begin
    abort;
  end;
end;

procedure TViewFormasPagamentoTDI.btnEditarClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin
  inherited;
  ViewCadastroPagamento := TViewCadastroPagamento.Create(Self);
  try
//
    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;

    ViewCadastroPagamento.IdPesquisa := FService.QRY_FormaPagamentoIDPGTO.AsInteger;
    ViewCadastroPagamento.Operacao   := 'Editar';
    ViewCadastroPagamento.ShowModal;

  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroPagamento);

    FService.GET_FormasPagamentos(0);

  end;


end;

procedure TViewFormasPagamentoTDI.btnNovoClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin
  inherited;
  ViewCadastroPagamento := TViewCadastroPagamento.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;
    ViewCadastroPagamento.Operacao   := 'Inserir';
    ViewCadastroPagamento.ShowModal;

  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroPagamento);

    FService.GET_FormasPagamentos(0);

  end;
end;

procedure TViewFormasPagamentoTDI.FormCreate(Sender: TObject);
begin
  inherited;
 ViewFormasPagamentoTDI := Self;
 DS_Dados.DataSet := FService.QRY_FormaPagamento;
end;

procedure TViewFormasPagamentoTDI.FormShow(Sender: TObject);
begin
  inherited;
FService.GET_FormasPagamentos(0);
end;

end.
