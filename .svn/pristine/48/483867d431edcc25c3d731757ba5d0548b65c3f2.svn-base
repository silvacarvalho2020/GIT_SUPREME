unit view.modal.cadastro.cst;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.modal.base.cadastro, Data.DB,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, DBCtrlsEh, Vcl.Mask, Vcl.DBCtrls;

type
  TViewCadastroCst = class(TViewBaseCadastro)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBoxEh1: TDBCheckBoxEh;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewCadastroCst: TViewCadastroCst;

implementation

{$R *.dfm}

uses service.cadastro, UFuncoes;

procedure TViewCadastroCst.btnSalvarClick(Sender: TObject);
begin
  inherited;
   FService.QRY_CST.Post;
    Fnc_CriarMensagem('CADASTRO DO CST SALVO COM SUCESSO ', 'CONFIRMANDO DADOS',
            'CST CADASTRADO COM SUCESSO!',
            ExtractFilepath(Application.ExeName) +
            '\Icones\Confirmacao.png', 'OK');
    close;
end;

procedure TViewCadastroCst.FormShow(Sender: TObject);
begin
  inherited;
   DS_Cadastro.DataSet           := FService.QRY_CST;
    FService.QRY_CST.Open();

     if Operacao = 'Inserir' then
  begin
     //FILIAL
    FService.QRY_CST.Open();
    FService.QRY_CST.Insert;
  end;

   if Operacao = 'Editar' then
  begin
    FService.GET_CST(IdPesquisa);
    FService.QRY_CST.Edit;
  end;








end;

end.
