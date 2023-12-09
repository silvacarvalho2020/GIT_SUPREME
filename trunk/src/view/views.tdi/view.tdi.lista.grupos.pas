unit view.tdi.lista.grupos;

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
  acPNG,

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

  view.modal.cadastro.grupos,
  view.tdi.base.listas,
  view.telaFundo;

type
  TViewListasGruposTDI = class(TViewBaseListasTDI)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewListasGruposTDI: TViewListasGruposTDI;

implementation


{$R *.dfm}

procedure TViewListasGruposTDI.btnEditarClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin
  inherited;

  ViewCadastroGrupos := TViewCadastroGrupos.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;

    ViewCadastroGrupos.IdPesquisa := FService.QRY_GruposIDGRUPO.AsInteger;
    ViewCadastroGrupos.Operacao   := 'Editar';
    ViewCadastroGrupos.ShowModal;

  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroGrupos);

    FService.GET_Grupos(0);

  end;


end;

procedure TViewListasGruposTDI.btnNovoClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin
  inherited;

  ViewCadastroGrupos := TViewCadastroGrupos.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;

    ViewCadastroGrupos.Operacao   := 'Inserir';
    ViewCadastroGrupos.ShowModal;

  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroGrupos);

    FService.GET_Grupos(0);

  end;
end;

procedure TViewListasGruposTDI.edtPesquisaChange(Sender: TObject);
begin
  inherited;
  GRIDDados.SearchPanel.SearchingText := '';
  if Length(edtPesquisa.Text) > 0 then
    GRIDDados.SearchPanel.SearchingText := Trim(edtPesquisa.Text);
end;

procedure TViewListasGruposTDI.FormCreate(Sender: TObject);
begin //create
  inherited;
  ViewListasGruposTDI := Self;
  DS_Dados.DataSet     := FService.QRY_Grupos;
end;

procedure TViewListasGruposTDI.FormShow(Sender: TObject);
begin // show
  inherited;
  FService.QRY_Grupos.Open();
end;

end.
