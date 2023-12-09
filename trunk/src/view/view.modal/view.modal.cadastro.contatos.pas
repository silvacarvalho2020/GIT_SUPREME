unit view.modal.cadastro.contatos;

interface

uses
  UFuncoes,

  Data.DB,

  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.Buttons,
  Vcl.Controls,
  Vcl.DBCtrls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Mask,
  Vcl.StdCtrls,

  Winapi.Messages,
  Winapi.Windows,

  view.modal.base.cadastro, AdvCombo, AdvDBComboBox;

type
  TViewCadastroContatos = class(TViewBaseCadastro)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    FIdPessoa: integer;
  public
    property IdPessoa: integer read FIdPessoa write FIdPessoa;
  end;

var
  ViewCadastroContatos: TViewCadastroContatos;

implementation

{$R *.dfm}

procedure TViewCadastroContatos.btnSalvarClick(Sender: TObject);
begin //SALVAR
  inherited;
  FService.QRY_Pessoas_Contato.Edit;
  FService.QRY_Pessoas_ContatoIDPESSOAS.AsInteger := FIdPessoa;
  FService.QRY_Pessoas_Contato.Post;
  fnc_CriarMensagem('CADASTRO DE CONTATOS', 'CONFIRMANDO DADOS',
          'CONTATO CADASTRADO COM SUCESSO!',
          ExtractFilepath(Application.ExeName) +
          '\Icones\Confirmacao.png', 'OK');

  Self.Close;

end;

procedure TViewCadastroContatos.FormCreate(Sender: TObject);
begin // create
  inherited;
  DS_Cadastro.DataSet := FService.QRY_Pessoas_Contato;
end;

procedure TViewCadastroContatos.FormShow(Sender: TObject);
begin //show
  inherited;
  if Operacao = 'Inserir' then
  begin
    FService.QRY_Pessoas_Contato.Open();
    FService.QRY_Pessoas_Contato.Insert;
  end;

  if Operacao = 'Editar' then
  begin
    FService.GET_Contato(IdPesquisa);
    FService.QRY_Pessoas_Contato.Edit;
  end;

end;

end.
