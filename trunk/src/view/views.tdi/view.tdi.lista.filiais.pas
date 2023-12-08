unit view.tdi.lista.filiais;

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

  view.tdi.base.listas,
  view.telaFundo;

type
  TViewListasFiliaisTDI = class(TViewBaseListasTDI)
    procedure btnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewListasFiliaisTDI: TViewListasFiliaisTDI;

implementation

{$R *.dfm}

uses view.modal.cadastro.filial, view.modal.cadastro.clientes,
  view.modal.cadastro.produtos, view.tdi.lista.ncm;

procedure TViewListasFiliaisTDI.btnDeletarClick(Sender: TObject);
begin
  inherited;

  if application.MessageBox('DESEJA EXCLUIR A FILIAL SELECIONADA ? ','ATEN�AO ',MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
  FService.QRY_Filial.delete ;
  end else
  begin
    abort;
  end;



end;

procedure TViewListasFiliaisTDI.btnEditarClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin
  inherited;
  ViewCadastroFilial := TViewCadastroFilial.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;

    ViewCadastroFilial.IdPesquisa := FService.QRY_FilialIDEMPRESA.AsInteger;
    ViewCadastroFilial.Operacao   := 'Editar';
    ViewCadastroFilial.ShowModal;

  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroFilial);

    FService.GET_Filiais(0);

  end;
end;

procedure TViewListasFiliaisTDI.btnNovoClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin
  inherited;
  ViewCadastroFilial := TViewCadastroFilial.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;
    ViewCadastroFilial.Operacao   := 'Inserir';
    ViewCadastroFilial.ShowModal;

  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroFilial);

    FService.GET_Filiais(0);

  end;
end;

procedure TViewListasFiliaisTDI.FormCreate(Sender: TObject);
begin
  inherited;
 ViewListasFiliaisTDI := Self;
 DS_Dados.DataSet := FService.QRY_Filial;
end;

procedure TViewListasFiliaisTDI.FormShow(Sender: TObject);
begin
  inherited;
  FService.GET_Filiais(0);
end;

end.
