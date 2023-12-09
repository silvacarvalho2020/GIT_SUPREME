unit view.tdi.base.listas;

interface

uses
  DBAxisGridsEh,
  DBGridEh,
  DBGridEhGrouping,
  DBGridEhToolCtrls,
  DynVarsEh,
  EhLibVCL,
  GridsEh,
  JvExMask,
  JvToolEdit,
  ToolCtrlsEh,
  acPNG,

  Data.DB,

  System.Actions,
  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.ActnList,
  Vcl.Buttons,
  Vcl.ComCtrls,
  Vcl.Controls,
  Vcl.DBGrids,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Grids,
  Vcl.Imaging.pngimage,
  Vcl.Mask,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,

  Winapi.Messages,
  Winapi.Windows,

  view.tdi.base;

type
  TViewBaseListasTDI = class(TViewBaseTDI)
    CP_cadastro: TCardPanel;
    card_consulta: TCard;
    pnlDadosPesquisa: TPanel;
    acl_cadastro: TActionList;
    act_pesquisa: TAction;
    DS_Dados: TDataSource;
    pnlRodapeBotoes: TPanel;
    pnlPesquisa: TPanel;
    pnlImgPesquisa: TPanel;
    edtPesquisa: TEdit;
    imgPesquisaAzulEscuro: TImage;
    imgPesquisaAzulClaro: TImage;
    pnlTopo: TPanel;
    pnlFiltro: TPanel;
    pnlFiltroDatas: TPanel;
    lblTituloFiltroDatas: TLabel;
    edtDtaIni: TJvDateEdit;
    edtDtaFin: TJvDateEdit;
    pnlNomeTela: TPanel;
    lblNomeTela: TLabel;
    pnlLogoNomeTela: TPanel;
    imgLogoNomeTelaAzulClaro: TImage;
    imgLogoNomeTelaAzulEscuro: TImage;
    GRIDDados: TDBGridEh;
    pnlBtnNovo: TPanel;
    ShapeBtnNovo: TShape;
    btnNovo: TSpeedButton;
    pnlBtnEditar: TPanel;
    ShapeBtnEditar: TShape;
    btnEditar: TSpeedButton;
    pnlBtnDeletar: TPanel;
    ShapeBtnDeletar: TShape;
    btnDeletar: TSpeedButton;
    pnlBtnImprimir: TPanel;
    ShapeBtnImprimir: TShape;
    btnImprimir: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure imgPesquisaAzulEscuroMouseEnter(Sender: TObject);
    procedure imgPesquisaAzulClaroMouseLeave(Sender: TObject);
    procedure imgLogoNomeTelaAzulEscuroMouseEnter(Sender: TObject);
    procedure imgLogoNomeTelaAzulClaroMouseLeave(Sender: TObject);
    procedure GRIDDadosDblClick(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GRIDDadosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBaseListasTDI: TViewBaseListasTDI;

implementation

{$R *.dfm}

procedure TViewBaseListasTDI.edtPesquisaChange(Sender: TObject);
begin
  inherited;
  GRIDDados.SearchPanel.SearchingText := '';
  if Length(edtPesquisa.Text) > 0 then
    GRIDDados.SearchPanel.SearchingText := Trim(edtPesquisa.Text);
end;

procedure TViewBaseListasTDI.edtPesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = VK_DOWN) or (Key = VK_RETURN) then
    GRIDDados.SetFocus;
end;

procedure TViewBaseListasTDI.FormShow(Sender: TObject);
begin // Show
  inherited;
  CP_cadastro.ActiveCard := card_consulta;

  if pnlFiltro.Visible = False then
  begin
    pnlTopo.Height := pnlTopo.Height - pnlFiltro.Height;
  end
  else begin
    edtPesquisa.SetFocus;
  end;

end;

procedure TViewBaseListasTDI.GRIDDadosDblClick(Sender: TObject);
begin
  inherited;
  if DS_Dados.DataSet.RecordCount > 0 then
    BtnEditar.Click;
end;

procedure TViewBaseListasTDI.GRIDDadosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
    btnEditar.Click;
end;

procedure TViewBaseListasTDI.imgLogoNomeTelaAzulClaroMouseLeave(Sender: TObject);
begin
  inherited;
  imgLogoNomeTelaAzulEscuro.Visible := True;
  imgLogoNomeTelaAzulClaro.Visible  := False;
end;

procedure TViewBaseListasTDI.imgLogoNomeTelaAzulEscuroMouseEnter(Sender: TObject);
begin
  inherited;
  imgLogoNomeTelaAzulEscuro.Visible := False;
  imgLogoNomeTelaAzulClaro.Visible  := True;
end;

procedure TViewBaseListasTDI.imgPesquisaAzulClaroMouseLeave(Sender: TObject);
begin
  inherited;
  imgPesquisaAzulEscuro.Visible := True;
  imgPesquisaAzulClaro.Visible  := False;
end;

procedure TViewBaseListasTDI.imgPesquisaAzulEscuroMouseEnter(Sender: TObject);
begin
  inherited;
  imgPesquisaAzulEscuro.Visible := False;
  imgPesquisaAzulClaro.Visible  := True;
end;

end.
