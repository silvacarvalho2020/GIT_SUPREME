unit view.modal.cadastro.cfop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.modal.base.cadastro, Data.DB,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, DBCtrlsEh, Vcl.Mask, Vcl.DBCtrls;

type
  TViewCadastroCFOP = class(TViewBaseCadastro)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBCheckBoxEh1: TDBCheckBoxEh;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewCadastroCFOP: TViewCadastroCFOP;

implementation

{$R *.dfm}

uses service.cadastro, UFuncoes;

procedure TViewCadastroCFOP.btnSalvarClick(Sender: TObject);
begin
  inherited;
   FService.QRY_Cfop.Post;
    Fnc_CriarMensagem('CADASTRO DO CFOP SALVO COM SUCESSO ', 'CONFIRMANDO DADOS',
            'CFOP CADASTRADO COM SUCESSO!',
            ExtractFilepath(Application.ExeName) +
            '\Icones\Confirmacao.png', 'OK');
    close;
end;

procedure TViewCadastroCFOP.FormShow(Sender: TObject);
begin
  inherited;
    DS_Cadastro.DataSet           := FService.QRY_Cfop;
    FService.QRY_Cfop.Open();


  if Operacao = 'Editar' then
  begin
    FService.GET_CFOP(IdPesquisa);
    FService.QRY_Cfop.Edit;
  end;
end;

end.
