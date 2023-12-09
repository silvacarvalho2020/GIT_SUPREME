unit view.base.listas;

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

  System.Actions,
  System.Classes,
  System.ImageList,
  System.SysUtils,
  System.Variants,

  Vcl.ActnList,
  Vcl.Buttons,
  Vcl.Controls,
  Vcl.DBGrids,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Grids,
  Vcl.Imaging.pngimage,
  Vcl.ImgList,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,

  Winapi.Messages,
  Winapi.Windows,

  view.base;


type
  TViewBaseListas = class(TViewBase)
    pnlTopo: TPanel;
    pnlRodape: TPanel;
    pnlLinhaFundo: TPanel;
    CardPanel_conteudo: TCardPanel;
    pnlImgLogo: TPanel;
    imgLogoAzul: TImage;
    imgLogoCinza: TImage;
    lblTitulo: TLabel;
    pnlFechar: TPanel;
    btnFechar: TSpeedButton;
    card_pesquisa: TCard;
    card_cadastro: TCard;
    pnlFiltroPesquisa: TPanel;
    pnlPesquisar: TPanel;
    edtPesquisa: TSearchBox;
    pnlFiltro: TPanel;
    ImageList_24: TImageList;
    DS_Dados: TDataSource;
    pnlFiltroCadastro: TPanel;
    btnVoltar: TSpeedButton;
    lblTituloCadastro: TLabel;
    DBG_ListaDados: TDBGridEh;
    pnlBtnDeletar: TPanel;
    ShapeBtnDeletar: TShape;
    btnDeletar: TSpeedButton;
    pnlBtnEditar: TPanel;
    ShapeBtnEditar: TShape;
    btnEditar: TSpeedButton;
    pnlBtnImprimir: TPanel;
    ShapeBtnImprimir: TShape;
    btnImprimir: TSpeedButton;
    pnlBtnNovo: TPanel;
    ShapeBtnNovo: TShape;
    btnNovo: TSpeedButton;
    pnlBtnCancelar: TPanel;
    ShapeBtnCancelar: TShape;
    btnCancelar: TSpeedButton;
    pnlBtnSalvar: TPanel;
    ShapeBtnSalvar: TShape;
    btnSalvar: TSpeedButton;
    procedure imgLogoAzulMouseEnter(Sender: TObject);
    procedure imgLogoCinzaMouseLeave(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure DS_DadosStateChange(Sender: TObject);
    procedure lblTituloMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
  private

  public


  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

procedure TViewBaseListas.btnCancelarClick(Sender: TObject);
begin // cancelar
  inherited;
  DS_Dados.DataSet.Cancel;
end;

procedure TViewBaseListas.btnDeletarClick(Sender: TObject);
begin //deletar
  inherited;

end;

procedure TViewBaseListas.btnEditarClick(Sender: TObject);
begin // editar
  inherited;
  CardPanel_conteudo.ActiveCard := card_cadastro;
  DS_Dados.DataSet.Edit;
end;

procedure TViewBaseListas.btnFecharClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewBaseListas.btnImprimirClick(Sender: TObject);
begin //imprimir
  inherited;

end;

procedure TViewBaseListas.btnNovoClick(Sender: TObject);
begin // novo
  inherited;
  CardPanel_conteudo.ActiveCard := card_cadastro;
  DS_Dados.DataSet.Insert;
end;

procedure TViewBaseListas.btnSalvarClick(Sender: TObject);
begin // salvar
  inherited;
  DS_Dados.DataSet.Post;
end;

procedure TViewBaseListas.btnVoltarClick(Sender: TObject);
begin // voltar para pesquisa
  inherited;
  CardPanel_conteudo.ActiveCard := card_pesquisa;
end;

procedure TViewBaseListas.DS_DadosStateChange(Sender: TObject);
begin //botoes do sistema
  inherited;

  btnNovo.Enabled         := not (DS_Dados.State in [dsInsert, dsEdit]);
  btnEditar.Enabled       := btnNovo.Enabled and (DS_Dados.DataSet.RecordCount > 0);
  btnSalvar.Enabled       := DS_Dados.State in [dsInsert, dsEdit];
  btnCancelar.Enabled     := btnSalvar.Enabled;
  btnImprimir.Enabled     := btnEditar.Enabled;

end;

procedure TViewBaseListas.edtPesquisaChange(Sender: TObject);
begin // pesquisa
  inherited;
  DBG_ListaDados.SearchPanel.SearchingText := '';
  if Length(edtPesquisa.Text) > 0 then
    DBG_ListaDados.SearchPanel.SearchingText := Trim(UpperCase(edtPesquisa.Text));
end;

procedure TViewBaseListas.FormShow(Sender: TObject);
begin // show
  inherited;
  CardPanel_conteudo.ActiveCard := card_pesquisa;
end;

procedure TViewBaseListas.imgLogoAzulMouseEnter(Sender: TObject);
begin
  inherited;
  imgLogoAzul.Visible  := False;
  imgLogoCinza.Visible := True;
end;

procedure TViewBaseListas.imgLogoCinzaMouseLeave(Sender: TObject);
begin
  inherited;
  imgLogoAzul.Visible  := True;
  imgLogoCinza.Visible := False;
end;

procedure TViewBaseListas.lblTituloMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin  // mover o formulario sem bordas
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.
