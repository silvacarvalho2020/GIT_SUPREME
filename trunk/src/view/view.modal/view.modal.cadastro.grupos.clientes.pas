unit view.modal.cadastro.grupos.clientes;

interface

uses
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

  service.cadastro,

  view.modal.base.cadastro, AdvCombo, AdvDBComboBox;

type
  TViewGrupoClientesCadastro = class(TViewBaseCadastro)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    edtNomeGrupo: TDBEdit;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewGrupoClientesCadastro: TViewGrupoClientesCadastro;

implementation

{$R *.dfm}

procedure TViewGrupoClientesCadastro.btnSalvarClick(Sender: TObject);
begin // salvar
  inherited;
  DS_Cadastro.DataSet.Post;
  Self.ModalResult := mrOk;
end;

procedure TViewGrupoClientesCadastro.FormCreate(Sender: TObject);
begin //create
  inherited;
  DS_Cadastro.DataSet := FService.QRY_Pessoas_Grupos;
end;

procedure TViewGrupoClientesCadastro.FormShow(Sender: TObject);
begin // show
  inherited;
  FService.QRY_Pessoas_Grupos.Open();
  FService.QRY_Pessoas_Grupos.Insert;
  edtNomeGrupo.SetFocus;
end;

end.
