unit view.modal.cadastro.formapagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.modal.base.cadastro, Data.DB,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, DBCtrlsEh, Vcl.Mask, Vcl.DBCtrls,
  RxToolEdit, RxCurrEdit,RxDBCurrEdit, JvExMask, JvToolEdit, JvBaseEdits,
  JvDBControls;

type
  TViewCadastroPagamento = class(TViewBaseCadastro)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    edtclientepadrao: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBComboBoxEh1: TDBComboBoxEh;
    DBComboBoxEh2: TDBComboBoxEh;
    Panel9: TPanel;
    spdgerente: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBComboBoxEh3: TDBComboBoxEh;
    Label9: TLabel;
    DBComboBoxEh4: TDBComboBoxEh;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    JvDBCalcEdit1: TJvDBCalcEdit;
    JvDBCalcEdit2: TJvDBCalcEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure spdgerenteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewCadastroPagamento: TViewCadastroPagamento;

implementation

{$R *.dfm}

uses service.cadastro, UFuncoes, view.telaFundo, view.modal.pesquisa.pessoas;

procedure TViewCadastroPagamento.btnSalvarClick(Sender: TObject);
begin
  inherited;
  FService.QRY_FormaPagamento.Post;
    Fnc_CriarMensagem('CADASTRO DA FORMA DE PAGAMENT SALVO COM SUCESSO ', 'CONFIRMANDO DADOS',
            'FORMA DE PAGAMENTO CADASTRADA COM SUCESSO !',
            ExtractFilepath(Application.ExeName) +
            '\Icones\Confirmacao.png', 'OK');
    close;
end;

procedure TViewCadastroPagamento.FormCreate(Sender: TObject);
begin
  inherited;
DS_Cadastro.DataSet           := FService.QRY_FormaPagamento;
end;

procedure TViewCadastroPagamento.FormShow(Sender: TObject);
begin
  inherited;
if Operacao = 'Inserir' then
  begin
     //PAGAMENTO
    FService.QRY_FormaPagamento.Open();
    FService.QRY_FormaPagamento.Insert;
  end;

    if Operacao = 'Editar' then
  begin
    FService.GET_FormasPagamentos(IdPesquisa);
    FService.QRY_FormaPagamento.Edit;
  end;
end;

procedure TViewCadastroPagamento.spdgerenteClick(Sender: TObject);

var
  TelaFundo: TViewTelaFundo;
begin // Cidades
  inherited;
  ViewPesquisaPessoas := TViewPesquisaPessoas.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;
    ViewPesquisaPessoas.ShowModal;

    if ViewPesquisaPessoas.ModalResult = mrOk then
    begin
     ViewCadastroPagamento.edtclientepadrao.text   := ViewPesquisaPessoas.FService.QRY_PessoasIDPESSOAS.AsString;
    end;


  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewPesquisaPessoas);
  end;
end;

end.
