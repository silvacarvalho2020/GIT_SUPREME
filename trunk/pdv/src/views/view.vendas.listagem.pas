unit view.vendas.listagem;

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
  UFuncoes,
  sCustomComboEdit,
  sMaskEdit,
  sToolEdit,

  Data.DB,

  System.Classes,
  System.ImageList,
  System.SysUtils,
  System.Variants,

  Vcl.Buttons,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Imaging.pngimage,
  Vcl.ImgList,
  Vcl.Mask,
  Vcl.Menus,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,

  Winapi.Messages,
  Winapi.Windows,

  view.base.listas;

type
  TViewVendasListagem = class(TViewBaseListas)
    edtDtaIni: TsDateEdit;
    edtDtaFin: TsDateEdit;
    PopupMenu: TPopupMenu;
    E1: TMenuItem;
    E2: TMenuItem;
    pnlInfoVenda: TPanel;
    pnlFPGto: TPanel;
    pnlProdutosVenda: TPanel;
    DBG_ProdutosVendas: TDBGridEh;
    DBG_FormasPGTO: TDBGridEh;
    DS_ProdutosVendas: TDataSource;
    DS_FormasPGTO: TDataSource;
    N1: TMenuItem;
    R1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPesquisaInvokeSearch(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure E2Click(Sender: TObject);
    procedure DBG_ListaDadosCellClick(Column: TColumnEh);
    procedure R1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewVendasListagem: TViewVendasListagem;

implementation

{$R *.dfm}

procedure TViewVendasListagem.DBG_ListaDadosCellClick(Column: TColumnEh);
begin //filtra as formas
  inherited;
  FService.GET_ItemVenda(FService.QRY_VendaIDVENDA.AsInteger);
  FService.GET_FormasPGTOVenda(FService.QRY_VendaIDVENDA.AsInteger);
end;

procedure TViewVendasListagem.E1Click(Sender: TObject);
begin // emitir nfe
  inherited;
  try

    if FService.QRY_VendaNUMNFE.AsInteger > 0 then
    begin
      fnc_CriarMensagem('ATENÇÃO', 'EMISSÃO DE NF-e',
            'ESSE DOCUMENTO JÁ FOI EMITIDO UMA NF-e.',
            ExtractFilepath(Application.ExeName) +
            '\Icones\Confirmacao.png', 'OK');
      DBG_ListaDados.SetFocus;
      Abort;
    end;

    FService.GET_Venda(FService.QRY_VendaIDVENDA.AsInteger);
    FService.PUT_NFe(FService.QRY_Venda, FService.QRY_VendaItem);
  finally
    FService.GET_Venda;
  end;
end;

procedure TViewVendasListagem.E2Click(Sender: TObject);
begin // emitir nfce
  inherited;
  try

    if FService.QRY_VendaNUMNFCE.AsInteger > 0 then
    begin
      fnc_CriarMensagem('ATENÇÃO', 'EMISSÃO DE NFC-e',
            'ESSE DOCUMENTO JÁ FOI EMITIDO UMA NFC-e.',
            ExtractFilepath(Application.ExeName) +
            '\Icones\Confirmacao.png', 'OK');
      DBG_ListaDados.SetFocus;
      Abort;
    end;

    FService.GET_Venda(FService.QRY_VendaIDVENDA.AsInteger);
    FService.PUT_NFCe(FService.QRY_Venda, FService.QRY_VendaItem);

  finally
    edtPesquisaInvokeSearch(Sender);
  end;

end;

procedure TViewVendasListagem.edtPesquisaInvokeSearch(Sender: TObject);
begin // Pesquisar
  inherited;
  FService.GET_Venda;
end;

procedure TViewVendasListagem.FormCreate(Sender: TObject);
begin // Create
  inherited;
  DS_Dados.DataSet          := FService.QRY_Venda;
  DS_ProdutosVendas.DataSet := FService.QRY_VendaItem;
  DS_FormasPGTO.DataSet     := FService.QRY_FormasPGTOVenda;
end;

procedure TViewVendasListagem.FormShow(Sender: TObject);
begin // Show
  inherited;

  edtDtaIni.Date := Date - 7;
  edtDtaFin.Date := Date;

  FService.GET_Venda;

end;

procedure TViewVendasListagem.R1Click(Sender: TObject);
begin //Reimprimir a venda não fiscal
  inherited;
  try
    FService.GET_Venda(FService.QRY_VendaIDVENDA.AsInteger);
    FService.GET_ItemVenda(FService.QRY_VendaIDVENDA.AsInteger);
    FService.GET_FormasPGTOVenda(FService.QRY_VendaIDVENDA.AsInteger);
    FService.GET_VendedorVenda(FService.QRY_VendaIDVENDEDOR.AsInteger);
    FService.GET_Clientes(FService.QRY_VendaIDCLIENTE.AsInteger);

    FService.frxReport.ShowReport();
  finally
    FService.GET_Venda;
  end;
end;

end.
