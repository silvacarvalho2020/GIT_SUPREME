unit view.parametros.pdv;

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

  Data.DB,

  System.Classes,
  System.ImageList,
  System.SysUtils,
  System.Variants,

  Vcl.Buttons,
  Vcl.ComCtrls,
  Vcl.Controls,
  Vcl.DBCtrls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Imaging.pngimage,
  Vcl.ImgList,
  Vcl.Mask,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,

  Winapi.Messages,
  Winapi.Windows,

  providers.functions,

  service.acbr.config.fb30,

  view.base.listas;

type
  TViewParametrosPDV = class(TViewBaseListas)
    PC_ParametrosPDV: TPageControl;
    tab_emissao: TTabSheet;
    cbxEmiteFiscal: TDBComboBox;
    lblEmiteFinalVenda: TLabel;
    tab_fastreport: TTabSheet;
    edtFastFileNFe: TDBEdit;
    btnPesquisaFastFile: TButton;
    OpenDialog: TOpenDialog;
    tab_certificado: TTabSheet;
    lblCaminhoCertificado: TLabel;
    lblSenhaCertificado: TLabel;
    edtCaminhoCertificado: TDBEdit;
    edtSenhaCertificado: TDBEdit;
    btnPesquisaCertificado: TButton;
    DS_Certificado: TDataSource;
    lbl: TLabel;
    edtFastFileNFCe: TDBEdit;
    btnPesquisaFastFileNFCe: TButton;
    tab_balanca: TTabSheet;
    DS_ParametrosBalanca: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    tab_clientepadrao: TTabSheet;
    edtClientePadrao: TDBEdit;
    lblCodigoClientePadrao: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnPesquisaFastFileClick(Sender: TObject);
    procedure btnPesquisaCertificadoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnPesquisaFastFileNFCeClick(Sender: TObject);
  private
    FServiceACBr: TServiceConfigACBr;
  public
    { Public declarations }
  end;

var
  ViewParametrosPDV: TViewParametrosPDV;

implementation

{$R *.dfm}

procedure TViewParametrosPDV.btnPesquisaCertificadoClick(Sender: TObject);
begin // Pesquisa o Certificado Digital
  inherited;
  DS_Certificado.DataSet.Edit;
  DS_Dados.DataSet.Edit;
  if OpenDialog.Execute then
    edtCaminhoCertificado.Field.AsString := OpenDialog.FileName;
end;

procedure TViewParametrosPDV.btnPesquisaFastFileClick(Sender: TObject);
begin // Pesquisa o Arquivo da nfe .fr3
  inherited;
  DS_Dados.DataSet.Edit;
  if OpenDialog.Execute then
    edtFastFileNFe.Field.AsString := OpenDialog.FileName;
end;

procedure TViewParametrosPDV.btnPesquisaFastFileNFCeClick(Sender: TObject);
begin // Pesquisa o Arquivo da nfce .fr3
  inherited;
  DS_Dados.DataSet.Edit;
  if OpenDialog.Execute then
    edtFastFileNFCe.Field.AsString := OpenDialog.FileName;
end;

procedure TViewParametrosPDV.btnSalvarClick(Sender: TObject);
begin //salvar
  inherited;
  DS_Certificado.DataSet.Edit;
  DS_Certificado.DataSet.Post;

  DS_Dados.DataSet.Edit;
  DS_Dados.DataSet.Post;

  DS_ParametrosBalanca.DataSet.Edit;
  DS_ParametrosBalanca.DataSet.Post;

  ShowMessage('Dados Salvos com Sucesso.');
  FAST_FILE_NFE   := FService.QRY_ParametrosPDVFASTFILE.AsString;
  FAST_FILE_NFCE  := FService.QRY_ParametrosPDVFASTFILENFCE.AsString;
end;

procedure TViewParametrosPDV.FormCreate(Sender: TObject);
begin // create
  inherited;
  DS_Dados.DataSet              := FService.QRY_ParametrosPDV;
  DS_ParametrosBalanca.DataSet  := FService.QRY_ParametrosPDVBalanca;

  FServiceACBr            := TServiceConfigACBr.Create(Self);
  DS_Certificado.DataSet  := FServiceACBr.QRY_CONFIG_CERTIFICADO;

end;

procedure TViewParametrosPDV.FormDestroy(Sender: TObject);
begin // Destroy
  inherited;
  FreeAndNil(FServiceACBr);
end;

procedure TViewParametrosPDV.FormShow(Sender: TObject);
begin // show
//  inherited;
  CardPanel_conteudo.ActiveCard := card_cadastro;
  PC_ParametrosPDV.ActivePage := tab_emissao;
  FService.GET_ParametrosPDV;
  FService.GET_ParametrosPDVBalanca(NOME_PDV);
  DS_Certificado.DataSet.Open;

end;

end.
