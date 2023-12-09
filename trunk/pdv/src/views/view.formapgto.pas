unit view.formapgto;

interface

uses
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
  ToolCtrlsEh,

  Data.DB,

  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.DApt.Intf,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Error,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,

  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.Buttons,
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

  Winapi.Messages,
  Winapi.Windows,

  providers.functions,

  view.base, acPNG;

type
  TViewFormaPGTO = class(TViewBase)
    pnlTopo: TPanel;
    lblTitulo: TLabel;
    pnlImgLogo: TPanel;
    imgLogoCinza: TImage;
    imgLogoAzul: TImage;
    pnlRodape: TPanel;
    pnlFormasPGTO: TPanel;
    pnlFormasEscolhidas: TPanel;
    DS_FormasPGTO_Banco: TDataSource;
    TBL_FormasPGTO_Escolhidas: TFDMemTable;
    TBL_FormasPGTO_EscolhidasID_FORMAPGTO: TIntegerField;
    TBL_FormasPGTO_EscolhidasVALOR_PGTO: TCurrencyField;
    TBL_FormasPGTO_EscolhidasNOME_FORMAPGTO: TStringField;
    TBL_FormasPGTO_EscolhidasGERAR_RECEBER: TStringField;
    TBL_FormasPGTO_EscolhidasID_CLIENTE: TIntegerField;
    dsFormasPGTOEscolhidas: TDataSource;
    pnlFechar: TPanel;
    btnFechar: TSpeedButton;
    DBG_FormasPGTO: TDBGridEh;
    pnlBtnSalvar: TPanel;
    ShapeBtnSalvar: TShape;
    btnSalvar: TSpeedButton;
    TBL_ItensVenda: TFDMemTable;
    TBL_ItensVendaTOTAL_VENDA: TAggregateField;
    TBL_Venda: TFDMemTable;
    lblSubTotal: TLabel;
    lblParcelas: TLabel;
    lblTituloRecebido: TLabel;
    lblTroco: TLabel;
    TBL_FormasPGTO_Banco: TFDMemTable;
    TBL_FormasPGTO_BancoIDPGTO: TIntegerField;
    TBL_FormasPGTO_BancoDESCRICAO: TStringField;
    TBL_FormasPGTO_BancoMOEDA: TStringField;
    TBL_FormasPGTO_BancoGERARECEBER: TStringField;
    TBL_FormasPGTO_BancoIDCLIENTEPADRAO: TIntegerField;
    TBL_FormasPGTO_BancoTIPOPGTO: TStringField;
    TBL_FormasPGTO_BancoVALOR_PROPORCAO: TCurrencyField;
    DBG_FormasEscolhidas: TDBGridEh;
    edtSubTotal: TJvCalcEdit;
    edtQtdParcelas: TJvCalcEdit;
    edtVlrRecebimento: TJvCalcEdit;
    edtVlrTroco: TJvCalcEdit;
    TBL_FormasPGTO_EscolhidasTipoPgto: TStringField;
    TBL_FormasPGTO_EscolhidasDias: TIntegerField;
    TBL_FormasPGTO_Escolhidasvencimento: TDateField;
    pnlTotalFinalVenda: TPanel;
    lblTotalFinalVenda: TLabel;
    edtTotalFinalVenda: TJvCalcEdit;
    pnlDesconto: TPanel;
    pnlPercDesconto: TPanel;
    lblDesconto: TLabel;
    edtPercDesconto: TJvCalcEdit;
    pnlValorDesconto: TPanel;
    Label1: TLabel;
    edtVlrDesconto: TJvCalcEdit;
    TBL_VendaIDVENDA: TIntegerField;
    TBL_VendaDTAVENDA: TDateField;
    TBL_VendaHRAVENDA: TTimeField;
    TBL_VendaIDCLIENTE: TIntegerField;
    TBL_VendaIDVENDEDOR: TIntegerField;
    TBL_VendaVLRBRUTO: TBCDField;
    TBL_VendaVLRDESCONTO: TBCDField;
    TBL_VendaVLRLIQUIDO: TBCDField;
    TBL_VendaORIGEMVENDA: TStringField;
    TBL_VendaNUMNFE: TIntegerField;
    TBL_VendaSTATUS: TStringField;
    TBL_VendaOBSERVACAO: TStringField;
    TBL_VendaIDFILIAL: TIntegerField;
    TBL_VendaIDSETOR: TIntegerField;
    TBL_VendaIDTIPODOCUMENTO: TIntegerField;
    TBL_VendaNUM_CAIXA: TIntegerField;
    TBL_VendaVLRTROCO: TBCDField;
    TBL_ItensVendaIDVENDAITEM: TIntegerField;
    TBL_ItensVendaIDVENDA: TIntegerField;
    TBL_ItensVendaIDPRODUTO: TIntegerField;
    TBL_ItensVendaIDPRODUTODETALHE: TIntegerField;
    TBL_ItensVendaPROD_NITEM: TIntegerField;
    TBL_ItensVendaPROD_CEAN: TStringField;
    TBL_ItensVendaPROD_XPROD: TStringField;
    TBL_ItensVendaPROD_NCM: TStringField;
    TBL_ItensVendaPROD_EXTIPI: TStringField;
    TBL_ItensVendaPROD_CFOP: TStringField;
    TBL_ItensVendaPROD_UCOM: TStringField;
    TBL_ItensVendaPROD_QCOM: TBCDField;
    TBL_ItensVendaPROD_VUNCOM: TBCDField;
    TBL_ItensVendaPROD_VPROD: TBCDField;
    TBL_ItensVendaPROD_CEANTRIB: TStringField;
    TBL_ItensVendaPROD_UTRIB: TStringField;
    TBL_ItensVendaPROD_QTRIB: TBCDField;
    TBL_ItensVendaPROD_VUNTRIB: TBCDField;
    TBL_ItensVendaPROD_VOUTRO: TBCDField;
    TBL_ItensVendaPROD_VFRETE: TBCDField;
    TBL_ItensVendaPROD_VSEG: TBCDField;
    TBL_ItensVendaPROD_VDESC: TBCDField;
    TBL_ItensVendaPROD_CEST: TStringField;
    TBL_ItensVendaPROD_INFADPROD: TStringField;
    TBL_ItensVendaPROD_CBARRA: TStringField;
    TBL_ItensVendaPROD_CBARRATRIB: TStringField;
    procedure FormShow(Sender: TObject);
    procedure lblTituloMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure DBG_FormasPGTOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dsFormasPGTOEscolhidasDataChange(Sender: TObject; Field: TField);
    procedure edtVlrRecebimentoExit(Sender: TObject);
    procedure edtPercDescontoExit(Sender: TObject);
    procedure edtPercDescontoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtVlrRecebimentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtVlrDescontoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtVlrDescontoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    FValorVenda: double;
    FValorRestante: double;
    FValorFaturado: double;
    FIdFormaPGTO: integer;

    procedure CalculaTotalVendaComDesconto(AValue: double; ANomeEdit: string);

  public
    property ValorVenda: double read FValorVenda write FValorVenda;
    property ValorRestante: double read FValorRestante write FValorRestante;
    property ValorFaturado: double read FValorFaturado write FValorFaturado;
    property IdFormaPGTO: integer read FIdFormaPGTO write FIdFormaPGTO;
  end;

var
  ViewFormaPGTO: TViewFormaPGTO;

implementation

{$R *.dfm}

procedure TViewFormaPGTO.btnFecharClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewFormaPGTO.DBG_FormasPGTOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin //enter na grid de formas de pagamentos
  inherited;
  case Key of
    VK_RETURN: begin
      FIdFormaPGTO := TBL_FormasPGTO_BancoIDPGTO.AsInteger;
      if TBL_FormasPGTO_Escolhidas.RecordCount < 1 then
      begin
        edtPercDesconto.SetFocus;
        edtPercDesconto.Tag := 1; //só sai do componente se for 0... se nao fizer isso o foco sai do componente
      end
      else begin
        edtVlrRecebimento.Clear;
        edtVlrRecebimento.Value := FValorRestante;
        edtVlrRecebimento.SetFocus;
        edtVlrRecebimento.Tag := 1; //só sai do componente se for 0... se nao fizer isso o foco sai do componente
      end;
    end;
  end;
end;

procedure TViewFormaPGTO.dsFormasPGTOEscolhidasDataChange(Sender: TObject; Field: TField);
begin //desabilida o desconto
  inherited;
  edtPercDesconto.Enabled := True;
  edtVlrDesconto.Enabled  := True;
  if TBL_FormasPGTO_Escolhidas.RecordCount > 0 then
  begin
    edtPercDesconto.Enabled := False;
    edtVlrDesconto.Enabled  := False;
  end;


  //Liberação do botão salvar
  pnlBtnSalvar.Enabled       := False;
  ShapeBtnSalvar.Brush.Color := $00969696;

  if edtTotalFinalVenda.Value = edtSubTotal.Value - edtVlrDesconto.Value then
  begin
    pnlBtnSalvar.Enabled       := True;
    ShapeBtnSalvar.Brush.Color := $00745A0C;
  end;


end;

procedure TViewFormaPGTO.edtPercDescontoExit(Sender: TObject);
begin //so deixa sair do percentual do desconto se precionar enter
  inherited;
  if edtPercDesconto.Tag > 0 then
  begin
    edtPercDesconto.SetFocus;
    Abort;
  end;

  //Calcula o desconto
  CalculaTotalVendaComDesconto(TJvCalcEdit(Sender).Value, TJvCalcEdit(Sender).Name);

  //Recalcula os valores novamente
  TBL_FormasPGTO_Banco.DisableControls;
  TBL_FormasPGTO_Banco.First;
  while not TBL_FormasPGTO_Banco.Eof do
  begin

    TBL_FormasPGTO_Banco.Edit;
    TBL_FormasPGTO_BancoVALOR_PROPORCAO.AsFloat := FValorRestante; // / FService.QRY_FormasPGTO.RecordCount;
    TBL_FormasPGTO_Banco.Post;

    TBL_FormasPGTO_Banco.Next;

  end;
  TBL_FormasPGTO_Banco.EnableControls;

  edtVlrDesconto.SetFocus;
  edtVlrDesconto.Tag := 1;

end;

procedure TViewFormaPGTO.edtPercDescontoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin //Percentual do desconto
  inherited;
  if Key = VK_RETURN then
  begin
    edtPercDesconto.Tag := 0; //Libera a saida do componente

    if TBL_FormasPGTO_Escolhidas.RecordCount < 1 then
    begin
      edtVlrDesconto.SetFocus;
      edtVlrDesconto.Tag := 1; //só sai do componente se for 0... se nao fizer isso o foco sai do componente
    end

  end;

end;

procedure TViewFormaPGTO.edtVlrDescontoExit(Sender: TObject);
begin //so deixa sair do valor do desconto se precionar enter
  inherited;

  if edtVlrDesconto.Tag > 0 then
  begin
    edtVlrDesconto.SetFocus;
    Abort;
  end;

  //Calcula o desconto
  CalculaTotalVendaComDesconto(TJvCalcEdit(Sender).Value, TJvCalcEdit(Sender).Name);
  edtVlrRecebimento.Value := FValorRestante;

  //Recalcula os valores novamente
  TBL_FormasPGTO_Banco.DisableControls;
  TBL_FormasPGTO_Banco.First;
  while not TBL_FormasPGTO_Banco.Eof do
  begin

    TBL_FormasPGTO_Banco.Edit;
    TBL_FormasPGTO_BancoVALOR_PROPORCAO.AsFloat := FValorRestante; // / FService.QRY_FormasPGTO.RecordCount;
    TBL_FormasPGTO_Banco.Post;

    TBL_FormasPGTO_Banco.Next;

  end;
  TBL_FormasPGTO_Banco.EnableControls;

  edtVlrRecebimento.Clear;
  edtVlrRecebimento.Value := FValorRestante;
  edtVlrRecebimento.SetFocus;
  edtVlrRecebimento.Tag := 1; //só sai do componente se for 0... se nao fizer isso o foco sai do componente

end;

procedure TViewFormaPGTO.edtVlrDescontoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin //Valor do desconto
  inherited;
  if Key = VK_RETURN then
    edtVlrDesconto.Tag := 0; //Libera a saida do componente
end;

procedure TViewFormaPGTO.edtVlrRecebimentoExit(Sender: TObject);
var
  ultimo_valor: double;
begin //Recebimento do dinheiro
  inherited;

   //so deixa sair do edtVlrRecebimento se precionar enter
  if edtVlrRecebimento.Tag > 0 then
  begin
    edtVlrRecebimento.SetFocus;
    Abort;
  end;

  if edtVlrRecebimento.Value > 0 then
  begin
    if FValorRestante > 0 then
    begin

      FService.GetFormasPagamentos(FIdFormaPGTO); //21/11/2023

      if edtVlrRecebimento.Value > FValorRestante then
      begin // Tem Troco!

        edtVlrTroco.Value := edtVlrRecebimento.Value - FValorRestante;
        ultimo_valor      := FValorRestante;

        FValorFaturado            := FValorVenda - edtVlrDesconto.Value;
        FValorRestante            := 0;
        edtTotalFinalVenda.Value  := FValorFaturado;

        //insere no TBL_FormasPGTO_Escolhidas
        TBL_FormasPGTO_Escolhidas.Insert;
        TBL_FormasPGTO_EscolhidasID_FORMAPGTO.AsInteger   := FService.QRY_FormasPGTOIDPGTO.AsInteger;
        TBL_FormasPGTO_EscolhidasVALOR_PGTO.AsFloat       := ultimo_valor;
        TBL_FormasPGTO_EscolhidasNOME_FORMAPGTO.AsString  := FService.QRY_FormasPGTODESCRICAO.AsString;
        TBL_FormasPGTO_EscolhidasGERAR_RECEBER.AsString   := FService.QRY_FormasPGTOGERARECEBER.AsString;
        TBL_FormasPGTO_EscolhidasID_CLIENTE.AsInteger     := FService.QRY_FormasPGTOIDCLIENTEPADRAO.AsInteger;
        TBL_FormasPGTO_EscolhidasTipoPgto.AsString        := FService.QRY_FormasPGTOTIPOPGTO.AsString;
        TBL_FormasPGTO_EscolhidasDias.AsInteger           := 0;
        TBL_FormasPGTO_Escolhidasvencimento.AsDateTime    := Date;
        TBL_FormasPGTO_Escolhidas.Post;

        //Recalcula os valores novamente
        TBL_FormasPGTO_Banco.DisableControls;
        TBL_FormasPGTO_Banco.First;
        while not TBL_FormasPGTO_Banco.Eof do
        begin

          TBL_FormasPGTO_Banco.Edit;
          TBL_FormasPGTO_BancoVALOR_PROPORCAO.AsFloat := 0;
          TBL_FormasPGTO_Banco.Post;

          TBL_FormasPGTO_Banco.Next;

        end;
        TBL_FormasPGTO_Banco.EnableControls;

        DBG_formasPGTO.SetFocus;

      end
      else begin


        FValorFaturado            := FValorFaturado + edtVlrRecebimento.Value;
        FValorRestante            := (FValorVenda - edtVlrDesconto.Value) - FValorFaturado;
        edtTotalFinalVenda.Value  := FValorFaturado;

        //insere no TBL_FormasPGTO_Escolhidas
        TBL_FormasPGTO_Escolhidas.Insert;
        TBL_FormasPGTO_EscolhidasID_FORMAPGTO.AsInteger   := FService.QRY_FormasPGTOIDPGTO.AsInteger;
        TBL_FormasPGTO_EscolhidasVALOR_PGTO.AsFloat       := edtVlrRecebimento.Value;
        TBL_FormasPGTO_EscolhidasNOME_FORMAPGTO.AsString  := FService.QRY_FormasPGTODESCRICAO.AsString;
        TBL_FormasPGTO_EscolhidasGERAR_RECEBER.AsString   := FService.QRY_FormasPGTOGERARECEBER.AsString;
        TBL_FormasPGTO_EscolhidasID_CLIENTE.AsInteger     := FService.QRY_FormasPGTOIDCLIENTEPADRAO.AsInteger;
        TBL_FormasPGTO_EscolhidasTipoPgto.AsString        := FService.QRY_FormasPGTOTIPOPGTO.AsString;
        TBL_FormasPGTO_EscolhidasDias.AsInteger           := 0;
        TBL_FormasPGTO_Escolhidasvencimento.AsDateTime    := Date;
        TBL_FormasPGTO_Escolhidas.Post;

        edtVlrRecebimento.Clear;

        //Recalcula os valores novamente
        TBL_FormasPGTO_Banco.DisableControls;
        TBL_FormasPGTO_Banco.First;
        while not TBL_FormasPGTO_Banco.Eof do
        begin

          TBL_FormasPGTO_Banco.Edit;
          TBL_FormasPGTO_BancoVALOR_PROPORCAO.AsFloat := FValorRestante; // / FService.QRY_FormasPGTO.RecordCount;
          TBL_FormasPGTO_Banco.Post;

          TBL_FormasPGTO_Banco.Next;

        end;
        TBL_FormasPGTO_Banco.EnableControls;

        DBG_formasPGTO.SetFocus;

      end;
    end;
  end;

end;

procedure TViewFormaPGTO.edtVlrRecebimentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin //valor do recebimento
  inherited;
  if Key = VK_RETURN then
    edtVlrRecebimento.Tag := 0; //Libera a saida do componente
end;

procedure TViewFormaPGTO.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin //key down
  inherited;
  case key of
    VK_F10: begin
      if FValorRestante = 0 then
        btnSalvar.Click;
    end;
  end;
end;

procedure TViewFormaPGTO.FormShow(Sender: TObject);
begin // show
  inherited;

  FService.GetFormasPagamentos;

  TBL_FormasPGTO_Banco.Close;
  TBL_FormasPGTO_Banco.Open;

  FService.QRY_FormasPGTO.DisableControls;
  FService.QRY_FormasPGTO.First;
  while not FService.QRY_FormasPGTO.Eof do
  begin

    TBL_FormasPGTO_Banco.Insert;
    TBL_FormasPGTO_BancoIDPGTO.AsInteger        := FService.QRY_FormasPGTOIDPGTO.AsInteger;
    TBL_FormasPGTO_BancoDESCRICAO.AsString      := FService.QRY_FormasPGTODESCRICAO.AsString;
    TBL_FormasPGTO_BancoMOEDA.AsString          := FService.QRY_FormasPGTOMOEDA.AsString;
    TBL_FormasPGTO_BancoGERARECEBER.AsString    := FService.QRY_FormasPGTOGERARECEBER.AsString;
    TBL_FormasPGTO_BancoTIPOPGTO.AsString       := FService.QRY_FormasPGTOTIPOPGTO.AsString;
    TBL_FormasPGTO_BancoVALOR_PROPORCAO.AsFloat := FValorVenda; // / FService.QRY_FormasPGTO.RecordCount;
    TBL_FormasPGTO_Banco.Post;

    FService.QRY_FormasPGTO.Next;

  end;

  FService.QRY_FormasPGTO.EnableControls;

  DBG_formasPGTO.SetFocus;

  //===================================================
  edtSubTotal.Value    := FValorVenda;
  edtQtdParcelas.Value := 1;

  if TBL_FormasPGTO_Escolhidas.RecordCount > 0 then
    TBL_FormasPGTO_Escolhidas.EmptyDataSet;
  TBL_FormasPGTO_Escolhidas.Close;
  TBL_FormasPGTO_Escolhidas.Open;


end;

procedure TViewFormaPGTO.lblTituloMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin  // mover o formulario sem bordas
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TViewFormaPGTO.btnSalvarClick(Sender: TObject);
begin  //salvar
  inherited;

  //salvando a venda

  if (edtSubTotal.Value - edtTotalFinalVenda.Value) > 0 then
  begin
    TBL_Venda.Edit;
    TBL_VendaVLRDESCONTO.AsFloat := edtSubTotal.Value - edtTotalFinalVenda.Value;
    TBL_VendaVLRLIQUIDO.AsFloat  := edtTotalFinalVenda.Value;
    TBL_Venda.Post;
  end;

  if edtVlrTroco.Value > 0 then
  begin
    TBL_Venda.Edit;
    TBL_VendaVLRTROCO.AsFloat := edtVlrTroco.Value;
    TBL_Venda.Post;
  end;

  FService.PUT_Venda(TBL_Venda, TBL_ItensVenda);

  TBL_FormasPGTO_Escolhidas.First;
  while not TBL_FormasPGTO_Escolhidas.Eof do
  begin

    // gravando o caixa
    FService.PUT_Caixa('E', 'VENDA PDV N. ' + IntToStr(FService.NumVenda) + ' - ' + TBL_FormasPGTO_EscolhidasNOME_FORMAPGTO.AsString,
                                 TBL_FormasPGTO_Escolhidasvalor_pgto.AsFloat,
                                 TBL_FormasPGTO_Escolhidasid_formapgto.AsInteger,
                                 NUM_CAIXA );

    // gravando o receber
//    if TBL_FormasPGTO_Escolhidasgerar_receber.AsString =  'S' then
//    begin
//
//      FService.PUT_receber(IntToStr(FService.NumVenda) + '-' + IntToStr(TBL_FormasPGTO_EscolhidasID_FORMAPGTO.AsInteger),
//                            TBL_FormasPGTO_EscolhidasID_CLIENTE.AsInteger,
//                            TBL_FormasPGTO_EscolhidasVALOR_PGTO.AsFloat);
//
//    end;


    TBL_FormasPGTO_Escolhidas.Next;

  end;

  //salvando a NFC-e / NF-e
  FService.GET_ParametrosPDV;
  if FService.QRY_ParametrosPDVEMITEFISCALFINALVENDA.AsString.Trim = 'SIM' then
    FService.PUT_NFCe(TBL_FormasPGTO_Escolhidas, TBL_ItensVenda);  // TBL_FormasPGTO_Escolhidas foi só pra teste.
                                                      // tem que passar o cabeçalho da nota


  FService.GET_ItemVenda(FService.NumVenda);
  FService.GET_FormasPGTOVenda(FService.NumVenda);
  FService.GET_VendedorVenda(TBL_VendaIDVENDEDOR.AsInteger);
  FService.GET_Clientes(TBL_VendaIDCLIENTE.AsInteger);

  FService.frxReport.ShowReport();

  Self.ModalResult := mrOk;
end;

procedure TViewFormaPGTO.CalculaTotalVendaComDesconto(AValue: double; ANomeEdit: string);
begin //calcula o total da venda com o desconto

  if AValue > 0 then
  begin
    if ANomeEdit = 'edtVlrDesconto' then  //Valor do Desconto
    begin
      edtPercDesconto.Value := (edtVlrDesconto.Value / FValorVenda) * 100;
    end;

    if ANomeEdit = 'edtPercDesconto' then //Percentual do Desconto
    begin
      edtVlrDesconto.Value := (edtPercDesconto.Value / 100) * FValorVenda;
    end;

    FValorRestante := FValorVenda - edtVlrDesconto.Value;

  end;

end;

end.
