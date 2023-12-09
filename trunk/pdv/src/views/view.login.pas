unit view.login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, providers.functions, Vcl.Buttons;

type
  TViewLogin = class(TForm)
    cbxUsuarios: TComboBox;
    lblUsuario: TLabel;
    edtSenha: TEdit;
    lblSenha: TLabel;
    btnLogar: TButton;
    procedure btnLogarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewLogin: TViewLogin;

implementation

{$R *.dfm}

procedure TViewLogin.btnLogarClick(Sender: TObject);
begin

  if edtSenha.Text <> '123' then
    Application.Terminate;

  CODIGO_USUARIO  := cbxUsuarios.ItemIndex + 1;
  NOME_USUARIO    := cbxUsuarios.Text;
  Self.Close;

end;

procedure TViewLogin.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TViewLogin.FormShow(Sender: TObject);
begin
  edtSenha.SetFocus;
end;

end.
