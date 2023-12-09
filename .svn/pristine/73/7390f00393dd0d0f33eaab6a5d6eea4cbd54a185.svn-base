unit view.modal.cadastro.Subgrupos;

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
  TViewCadastroSubGrupos = class(TViewBaseCadastro)
    DBEdit1: TDBEdit;
    edtNomeSubGrupo: TDBEdit;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewCadastroSubGrupos: TViewCadastroSubGrupos;

implementation

{$R *.dfm}

procedure TViewCadastroSubGrupos.btnSalvarClick(Sender: TObject);
begin
  inherited;
  FService.Qry_SubGrupos.Edit;
  FService.Qry_SubGrupos.Post;
  fnc_CriarMensagem('CADASTRO DE SUB. GRUPOS', 'CONFIRMANDO DADOS',
          'SUB. GRUPOS CADASTRADO COM SUCESSO!',
          ExtractFilepath(Application.ExeName) +
          '\Icones\Confirmacao.png', 'OK');

  Self.ModalResult := mrOk;
end;

procedure TViewCadastroSubGrupos.FormCreate(Sender: TObject);
begin
  inherited;
      DS_Cadastro.DataSet := FService.QRY_SubGrupos;
end;

procedure TViewCadastroSubGrupos.FormShow(Sender: TObject);
begin
  inherited;
   if Operacao = 'Inserir' then
  begin
    FService.QRY_SUBGRUPOS.Open();
    FService.QRY_SUBGRUPOS.Insert;
  end;

  if Operacao = 'Editar' then
  begin
    FService.GET_SUBGrupos(IdPesquisa);
    FService.QRY_SUBGRUPOS.Edit;
  end;

 edtNomeSubGrupo.SetFocus;
end;

end.
