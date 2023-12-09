unit view.modal.cadastro.Fabricantes;

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
  TViewCadastroFrabricantes = class(TViewBaseCadastro)
    DBEdit1: TDBEdit;
    edtNomeFabricante: TDBEdit;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewCadastroFrabricantes: TViewCadastroFrabricantes;

implementation

{$R *.dfm}

procedure TViewCadastroFrabricantes.btnSalvarClick(Sender: TObject);
begin
  inherited;
  FService.Qry_Fabricantes.Edit;
  FService.Qry_Fabricantes.Post;
  fnc_CriarMensagem('CADASTRO DE FABRICANTE', 'CONFIRMANDO DADOS',
          'FABRICANTE CADASTRADO COM SUCESSO!',
          ExtractFilepath(Application.ExeName) +
          '\Icones\Confirmacao.png', 'OK');

  Self.ModalResult := mrOk;
end;

procedure TViewCadastroFrabricantes.FormCreate(Sender: TObject);
begin
  inherited;
   DS_Cadastro.DataSet := FService.QRY_Fabricantes;
end;

procedure TViewCadastroFrabricantes.FormShow(Sender: TObject);
begin
  inherited;
   if Operacao = 'Inserir' then
  begin
    FService.Qry_Fabricantes.Open();
    FService.Qry_Fabricantes.Insert;
  end;
  if Operacao = 'Editar' then
  begin
    FService.Get_Fabricantes(IdPesquisa);
    FService.Qry_Fabricantes.Edit;
  end;

 edtNomeFabricante.SetFocus;
end;

end.
