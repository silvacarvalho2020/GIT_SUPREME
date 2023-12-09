unit view.abrirCaixa;

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
  Vcl.DBCtrls,
  Vcl.DBGrids,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Grids,
  Vcl.Imaging.pngimage,
  Vcl.ImgList,
  Vcl.Mask,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,

  Winapi.Messages,
  Winapi.Windows,

  providers.variaveis,

  view.base.listas, providers.conversao, controller.conversao.pdv;

type
  TViewAbrirCaixa = class(TViewBaseListas)
    pnlFiltroCaixa: TPanel;
    rdoAberto: TRadioButton;
    rdoFechado: TRadioButton;
    edtDtaIni: TsDateEdit;
    edtDtaFin: TsDateEdit;
    lblVlrInicial: TLabel;
    lblObservacao: TLabel;
    edtObservacao: TDBEdit;
    VistaPrazo: TAdvDBComboBox;
    lblStatusCaixa: TLabel;
    edtValorInicial: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure rdoAbertoClick(Sender: TObject);
    procedure rdoFechadoClick(Sender: TObject);
  private
    FAStatus: string;

  public
    property AStatus: string read FAStatus write FAStatus;

  end;

var
  ViewAbrirCaixa: TViewAbrirCaixa;

implementation

{$R *.dfm}

procedure TViewAbrirCaixa.btnNovoClick(Sender: TObject);
begin //novo

  // melhorar esse processo. levar em consideração o operador tambem...
//  FService.GET_CaixasAbertosFechados(StatusToStr(tsAberto));
  if FService.QRY_AbrirCaixa.RecordCount > 0 then
  begin
    NUM_CAIXA := FService.QRY_AbrirCaixaIDABRIRCAIXA.AsInteger;
    ShowMessage('Já existe um caixa aberto.');
    abort;
  end;

  inherited;
  FService.QRY_AbrirCaixaDTAABRE.AsDateTime   := Date;
  FService.QRY_AbrirCaixaHRAABRE.AsDateTime   := Date;
  FService.QRY_AbrirCaixaSTATUSCAIXA.AsString := 'ABERTO';
  FService.QRY_AbrirCaixaOBSERVACAO.AsString  := 'OBSERVACAO DO CAIXA';
  edtValorInicial.SetFocus;

end;

procedure TViewAbrirCaixa.btnSalvarClick(Sender: TObject);
begin
  inherited;
//  NUM_CAIXA := FService.QRY_AbrirCaixaABR_CODIGO.AsInteger;
  ShowMessage('Dados salvo com sucesso.');
end;

procedure TViewAbrirCaixa.FormShow(Sender: TObject);
begin // show
  inherited;
  DS_Dados.DataSet := FService.QRY_AbrirCaixa;

  edtDtaIni.Date := Date - 7;
  edtDtaFin.Date := Date;

  FAStatus := 'FECHADO';
  if rdoAberto.Checked then
    FAStatus := 'ABERTO';
  FService.GET_CaixasAbertosFechados(edtDtaIni.Date, edtDtaFin.Date, FAStatus);

end;

procedure TViewAbrirCaixa.rdoAbertoClick(Sender: TObject);
begin
  inherited;
  FAStatus := 'ABERTO';
  FService.GET_CaixasAbertosFechados(edtDtaIni.Date, edtDtaFin.Date, FAStatus);
end;

procedure TViewAbrirCaixa.rdoFechadoClick(Sender: TObject);
begin
  inherited;
  FAStatus := 'FECHADO';
  FService.GET_CaixasAbertosFechados(edtDtaIni.Date, edtDtaFin.Date, FAStatus);
end;

end.
