unit view.tdi.lista.vendas;

interface

uses
  DBAxisGridsEh,
  DBGridEh,
  DBGridEhGrouping,
  DBGridEhToolCtrls,
  DynVarsEh,
  EhLibVCL,
  GridsEh,
  JvExMask,
  JvToolEdit,
  ToolCtrlsEh,
  acPNG,

  Data.DB,

  System.Actions,
  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.ActnList,
  Vcl.Buttons,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Mask,
  Vcl.StdCtrls,
  Vcl.WinXPanels,

  Winapi.Messages,
  Winapi.Windows,

  view.modal.cadastro.vendas,
  view.tdi.base.listas;

type
  TViewListaVendasTDI = class(TViewBaseListasTDI)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewListaVendasTDI: TViewListaVendasTDI;

implementation

{$R *.dfm}

procedure TViewListaVendasTDI.btnNovoClick(Sender: TObject);
//var
//  TelaFundo: TViewTelaFundo;
begin //novo
  inherited;

  
end;

procedure TViewListaVendasTDI.FormCreate(Sender: TObject);
begin // create
  inherited;
  ViewListaVendasTDI := Self;
  DS_Dados.DataSet := FService.QRY_Vendas;
end;

procedure TViewListaVendasTDI.FormShow(Sender: TObject);
begin //show
  inherited;
  FService.GET_Vendas(0);
end;

end.
