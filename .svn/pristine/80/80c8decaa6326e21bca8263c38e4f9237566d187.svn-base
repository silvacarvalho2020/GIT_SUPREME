unit view.tdi.lista.cst;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.tdi.base.listas, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, System.Actions,
  Vcl.ActnList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.WinXPanels;

type
  TViewListascstTDI = class(TViewBaseListasTDI)
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewListascstTDI: TViewListascstTDI;

implementation

{$R *.dfm}

uses service.cadastro, view.modal.cadastro.cst, view.telaFundo;

procedure TViewListascstTDI.btnDeletarClick(Sender: TObject);
begin
  inherited;
if application.MessageBox('DESEJA EXCLUIR O CST SELECIONADO ? ','ATENÇAO ',MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
  FService.QRY_CST.delete ;
  end else
  begin
    abort;
  end;
end;

procedure TViewListascstTDI.btnEditarClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin
  inherited;
  ViewCadastroCst := TViewCadastroCst.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;

    ViewCadastroCst.IdPesquisa := FService.QRY_CSTCST.AsInteger;
    ViewCadastroCst.Operacao   := 'Editar';
    ViewCadastroCst.ShowModal;

  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroCst);

    FService.GET_CST(0);

  end;

end;

procedure TViewListascstTDI.btnNovoClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin
  inherited;
  ViewCadastroCst := TViewCadastroCst.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;
    ViewCadastroCst.Operacao   := 'Inserir';
    ViewCadastroCst.ShowModal;

  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroCst);

    FService.GET_NCM('0');

  end;
end;

procedure TViewListascstTDI.FormCreate(Sender: TObject);
begin
  inherited;
 ViewListascstTDI := Self;
 DS_Dados.DataSet := FService.QRY_CST;
end;

procedure TViewListascstTDI.FormShow(Sender: TObject);
begin
  inherited;

FService.GET_CST(0);
end;

end.
