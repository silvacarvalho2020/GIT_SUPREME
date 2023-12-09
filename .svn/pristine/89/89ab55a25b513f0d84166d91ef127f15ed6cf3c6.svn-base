unit View.mensagens;

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
  Vcl.Imaging.pngimage,
  Vcl.StdCtrls,

  View.base,

  Winapi.Messages,
  Winapi.Windows,

  view.telaFundo;


type
  TMyButtons = (mbSim, mbNao, mbOk);

type
  TViewMensagens = class(TViewBase)
    pnlImagens: TPanel;
    pnlConteudo: TPanel;
    pnlTitulo: TPanel;
    pnlBotoes: TPanel;
    mmoTexto: TMemo;
    lblTitulo: TLabel;
    btnOk: TSpeedButton;
    btnSim: TSpeedButton;
    btnNao: TSpeedButton;
    imgAlert: TImage;
    imgInformation: TImage;
    imgErro: TImage;
    procedure btnSimClick(Sender: TObject);
    procedure btnNaoClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure lblTituloMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private

  public
    class function Mensagem(Texto: String; Titulo: String; Tipo: Char; Botoes: array of TMyButtons): Boolean;
  end;

var
  ViewMensagens: TViewMensagens;

implementation

{$R *.dfm}

{ TViewMensagens }

procedure TViewMensagens.btnNaoClick(Sender: TObject);
begin // nao
  inherited;
  Self.ModalResult := mrNo;
end;

procedure TViewMensagens.btnOkClick(Sender: TObject);
begin // ok
  inherited;
  Self.ModalResult := mrOk;
end;

procedure TViewMensagens.btnSimClick(Sender: TObject);
begin // sim
  inherited;
  Self.ModalResult := mrYes;
end;

procedure TViewMensagens.lblTituloMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin  // mover o formulario sem bordas
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

class function TViewMensagens.Mensagem(Texto, Titulo: String; Tipo: Char; Botoes: array of TMyButtons): Boolean;
var
  i: Integer;
  view: TViewMensagens;
  ViewFundo: TViewTelaFundo;
begin

  view      := TViewMensagens.Create(nil);
  ViewFundo := TViewTelaFundo.Create(nil);
  try

    if Titulo = '' then
      Titulo := 'SUPREME';

    view.lblTitulo.Caption := Titulo;
    view.mmoTexto.Text     := Texto;


    //tratando os botoes
    for i := 0 to Length(Botoes) - 1 do
    begin

      case (Botoes[i]) of
        mbOk: begin
                view.btnOK.Visible := True;
                view.btnOK.Align   := alRight;
              end;

        mbSim: begin
                view.btnSim.Visible := True;
                view.btnSim.Align   := alRight;
               end;

        mbNao: begin
                view.btnNao.Visible := True;
                view.BtnNao.Align   := alRight;
               end;

        else begin
            view.BtnOK.Visible := True;
            view.BtnOK.Align   := alRight;
        end;

      end;

    end;


    // tipo das imagens
    case (Tipo) of
      'I': begin
              view.imgInformation.Visible := True; //Informação
              view.pnlImagens.Color       := $00C6732F;
           end;

      'A': begin
              view.imgAlert.Visible := True; //Alerta
              view.pnlImagens.Color := $0000C4DF;
           end;

      'E': begin
              view.imgErro.Visible   := True; //Erro
              view.pnlImagens.Color  := $006767ED;
           end;

      else begin
        view.imgInformation.Visible := True;
        view.pnlImagens.Color       := $00C6732F;
      end;

    end;

    //Mostrar o formumário
    ViewFundo.Show;
    view.ShowModal;

    case (view.ModalResult) of
      mrOk, mrYes : result := True;
      else
        result := False;
    end;

  finally
    if (view <> nil) then
    begin
      ViewFundo.Hide;
      FreeAndNil(view);
    end;
  end;

end;

end.
