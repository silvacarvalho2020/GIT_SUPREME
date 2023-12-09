unit view.principal;

interface

uses
  ACBrBAL,
  ACBrBALSelfCheckout,
  ACBrBase,
  ACBrDevice,
  ACBrDeviceSerial,
  ACBrUtil,
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
  acPNG,
  sCurrEdit,
  sCurrencyEdit,
  sCustomComboEdit,
  sMaskEdit,
  typinfo,

  ACBrUtil.Base,
  ACBrUtil.FilesIO,

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
  Vcl.DBCtrls,
  Vcl.DBGrids,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Grids,
  Vcl.Imaging.GIFImg,
  Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage,
  Vcl.Mask,
  Vcl.Menus,
  Vcl.Samples.Spin,
  Vcl.StdCtrls,

  Winapi.Messages,
  Winapi.Windows,

  controller.conversao.pdv,

  providers.conversao,
  providers.functions,

  records.parametro.pdv.balanca,

  view.abrirCaixa,
  view.abrircaixa.usuario,
  view.acbr.fiscal,
  view.autorizacao.gerencial,
  view.base,
  view.caixa.cardex,
  view.consulta.clientes,
  view.consulta.precos,
  view.fiscal.listagem,
  view.formapgto,
  view.login,
  view.parametros.pdv,
  view.produto.nao.encontrado,
  view.telaFundo,
  view.vendas.listagem, UFuncoes, view.preco.livre, View.mensagens;

type
  TViewPrincipal = class(TViewBase)
    pnlTopo: TPanel;
    pnlLinhaRodape: TPanel;
    pnlConsultaProdutos: TPanel;
    pnlListaProdutos: TPanel;
    pnlBackground: TPanel;
    pnlTopConsultaProduto: TPanel;
    pnlTituloConsultaProdutos: TPanel;
    edtCodBarras: TEdit;
    lblCodigoBarras: TLabel;
    pnlTotalPagar: TPanel;
    TBL_itens: TFDMemTable;
    dsItens: TDataSource;
    Timer_hora: TTimer;
    PPM_itens: TPopupMenu;
    Deletartem1: TMenuItem;
    DBG_Produtos: TDBGridEh;
    edtTotalVenda: TDBEdit;
    TBL_itensTOTAL_VENDA: TAggregateField;
    imgTopoPDV: TImage;
    pnlContentTopo: TPanel;
    pnlLogoPDV: TPanel;
    imgLogoPDV: TImage;
    TBL_Venda: TFDMemTable;
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
    ACBrBAL: TACBrBAL;
    TBL_itensIDVENDAITEM: TIntegerField;
    TBL_itensIDVENDA: TIntegerField;
    TBL_itensIDPRODUTO: TIntegerField;
    TBL_itensIDPRODUTODETALHE: TIntegerField;
    TBL_itensPROD_NITEM: TIntegerField;
    TBL_itensPROD_CEAN: TStringField;
    TBL_itensPROD_XPROD: TStringField;
    TBL_itensPROD_NCM: TStringField;
    TBL_itensPROD_EXTIPI: TStringField;
    TBL_itensPROD_CFOP: TStringField;
    TBL_itensPROD_UCOM: TStringField;
    TBL_itensPROD_QCOM: TBCDField;
    TBL_itensPROD_VUNCOM: TBCDField;
    TBL_itensPROD_VPROD: TBCDField;
    TBL_itensPROD_CEANTRIB: TStringField;
    TBL_itensPROD_UTRIB: TStringField;
    TBL_itensPROD_QTRIB: TBCDField;
    TBL_itensPROD_VUNTRIB: TBCDField;
    TBL_itensPROD_VOUTRO: TBCDField;
    TBL_itensPROD_VFRETE: TBCDField;
    TBL_itensPROD_VSEG: TBCDField;
    TBL_itensPROD_VDESC: TBCDField;
    TBL_itensPROD_CEST: TStringField;
    TBL_itensPROD_INFADPROD: TStringField;
    TBL_itensPROD_CBARRA: TStringField;
    TBL_itensPROD_CBARRATRIB: TStringField;
    lblHoraSistema: TLabel;
    pnlNomeSistema: TPanel;
    lblSUPREME: TLabel;
    lblPDV: TLabel;
    pnlOperadorCaixa: TPanel;
    lblOperador: TLabel;
    lblCaixa: TLabel;
    pnlVersaoCidade: TPanel;
    lblVersao: TLabel;
    lblCidade: TLabel;
    Timer_caixaAberto: TTimer;
    pnlDadosConsultaProdutos: TPanel;
    pnlDadosRodapeConsultaProdutos: TPanel;
    pnlTitQTD: TPanel;
    lblTitQTD: TLabel;
    pnlVlrUnit: TPanel;
    lblVlrUnit: TLabel;
    edtVlrUnitario: TEdit;
    lblNomeUltimoProduto: TLabel;
    btnPegarPeso: TButton;
    pnlTotalItem: TPanel;
    lblTotalItem: TLabel;
    edtTotalItem: TEdit;
    pnlNovaQTD: TPanel;
    pnlTitValor: TPanel;
    lblTituloValor: TLabel;
    pnlBtnOk: TPanel;
    ShapeBtnOk: TShape;
    btnOkNovaQTD: TSpeedButton;
    edtNovaQTD: TJvCalcEdit;
    pnlTitListaProdutos: TPanel;
    lblTitListaProdutos: TLabel;
    pnlBackRodapeConsultarProdutos: TPanel;
    pnlTitTotalPagar: TPanel;
    lblTitSubTotal: TLabel;
    lblParametrosPDV: TLabel;
    lblConfiguracaoGeral: TLabel;
    lblDFe: TLabel;
    lblConsultarCliente: TLabel;
    lblListaVendas: TLabel;
    lblConsultaPreco: TLabel;
    lblFaturar: TLabel;
    lblCaixaCardex: TLabel;
    lblUsuario: TLabel;
    btnEmitirNFe: TButton;
    edtNumNFe: TEdit;
    edtCancelarDFe: TEdit;
    btnCancelarDFe: TButton;
    edtNumNFCe: TEdit;
    lblSair: TLabel;
    pnlDadosCliente: TPanel;
    lblTopoDadosClientes: TLabel;
    pnlNomeCliente: TPanel;
    pnlLineNomeCliente: TPanel;
    lblNomeCliente: TLabel;
    C1: TMenuItem;
    edtQTD: TJvCalcEdit;
    TBL_VendaNUM_CAIXA: TIntegerField;
    TBL_VendaVLRTROCO: TBCDField;
    procedure imgLogoEmpresaBrancaMouseEnter(Sender: TObject);
    procedure imgLogoEmpresaAmarelaMouseLeave(Sender: TObject);
    procedure imgLogoEmpresaAmarelaClick(Sender: TObject);
    procedure lblCaixaCardexClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtQTDExit(Sender: TObject);
    procedure DBG_produtosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Timer_horaTimer(Sender: TObject);
    procedure lblFaturarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Deletartem1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblConsultaPrecoClick(Sender: TObject);
    procedure lblListaVendasClick(Sender: TObject);
    procedure lblConsultarClienteClick(Sender: TObject);
    procedure lblParametrosPDVClick(Sender: TObject);
    procedure btnEmitirClick(Sender: TObject);
    procedure btnEmitirNFeClick(Sender: TObject);
    procedure btnCancelarDFeClick(Sender: TObject);
    procedure btnPegarPesoClick(Sender: TObject);
    procedure ACBrBALLePeso(Peso: Double; Resposta: AnsiString);
    procedure lblDFeClick(Sender: TObject);
    procedure lblConfiguracaoGeralClick(Sender: TObject);
    procedure DBG_ProdutosColumns6CellButtons0Click(Sender: TObject; var Handled: Boolean);
    procedure Timer_caixaAbertoTimer(Sender: TObject);
    procedure DBG_ProdutosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnOkNovaQTDClick(Sender: TObject);
    procedure edtNovaQTDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtNovaQTDEnter(Sender: TObject);
    procedure edtCodBarrasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lblSairClick(Sender: TObject);
    procedure C1Click(Sender: TObject);
  private

    FIdCliente: integer;
    FBalancaPDV: TParametroBalanca;

    procedure GetIniciaVenda(AValue: string);
    procedure GetConsultarProdutos;
    procedure CancelarVendaPDV;

    procedure ProdutoNaoLiberadoFracao;
    procedure ProdutoSemValorVenda;
    procedure ProdutoInserePrecoLivre;

    procedure WMUserSetFocus(var Msg: TMessage); message WM_USER + 1;

    function GetVersaoExe(Prog: string): string;
    procedure DeletarItemVenda;
    procedure AlterarQTDItem;

  public
    property IdCliente: integer read FIdCliente write FIdCliente;
    property BalancaPDV: TParametroBalanca read FBalancaPDV write FBalancaPDV;
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.ACBrBALLePeso(Peso: Double; Resposta: AnsiString);
var
  valid: Integer;
begin
  inherited;
  edtQTD.Text  := FormatFloat('##0.000', Peso);

//   sttPeso.Caption     := formatFloat('##0.000', Peso );
//   sttResposta.Caption := Converte( Resposta ) ;
//
//   if Peso > 0 then
//      Memo1.Lines.Text := 'Leitura OK !'
//   else
//    begin
//      valid := Trunc(ACBrBAL1.UltimoPesoLido);
//      case valid of
//         0 : Memo1.Lines.Text := 'TimeOut !'+sLineBreak+
//                                 'Coloque o produto sobre a Balança!' ;
//        -1 : Memo1.Lines.Text := 'Peso Instavel ! ' +sLineBreak+
//                                 'Tente Nova Leitura' ;
//        -2 : Memo1.Lines.Text := 'Peso Negativo !' ;
//       -10 : Memo1.Lines.Text := 'Sobrepeso !' ;
//      end;
//    end ;


end;

procedure TViewPrincipal.btnCancelarDFeClick(Sender: TObject);
var
  ViewACBrFiscal: TViewACBrFiscal;
begin  // CANCELAR NFE
  inherited;
  FService.GET_NFe(StrToIntDef(edtCancelarDFe.Text, 1));
  ViewACBrFiscal := TViewACBrFiscal.Create(Self, FService.QRY_NFe, toCancelar);
end;

procedure TViewPrincipal.btnEmitirClick(Sender: TObject);
var
  ViewACBrFiscal: TViewACBrFiscal;
begin // EMITIR NFCE
  inherited;
  FService.GET_NFCe(StrToIntDef(edtNumNFCe.Text, 1));
  ViewACBrFiscal := TViewACBrFiscal.Create(Self, FService.QRY_NFCe, FService.QRY_NFCeItens, 'NFCE');
end;

procedure TViewPrincipal.btnEmitirNFeClick(Sender: TObject);
var
  ViewACBrFiscal: TViewACBrFiscal;
begin
  inherited;

//  FService.GET_NFe(StrToIntDef(edtNumNFe.Text, 1));
//  ViewACBrFiscal := TViewACBrFiscal.Create(Self, FService.QRY_NFe, FService.QRY_NFeItens, TipoDocFiscalToStr(tfNFe));

  FService.PUT_NFe(TBL_itens, TBL_itens); //somente para testes de gravação no banco.

end;

procedure TViewPrincipal.btnPegarPesoClick(Sender: TObject);
Var
  TimeOut : Integer ;
begin
inherited;
   try
      TimeOut := 2000; // StrToInt( edtTimeOut.Text ) ;
   except
      TimeOut := 2000 ;
   end ;

   ACBrBAL.LePeso( TimeOut );

end;

procedure TViewPrincipal.C1Click(Sender: TObject);
begin  //cancelar venda
  inherited;
  CancelarVendaPDV;
end;

procedure TViewPrincipal.DBG_ProdutosColumns6CellButtons0Click(Sender: TObject; var Handled: Boolean);
begin
  inherited;
  if messagedlg('Deseja mesmo Deletar esse Ítem?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    TBL_itens.Delete;
  end;
end;

procedure TViewPrincipal.DBG_produtosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin  // deixando a cor branca
  inherited;
//  DBG_produtos.Canvas.Brush.Color := $00F8F8F8;
//  DBG_produtos.Canvas.Font.Color  := clBlack;
//  DBG_produtos.Canvas.FillRect(Rect);
//  TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TViewPrincipal.DBG_ProdutosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  case Key of

    VK_MULTIPLY:
    begin
      AlterarQTDItem;
    end;

    VK_DELETE: begin
      try
        ViewAutorizacaoGerencial := TViewAutorizacaoGerencial.Create(Self,
                                                                           'DELETANDO O ITEM',
                                                                           lblOperador.Caption,
                                                                           '01 - Deletando o Item da Venda',
                                                                           0
                                                                     );
        ViewTelaFundo.Show;
        if ViewAutorizacaoGerencial.ShowModal = mrOk then
          DeletarItemVenda;

      finally
        ViewTelaFundo.Hide;
        FreeAndNil(ViewAutorizacaoGerencial);
      end;
    end;

    VK_LEFT: begin
      edtCodBarras.SetFocus;
    end;

  end;

  if (Key = Ord('*')) and (ssShift in Shift) then
  begin
    AlterarQTDItem;
  end;

//  if (Key = VK_ADD) and (ssShift in Shift) and (ssCtrl in Shift) then
//  begin
//    // Código para lidar com a combinação Shift + * + Ctrl pressionada
//
//    ShowMessage(TBL_itens.RecNo.ToString);
//
//  end;

end;

procedure TViewPrincipal.btnOkNovaQTDClick(Sender: TObject);
begin
  inherited;

  // altera a qtd da grid
  TBL_itens.Edit;
  TBL_itensPROD_QCOM.AsFloat  := edtNovaQTD.Value;
  TBL_itensPROD_VPROD.AsFloat := TBL_itensPROD_QCOM.AsFloat * TBL_itensPROD_VUNCOM.AsFloat;
  TBL_itens.Post;

  pnlNovaQTD.Visible := False;

end;

function TViewPrincipal.GetVersaoExe(Prog: string): string;
var
 VerInfoSize: DWORD;
 VerInfo: Pointer;
 VerValueSize: DWORD;
 VerValue: PVSFixedFileInfo;
 Dummy: DWORD;
 V1, V2, V3, V4: Word;
begin  //Retorn a Versao do Exe
 try
   VerInfoSize := GetFileVersionInfoSize(PChar(Prog), Dummy);
   GetMem(VerInfo, VerInfoSize);
   GetFileVersionInfo(PChar(prog), 0, VerInfoSize, VerInfo);
   VerQueryValue(VerInfo, '', Pointer(VerValue), VerValueSize);
   with (VerValue^) do
   begin
     V1 := dwFileVersionMS shr 16;
     V2 := dwFileVersionMS and $FFFF;
     V3 := dwFileVersionLS shr 16;
     V4 := dwFileVersionLS and $FFFF;
   end;
   FreeMem(VerInfo, VerInfoSize);
   Result := Format('%d.%d.%d.%d', [v1, v2, v3, v4]);
 except
   Result := '1.0.0';
 end;
end;

procedure TViewPrincipal.DeletarItemVenda;
begin //Deleta Item da Venda
  TBL_itens.Delete;
  edtCodBarras.SetFocus;
end;

procedure TViewPrincipal.AlterarQTDItem;
begin  //Alterar a qtd do item
  ViewAutorizacaoGerencial := TViewAutorizacaoGerencial.Create(Self,
                                            'ALTERAR QUANTIDADE', 'NOME DO OPERADOR',
                                            '00 - Alterar a Quantidade de Produtos da Venda',
                                            TBL_itensPROD_QCOM.AsFloat
                                          );
  try
    ViewTelaFundo.Show;
    ViewAutorizacaoGerencial.ShowModal;
    if ViewAutorizacaoGerencial.ModalResult = mrOk then
    begin
      ViewTelaFundo.Hide;
      pnlNovaQTD.Visible    := True;
      edtNovaQTD.Value      := 1;
      edtNovaQTD.SetFocus;
    end;
  finally
    ViewTelaFundo.Hide;
    FreeAndNil(ViewAutorizacaoGerencial);
  end;

end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin  // show
  inherited;

  //Validação Homologação / Produção
//  pnlTopo.Color := $0091710F; //Produção;
//  pnlTopo.Color := $003F3AF3; //Homologação;


  lblVersao.Caption := GetVersaoExe(Application.ExeName);


  CODIGO_USUARIO := 1; // Pegar do  Login

  FService.GET_ProducaoHomologacao;
  if FService.Ambiente = 'HOMOLOGACAO' then
  begin
    lblTitSubTotal.Caption := 'HOMOLOGAÇÃO';
    pnlTitTotalPagar.Color := clRed;
  end;

  //Carrega os Parametros do Arquivo.ini
  FService.GET_ParametrosPDV;
  NOME_PDV  := '001';

  // Verifica se tem caixa aberto
  FService.GET_CaixasAbertosFechados(StatusToStr(tsAberto), CODIGO_USUARIO);
  NUM_CAIXA := FService.QRY_AbrirCaixaIDABRIRCAIXA.AsInteger;
  if NUM_CAIXA > 0 then
    lblCaixa.Caption  := 'CAIXA 00' + NUM_CAIXA.ToString;

  FAST_FILE_NFE  := FService.QRY_ParametrosPDVFASTFILE.AsString;          // Report\DANFeRetrato.fr3
  FAST_FILE_NFCE := FService.QRY_ParametrosPDVFASTFILENFCE.AsString;      // Report\Obsoletos\DANFeNFCeA4.fr3

  FService.GET_ParametrosPDVBalanca(NOME_PDV);

  FBalancaPDV.NOMEBALANCA := FService.QRY_ParametrosPDVBalancaNOMEBALANCA.AsString;
  FBalancaPDV.PORTASERIAL := FService.QRY_ParametrosPDVBalancaPORTASERIAL.AsString;
  FBalancaPDV.VELOCIDADE  := FService.QRY_ParametrosPDVBalancaVELOCIDADE.AsInteger;
  FBalancaPDV.NOMEPDV     := FService.QRY_ParametrosPDVBalancaNOMEPDV.AsString;

//  // configura porta de comunicação
//  ACBrBAL.Desativar;
//
//  ACBrBAL.Modelo           := TACBrBALModelo(1);                                    // TACBrBALModelo( cmbBalanca.ItemIndex ); ao gravar no banco deverá ser o indice que é carregado no combo...
//  ACBrBAL.Device.HandShake := TACBrHandShake(0);                                    // TACBrHandShake( cmbHandShaking.ItemIndex );
//  ACBrBAL.Device.Parity    := TACBrSerialParity(0);                                 // TACBrSerialParity( cmbParity.ItemIndex );
//  ACBrBAL.Device.Stop      := TACBrSerialStop(3);                                   // TACBrSerialStop( cmbStopBits.ItemIndex );
//  ACBrBAL.Device.Data      := 8;                                                    // StrToInt( cmbDataBits.text );
//  ACBrBAL.Device.Baud      := 9600;                                                 // StrToInt( cmbBaudRate.Text );
//  ACBrBAL.Device.Porta     := FBalancaPDV.PORTASERIAL;                              // cmbPortaSerial.Text;
//  ACBrBAL.ArqLOG           := 'edLog.Text';
//
//  // Conecta com a balança
//  ACBrBAL.Ativar;

//  if FBalancaPDV.NOMEPDV = ''  then
//  begin
//    ShowMessage('PDV Não tem Balanca.'); //para debug
//  end;

  FService.GET_Empresa(1);
  lblCidade.Caption := FService.QRY_EmpresaCIDADE.AsString + ' - ' + FService.QRY_EmpresaESTADO.AsString;

  FService.GET_ParametrosPDV;
  FIdCliente := FService.QRY_ParametrosPDVIDCLIENTEPADRAOVENDA.AsInteger; //coloca um cliente padrao...

  if FIdCliente < 1 then
    FIdCliente := 1;
  FService.GET_Clientes(FIdCliente);
  lblNomeCliente.Caption := IntToStr(FService.QRY_ConsultarClientesIDPESSOAS.AsInteger)
                          + ' - '
                          +  FService.QRY_ConsultarClientesRAZAOSOCIAL.AsString;


  lblNomeUltimoProduto.Caption := '';
  edtCodBarras.SetFocus;


//  ViewLogin := TViewLogin.Create(Self);
//  try
//
//    ViewLogin.ShowModal;
//
//  finally
//    FreeAndNil(ViewLogin);
//  end;


  //mostrando o usuario
//  lblUsuario.Caption := NOME_USUARIO;

end;

procedure TViewPrincipal.GetConsultarProdutos;
begin //Consultar Produtos - Abrir Tela
  ViewConsultaPrecos := TViewConsultaPrecos.Create(Self);
  try

    ViewConsultaPrecos.ShowModal;

    if ViewConsultaPrecos.ModalResult = mrOk then
    begin

      if ViewConsultaPrecos.FService.QRY_ConsultaPrecoVLRVENDAVISTA.AsFloat <= 0 then
      begin

        if ViewConsultaPrecos.FService.QRY_ConsultaPrecoPRECOLIVRE.AsString.Trim = 'SIM' then
        begin

          TThread.ForceQueue(nil,
          procedure
          begin
            ProdutoInserePrecoLivre;
          end);

        end
        else begin

          TThread.ForceQueue(nil,
          procedure
          begin
            ProdutoSemValorVenda;
          end);

          Abort;

        end;

      end;

      edtCodBarras.Text := IntToStr(ViewConsultaPrecos.FService.QRY_ConsultaPrecoIDPRODUTO.AsInteger);
      if Trim(ViewConsultaPrecos.FService.QRY_ConsultaPrecoCODBARRAS.AsString) <> '' then
        edtCodBarras.Text := ViewConsultaPrecos.FService.QRY_ConsultaPrecoCODBARRAS.AsString;


      GetIniciaVenda(edtCodBarras.Text);

    end;

  finally
    FreeAndNil(ViewConsultaPrecos);
  end;
end;

procedure TViewPrincipal.CancelarVendaPDV;
begin
  TBL_Venda.EmptyDataSet;
  TBL_itens.EmptyDataSet;
  edtVlrUnitario.Text           := '0';
  edtTotalItem.Text             := '0';
  lblNomeUltimoProduto.Caption  := '';
  edtCodBarras.SetFocus;
end;

procedure TViewPrincipal.ProdutoInserePrecoLivre;
begin
  ViewPrecoLivre := TViewPrecoLivre.Create(Self);
  try
    ViewPrecoLivre.ShowModal;

    if ViewPrecoLivre.ModalResult = mrOk then
    begin
      TBL_itens.Edit;
      TBL_itensPROD_VUNCOM.AsFloat := ViewPrecoLivre.edtValor.Value;
      TBL_itensPROD_VPROD.AsFloat  := TBL_itensPROD_QCOM.AsFloat * TBL_itensPROD_VUNCOM.AsFloat;
      TBL_itens.Post;
    end;

  finally
    FreeAndNil(ViewPrecoLivre);
  end;
end;

procedure TViewPrincipal.ProdutoNaoLiberadoFracao;
begin
  ViewProdutoNaoEncontrado := TViewProdutoNaoEncontrado.Create(Self);
  try
    ViewProdutoNaoEncontrado.lblInfo.Caption := 'Produto não permite vender Fracionado';
    ViewProdutoNaoEncontrado.ShowModal;
    edtCodBarras.Clear;
    edtCodBarras.SetFocus;
  finally
    FreeAndNil(ViewProdutoNaoEncontrado);
  end;
end;

procedure TViewPrincipal.ProdutoSemValorVenda;
begin
  ViewProdutoNaoEncontrado := TViewProdutoNaoEncontrado.Create(Self);
  try
    ViewProdutoNaoEncontrado.lblInfo.Caption := 'Produto sem valor de Venda';
    ViewProdutoNaoEncontrado.ShowModal;
    edtCodBarras.Clear;
    edtCodBarras.SetFocus;
  finally
    FreeAndNil(ViewProdutoNaoEncontrado);
  end;
end;

procedure TViewPrincipal.GetIniciaVenda(AValue: string);
begin //Inicia a Venda - Busca Produtos
  if Length(Trim(AValue)) > 0 then
  begin
    if NUM_CAIXA = 0 then
    begin
      ShowMessage('Não existe caixa aberto. Faça sua abertura.');
      Abort;
    end;

//    FService.GET_produtos(edtCodBarras.Text, 1);  mudei funcao debaixo...
    FService.GetProdutoBasic(edtCodBarras.Text, 2, FService.QRY_Produto);
    if FService.QRY_Produto.RecordCount < 1 then
    begin
      ViewProdutoNaoEncontrado := TViewProdutoNaoEncontrado.Create(Self);
      try
        ViewProdutoNaoEncontrado.ShowModal;
      finally
        FreeAndNil(ViewProdutoNaoEncontrado);
        edtCodBarras.Clear;
        edtCodBarras.SetFocus;
        Abort;
      end;
    end;

    //Verifica o Fracionado
    if Trim(FService.QRY_ProdutoVENDEFRACIONADO.AsString) = 'NAO' then
    begin

      if Frac(edtQTD.Value) <> 0 then
      begin

        TThread.ForceQueue(nil,
        procedure
        begin
          ProdutoNaoLiberadoFracao;
        end);

        Abort;

      end;

    end;

    //Verifica o preço livre
    if FService.QRY_ProdutoVLRVENDAVISTA.AsFloat <= 0 then
    begin
      if FService.QRY_ProdutoPRECOLIVRE.AsString.Trim = 'SIM' then
      begin

        TThread.ForceQueue(nil,
        procedure
        begin
          ProdutoInserePrecoLivre;
        end);

      end
      else begin

        TThread.ForceQueue(nil,
        procedure
        begin
          ProdutoSemValorVenda;
        end);

        Abort;

      end;
    end;


    if TBL_Venda.RecordCount < 1 then // inicia uma nova venda
    begin
      TBL_Venda.Open;
      TBL_Venda.Insert;
      TBL_VendaDTAVENDA.AsDateTime        := Date;
      TBL_VendaHRAVENDA.AsDateTime        := Time;
      TBL_VendaIDCLIENTE.AsInteger        := FIdCliente;
      TBL_VendaIDVENDEDOR.AsInteger       := 1;
      TBL_VendaVLRBRUTO.AsFloat           := 0;
      TBL_VendaVLRDESCONTO.AsFloat        := 0;
      TBL_VendaVLRLIQUIDO.AsFloat         := 0;
      TBL_VendaORIGEMVENDA.AsString       := 'PDV'; //origem da venda. Passar por parametro
      TBL_VendaNUMNFE.AsInteger           := 0;
      TBL_VendaSTATUS.AsString            := 'VENDA'; // Criar um enumerado de status
      TBL_VendaOBSERVACAO.AsString        := 'OBSERVACAO DA VENDA';
      TBL_VendaIDFILIAL.AsInteger         := 1;
      TBL_VendaIDSETOR.AsInteger          := 1;
      TBL_VendaIDTIPODOCUMENTO.AsInteger  := 1;
      TBL_Venda.Post;
    end;



    edtVlrUnitario.Text := FloatToStr(FService.QRY_ProdutoVLRVENDAVISTA.AsFloat);


    //inserindo na grid
    TBL_itens.Open;
    TBL_itens.Insert;

    TBL_itensPROD_NITEM.AsInteger       := TBL_itens.RecordCount + 1;
    TBL_itensIDPRODUTO.AsInteger        := FService.QRY_ProdutoIDPRODUTO.AsInteger;
    TBL_itensIDPRODUTODETALHE.AsInteger := FService.QRY_ProdutoIDPRODUTOITEM.AsInteger;
    TBL_itensPROD_CEAN.AsString       := FService.QRY_ProdutoCODBARRAS.AsString;
    TBL_itensPROD_XPROD.AsString      := FService.QRY_ProdutoDESCRICAO.AsString;
    TBL_itensPROD_NCM.AsString        := FService.QRY_ProdutoNCM.AsString;
    TBL_itensPROD_EXTIPI.AsString     := '';
    TBL_itensPROD_CFOP.AsString       := '5102';
    TBL_itensPROD_UCOM.AsString       := 'UN';
    TBL_itensPROD_QCOM.AsFloat        := StrToFloatDef(edtQTD.Text, 1);
    TBL_itensPROD_VUNCOM.AsFloat      := FService.QRY_ProdutoVLRVENDAVISTA.AsFloat;
    TBL_itensPROD_VPROD.AsFloat       := TBL_itensPROD_QCOM.AsFloat * TBL_itensPROD_VUNCOM.AsFloat;
    TBL_itensPROD_CEANTRIB.AsString   := FService.QRY_ProdutoCODBARRAS.AsString;
    TBL_itensPROD_UTRIB.AsString      := 'UN';
    TBL_itensPROD_QTRIB.AsFloat       := TBL_itensPROD_QCOM.AsFloat;
    TBL_itensPROD_VUNTRIB.AsFloat     := TBL_itensPROD_VUNCOM.AsFloat;
    TBL_itensPROD_VOUTRO.AsFloat      := 0;
    TBL_itensPROD_VFRETE.AsFloat      := 0;
    TBL_itensPROD_VSEG.AsFloat        := 0;
    TBL_itensPROD_VDESC.AsFloat       := 0;
    TBL_itensPROD_CEST.AsString       := FService.QRY_ProdutoCEST.AsString;
    TBL_itensPROD_INFADPROD.AsString  := '';
    TBL_itensPROD_CBARRA.AsString     := FService.QRY_ProdutoCODBARRAS.AsString;
    TBL_itensPROD_CBARRATRIB.AsString := FService.QRY_ProdutoCODBARRAS.AsString;
    TBL_itens.Post;

    lblNomeUltimoProduto.Caption := 'PRODUTO: '
                                       + TBL_itensPROD_XPROD.AsString
                                       + ' QTD: ' + TBL_itensPROD_QCOM.AsFloat.ToString;

    //limpando os edits
    edtQTD.Text         := '1';
    edtVlrUnitario.Text := Format('R$ %.2n', [TBL_itensPROD_VUNCOM.AsFloat]);
    edtTotalItem.Text   := Format('R$ %.2n', [TBL_itensPROD_VPROD.AsFloat]);

  end;

  edtCodBarras.Clear;
  edtCodBarras.SetFocus;

end;

procedure TViewPrincipal.Deletartem1Click(Sender: TObject);
begin //deletando item
  inherited;
  DeletarItemVenda;
end;

procedure TViewPrincipal.edtCodBarrasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  case Key of
    VK_RETURN: begin
      Key := 0;

      if edtCodBarras.Text = '' then
        GetConsultarProdutos;

      if edtCodBarras.Text <> '' then
      begin
        try
          GetIniciaVenda(edtCodBarras.Text);
        finally
          edtCodBarras.Clear;
          PostMessage(Handle, WM_USER + 1, 0, 0); // Mensagem personalizada para ajustar o foco
        end;
      end;

    end;
    VK_RIGHT: begin
      DBG_Produtos.SetFocus;
    end;
  end;
end;

procedure TViewPrincipal.edtNovaQTDEnter(Sender: TObject);
begin
  inherited;
  edtNovaQTD.Color := $00EBEBEB;
end;

procedure TViewPrincipal.edtNovaQTDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
    btnOkNovaQTD.Click;
end;

procedure TViewPrincipal.edtQTDExit(Sender: TObject);
begin
  inherited;
  edtCodBarras.SetFocus;
end;

procedure TViewPrincipal.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
//  inherited;

  case Key of

    VK_F10: begin
      lblFaturarClick(lblFaturar);
    end;

  end;


  if (ssCtrl in Shift)  and (Key = Ord('C')) then
  begin
    if TBL_Venda.RecordCount > 0 then
    begin

      ViewAutorizacaoGerencial := TViewAutorizacaoGerencial.Create(Self,
                                                                         'CANCELAR VENDA',
                                                                         'NOME DO OPERADOR',
                                                                         '01 - Cancelando uma Venda do PDV',
                                                                         StrToFloatDef(edtTotalVenda.Text, 0)
                                                                   );

      try
        ViewTelaFundo.Show;
        ViewAutorizacaoGerencial.ShowModal;

        if ViewAutorizacaoGerencial.ModalResult = mrOk then
        begin


          CancelarVendaPDV;

        end;

      finally
        ViewTelaFundo.Hide;
        FreeAndNil(ViewAutorizacaoGerencial);
      end;

    end;

  end;

end;

procedure TViewPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #43 then
  begin

    key := #0;
    edtQTD.SetFocus;

  end;
end;



procedure TViewPrincipal.imgLogoEmpresaAmarelaClick(Sender: TObject);
begin
  ShowMessage('Empresa');
end;

procedure TViewPrincipal.imgLogoEmpresaAmarelaMouseLeave(Sender: TObject);
begin // mouse leave
//  imgLogoEmpresaBranca.Visible  := True;
//  imgLogoEmpresaAmarela.Visible := False;

end;

procedure TViewPrincipal.imgLogoEmpresaBrancaMouseEnter(Sender: TObject);
begin // mouse enter
//  imgLogoEmpresaBranca.Visible  := False;
//  imgLogoEmpresaAmarela.Visible := True;
end;

procedure TViewPrincipal.lblCaixaCardexClick(Sender: TObject);
var
  ViewCaixaCardex : TViewCaixaCardex;
begin // caixa cardex
  inherited;

  ViewCaixaCardex := TViewCaixaCardex.Create(Self);
  try
    ViewCaixaCardex.ShowModal;
  finally
    FreeAndNil(ViewCaixaCardex);
  end;


//  CriaForm(TViewCaixaCardex, ViewCaixaCardex);

end;

procedure TViewPrincipal.lblConfiguracaoGeralClick(Sender: TObject);
var
  ViewACBrFiscal : TViewACBrFiscal;
begin // configuração geral do pdv
  inherited;

  ViewACBrFiscal := TViewACBrFiscal.Create(Self);
  try
    ViewACBrFiscal.ShowModal;
  finally
    FreeAndNil(ViewACBrFiscal);
  end;

end;

procedure TViewPrincipal.lblConsultaPrecoClick(Sender: TObject);
begin // consultar preço
  inherited;
  CriaForm(TViewConsultaPrecos, ViewConsultaPrecos);
end;

procedure TViewPrincipal.lblConsultarClienteClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin // consultar clientes
  inherited;

  ViewConsultarClientes := TViewConsultarClientes.Create(Self);
  try
    TelaFundo := TViewTelaFundo.Create(Self);

    TelaFundo.Show;
    ViewConsultarClientes.ShowModal;

    if ViewConsultarClientes.ModalResult = mrOk then
    begin

      FIdCliente             := ViewConsultarClientes.FService.QRY_ConsultarClientesIDPESSOAS.AsInteger;

      lblNomeCliente.Caption := IntToStr(ViewConsultarClientes.FService.QRY_ConsultarClientesIDPESSOAS.AsInteger)
                          + ' - '
                          +  ViewConsultarClientes.FService.QRY_ConsultarClientesRAZAOSOCIAL.AsString;




      if TBL_Venda.RecordCount > 0 then
      begin
        TBL_Venda.Edit;
        TBL_VendaIDCLIENTE.AsInteger := FIdCliente;
      end;
    end;
  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewConsultarClientes);
  end;

end;

procedure TViewPrincipal.lblDFeClick(Sender: TObject);
begin // lista de documentos fiscais
  inherited;

  ViewFiscalListagem := TViewFiscalListagem.Create(Self);
  try

    ViewFiscalListagem.ShowModal;

  finally
    FreeAndNil(ViewFiscalListagem);
  end;

end;

procedure TViewPrincipal.lblFaturarClick(Sender: TObject);
begin // faturamento
  inherited;

  //validação
  if TBL_itens.RecordCount < 1 then
    abort;

  ViewFormaPGTO := TViewFormaPGTO.Create(Self);
  try

    //=================================================================
    ViewFormaPGTO.ValorVenda    := TBL_itensTOTAL_VENDA.Value;
    ViewFormaPGTO.ValorRestante := TBL_itensTOTAL_VENDA.Value;
    ViewFormaPGTO.ValorFaturado := 0;
    //=================================================================

    ViewFormaPGTO.TBL_Venda.CopyDataSet(TBL_Venda);      //Passa uma cópia para salvar.
    ViewFormaPGTO.TBL_ItensVenda.CopyDataSet(TBL_itens); //Passa uma cópia para salvar.

    ViewTelaFundo.Show;
    ViewFormaPGTO.ShowModal;


    if ViewFormaPGTO.ModalResult = mrOk then
    begin
      TBL_Venda.EmptyDataSet; //Limpa o cabeçalho
      TBL_itens.EmptyDataSet; //Limpa os itens da venda
      edtVlrUnitario.Text := '0';
      edtTotalItem.Text   := '0';
      lblNomeUltimoProduto.Caption := '';
      edtCodBarras.SetFocus;

      //Volta o cliente padrao
      FIdCliente := 1;
      FService.GET_Clientes(FIdCliente);
      lblNomeCliente.Caption := IntToStr(FService.QRY_ConsultarClientesIDPESSOAS.AsInteger)
                          + ' - '
                          +  FService.QRY_ConsultarClientesRAZAOSOCIAL.AsString;

    end;

  finally
    ViewTelaFundo.Hide;
    FreeAndNil(ViewFormaPGTO);
  end;


end;

procedure TViewPrincipal.lblListaVendasClick(Sender: TObject);
begin // lista de vendas
  inherited;

  ViewVendasListagem := TViewVendasListagem.Create(Self);
  try

    ViewVendasListagem.ShowModal;

  finally
    FreeAndNil(ViewVendasListagem);
  end;

end;

procedure TViewPrincipal.lblParametrosPDVClick(Sender: TObject);
begin // parametros do pdv
  inherited;
  CriaForm(TViewParametrosPDV, ViewParametrosPDV);
end;

procedure TViewPrincipal.lblSairClick(Sender: TObject);
begin
  inherited;
  Application.Terminate;
end;

procedure TViewPrincipal.Timer_caixaAbertoTimer(Sender: TObject);
begin // verifica se tem caixa aberto...
  inherited;

  if FService.QRY_AbrirCaixa.RecordCount = 0 then
  begin

    Timer_caixaAberto.Enabled := False;

    ViewAbrirCaixaUsuario := TViewAbrirCaixaUsuario.Create(Self);
    try

      ViewTelaFundo.Show;
      ViewAbrirCaixaUsuario.FService.QRY_AbrirCaixa.Close;
      ViewAbrirCaixaUsuario.FService.QRY_AbrirCaixa.Open();
      ViewAbrirCaixaUsuario.FService.QRY_AbrirCaixa.Insert;
      ViewAbrirCaixaUsuario.FService.QRY_AbrirCaixaDTAABRE.AsDateTime         := Date;
      ViewAbrirCaixaUsuario.FService.QRY_AbrirCaixaHRAABRE.AsDateTime         := Now;
      ViewAbrirCaixaUsuario.FService.QRY_AbrirCaixaUSUARIOCAIXA.AsInteger     := 1; //usuario logado
      ViewAbrirCaixaUsuario.FService.QRY_AbrirCaixaNOMEUSUARIOCAIXA.AsString  := 'NOME DO USUARIO DO CAIXA';
      ViewAbrirCaixaUsuario.FService.QRY_AbrirCaixaVALORINICIAL.AsFloat       := 0;
      ViewAbrirCaixaUsuario.ShowModal;

    finally
      ViewTelaFundo.Hide;
      FreeAndNil(ViewAbrirCaixaUsuario)
    end;


    FService.GET_CaixasAbertosFechados(StatusToStr(tsAberto), CODIGO_USUARIO);
    if FService.QRY_AbrirCaixa.RecordCount > 0 then

    NUM_CAIXA         := FService.QRY_AbrirCaixaIDABRIRCAIXA.AsInteger;  // pega o numero do caixa que abriu...
    lblCaixa.Caption  := 'CAIXA 00' + NUM_CAIXA.ToString;

  end;

end;

procedure TViewPrincipal.Timer_horaTimer(Sender: TObject);
begin
  inherited;
  lblHoraSistema.Caption := TimeToStr(Time);
end;

procedure TViewPrincipal.WMUserSetFocus(var Msg: TMessage);
begin
  edtCodBarras.SetFocus;
end;

end.
