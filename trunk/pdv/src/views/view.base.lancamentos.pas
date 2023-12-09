unit view.base.lancamentos;

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

  Winapi.Messages,
  Winapi.Windows,

  view.base, Data.DB;

type
  TViewBaseLancamentos = class(TViewBase)
    pnlTopo: TPanel;
    lblTitulo: TLabel;
    pnlImgLogo: TPanel;
    imgLogoCinza: TImage;
    imgLogoAzul: TImage;
    pnlFechar: TPanel;
    btnFechar: TSpeedButton;
    pnlRodape: TPanel;
    pnlBtnNovo: TPanel;
    ShapeBtnNovo: TShape;
    btnNovo: TSpeedButton;
    pnlBtnSalvar: TPanel;
    ShapeBtnSalvar: TShape;
    btnSalvar: TSpeedButton;
    DS_Dados: TDataSource;
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBaseLancamentos: TViewBaseLancamentos;

implementation

{$R *.dfm}

procedure TViewBaseLancamentos.btnFecharClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrCancel;
end;

end.
