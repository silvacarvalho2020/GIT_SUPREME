unit view.tdi.lista.Subgrupos;

interface

uses
  DBAxisGridsEh,
  DBGridEh,
  DBGridEhGrouping,
  DBGridEhToolCtrls,
  DynVarsEh,
  EhLibVCL,
  GridsEh,
  JvExMask,
  JvToolEdit,
  ToolCtrlsEh,

  Data.DB,

  System.Actions,
  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.ActnList,
  Vcl.Buttons,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Mask,
  Vcl.StdCtrls,
  Vcl.WinXPanels,

  Winapi.Messages,
  Winapi.Windows,

  view.modal.cadastro.Subgrupos,
  view.tdi.base.listas,
  view.telaFundo, acPNG;

type
  TViewListaSubGrupoTDI = class(TViewBaseListasTDI)
    procedure edtPesquisaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewListaSubGrupoTDI: TViewListaSubGrupoTDI;

implementation

{$R *.dfm}

procedure TViewListaSubGrupoTDI.btnEditarClick(Sender: TObject);
var
TelaFundo :  TViewTelaFundo;
begin
  inherited;
   ViewCadastroSubGrupos := TViewCadastroSubGrupos.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;

    ViewCadastroSubGrupos.IdPesquisa := FService.Qry_SubGruposIDSUBGRUPO.AsInteger;
    ViewCadastroSubGrupos.Operacao   := 'Editar';
    ViewCadastroSubGrupos.ShowModal;

  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroSubGrupos);

    FService.GET_SubGrupos(0);

  end;

end;

procedure TViewListaSubGrupoTDI.btnNovoClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin
  inherited;

   ViewCadastroSubGrupos := TViewCadastroSubGrupos.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;

    ViewCadastroSubGrupos.Operacao   := 'Inserir';
    ViewCadastroSubGrupos.ShowModal;

  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroSubGrupos);

    FService.GET_SubGrupos(0);

  end;
end;

procedure TViewListaSubGrupoTDI.edtPesquisaChange(Sender: TObject);
begin
  inherited;
  GRIDDados.SearchPanel.SearchingText := '';
  if Length(edtPesquisa.Text) > 0 then
    GRIDDados.SearchPanel.SearchingText := Trim(edtPesquisa.Text);
end;

procedure TViewListaSubGrupoTDI.FormCreate(Sender: TObject);
begin
  inherited;
  ViewListaSubGrupoTDI := Self;
  DS_Dados.DataSet     := FService.QRY_SubGrupos;
end;

procedure TViewListaSubGrupoTDI.FormShow(Sender: TObject);
begin
  inherited;
    FService.GET_SubGrupos(0);
end;

end.
