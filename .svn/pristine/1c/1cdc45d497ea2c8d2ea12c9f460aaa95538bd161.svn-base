unit view.caixa.cardex;

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
  frxClass,
  frxDBSet,
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

  controller.conversao.pdv,

  providers.functions,

  view.abrirCaixa,
  view.base.listas,
  view.caixa.sangria.suprimentos,
  view.telaFundo;

type
  TViewCaixaCardex = class(TViewBaseListas)
    edtDtaIni: TsDateEdit;
    edtDtaFin: TsDateEdit;
    frxReport: TfrxReport;
    frxDBD_Vendas: TfrxDBDataset;
    btnAbrirCaixa: TSpeedButton;
    btnSuprimentoSangrias: TSpeedButton;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPesquisaInvokeSearch(Sender: TObject);
    procedure btnAbrirCaixaClick(Sender: TObject);
    procedure btnSuprimentoSangriasClick(Sender: TObject);
    procedure DBG_ListaDadosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewCaixaCardex: TViewCaixaCardex;

implementation

{$R *.dfm}

procedure TViewCaixaCardex.btnAbrirCaixaClick(Sender: TObject);
begin // lista de caixa
  inherited;

  ViewAbrirCaixa := TViewAbrirCaixa.Create(Self);
  try
    ViewTelaFundo.Show;
    ViewAbrirCaixa.ShowModal;
  finally
//    FService.GET_CaixasAbertosFechados(StatusToStr(tsAberto));
    NUM_CAIXA := FService.QRY_AbrirCaixaIDABRIRCAIXA.AsInteger;
    ViewTelaFundo.Hide;
    FreeAndNil(ViewAbrirCaixa);
  end;

end;

procedure TViewCaixaCardex.btnDeletarClick(Sender: TObject);
begin // deletar
//  inherited;

end;

procedure TViewCaixaCardex.btnEditarClick(Sender: TObject);
begin // editar
//  inherited;

end;

procedure TViewCaixaCardex.btnImprimirClick(Sender: TObject);
begin // imprimir
//  inherited;

  frxReport.ShowReport();

end;

procedure TViewCaixaCardex.btnNovoClick(Sender: TObject);
begin // novo
//  inherited;

end;

procedure TViewCaixaCardex.btnSuprimentoSangriasClick(Sender: TObject);
begin // sangria
  inherited;
  try
    CriaForm(TViewSangriaSuprimento, ViewSangriaSuprimento);
  finally
    edtPesquisaInvokeSearch(Sender);
  end;
end;

procedure TViewCaixaCardex.DBG_ListaDadosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin //DrawColumnCell
  inherited;

//  if DS_Dados.DataSet.FieldByName('statuscaixa').AsString = StatusToStr(tsFechado) then
//  begin
//    DBG_ListaDados.Canvas.Brush.Color := $00CBE4FE; //vermelho claro
//    DBG_ListaDados.Canvas.FillRect(Rect);
//    DBG_ListaDados.DefaultDrawDataCell(Rect, Column.Field, State);
//  end;
//
//
//  if DS_Dados.DataSet.FieldByName('statuscaixa').AsString = StatusToStr(tsAberto) then
//  begin
//    DBG_ListaDados.Canvas.Brush.Color := $00B9EEB5; //verde claro
//    DBG_ListaDados.Canvas.FillRect(Rect);
//    DBG_ListaDados.DefaultDrawDataCell(Rect, Column.Field, State);
//  end;

end;

procedure TViewCaixaCardex.edtPesquisaInvokeSearch(Sender: TObject);
begin // pesquisar
  inherited;
  FService.GET_CaixaCardex(edtDtaIni.Date, edtDtaFin.Date);
end;

procedure TViewCaixaCardex.FormCreate(Sender: TObject);
begin //create
  inherited;
  DS_Dados.DataSet      := FService.QRY_ListaCaixa;
  frxDBD_Vendas.DataSet := FService.QRY_ListaCaixa;
end;

procedure TViewCaixaCardex.FormShow(Sender: TObject);
begin // show
  inherited;
  edtDtaIni.Date := Date;
  edtDtaFin.Date := Date;
  FService.GET_CaixaCardex(edtDtaIni.Date, edtDtaFin.Date);
end;

end.
