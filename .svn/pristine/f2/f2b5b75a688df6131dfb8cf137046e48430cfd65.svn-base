unit UHome;

interface

uses
  Conexao,
  UCadCondPagamento,
  UClientes,
  UFundoTranspaprente,
  ULayout,
  UListaClientes,
  UMensagem,
  USubProdutos,
  UTelaBase,
  UTelaIcones,
  UUsuarios,

  System.Actions,
  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.ActnList,
  Vcl.AppEvnts,
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

  view.base;

type
  TFormCloseEvent = procedure(Sender: TObject; var Action: TCloseAction) of object;


type
  TFrmHome = class(TViewBase)
    PnHome: TPanel;
    pnlHomeTDI: TPanel;
    PnFundo: TPanel;
    ImgLogoSistema: TImage;
    PnAbreFechaMenu: TPanel;
    ImgAbreMenu: TImage;
    ImgFechaMenu: TImage;
    ApplicationEvents: TApplicationEvents;
    pnlMenu: TPanel;
    pnlBackground: TPanel;
    pnlTopo: TPanel;
    lblNomeSistema: TLabel;
    lblSair: TLabel;
    pnlRodape: TPanel;
    pnlLineLeftMenu: TPanel;
    btnCadastros: TSpeedButton;
    btnEstoque: TSpeedButton;
    btnFinanceiro: TSpeedButton;
    btnFiscal: TSpeedButton;
    btnConfiguracoes: TSpeedButton;
    btnMovimentos: TSpeedButton;
    pnlMenuMovimentos: TPanel;
    pnlMenuMovimentosConteudo: TPanel;
    btnVenda: TSpeedButton;
    btnPreVenda: TSpeedButton;
    btnOrcamento: TSpeedButton;
    pnlMenuCadastros: TPanel;
    pnlMenuCadastrosConteudo: TPanel;
    btnCliente: TSpeedButton;
    btnFornecedores: TSpeedButton;
    btnUsuario: TSpeedButton;
    pnlMenuEstoque: TPanel;
    pnlMenuEstoqueConteudo: TPanel;
    btnProduto: TSpeedButton;
    btnNotasEntrada: TSpeedButton;
    pnlMenuFinanceiro: TPanel;
    pnlMenuFinanceiroConteudo: TPanel;
    btnFaturamento: TSpeedButton;
    btnCaixa: TSpeedButton;
    btnContasReceber: TSpeedButton;
    btnContasPagar: TSpeedButton;
    btnConfigBancoDados: TSpeedButton;
    lblUserLogado: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ImgFechaMenuClick(Sender: TObject);
    procedure ImgAbreMenuClick(Sender: TObject);
    procedure ApplicationEventsModalBegin(Sender: TObject);
    procedure ApplicationEventsModalEnd(Sender: TObject);
    procedure lblSairClick(Sender: TObject);
    procedure btnVendaClick(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure btnUsuarioClick(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnConfigBancoDadosClick(Sender: TObject);
    procedure btnMovimentosMouseEnter(Sender: TObject);
    procedure pnlMenuMovimentosMouseLeave(Sender: TObject);
    procedure btnCadastrosMouseEnter(Sender: TObject);
    procedure pnlMenuCadastrosMouseLeave(Sender: TObject);
    procedure btnEstoqueMouseEnter(Sender: TObject);
    procedure pnlMenuEstoqueMouseLeave(Sender: TObject);
    procedure btnFinanceiroMouseEnter(Sender: TObject);
    procedure pnlMenuFinanceiroMouseLeave(Sender: TObject);
    procedure btnPreVendaClick(Sender: TObject);
    procedure btnOrcamentoClick(Sender: TObject);
    procedure btnNotasEntradaClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure btnFaturamentoClick(Sender: TObject);
    procedure btnContasReceberClick(Sender: TObject);
    procedure btnContasPagarClick(Sender: TObject);
  private

  published
    procedure TLabelMouseEnter(Sender: TObject);
    procedure TLabelMouseLeave(Sender: TObject);

  public

  end;

var
  FrmHome: TFrmHome;

implementation

{$R *.dfm}

uses DM1, ULogin, UEstFornecedor, unit_esmaecer_fundo, UContas, UFuncoes,
  UCondPagamento, VenPedido;

procedure TFrmHome.ApplicationEventsModalBegin(Sender: TObject);
begin
//     form_esmaecer_fundo.Show;
end;

procedure TFrmHome.ApplicationEventsModalEnd(Sender: TObject);
begin
//     form_esmaecer_fundo.hide;
end;

procedure TFrmHome.btnCadastrosMouseEnter(Sender: TObject);
begin //Cadastros - MouseEnter
  inherited;

  pnlMenuMovimentos.Visible := False;
  pnlMenuEstoque.Visible    := False;
  pnlMenuFinanceiro.Visible := False;

  pnlMenuCadastros.Left    := 130;
  pnlMenuCadastros.Top     := 129;
  pnlMenuCadastros.Visible := True;

end;

procedure TFrmHome.btnCaixaClick(Sender: TObject);
begin
  inherited;
  pnlMenuFinanceiro.Visible := False;
end;

procedure TFrmHome.btnClienteClick(Sender: TObject);
begin

  inherited;

  pnlMenuCadastros.Visible := False;

  FrmListaClientes := TFrmListaClientes.create(self);
  try
//    FrmListaClientes.Parent := PnPrincipal;
    FrmListaClientes.ShowModal;
  finally
    FreeAndNil(FrmListaClientes);
  end;


//  if FrmClientes = nil then
//    begin
//      FrmClientes := TFrmClientes.create(self);
//
//      FrmClientes.Parent := PnPrincipal;
//      // FrmConfigConexao.Align        := AlClient;
////      FrmClientes.BorderStyle := bsNone;
//
//      FrmClientes.show;
//    end;



end;

procedure TFrmHome.btnConfigBancoDadosClick(Sender: TObject);
begin
  inherited;
  if FrmConfigConexao = nil then

  begin

    FrmConfigConexao := TFrmConfigConexao.create(self);

    FrmConfigConexao.Parent := pnlHomeTDI;
    // FrmConfigConexao.Align        := AlClient;
    FrmConfigConexao.BorderStyle := bsNone;

    FrmConfigConexao.show;
  end;

end;

procedure TFrmHome.btnContasPagarClick(Sender: TObject);
begin
  inherited;
  pnlMenuFinanceiro.Visible := False;
end;

procedure TFrmHome.btnContasReceberClick(Sender: TObject);
begin
  inherited;
  pnlMenuFinanceiro.Visible := False;
end;

procedure TFrmHome.btnEstoqueMouseEnter(Sender: TObject);
begin //Estoque - MouseEnter
  inherited;

  pnlMenuCadastros.Visible  := False;
  pnlMenuMovimentos.Visible := False;
  pnlMenuFinanceiro.Visible := False;

  pnlMenuEstoque.Left    := 130;
  pnlMenuEstoque.Top     := 226;
  pnlMenuEstoque.Visible := True;

end;

procedure TFrmHome.btnFaturamentoClick(Sender: TObject);
begin
  inherited;
  pnlMenuFinanceiro.Visible := False;
end;

procedure TFrmHome.btnFinanceiroMouseEnter(Sender: TObject);
begin //Financeiro - MouseEnter
  inherited;

  pnlMenuCadastros.Visible  := False;
  pnlMenuMovimentos.Visible := False;
  pnlMenuEstoque.Visible    := False;

  pnlMenuEstoque.Left    := 130;
  pnlMenuEstoque.Top     := 323;
  pnlMenuEstoque.Visible := True;

end;

procedure TFrmHome.btnFornecedoresClick(Sender: TObject);
begin
  inherited;
  pnlMenuCadastros.Visible := False;
  try
    FrmEstFornecedor :=  TFrmEstFornecedor.Create(self);
    FrmEstFornecedor.showModal;
  finally
    FrmEstFornecedor := nil;
    FrmEstFornecedor.Free  ;
  end;
end;

procedure TFrmHome.btnMovimentosMouseEnter(Sender: TObject);
begin //Movimentos - MouseEnter
  inherited;

  pnlMenuCadastros.Visible  := False;
  pnlMenuEstoque.Visible    := False;
  pnlMenuFinanceiro.Visible := False;

  pnlMenuMovimentos.Left    := 130;
  pnlMenuMovimentos.Top     := 31;
  pnlMenuMovimentos.Visible := True;

end;

procedure TFrmHome.btnNotasEntradaClick(Sender: TObject);
begin
  inherited;
  pnlMenuEstoque.Visible := False;
end;

procedure TFrmHome.btnOrcamentoClick(Sender: TObject);
begin
  inherited;
  pnlMenuMovimentos.Visible := False;
end;

procedure TFrmHome.btnPreVendaClick(Sender: TObject);
begin
  inherited;
  pnlMenuMovimentos.Visible := False;
end;

procedure TFrmHome.btnProdutoClick(Sender: TObject);
begin
  inherited;
  pnlMenuEstoque.Visible := False;
  try
       FrmSubProdutos := TFrmSubProdutos.create(self);
       CriaFundoTransparente;
       FrmSubProdutos.showModal;
     finally
       FechaFundoTransparente;
     end;
end;

procedure TFrmHome.btnVendaClick(Sender: TObject);
begin
  inherited;
  pnlMenuMovimentos.Visible := False;
  try
       FrmVenPedido :=  TFrmVenPedido.Create(self);
       FrmVenPedido.showModal;
   finally
       FrmVenPedido := nil;
       FrmVenPedido.Free  ;
   end;
end;

procedure TFrmHome.FormResize(Sender: TObject);
begin
  // ImgAbreMenu.Left := Round ((pnAbreFechaMenu.width  - ImgAbreMenu.width ) / 2);
  // ImgAbreMenu.Top  := Round ((pnAbreFechaMenu.Height - ImgAbreMenu.Height) / 2);
  //
  // ImgFechaMenu.Left := Round ((pnAbreFechaMenu.width  - ImgFechaMenu.width ) / 2);
  // ImgFechaMenu.Top  := Round ((pnAbreFechaMenu.Height - ImgFechaMenu.Height) / 2);

  ImgLogoSistema.Left := Round((pnlHomeTDI.width - ImgLogoSistema.width));
  ImgLogoSistema.Top :=
    Round((pnlHomeTDI.height - ImgLogoSistema.height) - 40);

end;

procedure TFrmHome.FormShow(Sender: TObject);
begin
  datamodule1.cores.active := False;
  datamodule1.cores.active := True;
  // pnMenu.color := StringToColor(datamodule1.CORES.fieldbyname('SISTEMA').asstring);

  LblUserLogado.caption := usuariologado;
end;

procedure TFrmHome.ImgAbreMenuClick(Sender: TObject);
begin
  ImgFechaMenu.Visible := true;
  ImgAbreMenu.Visible := false;
  pnlMenu.Width := 130;
end;

procedure TFrmHome.ImgFechaMenuClick(Sender: TObject);
begin
  ImgAbreMenu.Visible := true;
  ImgFechaMenu.Visible := false;
  pnlMenu.Width := 0;
end;

procedure TFrmHome.lblSairClick(Sender: TObject);
begin
  inherited;

  IF  fnc_CriarMensagem('FECHAR SISTEMA', 'CONFIRMANDO A FINALIZAÇÃO',
          'Tem certeza que deseja FECHAR O SITEMA?', ExtractFilepath(Application.ExeName) +
          '\Icones\Atencao.png', 'CONFIRMACAO') THEN
       BEGIN
          Application.terminate;
      end;
end;

procedure TFrmHome.pnlMenuCadastrosMouseLeave(Sender: TObject);
begin //Cadastro - MouseLeave
  inherited;
  pnlMenuCadastros.Visible := False;
end;

procedure TFrmHome.pnlMenuEstoqueMouseLeave(Sender: TObject);
begin //Estoque - MouseLeave
  inherited;

  pnlMenuEstoque.Visible := False;

end;

procedure TFrmHome.pnlMenuFinanceiroMouseLeave(Sender: TObject);
begin  //Financeiro - MouseLeave
  inherited;

  pnlMenuFinanceiro.Visible := False;

end;

procedure TFrmHome.pnlMenuMovimentosMouseLeave(Sender: TObject);
begin //Movimentos - MouseLeave
  inherited;

  pnlMenuMovimentos.Visible := False;

end;

procedure TFrmHome.btnUsuarioClick(Sender: TObject);
begin
  inherited;
  pnlMenuCadastros.Visible := False;
    if FrmUsuarios = nil then
    begin
      FrmUsuarios := TFrmUsuarios.create(self);

      FrmUsuarios.Parent := pnlHomeTDI;
      // FrmConfigConexao.Align        := AlClient;
      FrmUsuarios.BorderStyle := bsNone;

      FrmUsuarios.show;
    end;
end;

procedure TFrmHome.TLabelMouseEnter(Sender: TObject);
begin
  TLabel(Sender).Font.Color := clBlack;
end;

procedure TFrmHome.TLabelMouseLeave(Sender: TObject);
begin
  TLabel(Sender).Font.Color := clWhite;
end;

end.
