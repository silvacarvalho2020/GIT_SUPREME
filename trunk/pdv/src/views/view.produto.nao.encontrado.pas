unit view.produto.nao.encontrado;

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
  Winapi.Windows,

  view.base;

type
  TViewProdutoNaoEncontrado = class(TViewBase)
    pnlCores: TPanel;
    lblInfo: TLabel;
    btnVoltar: TSpeedButton;
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewProdutoNaoEncontrado: TViewProdutoNaoEncontrado;

implementation

{$R *.dfm}

procedure TViewProdutoNaoEncontrado.btnVoltarClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrCancel;
end;

end.
