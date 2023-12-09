unit UMensagem;

interface

uses
  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.Buttons,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.StdCtrls,

  Winapi.Messages,
  Winapi.Windows;

type
  TFrmMensagem = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    LbTituloJanela: TLabel;
    LbTitulo: TLabel;
    LbMsg: TLabel;
    ImgMsg: TImage;
    PnNao: TPanel;
    BtnNao: TSpeedButton;
    PnSim: TPanel;
    Panel4: TPanel;
    BtnSim: TSpeedButton;
    procedure BtnNaoClick(Sender: TObject);
    procedure BtnSimClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    bRespostaMSG: Boolean;

    sTituloJanela, sTituloMsg, sMSG, sCaminhoIcone, sTipo: String;

  end;

var
  FrmMensagem: TFrmMensagem;

implementation

{$R *.dfm}

procedure TFrmMensagem.BtnNaoClick(Sender: TObject);
begin
  bRespostaMSG := false;
  Close;
end;

procedure TFrmMensagem.BtnSimClick(Sender: TObject);
begin
  bRespostaMSG := true;
  Close;
end;

procedure TFrmMensagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmMensagem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // Teclas precionadas(Atalhos)
  if Key = vk_return then
    BtnSimClick(self)
  else if Key = vk_escape then
    BtnNaoClick(self);

end;

procedure TFrmMensagem.FormShow(Sender: TObject);
begin
  // Criação de mensagem com tela personalizada.
  bRespostaMSG := false;

  LbTituloJanela.caption := sTituloJanela;
  LbTitulo.caption := sTituloMsg;
  LbMsg.caption := sMSG;
  ImgMsg.Picture.LoadFromFile(sCaminhoIcone);

  if sTipo = 'OK' then
  begin
    PnNao.Visible := false;
    BtnSim.caption := 'OK (ENTER)';
  end;


  // Modelo a ser seguido para implementação em todo o sistema.
  // if fnc_CriarMensagem('Confirmação',
  // 'Tem certeza que deseja',
  // 'Deseja inserir',
  // ExtractFilepath(Application.ExeName) + '\Icones\Atencao.png',
  // 'Confirma')  then
  // showmessage('SIM')
  // else
  // showmessage('NAO');

end;

end.
