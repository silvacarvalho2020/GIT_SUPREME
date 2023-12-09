unit view.modal.cadastro.produtos;

interface

uses
  AdvCombo,
  AdvDBComboBox,
  DBAxisGridsEh,
  DBGridEh,
  DBGridEhGrouping,
  DBGridEhToolCtrls,
  DynVarsEh,
  EhLibVCL,
  GridsEh,
  JvBaseEdits,
  JvDBControls,
  JvExMask,
  JvToolEdit,
  RxCurrEdit,
  RxDBCurrEdit,
  RxToolEdit,
  ToolCtrlsEh,
  UFuncoes,
  UMensagem,
  acPNG,

  Data.DB,

  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.Buttons,
  Vcl.Controls,
  Vcl.DBCtrls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage,
  Vcl.Mask,
  Vcl.StdCtrls,
  Vcl.WinXPanels,

  Winapi.Messages,
  Winapi.Windows,

  funcoes.diversas,

  view.modal.base.cadastro, Vcl.WinXCtrls;

type
  TViewCadastroProdutos = class(TViewBaseCadastro)
    pnlDadosBasicos: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    edtDescricao: TDBEdit;
    Label3: TLabel;
    edtReferencia: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label5: TLabel;
    btnAddGrupo: TSpeedButton;
    btnAddSubGrupo: TSpeedButton;
    btnAddMarca: TSpeedButton;
    DBL_Grupo: TDBLookupComboBox;
    DBL_SubGrupo: TDBLookupComboBox;
    DBL_Marca: TDBLookupComboBox;
    DS_Grupo: TDataSource;
    DS_SubGrupo: TDataSource;
    DS_Marca: TDataSource;
    DS_Fabricante: TDataSource;
    DS_NCM: TDataSource;
    DS_Origem: TDataSource;
    DS_UnidadeMedida: TDataSource;
    Label6: TLabel;
    btnAddFabricante: TSpeedButton;
    DBL_Fabricante: TDBLookupComboBox;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    DBL_Origem: TDBLookupComboBox;
    pnlAbas: TPanel;
    pnlBtnPrecos: TPanel;
    btnPrecos: TSpeedButton;
    pnlBtnGrade: TPanel;
    btnGrade: TSpeedButton;
    pnlBtnFotos: TPanel;
    btnFotos: TSpeedButton;
    pnlBtnReferencias: TPanel;
    btnReferencias: TSpeedButton;
    pnlBtnUnidades: TPanel;
    btnUnidades: TSpeedButton;
    pnlBtnTributacao: TPanel;
    Tributacao: TSpeedButton;
    pnlBtnLote: TPanel;
    btnLote: TSpeedButton;
    pnlBtnNumSerie: TPanel;
    btnNumSerie: TSpeedButton;
    pnlBtnLogs: TPanel;
    btnLogs: TSpeedButton;
    pnlBtnFornecedores: TPanel;
    btnFornecedores: TSpeedButton;
    CP_Produtos: TCardPanel;
    Card_Precos: TCard;
    Card_Unidades: TCard;
    Card_Fotos: TCard;
    Card_Referencias: TCard;
    Card_Tributacao: TCard;
    Card_Grade: TCard;
    Card_LoteValidade: TCard;
    Card_NumSerie: TCard;
    Card_Fornecedores: TCard;
    Card_Logs: TCard;
    pnlTitPrecos: TPanel;
    lblTitPrecos: TLabel;
    pnlTitNumSerie: TPanel;
    lblTitNumSerie: TLabel;
    pnlTitLoteValidade: TPanel;
    lblTitLoteValidade: TLabel;
    pnlTitLogs: TPanel;
    lblTitLogs: TLabel;
    pnlTitGrade: TPanel;
    lblTitGrade: TLabel;
    pnlTitFotos: TPanel;
    lblTitFotos: TLabel;
    pnlTitFornecedores: TPanel;
    lblTitFornecedores: TLabel;
    pnlTitReferencias: TPanel;
    lblTitReferencias: TLabel;
    pnlTitTributacao: TPanel;
    lblTitTributacao: TLabel;
    pnlTitEmbalagens: TPanel;
    lblTitEmbalagens: TLabel;
    pnlDadosPreco: TPanel;
    pnlDadosCompra: TPanel;
    pnlDadosVenda: TPanel;
    pnlDadosOutros: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label45: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label49: TLabel;
    Label46: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label67: TLabel;
    Label71: TLabel;
    Label66: TLabel;
    Label70: TLabel;
    DS_ProdutoItem: TDataSource;
    EdtIcmsCompra: TJvDBCalcEdit;
    EdtRedBaseICMS: TJvDBCalcEdit;
    EdtICMSSTCompra: TJvDBCalcEdit;
    EdtRedBaseICMSST: TJvDBCalcEdit;
    EdtValorICMSST: TJvDBCalcEdit;
    EdtMVACompra: TJvDBCalcEdit;
    EdtAliqPisCompra: TJvDBCalcEdit;
    EdtCofinsCompra: TJvDBCalcEdit;
    EdtFreteCompra: TJvDBCalcEdit;
    EdtIPICompra: TJvDBCalcEdit;
    EdtOutrosCompra: TJvDBCalcEdit;
    EdtFreteCompraRs: TJvDBCalcEdit;
    EdtPrCustoEntrada: TJvDBCalcEdit;
    EdtOutrosVenda: TJvDBCalcEdit;
    EdtIcmsVenda: TJvDBCalcEdit;
    EdtFreteVenda: TJvDBCalcEdit;
    EdtFreteVendaRS: TJvDBCalcEdit;
    EdtAliqPisVenda: TJvDBCalcEdit;
    EdtCofinsVenda: TJvDBCalcEdit;
    EdtDespOperacional: TJvDBCalcEdit;
    EdtCustoProdVendido: TJvDBCalcEdit;
    EdtComAVista: TJvDBCalcEdit;
    EdtComAPrazo: TJvDBCalcEdit;
    Label24: TLabel;
    edtValorVenda: TJvDBCalcEdit;
    EdtPrCompra: TJvDBCalcEdit;
    lblTributos: TLabel;
    btnAddTributos: TSpeedButton;
    dblTributos: TDBLookupComboBox;
    ImgLogoSistema: TImage;
    DS_Embalagem: TDataSource;
    Label26: TLabel;
    edtPercLucro: TJvDBCalcEdit;
    Label27: TLabel;
    edtVlrLucro: TJvDBCalcEdit;
    DS_Tributacao: TDataSource;
    Label28: TLabel;
    edtNCM: TDBEdit;
    BtnCadGrupo: TSpeedButton;
    edtCSTPisCofinsEntrada: TDBEdit;
    lbl: TLabel;
    edtCSTPisCofinsSaida: TDBEdit;
    Label29: TLabel;
    pnlNCM: TPanel;
    GRIDDadosNCM: TDBGridEh;
    edtDescricaoNCM: TDBEdit;
    edtPesquisaNCM: TSearchBox;
    btnFoco: TButton;
    pnlRodapeNCM: TPanel;
    pnlSairNCM: TPanel;
    btnSairNCM: TSpeedButton;
    pnlEmbalagem: TPanel;
    Label25: TLabel;
    DBL_Embalagem: TDBLookupComboBox;
    pnlLineSepara: TPanel;
    pnlEstoque: TPanel;
    lblOperacao: TLabel;
    DBL_MotivoOperacao: TDBLookupComboBox;
    DS_Movimentos: TDataSource;
    lblPrecoCusto: TLabel;
    edtPrecoCusto: TJvDBCalcEdit;
    lblPrecoVenda: TLabel;
    edtPrecoVenda: TJvDBCalcEdit;
    lblQuantidade: TLabel;
    edtQuantidade: TJvDBCalcEdit;
    DS_MovimentosEstoque: TDataSource;
    dbxFracionado: TDBComboBox;
    lblFracionado: TLabel;
    lblEstoqueAtual: TLabel;
    edtEstoqueAtual: TJvDBCalcEdit;
    Label30: TLabel;
    DBComboBox1: TDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPrecosClick(Sender: TObject);
    procedure btnUnidadesClick(Sender: TObject);
    procedure btnFotosClick(Sender: TObject);
    procedure btnReferenciasClick(Sender: TObject);
    procedure TributacaoClick(Sender: TObject);
    procedure btnGradeClick(Sender: TObject);
    procedure btnLoteClick(Sender: TObject);
    procedure btnNumSerieClick(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnLogsClick(Sender: TObject);
    procedure EdtIcmsCompraExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure BtnCadGrupoClick(Sender: TObject);
    procedure GRIDDadosNCMDblClick(Sender: TObject);
    procedure edtPesquisaNCMChange(Sender: TObject);
    procedure edtPesquisaNCMKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GRIDDadosNCMKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPercLucroExit(Sender: TObject);
    procedure btnSairNCMClick(Sender: TObject);
    procedure edtValorVendaExit(Sender: TObject);
    procedure CP_ProdutosCardChange(Sender: TObject; PrevCard, NextCard: TCard);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    procedure PintarOutrosBotoesEPaineis(BotaoSelecionado: TSpeedButton; PainelSelecionado: TPanel);
    procedure CorAbas(Sender: TObject; ATab: TCard);
    procedure EscolheNCM;
  public
    { Public declarations }
  end;

var
  ViewCadastroProdutos: TViewCadastroProdutos;

implementation

{$R *.dfm}

procedure TViewCadastroProdutos.PintarOutrosBotoesEPaineis(BotaoSelecionado: TSpeedButton; PainelSelecionado: TPanel);
var
  i: Integer;
  Painel: TPanel;
  Botao: TSpeedButton;
begin

  for i := 0 to pnlAbas.ControlCount - 1 do
  begin
    if pnlAbas.Controls[i] is TPanel then
    begin
      Painel := TPanel(pnlAbas.Controls[i]);
      if Painel <> PainelSelecionado then
        Painel.Color := $00D4D4D4;

      if Painel.Controls[0] is TSpeedButton then
      begin
        Botao := TSpeedButton(Painel.Controls[0]);
        if Botao <> BotaoSelecionado then
          Botao.Font.Color := $003A3A3A;
      end;
    end;
  end;

end;

procedure TViewCadastroProdutos.TributacaoClick(Sender: TObject);
begin//Tributacao
  inherited;
  CorAbas(Sender, Card_Tributacao);
end;

procedure TViewCadastroProdutos.BtnCadGrupoClick(Sender: TObject);
begin //mostrar o ncm
  inherited;
  pnlNCM.Left     := 20;
  pnlNCM.Top      := 364;
  pnlNCM.Visible  := True;
  edtPesquisaNCM.SetFocus;
end;

procedure TViewCadastroProdutos.GRIDDadosNCMDblClick(Sender: TObject);
begin // Escolhe o NCM
  inherited;
  EscolheNCM;
end;

procedure TViewCadastroProdutos.GRIDDadosNCMKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited; //ao precionar enter na grid
  case Key of
    VK_RETURN: begin
      EscolheNCM;
    end;
  end;
end;


procedure TViewCadastroProdutos.edtPesquisaNCMChange(Sender: TObject);
begin //Filtro do NCM
  inherited;
  GRIDDadosNCM.SearchPanel.SearchingText := '';
  if Length(Trim(edtPesquisaNCM.Text)) > 0 then
    GRIDDadosNCM.SearchPanel.SearchingText := Trim(edtPesquisaNCM.Text);

end;

procedure TViewCadastroProdutos.edtPesquisaNCMKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin //setinha para baixo
  inherited;
  case Key of
    VK_DOWN: begin
      GRIDDadosNCM.SetFocus;
    end;
  end;

end;

procedure TViewCadastroProdutos.btnFornecedoresClick(Sender: TObject);
begin//Fornecedores
  inherited;
  CorAbas(Sender, Card_Fornecedores);
end;

procedure TViewCadastroProdutos.btnFotosClick(Sender: TObject);
begin//Fotos
  inherited;
  CorAbas(Sender, Card_Fotos);
end;

procedure TViewCadastroProdutos.btnGradeClick(Sender: TObject);
begin//Grade
  inherited;
  CorAbas(Sender, Card_Grade);
end;

procedure TViewCadastroProdutos.btnLogsClick(Sender: TObject);
begin//Logs
  inherited;
  CorAbas(Sender, Card_Logs);
end;

procedure TViewCadastroProdutos.btnLoteClick(Sender: TObject);
begin//Lote ou Validade
  inherited;
  CorAbas(Sender, Card_LoteValidade);
end;

procedure TViewCadastroProdutos.btnNumSerieClick(Sender: TObject);
begin//Num. Serie
  inherited;
  CorAbas(Sender, Card_NumSerie);
end;

procedure TViewCadastroProdutos.btnPrecosClick(Sender: TObject);
begin //Preços
  inherited;
  CorAbas(Sender, Card_Precos);
end;

procedure TViewCadastroProdutos.btnReferenciasClick(Sender: TObject);
begin//Referencias
  inherited;
  CorAbas(Sender, Card_Referencias);
end;

procedure TViewCadastroProdutos.btnSairNCMClick(Sender: TObject);
begin
  inherited;
  edtPesquisaNCM.Clear;
  pnlNCM.Visible := False;
end;

procedure TViewCadastroProdutos.btnSalvarClick(Sender: TObject);
begin // salvar
  inherited;

  btnFoco.SetFocus;

  if EdtPrCompra.Field.AsFloat > edtValorVenda.Field.AsFloat then
  begin
    if FService.QRY_Aux.RecordCount > 0 then
      begin
        fnc_CriarMensagem('CADASTRO DE PRODUTOS', 'CONFIRMANDO DADOS',
              'PREÇO DE CUSTO MENOR QUE PREÇO DE VENDA. REVEJA O CUSTO.',
              ExtractFilepath(Application.ExeName) +
              '\Icones\Confirmacao.png', 'OK');
              Abort;
      end;
  end;


  //valida o codigo de barras
  if FService.QRY_Produtos.State = dsInsert then
  begin

    if Length(Trim(FService.QRY_ProdutosCODBARRAS.AsString)) > 1 then
    begin

      FService.QRY_Aux.Close;
      FService.QRY_Aux.SQL.Clear;
      FService.QRY_Aux.SQL.Add('select idproduto, codbarras from estprodutos where codbarras = :codbarra ');
      FService.QRY_Aux.Params[0].AsString := Trim(FService.QRY_ProdutosCODBARRAS.AsString);
      FService.QRY_Aux.Open();

      if FService.QRY_Aux.RecordCount > 0 then
      begin
        fnc_CriarMensagem('CADASTRO DE PRODUTOS', 'CONFIRMANDO DADOS',
              'JÁ EXISTE UM PRODUTO COM ESSE CODIGO DE BARRAS. ESCOLHA OUTRO.',
              ExtractFilepath(Application.ExeName) +
              '\Icones\Confirmacao.png', 'OK');
              Abort;
      end;

    end;

  end;

  if VerificaCampos then
  begin

    FService.QRY_Produtos.Edit;
    FService.QRY_ProdutosATIVO.AsString := 'A';
    FService.QRY_Produtos.Post;

    FService.QRY_ProdutoItens.Edit;
    FService.QRY_ProdutoItensIDPRODUTO.AsInteger := FService.QRY_ProdutosIDPRODUTO.AsInteger;
    FService.QRY_ProdutoItensIDFILIAL.AsInteger  := 1; //Pegar a Filial Logada
    FService.QRY_ProdutoItens.Post;


    fnc_CriarMensagem('CADASTRO DE PRODUTOS', 'CONFIRMANDO DADOS',
            'PRODUTO CADASTRADO COM SUCESSO!',
            ExtractFilepath(Application.ExeName) +
            '\Icones\Confirmacao.png', 'OK');


  end
  else begin
    Abort;
  end;

  if FService.QRY_MovimentoEstoqueQUANTIDADE.AsFloat > 0 then
  begin

    FService.QRY_MovimentoEstoqueIDPRODUTO.AsInteger      := FService.QRY_ProdutosIDPRODUTO.AsInteger;
    FService.QRY_MovimentoEstoqueIDPRODUTOITENS.AsInteger := FService.QRY_ProdutoItensIDPRODUTOITEM.AsInteger;
    FService.QRY_MovimentoEstoquePRODUTO.AsString         := FService.QRY_ProdutosDESCRICAO.AsString;
    FService.QRY_MovimentoEstoqueIDFILIAL.AsInteger       := 1; // Filial
    FService.QRY_MovimentoEstoqueDTAMOVIMENTO.AsDateTime  := Date;
    FService.QRY_MovimentoEstoqueHRAMOVIMENTO.AsDateTime  := Now;
    FService.QRY_MovimentoEstoque.Post;

    //Atualiza o Estoque
    FService.PUT_Estoque(
      FService.QRY_MovimentoEstoqueIDPRODUTOITENS.AsInteger,
      edtQuantidade.Field.AsFloat,
      FService.QRY_MovimentosENTRADASAIDA.AsString
    );

    FService.QRY_MovimentoEstoque.Close;
    FService.QRY_MovimentoEstoque.Open();

  end;

  Self.Close;

end;

procedure TViewCadastroProdutos.btnUnidadesClick(Sender: TObject);
begin//Unidades
  inherited;
  CorAbas(Sender, Card_Unidades);
end;

procedure TViewCadastroProdutos.CorAbas(Sender: TObject; ATab: TCard);
var
  Painel: TPanel;
  Botao: TSpeedButton;
begin

  if Sender is TSpeedButton then
  begin
    Botao  := TSpeedButton(Sender);
    Painel := TPanel(Botao.Parent);

    // Pinta o painel e o botão correspondente
    Painel.Color     := $00745A0C;
    Botao.Font.Color := clWhite;

    // Despinta os demais paineis e botões
    PintarOutrosBotoesEPaineis(Botao, Painel);

  end;

  // Muda de Aba
  CP_Produtos.ActiveCard := ATab;

end;

procedure TViewCadastroProdutos.CP_ProdutosCardChange(Sender: TObject; PrevCard, NextCard: TCard);
begin
  inherited;
  if CP_Produtos.ActiveCard <> Card_Tributacao then
    pnlNCM.Visible := False;
end;

procedure TViewCadastroProdutos.EscolheNCM;
begin   //Escolhe o NCM
  inherited;
  DS_Cadastro.DataSet.Edit;
  FService.QRY_ProdutosNCM.AsString                   := FService.QRY_NCMNCM.AsString;
  FService.QRY_ProdutosDESCRICAONCM.AsString          := FService.QRY_NCMDESCRICAO.AsString;
  FService.QRY_ProdutosCSTPISCOFINSENTRADA.AsInteger  := FService.QRY_NCMPISENTRADA.AsInteger;
  FService.QRY_ProdutosCSTPISCOFINSSAIDA.AsInteger    := FService.QRY_NCMPISSAIDA.AsInteger;
  edtPesquisaNCM.Clear;
  pnlNCM.Visible := False;
end;

procedure TViewCadastroProdutos.EdtIcmsCompraExit(Sender: TObject);
begin // sair icms compra
//  inherited;

  FService.QRY_ProdutoItens.Edit;

  //valor do frete ( saindo do percentual do frete )
//  if FService.QRY_ProdutoItensPERCFRETECOMPRA.AsFloat > 0 then
//  begin
//    if TJvDBCalcEdit(Sender).Name = 'EdtFreteCompra' then
//    begin
//      FService.QRY_ProdutoItensVLRFRETECOMPRA.AsFloat := (FService.QRY_ProdutoItensPERCFRETECOMPRA.AsFloat / 100)
//                                                          * FService.QRY_ProdutoItensVLRCUSTOINICIAL.AsFloat;
//    end;
//  end;

  //aliquota do frete ( saindo do valor do frete )
//  if FService.QRY_ProdutoItensVLRFRETECOMPRA.AsFloat > 0 then
//  begin
//    if TJvDBCalcEdit(Sender).Name = 'EdtFreteCompraRs' then
//    begin
//      FService.QRY_ProdutoItensPERCFRETECOMPRA.AsFloat := (FService.QRY_ProdutoItensVLRFRETECOMPRA.AsFloat
//                                                          / FService.QRY_ProdutoItensVLRCUSTOINICIAL.AsFloat);
//    end;
//  end;


  FService.QRY_ProdutoItensVLRCUSTOENTRADA.AsFloat :=  (FService.QRY_ProdutoItensVLRCUSTOINICIAL.AsFloat
                                                      * (FService.QRY_ProdutoItensALIQIPICOMPRA.AsFloat / 100))
                                                      + (FService.QRY_ProdutoItensVLRCUSTOINICIAL.AsFloat
                                                        * (FService.QRY_ProdutoItensPERCOUTROSCOMPRA.AsFloat / 100))
                                                      + FService.QRY_ProdutoItensVLRFRETECOMPRA.AsFloat
                                                      + FService.QRY_ProdutoItensVLRCUSTOINICIAL.AsFloat;

end;

procedure TViewCadastroProdutos.edtPercLucroExit(Sender: TObject);
var
  percmargem: double;
begin //Saindo da Margem
  inherited;
  percmargem := FService.QRY_ProdutoItensVLRPERCMARGEMLUCRO.AsFloat / 100;
  FService.QRY_ProdutoItensVLRVENDAVISTA.AsFloat :=  (FService.QRY_ProdutoItensVLRCUSTOENTRADA.AsFloat * percmargem)
                                                      + FService.QRY_ProdutoItensVLRCUSTOENTRADA.AsFloat;

  FService.QRY_ProdutoItensVLRLUCRO.AsFloat := FService.QRY_ProdutoItensVLRVENDAVISTA.AsFloat
                                                - FService.QRY_ProdutoItensVLRCUSTOENTRADA.AsFloat;

end;

procedure TViewCadastroProdutos.edtValorVendaExit(Sender: TObject);
begin // sair do valor da venda
  inherited;

  FService.QRY_ProdutoItensVLRLUCRO.AsFloat := FService.QRY_ProdutoItensVLRVENDAVISTA.AsFloat
                                                - FService.QRY_ProdutoItensVLRCUSTOENTRADA.AsFloat;

  if FService.QRY_ProdutoItensVLRLUCRO.AsFloat > 0 then
  begin
    FService.QRY_ProdutoItensVLRPERCMARGEMLUCRO.AsFloat := (FService.QRY_ProdutoItensVLRLUCRO.AsFloat
                                                           / FService.QRY_ProdutoItensVLRCUSTOENTRADA.AsFloat)
                                                           * 100;
  end;

end;

procedure TViewCadastroProdutos.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if DS_Cadastro.DataSet.State in dsEditModes then
  begin
    fnc_CriarMensagem('CADASTRO DE PRODUTOS', 'INFORMAÇÃO',
              'HÁ INFORMAÇÕES SEM SALVAR. PRIMEIRO, SALVA O CADASTRO DE PRODUTOS.',
              ExtractFilepath(Application.ExeName) +
              '\Icones\Confirmacao.png', 'OK');
              CanClose := False;
  end;
end;

procedure TViewCadastroProdutos.FormCreate(Sender: TObject);
begin //create
  inherited;
  DS_Cadastro.DataSet           := FService.QRY_Produtos;
  DS_ProdutoItem.DataSet        := FService.QRY_ProdutoItens;
  DS_Grupo.DataSet              := FService.QRY_Grupos;
  DS_SubGrupo.DataSet           := FService.Qry_SubGrupos;
  DS_Marca.DataSet              := FService.QRY_Marcas;
  DS_Fabricante.DataSet         := FService.Qry_Fabricantes;
  DS_Origem.DataSet             := FService.QRY_OrigemMercadoria;
  DS_Embalagem.DataSet          := FService.QRY_Embalagem;
  DS_Tributacao.DataSet         := FService.QRY_Tributacao;
  DS_NCM.DataSet                := FService.QRY_NCM;
  DS_Movimentos.DataSet         := FService.QRY_Movimentos;
  DS_MovimentosEstoque.DataSet  := FService.QRY_MovimentoEstoque;
end;

procedure TViewCadastroProdutos.FormShow(Sender: TObject);
var
  i, j: integer;
begin // Show
  inherited;

  CP_Produtos.ActiveCard := Card_Precos;
  FService.GET_Grupos(0);
  FService.GET_SubGrupos(0);
  FService.GET_Fabricantes(0);
  FService.GET_Marcas(0);
  FService.GET_OrigemMercadoria(0);
  FService.GET_Embalagens(0);
  FService.GET_Tributos(0);
  FService.GET_Movimentos(0);
  FService.GET_NCM('0');


  if Operacao = 'Inserir' then
  begin

    //produtos
    FService.QRY_Produtos.Open();
    FService.QRY_Produtos.Insert;
    FService.QRY_ProdutosATIVO.AsString := 'A';

    //produtos itens
    FService.QRY_ProdutoItens.Open();
    FService.QRY_ProdutoItens.Insert;

    //movimentos do estoque
    FService.QRY_MovimentoEstoque.Open();
    FService.QRY_MovimentoEstoque.Insert;

    for j := 0 to FService.QRY_ProdutoItens.FieldCount - 1 do
    begin
      if FService.QRY_ProdutoItens.Fields[j] is TBCDField then
      begin
        TBCDField(FService.QRY_ProdutoItens.Fields[j]).AsFloat := 0;
      end;
    end;

  end;

  if Operacao = 'Editar' then
  begin
    FService.GET_Produtos(IdPesquisa);
    FService.QRY_Produtos.Edit;

    FService.GET_ProdutosItens(IdPesquisa);

    //movimentos do estoque
    FService.QRY_MovimentoEstoque.Open();
    FService.QRY_MovimentoEstoque.Insert;

    if FService.QRY_ProdutoItens.RecordCount > 0 then
    begin
      FService.QRY_ProdutoItens.Edit;
      for j := 0 to FService.QRY_ProdutoItens.FieldCount - 1 do
      begin
        if FService.QRY_ProdutoItens.Fields[j] is TBCDField then
        begin
          if TBCDField(FService.QRY_ProdutoItens.Fields[j]).AsFloat = 0 then
            TBCDField(FService.QRY_ProdutoItens.Fields[j]).AsFloat := 0;
        end;
      end;
    end
    else begin
      FService.QRY_ProdutoItens.Open();
      FService.QRY_ProdutoItens.Insert;

      for j := 0 to FService.QRY_ProdutoItens.FieldCount - 1 do
      begin
        if FService.QRY_ProdutoItens.Fields[j] is TBCDField then
        begin
          TBCDField(FService.QRY_ProdutoItens.Fields[j]).AsFloat := 0;
        end;
      end;
    end;

  end;

  for i := 0 to Self.ComponentCount - 1 do
  begin
    // TJvDBCalcEdit
    if Self.Components[i] is TJvDBCalcEdit then
    begin
      TJvDBCalcEdit(Self.Components[i]).DataSource.DataSet.Edit;
      TJvDBCalcEdit(Self.Components[i]).SelectAll;

      //cor
//      TJvDBCalcEdit(Self.Components[i]).OnEnter := CorFocoEnter;
//      TJvDBCalcEdit(Self.Components[i]).OnExit  := CorFocoExit;

    end;
  end;

end;



end.
