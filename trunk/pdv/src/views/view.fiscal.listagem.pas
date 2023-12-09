unit view.fiscal.listagem;

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
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,

  Winapi.Messages,
  Winapi.Windows,

  view.base.listas, Vcl.Menus, view.acbr.fiscal, providers.conversao;

type
  TViewFiscalListagem = class(TViewBaseListas)
    edtDtaIni: TsDateEdit;
    edtDtaFin: TsDateEdit;
    rdoNFe: TRadioButton;
    rdoNFCe: TRadioButton;
    PopupMenu: TPopupMenu;
    E1: TMenuItem;
    C1: TMenuItem;
    DS_NFCe: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure rdoNFeClick(Sender: TObject);
    procedure rdoNFCeClick(Sender: TObject);
    procedure edtPesquisaInvokeSearch(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewFiscalListagem: TViewFiscalListagem;

implementation

{$R *.dfm}

procedure TViewFiscalListagem.C1Click(Sender: TObject);
var
  ViewACBrFiscal: TViewACBrFiscal;
begin // cancelar dfe
  inherited;

  if rdoNFe.Checked then
  begin
    try
      FService.GET_NFe(FService.QRY_NFeIDNFE.AsInteger);
      ViewACBrFiscal := TViewACBrFiscal.Create(Self, FService.QRY_NFe, toCancelar);
    finally
      ShowMessage('Documento cancelado com sucesso.');
    end;
  end;

//  if rdoNFCe.Checked then
//  begin
//    FService.GET_NFCe(FService.QRY_NFCeIDNFCE.AsInteger);
//    ViewACBrFiscal := TViewACBrFiscal.Create(Self, FService.QRY_NFCe, toCancelar);
//  end;



end;

procedure TViewFiscalListagem.E1Click(Sender: TObject);
var
  ViewACBrFiscal: TViewACBrFiscal;
begin // reimprimir dfe
  inherited;

  if rdoNFe.Checked then
  begin
    FService.GET_NFe(FService.QRY_NFeIDNFE.AsInteger);
    ViewACBrFiscal := TViewACBrFiscal.Create(Self, FService.QRY_NFe, toImprimirDanfe);
  end;

  if rdoNFCe.Checked then
  begin
    FService.GET_NFCe(FService.QRY_NFCeIDNFCE.AsInteger);
    ViewACBrFiscal := TViewACBrFiscal.Create(Self, FService.QRY_NFCe, toImprimirDanfe);
  end;

end;

procedure TViewFiscalListagem.edtPesquisaInvokeSearch(Sender: TObject);
begin // pesquisa
  inherited;

  // pesquisa nfe
  if rdoNFe.Checked then
  begin
    FService.GET_NFe(edtDtaIni.Date, edtDtaFin.Date);
  end;

  // pesquisa nfce
  if rdoNFCe.Checked then
  begin
    FService.GET_NFCe(edtDtaIni.Date, edtDtaFin.Date);
  end;

end;

procedure TViewFiscalListagem.FormCreate(Sender: TObject);
begin // Create
  inherited;

  DS_Dados.DataSet := FService.QRY_NFe;
  DS_NFCe.DataSet  := FService.QRY_NFCe;

end;

procedure TViewFiscalListagem.FormShow(Sender: TObject);
begin // Show
  inherited;

  edtDtaIni.Date := Date - 7;
  edtDtaFin.Date := Date;

end;

procedure TViewFiscalListagem.rdoNFCeClick(Sender: TObject);
begin // nfce
  inherited;
  DBG_ListaDados.DataSource := DS_NFCe;
end;

procedure TViewFiscalListagem.rdoNFeClick(Sender: TObject);
begin // nfe
  inherited;
  DBG_ListaDados.DataSource := DS_Dados;
end;

end.
