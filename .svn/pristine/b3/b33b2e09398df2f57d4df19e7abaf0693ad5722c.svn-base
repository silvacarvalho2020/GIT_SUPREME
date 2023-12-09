unit view.modal.cadastro.grupos;

interface

uses
  AdvCombo,
  AdvDBComboBox,
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

  view.modal.base.cadastro;

type
  TViewCadastroGrupos = class(TViewBaseCadastro)
    DBEdit1: TDBEdit;
    edtNomeGrupo: TDBEdit;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewCadastroGrupos: TViewCadastroGrupos;

implementation

{$R *.dfm}

procedure TViewCadastroGrupos.btnSalvarClick(Sender: TObject);
begin
  inherited;
  //--- Salva Grupos -- //
  FService.QRY_Grupos.Edit;
  FService.QRY_Grupos.Post;
  fnc_CriarMensagem('CADASTRO DE GRUPOS', 'CONFIRMANDO DADOS',
          'GRUPOS CADASTRADO COM SUCESSO!',
          ExtractFilepath(Application.ExeName) +
          '\Icones\Confirmacao.png', 'OK');

  Self.ModalResult := mrOk;
end;

procedure TViewCadastroGrupos.FormCreate(Sender: TObject);
begin
  inherited;
  DS_Cadastro.DataSet := FService.QRY_Grupos;
end;

procedure TViewCadastroGrupos.FormShow(Sender: TObject);
begin
  inherited;

   if Operacao = 'Inserir' then
  begin
    FService.QRY_GRUPOS.Open();
    FService.QRY_GRUPOS.Insert;
  end;

  if Operacao = 'Editar' then
  begin
    FService.GET_Grupos(IdPesquisa);
    FService.QRY_GRUPOS.Edit;
  end;

 edtNomeGrupo.SetFocus;
end;

end.
