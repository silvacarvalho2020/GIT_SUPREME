unit view.modal.cadastro.vendas;

interface

uses
  DBAxisGridsEh,
  DBGridEh,
  DBGridEhGrouping,
  DBGridEhToolCtrls,
  DynVarsEh,
  EhLibVCL,
  GridsEh,
  RxCurrEdit,
  RxToolEdit,
  ToolCtrlsEh,
  acPNG,
  sCurrEdit,
  sCurrencyEdit,
  sCustomComboEdit,
  sMaskEdit,

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
  Vcl.ImgList,
  Vcl.Mask,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,

  Winapi.Messages,
  Winapi.Windows,

  provider.imagelist,

  view.modal.base.cadastro, view.telaFundo, view.modal.cadastro.clientes, view.modal.pesquisa.produto.vendas, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  view.modal.pesquisa.pessoas, service.cadastro;

type
  TViewCadastroVendas = class(TViewBaseCadastro)
    Panel1: TPanel;
    pnlcabecalho: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtpreco: TCurrencyEdit;
    Label4: TLabel;
    Label6: TLabel;
    edtdesconto: TCurrencyEdit;
    Label7: TLabel;
    edtprecofinal: TCurrencyEdit;
    Label8: TLabel;
    edtqtd: TCurrencyEdit;
    Panel3: TPanel;
    pnlinformacoesVenda: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    edtsubtotal: TsCurrencyEdit;
    edttotal: TsCurrencyEdit;
    sCurrencyEdit3: TsCurrencyEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    pnlbotoescima: TPanel;
    pnlBtnPesquisaGenerica: TPanel;
    btnpesquisaclientes: TSpeedButton;
    edtvendedor: TEdit;
    edtcliente: TEdit;
    edtproduto: TEdit;
    Panel2: TPanel;
    SpeedButton4: TSpeedButton;
    Panel4: TPanel;
    SpeedButton5: TSpeedButton;
    pnlmenusVenda: TPanel;
    pnlbotoesbaixo1: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton10: TSpeedButton;
    Panel5: TPanel;
    SpeedButton16: TSpeedButton;
    TBL_CABECALHO: TFDMemTable;
    TBL_ITEMS: TFDMemTable;
    TBL_CABECALHOIDVENDA: TIntegerField;
    TBL_CABECALHODTAVENDA: TDateField;
    TBL_CABECALHOHRAVENDA: TTimeField;
    TBL_CABECALHOIDCLIENTE: TIntegerField;
    TBL_CABECALHOIDVENDEDOR: TIntegerField;
    TBL_CABECALHOVLRBRUTO: TBCDField;
    TBL_CABECALHOVLRDESCONTO: TBCDField;
    TBL_CABECALHOVLRLIQUIDO: TBCDField;
    TBL_CABECALHOORIGEMVENDA: TStringField;
    TBL_CABECALHONUMNFE: TIntegerField;
    TBL_CABECALHOSTATUS: TStringField;
    TBL_CABECALHOOBSERVACAO: TStringField;
    TBL_CABECALHOIDFILIAL: TIntegerField;
    TBL_CABECALHOIDSETOR: TIntegerField;
    TBL_CABECALHOIDTIPODOCUMENTO: TIntegerField;
    TBL_ITEMSIDVENDAITEM: TIntegerField;
    TBL_ITEMSIDVENDA: TIntegerField;
    TBL_ITEMSIDPRODUTO: TIntegerField;
    TBL_ITEMSIDPRODUTODETALHE: TIntegerField;
    TBL_ITEMSQTD: TBCDField;
    TBL_ITEMSVLRUNITARIO: TBCDField;
    TBL_ITEMSVLRDESCONTO: TBCDField;
    TBL_ITEMSVLRSUBTOTAL: TBCDField;
    TBL_ITEMSSERIEPRODUTO: TStringField;
    TBL_ITEMSVLRCUSTO: TBCDField;
    TBL_ITEMSCODIGOBARRAS: TStringField;
    TBL_ITEMSPESOITEM: TBCDField;
    DS_ITEMS: TDataSource;
    GRIDDados: TDBGridEh;
    SplitmenuVenda: TSplitView;
    SpeedButton9: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    TBL_ITEMSDESCRICAO: TStringField;
    edtcodproduto: TEdit;
    edtbarras: TEdit;
    Label5: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnpesquisaclientesClick(Sender: TObject);
    procedure edtdescontoExit(Sender: TObject);
    procedure edtqtdExit(Sender: TObject);
    procedure pnlinformacoesVendaClick(Sender: TObject);
    procedure pnlcabecalhoClick(Sender: TObject);
    procedure edtvendedorClick(Sender: TObject);
    procedure edtprecoClick(Sender: TObject);
    procedure edtsubtotalClick(Sender: TObject);
    procedure GRIDDadosCellClick(Column: TColumnEh);
    procedure GRIDDadosCellMouseClick(Grid: TCustomGridEh; Cell: TGridCoord; Button: TMouseButton; Shift: TShiftState; X, Y: Integer; var Processed: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    function TotalVenda : Currency;
  end;

var
  ViewCadastroVendas: TViewCadastroVendas;

implementation

{$R *.dfm}

procedure TViewCadastroVendas.btnpesquisaclientesClick(Sender: TObject);
begin
  inherited;
      ViewPesquisaPessoas := TViewPesquisaPessoas(Self);
     try

      ViewPesquisaPessoas.ShowModal;
      if ViewPesquisaPessoas.ModalResult = mrOk then
      begin
        ViewCadastroVendas.edtcliente.Text := ViewPesquisaPessoas.FService.QRY_PessoasRAZAOSOCIAL.AsString;
        edtcliente.SetFocus;
      end;

      finally
    FreeAndNil(ViewPesquisaPessoas);
    end;
end;

procedure TViewCadastroVendas.edtdescontoExit(Sender: TObject);
begin
  inherited;
 if edtqtd.Value < 1 then
   begin
     showmessage('A QUANTIDADE MINIMA E 1');
     edtqtd.SetFocus;
   end else
   begin

    edtproduto.SetFocus;
    TBL_ITEMS.open;
    TBL_ITEMS.Append;
    TBL_ITEMSIDPRODUTO.AsInteger           := strtoint(edtcodproduto.text);
    TBL_ITEMSCODIGOBARRAS.AsString         := edtbarras.text;
    TBL_ITEMSDESCRICAO.AsString            := edtproduto.text;
    TBL_ITEMSQTD.AsFloat                   := edtqtd.Value;
    TBL_ITEMSVLRUNITARIO.AsFloat           := edtpreco.value;
    TBL_ITEMSVLRDESCONTO.AsFloat           := edtdesconto.value;
    TBL_ITEMSVLRSUBTOTAL.asfloat           := edtprecofinal.value;
    TBL_ITEMS.post;
    edtproduto.text := '';
    edtsubtotal.Value := TotalVenda;
    edttotal.Value := TotalVenda;
   end;
end;

procedure TViewCadastroVendas.edtprecoClick(Sender: TObject);
begin
  inherited;
SplitmenuVenda.Opened :=  not SplitmenuVenda.Opened ;
end;

procedure TViewCadastroVendas.edtqtdExit(Sender: TObject);
var
   valor : real;
begin
  inherited;
   valor := (edtpreco.Value) * (edtqtd.Value);
   edtprecofinal.Value := valor;
end;

procedure TViewCadastroVendas.edtvendedorClick(Sender: TObject);
begin
  inherited;
SplitmenuVenda.Opened :=  not SplitmenuVenda.Opened ;
end;

procedure TViewCadastroVendas.FormCreate(Sender: TObject);
begin // create
  inherited;
  DS_Cadastro.DataSet := FService.QRY_Vendas;
end;

procedure TViewCadastroVendas.FormShow(Sender: TObject);
begin
  inherited;

  if Operacao = 'Inserir' then
  begin
    FService.QRY_Vendas.Open();
    FService.QRY_Vendas.Insert;
  end;

  if Operacao = 'Editar' then
  begin
    FService.GET_Vendas(IdPesquisa);
    FService.QRY_Vendas.Edit;
  end;


end;

procedure TViewCadastroVendas.GRIDDadosCellClick(Column: TColumnEh);
begin
  inherited;
SplitmenuVenda.Opened :=  not SplitmenuVenda.Opened ;
end;

procedure TViewCadastroVendas.GRIDDadosCellMouseClick(Grid: TCustomGridEh; Cell: TGridCoord; Button: TMouseButton; Shift: TShiftState; X, Y: Integer;
  var Processed: Boolean);
begin
  inherited;
SplitmenuVenda.Opened :=  not SplitmenuVenda.Opened ;
end;

procedure TViewCadastroVendas.pnlcabecalhoClick(Sender: TObject);
begin
  inherited;
SplitmenuVenda.Opened :=  not SplitmenuVenda.Opened ;
end;

procedure TViewCadastroVendas.pnlinformacoesVendaClick(Sender: TObject);
begin
  inherited;
SplitmenuVenda.Opened :=  not SplitmenuVenda.Opened ;
end;

procedure TViewCadastroVendas.edtsubtotalClick(Sender: TObject);
begin
  inherited;
SplitmenuVenda.Opened :=  not SplitmenuVenda.Opened ;
end;

procedure TViewCadastroVendas.SpeedButton10Click(Sender: TObject);
begin
  inherited;
   SplitmenuVenda.Opened :=  not SplitmenuVenda.Opened ;
end;

procedure TViewCadastroVendas.SpeedButton4Click(Sender: TObject);

begin
  inherited;
  ViewPesquisaProdutosVenda := TViewPesquisaProdutosVenda.Create(Self);
   try

    ViewPesquisaProdutosVenda.ShowModal;

    if ViewPesquisaProdutosVenda.ModalResult = mrOk then
    begin
//      ViewCadastroVendas.edtproduto.Text       := ViewPesquisaProdutosVenda.FService.QRY_AuxDESCRICAO.Asstring;
//      ViewCadastroVendas.edtpreco.Text         := FloatToStr(ViewPesquisaProdutosVenda.FService.QRY_AuxPRAZO.AsFloat);
//      ViewCadastroVendas.edtprecofinal.Text    := FloatToStr(ViewPesquisaProdutosVenda.FService.QRY_AuxPRAZO.AsFloat);
//      ViewCadastroVendas.edtcodproduto.Text    := inttostr(ViewPesquisaProdutosVenda.FService.QRY_AuxCODIGO.AsInteger);
//       ViewCadastroVendas.edtbarras.Text       := ViewPesquisaProdutosVenda.FService.QRY_AuxCODBARRA.AsString;
      edtqtd.SetFocus;
    end;

   finally

    FreeAndNil(ViewPesquisaProdutosVenda);
   end;
end;

procedure TViewCadastroVendas.SpeedButton5Click(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin //novo
  inherited;

 ViewCadastroClientes := TViewCadastroClientes.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;
    ViewCadastroClientes.Operacao   := 'Inserir';
    ViewCadastroClientes.ShowModal;
  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroClientes);

    FService.GET_Pessoas;

  end;

end;

function TViewCadastroVendas.TotalVenda: Currency;
var
  Count , i : Integer;
  ValorTotal : Currency;
begin
   ValorTotal := 0;
   Count := TBL_ITEMS.RecordCount;
   TBL_ITEMS.First;
   for I := 0 to Pred(count) do
   begin
   ValorTotal := ValorTotal + TBL_ITEMSVLRSUBTOTAL.AsCurrency;
   TBL_ITEMS.Next;
   end;
   Result := ValorTotal;

end;

end.
