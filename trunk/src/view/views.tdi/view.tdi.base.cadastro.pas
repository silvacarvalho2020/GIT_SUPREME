unit view.tdi.base.cadastro;

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
  TViewBaseCadastroTDI = class(TViewBaseTDI)
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
    pnlEditar: TPanel;
    BtnEditar: TSpeedButton;
    pnlExcluir: TPanel;
    BtnExcluir: TSpeedButton;
    pnlNovo: TPanel;
    BtnNovo: TSpeedButton;
    GRIDDados: TDBGridEh;
    procedure FormShow(Sender: TObject);
    procedure imgPesquisaAzulEscuroMouseEnter(Sender: TObject);
    procedure imgPesquisaAzulClaroMouseLeave(Sender: TObject);
    procedure imgLogoNomeTelaAzulEscuroMouseEnter(Sender: TObject);
    procedure imgLogoNomeTelaAzulClaroMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBaseCadastroTDI: TViewBaseCadastroTDI;

implementation

{$R *.dfm}

procedure TViewBaseCadastroTDI.FormShow(Sender: TObject);
begin // Show
  inherited;
  CP_cadastro.ActiveCard := card_consulta;

  if pnlFiltro.Visible = False then
  begin
    pnlTopo.Height := pnlTopo.Height - pnlFiltro.Height;
  end;

end;

procedure TViewBaseCadastroTDI.imgLogoNomeTelaAzulClaroMouseLeave(Sender: TObject);
begin
  inherited;
  imgLogoNomeTelaAzulEscuro.Visible := True;
  imgLogoNomeTelaAzulClaro.Visible  := False;
end;

procedure TViewBaseCadastroTDI.imgLogoNomeTelaAzulEscuroMouseEnter(Sender: TObject);
begin
  inherited;
  imgLogoNomeTelaAzulEscuro.Visible := False;
  imgLogoNomeTelaAzulClaro.Visible  := True;
end;

procedure TViewBaseCadastroTDI.imgPesquisaAzulClaroMouseLeave(Sender: TObject);
begin
  inherited;
  imgPesquisaAzulEscuro.Visible := True;
  imgPesquisaAzulClaro.Visible  := False;
end;

procedure TViewBaseCadastroTDI.imgPesquisaAzulEscuroMouseEnter(Sender: TObject);
begin
  inherited;
  imgPesquisaAzulEscuro.Visible := False;
  imgPesquisaAzulClaro.Visible  := True;
end;

end.
