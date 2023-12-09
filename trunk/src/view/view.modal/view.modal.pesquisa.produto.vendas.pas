unit view.modal.pesquisa.produto.vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.modal.base.pesquisa,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, acPNG, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.DBCtrls;

type
  TViewPesquisaProdutosVenda = class(TViewBasePesquisa)
    pnlinformacoes: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPesquisaProdutosVenda: TViewPesquisaProdutosVenda;

implementation

{$R *.dfm}

procedure TViewPesquisaProdutosVenda.FormShow(Sender: TObject);
begin
  inherited;
//  DS_Dados.DataSet := FService.QRY_Aux;
  FService.GET_ProdutosVenda(0);
end;

end.
