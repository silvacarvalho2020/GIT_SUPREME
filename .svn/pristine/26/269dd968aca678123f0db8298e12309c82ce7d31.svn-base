unit view.modal.base.pesquisa;

interface

uses
  DBAxisGridsEh,
  DBGridEh,
  DBGridEhGrouping,
  DBGridEhToolCtrls,
  DynVarsEh,
  EhLibVCL,
  GridsEh,
  ToolCtrlsEh,
  acPNG,

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
  Vcl.StdCtrls,

  Winapi.Messages,
  Winapi.Windows,

  view.base;

type
  TViewBasePesquisa = class(TViewBase)
    pnlTopo: TPanel;
    pnlBtnFechar: TPanel;
    btnFechar: TSpeedButton;
    pnlDadosTitulo: TPanel;
    pnlInfoTitulo: TPanel;
    lblTituloTela: TLabel;
    pnlLineTitulo: TPanel;
    pnlRodapeCadastro: TPanel;
    pnlFiltro: TPanel;
    pnlPesquisa: TPanel;
    pnlImgPesquisa: TPanel;
    imgPesquisaAzulClaro: TImage;
    imgPesquisaAzulEscuro: TImage;
    edtPesquisa: TEdit;
    DBG_ListaDados: TDBGridEh;
    DS_Dados: TDataSource;
    pnlBtnCancelar: TPanel;
    ShapeBtnCancelar: TShape;
    btnCancelar: TSpeedButton;
    pnlBtnSalvar: TPanel;
    ShapeBtnSalvar: TShape;
    btnSalvar: TSpeedButton;
    procedure btnFecharClick(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure BtnCancelarClick(Sender: TObject);
    procedure DBG_ListaDadosDblClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBG_ListaDadosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBasePesquisa: TViewBasePesquisa;

implementation

{$R *.dfm}

procedure TViewBasePesquisa.BtnCancelarClick(Sender: TObject);
begin // cancelar
  inherited;
  Self.ModalResult := mrCancel;
end;

procedure TViewBasePesquisa.btnFecharClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewBasePesquisa.btnSalvarClick(Sender: TObject);
begin // ok
  inherited;
  Self.ModalResult := mrOk;
end;

procedure TViewBasePesquisa.DBG_ListaDadosDblClick(Sender: TObject);
begin
  inherited;
  btnSalvarClick(btnSalvar);
end;

procedure TViewBasePesquisa.DBG_ListaDadosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
    btnSalvar.Click;
end;

procedure TViewBasePesquisa.edtPesquisaChange(Sender: TObject);
begin
  inherited;
  DBG_ListaDados.SearchPanel.SearchingText := '';
  if Length(edtPesquisa.Text) > 0 then
    DBG_ListaDados.SearchPanel.SearchingText := Trim(edtPesquisa.Text);
end;

procedure TViewBasePesquisa.edtPesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_DOWN then
    DBG_ListaDados.SetFocus;
end;

procedure TViewBasePesquisa.pnlTopoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const // move o form sem as bordas
   sc_DragMove = $f012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.
