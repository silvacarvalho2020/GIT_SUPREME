unit view.modal.cadastro.embalagens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.modal.base.cadastro, Data.DB,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask;

type
  TViewCadastroEmbalagem = class(TViewBaseCadastro)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewCadastroEmbalagem: TViewCadastroEmbalagem;

implementation

{$R *.dfm}

uses service.cadastro, UFuncoes;

procedure TViewCadastroEmbalagem.btnSalvarClick(Sender: TObject);
begin
  inherited;
  FService.QRY_Embalagem.Post;
    Fnc_CriarMensagem('CADASTRO DA EMBALAGEM SALVO COM SUCESSO ', 'CONFIRMANDO DADOS',
            'EMBALAGEM CADASTRADA COM SUCESSO!',
            ExtractFilepath(Application.ExeName) +
            '\Icones\Confirmacao.png', 'OK');
    close;
end;

procedure TViewCadastroEmbalagem.FormShow(Sender: TObject);
begin
  inherited;

    DS_Cadastro.DataSet := FService.QRY_Embalagem;
    FService.QRY_embalagem.Open();



 if Operacao = 'Inserir' then
  begin
     //FILIAL
    FService.QRY_embalagem.Open();
    FService.QRY_embalagem.Insert;
  end;

   if Operacao = 'Editar' then
  begin
    FService.GET_Embalagens(IdPesquisa);
    FService.QRY_embalagem.Edit;
  end;
end;

end.
