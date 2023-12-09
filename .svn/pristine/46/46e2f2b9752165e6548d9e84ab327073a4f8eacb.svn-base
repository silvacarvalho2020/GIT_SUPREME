unit view.tdi.lista.cfop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.tdi.base.listas, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, System.Actions,
  Vcl.ActnList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.WinXPanels;

type
  TViewListasCfop = class(TViewBaseListasTDI)
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewListasCfop: TViewListasCfop;

implementation

{$R *.dfm}

uses service.cadastro, view.modal.cadastro.cfop, view.telaFundo;

procedure TViewListasCfop.btnEditarClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin
  inherited;
  ViewCadastroCFOP := TViewCadastroCFOP.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;

    ViewCadastroCFOP.IdPesquisa := FService.QRY_CfopCFOP.AsInteger;
    ViewCadastroCFOP.Operacao   := 'Editar';
    ViewCadastroCFOP.ShowModal;

  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroCFOP);

    FService.GET_CFOP(0);

  end;

end;

procedure TViewListasCfop.btnNovoClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin
  inherited;
  ViewCadastroCFOP := TViewCadastroCFOP.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;
    ViewCadastroCFOP.Operacao   := 'Inserir';
    ViewCadastroCFOP.ShowModal;

  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroCFOP);

    FService.GET_CFOP(0);

  end;

end;

procedure TViewListasCfop.FormCreate(Sender: TObject);
begin
  inherited;
ViewListasCfop:= Self;
 DS_Dados.DataSet := FService.QRY_Cfop;
end;

procedure TViewListasCfop.FormShow(Sender: TObject);
begin
  inherited;
FService.GET_CFOP(0);
end;

end.
