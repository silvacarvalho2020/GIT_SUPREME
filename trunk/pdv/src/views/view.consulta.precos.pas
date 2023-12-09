unit view.consulta.precos;

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

  view.base.listas, acPNG;

type
  TViewConsultaPrecos = class(TViewBaseListas)
    pnlDadosProduto: TPanel;
    pnlDadosPreco: TPanel;
    DBG_Produtos: TDBGridEh;
    pnlPrecoGrande: TPanel;
    Label1: TLabel;
    lbl: TLabel;
    DBEdit4: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    procedure DS_DadosStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBG_ProdutosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBG_ProdutosKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewConsultaPrecos: TViewConsultaPrecos;

implementation

{$R *.dfm}

procedure TViewConsultaPrecos.btnSalvarClick(Sender: TObject);
begin
//  inherited;
  Self.ModalResult := mrOk;
end;

procedure TViewConsultaPrecos.DBG_ProdutosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  case key  of
    VK_RETURN: begin
      btnSalvar.Click;
    end;

    VK_BACK: begin
      edtPesquisa.SetFocus;
      edtPesquisa.Text      := edtPesquisa.Text;
      edtPesquisa.SelStart  := Length(edtPesquisa.Text);
    end;

    VK_UP: begin
      if DS_Dados.DataSet.RecNo = 1 then
      begin
        edtPesquisa.SetFocus;
        edtPesquisa.Text      := edtPesquisa.Text;
        edtPesquisa.SelStart  := Length(edtPesquisa.Text);
      end;
    end;

  end;

end;

procedure TViewConsultaPrecos.DBG_ProdutosKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  if key in ['A'..'Z','a'..'z', ' '] then
  begin
    edtPesquisa.SetFocus;
    edtPesquisa.Text      := edtPesquisa.Text + key;
    edtPesquisa.SelStart  := Length(edtPesquisa.Text);
  end;

end;

procedure TViewConsultaPrecos.DS_DadosStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TViewConsultaPrecos.edtPesquisaChange(Sender: TObject);
begin //pesquisa produto
  inherited;
  FService.GET_PrecosProdutos(UpperCase(edtPesquisa.Text));
end;

procedure TViewConsultaPrecos.edtPesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  case Key of
    VK_RETURN: begin
      DBG_Produtos.SetFocus;
    end;

    VK_DOWN: begin
      DBG_Produtos.SetFocus;
    end;

  end;

end;

procedure TViewConsultaPrecos.FormCreate(Sender: TObject);
begin //create
  inherited;
  DS_Dados.DataSet := FService.QRY_ConsultaPreco;
end;

procedure TViewConsultaPrecos.FormShow(Sender: TObject);
begin // show
  inherited;
  FService.GET_PrecosProdutos(UpperCase(edtPesquisa.Text));
end;

end.
