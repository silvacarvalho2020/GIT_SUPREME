unit view.tdi.lista.ncm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.tdi.base.listas, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, System.Actions,
  Vcl.ActnList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.WinXPanels;

type
  TViewBaseListaNCMTDI = class(TViewBaseListasTDI)
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
  ViewBaseListaNCMTDI: TViewBaseListaNCMTDI;

implementation

{$R *.dfm}

uses service.cadastro, view.modal.cadastro.ncm, view.telaFundo;

procedure TViewBaseListaNCMTDI.btnDeletarClick(Sender: TObject);
begin
  inherited;
    if application.MessageBox('DESEJA EXCLUIR O NCM SELECIONADO ? ','ATENÇAO ',MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
  FService.QRY_NCM.delete ;
  end else
  begin
    abort;
  end;
end;

procedure TViewBaseListaNCMTDI.btnEditarClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin
  inherited;
  ViewCadastroNCM  := TViewCadastroNCM .Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;
    ViewCadastroNCM.IdPesquisa := strtoint(FService.QRY_NCMNCM.AsString);
    ViewCadastroNCM .Operacao   := 'Editar';
    ViewCadastroNCM .ShowModal;

  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroNCM );

    FService.GET_NCM('0');

  end;

end;

procedure TViewBaseListaNCMTDI.btnNovoClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin
  inherited;
  ViewCadastroNCM := TViewCadastroNCM.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;
    ViewCadastroNCM.Operacao   := 'Inserir';
    ViewCadastroNCM.ShowModal;

  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroNCM);

    FService.GET_NCM('0');

  end;

end;

procedure TViewBaseListaNCMTDI.FormCreate(Sender: TObject);
begin
  inherited;
  ViewBaseListaNCMTDI := Self;
  DS_Dados.DataSet := FService.QRY_NCM;
end;

procedure TViewBaseListaNCMTDI.FormShow(Sender: TObject);
begin
  inherited;
FService.GET_NCM('0');
end;

end.
