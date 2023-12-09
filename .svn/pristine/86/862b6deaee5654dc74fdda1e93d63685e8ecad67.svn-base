unit view.caixa.sangria.suprimentos;

interface

uses
  RxCurrEdit,
  RxDBCurrEdit,
  RxToolEdit,
  sCurrEdit,
  sCurrencyEdit,
  sCustomComboEdit,
  sMaskEdit,

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
  Vcl.Imaging.pngimage,
  Vcl.Mask,
  Vcl.StdCtrls,

  Winapi.Messages,
  Winapi.Windows,

  view.base.lancamentos, providers.functions, UMensagem, UFuncoes;

type
  TViewSangriaSuprimento = class(TViewBaseLancamentos)
    pnlTopoSuprimentosSangrias: TPanel;
    rdoSuprimento: TRadioButton;
    rdoSangrias: TRadioButton;
    lblValor: TLabel;
    edtValor: TsCurrencyEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure DS_DadosStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewSangriaSuprimento: TViewSangriaSuprimento;

implementation

{$R *.dfm}

procedure TViewSangriaSuprimento.btnNovoClick(Sender: TObject);
begin // novo
  inherited;
  DS_Dados.DataSet.Open;
  DS_Dados.DataSet.Insert;
  edtValor.SetFocus;
end;

procedure TViewSangriaSuprimento.btnSalvarClick(Sender: TObject);
begin // salvar
  inherited;

  if (rdoSuprimento.Checked = False) and (rdoSangrias.Checked = False) then
  begin
    fnc_CriarMensagem('ATENÇÃO', 'CONFIRMANDO DADOS',
          'ESCOLHA UMA OPÇÃO. SUPRIMENTO OU SANGRIA',
          ExtractFilepath(Application.ExeName) +
          '\Icones\Confirmacao.png', 'OK');
    edtValor.SetFocus;
    Abort;
  end;

  if edtValor.Value <= 0 then
  begin

    if rdoSuprimento.Checked then
    begin
      fnc_CriarMensagem('SUPRIMENTO', 'CONFIRMANDO DADOS',
            'INFORMA O VALOR DO SUPRIMENTO!',
            ExtractFilepath(Application.ExeName) +
            '\Icones\Confirmacao.png', 'OK');
      edtValor.SetFocus;
      Abort;
    end;

    if rdoSangrias.Checked then
    begin
      fnc_CriarMensagem('SANGRIA', 'CONFIRMANDO DADOS',
            'INFORMA O VALOR DA SANGRIA!',
            ExtractFilepath(Application.ExeName) +
            '\Icones\Confirmacao.png', 'OK');
      edtValor.SetFocus;
      Abort;
    end;

  end;

  if FService.QRY_Caixa.State in dsEditModes then
  begin

    FService.QRY_CaixaDOCUMENTO.AsString          := '';
    FService.QRY_CaixaVLRDOCUMENTO.AsFloat        := edtValor.Value;
    FService.QRY_CaixaDTAMOVIMENTO.AsDateTime     := Date;
    FService.QRY_CaixaHRAMOVIMENTO.AsDateTime     := Now;
    FService.QRY_CaixaTIPO.AsString               := 'E';
    if rdoSangrias.Checked then
      FService.QRY_CaixaTIPO.AsString             := 'S';
    FService.QRY_CaixaIDFORMAPAGAMENTO.AsInteger  := 1; //dinheiro
    FService.QRY_CaixaNUMCAIXA.AsInteger          := NUM_CAIXA;
    FService.QRY_CaixaOBSERVACAO.AsString         := 'SUPRIMENTO';
    if rdoSangrias.Checked then
      FService.QRY_CaixaOBSERVACAO.AsString       := 'SANGRIA';

    FService.QRY_Caixa.Post;

    fnc_CriarMensagem('SUCESSO', 'CONFIRMANDO DADOS',
            'LANÇAMENTO REALIZADO COM SUCESSO.',
            ExtractFilepath(Application.ExeName) +
            '\Icones\Confirmacao.png', 'OK');

    Self.Close;

  end
  else begin
    fnc_CriarMensagem('ATENÇÃO', 'SUPREME',
            'CLICA NO BOTÃO NOVO.',
            ExtractFilepath(Application.ExeName) +
            '\Icones\Confirmacao.png', 'OK');
  end;

end;

procedure TViewSangriaSuprimento.DS_DadosStateChange(Sender: TObject);
begin
  inherited;
  ShapeBtnNovo.Brush.Color    := $00745A0C;
  ShapeBtnSalvar.Brush.Color  := $00745A0C;

  pnlBtnSalvar.Enabled     := True;
  pnlBtnNovo.Enabled       := True;

  if DS_Dados.DataSet.State in dsEditModes then
  begin
    pnlBtnNovo.Enabled       := False;
    ShapeBtnNovo.Brush.Color := $0079797B;
  end
  else begin
    pnlBtnSalvar.Enabled        := False;
    ShapeBtnSalvar.Brush.Color  := $0079797B;
  end;

end;

procedure TViewSangriaSuprimento.FormCreate(Sender: TObject);
begin // create
  inherited;
  DS_Dados.DataSet := FService.QRY_Caixa;
end;

end.
