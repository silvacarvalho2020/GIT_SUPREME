unit view.autorizacao.gerencial;

interface

uses
  Data.DB,

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
  Winapi.Windows,

  view.base.lancamentos;

type
  TViewAutorizacaoGerencial = class(TViewBaseLancamentos)
    lblReferente: TLabel;
    lblSolicitadoPor: TLabel;
    lblSolicitacao: TLabel;
    lblValorNormal: TLabel;
    lblTitReferente: TLabel;
    lblTitSolicitadoPor: TLabel;
    lblTitSolicitacao: TLabel;
    lblTitValorNormal: TLabel;
    pnlBtnCancelar: TPanel;
    ShapeBtnCancelar: TShape;
    btnCancelar: TSpeedButton;
    lblSenhaAutorizacao: TLabel;
    edtSenhaAutorizacao: TEdit;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtSenhaAutorizacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    Constructor Create(AOwner: TComponent; AReferente, ASolicitadoPor, ATipoSolicitacao: String; AValorNormal: double); reintroduce;
  end;

var
  ViewAutorizacaoGerencial: TViewAutorizacaoGerencial;

implementation

{$R *.dfm}

procedure TViewAutorizacaoGerencial.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrCancel;
end;

procedure TViewAutorizacaoGerencial.btnSalvarClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrOk;
end;

constructor TViewAutorizacaoGerencial.Create(AOwner: TComponent; AReferente, ASolicitadoPor, ATipoSolicitacao: String; AValorNormal: double);
begin
  inherited Create(AOwner);
  lblTitReferente.Caption := AReferente;
  lblTitSolicitadoPor.Caption := ASolicitadoPor;
  lblTitSolicitacao.Caption := ATipoSolicitacao;
  lblTitValorNormal.Caption := FormatFloat('##0.00', AValorNormal);
end;

procedure TViewAutorizacaoGerencial.edtSenhaAutorizacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
    btnSalvar.Click;
end;

procedure TViewAutorizacaoGerencial.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    btnCancelar.Click;
//  inherited;

end;

end.
