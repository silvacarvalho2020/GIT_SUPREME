unit Conexao;

interface

uses
  UFuncoes,

  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.Buttons,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Imaging.pngimage,
  Vcl.StdCtrls,

  Winapi.Messages,
  Winapi.Windows;

type
  TFrmConfigConexao = class(TForm)
    Shape1: TShape;
    PnConfigServidor: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    ImgBase: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    BtnConfirmar: TSpeedButton;
    BtnCancelar: TSpeedButton;
    Panel8: TPanel;
    Label4: TLabel;
    Panel9: TPanel;
    EdtNomeServidor: TEdit;
    EdtPorta: TEdit;
    EdtSenha: TEdit;
    EdtLogin: TEdit;
    EdtCaminhoDB: TEdit;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EdtNomeServidorAtual: TEdit;
    EdtPortaAtual: TEdit;
    EdtSenhaAtual: TEdit;
    EdtLoginAtual: TEdit;
    EdtCaminhoDBAtual: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    BtnNcm: TSpeedButton;
    OpenDCaminho: TOpenDialog;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnNcmClick(Sender: TObject);
    procedure OpenDCaminhoCanClose(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfigConexao: TFrmConfigConexao;

implementation
uses
  service.conexao;

{$R *.dfm}

procedure TFrmConfigConexao.BtnCancelarClick(Sender: TObject);
begin
  close;

end;

procedure TFrmConfigConexao.BtnConfirmarClick(Sender: TObject);
begin
  prcValidarCamposObrigatorios(FrmConfigConexao);

  ServiceConexao.Conexao.Servidor := EdtNomeServidor.Text;
  ServiceConexao.Conexao.Base := EdtCaminhoDB.Text;
  ServiceConexao.Conexao.Login := EdtLogin.Text;
  ServiceConexao.Conexao.Senha := EdtSenha.Text;
  ServiceConexao.Conexao.Porta := EdtPorta.Text;
  ServiceConexao.Conexao.GravarArquivoINI;

  if ServiceConexao.Conexao.Fnc_conectar_banco_dados then
  begin

    fnc_CriarMensagem('CONEXÃO AO BANCO DE DADOS',
      'CONECTADO AO BANCO DE DADOS', 'Conexão realizada com SUCESSO' +
      ' O Sistema deve ser Reiniciado ', ExtractFilepath(Application.ExeName) +
      '\Icones\Atencao.png', 'OK');
    Application.terminate;
  end
  else

  begin
    fnc_CriarMensagem('CONEXÃO AO BANCO DE DADOS',
      'ERRO AO CONECTAR AO BANCO DE DADOS',
      'Não foi possivel conectar ao banco de dados, possivel causa: ' +
      ServiceConexao.Conexao.MsgErro, ExtractFilepath(Application.ExeName) +
      '\Icones\Atencao.png', 'OK');
    EdtNomeServidor.SetFocus;
  end;

end;

procedure TFrmConfigConexao.BtnNcmClick(Sender: TObject);
begin
     OpenDCaminho.InitialDir := ExtractFilepath(Application.ExeName) + 'Dados';
     OpenDCaminho.execute;
end;

procedure TFrmConfigConexao.FormActivate(Sender: TObject);
begin
  fecharFormAberto;
  frmAberto := FrmConfigConexao;
end;

procedure TFrmConfigConexao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmConfigConexao := Nil;
end;

procedure TFrmConfigConexao.FormCreate(Sender: TObject);
begin
      KeyPreview := True;
end;

procedure TFrmConfigConexao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (key = vk_escape) then
    begin
       BtnCancelarClick(Self);
    end;

    if (key = vk_F10) then
    Begin
       BtnConfirmarClick(self);
    End;
end;

procedure TFrmConfigConexao.FormResize(Sender: TObject);
begin
  PnConfigServidor.Left :=
    Round((FrmConfigConexao.width - PnConfigServidor.width) / 2);
  PnConfigServidor.Top :=
    Round((FrmConfigConexao.Height - PnConfigServidor.Height) / 2);

end;

procedure TFrmConfigConexao.FormShow(Sender: TObject);
begin

  if ServiceConexao.Conexao.LerArquivoINI then
  Begin
    EdtNomeServidorAtual.Text := ServiceConexao.Conexao.Servidor;
    EdtCaminhoDBAtual.Text    := ServiceConexao.Conexao.Base;
    EdtLoginAtual.Text        := ServiceConexao.Conexao.Login;
    EdtSenhaAtual.Text        := ServiceConexao.Conexao.Senha;
    EdtPortaAtual.Text        := ServiceConexao.Conexao.Porta;

  End;

end;

procedure TFrmConfigConexao.OpenDCaminhoCanClose(Sender: TObject;
  var CanClose: Boolean);
begin
     EdtCaminhoDB.Text := (OpenDCaminho.FileName);
end;

end.
