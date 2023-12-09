unit view.tdi.lista.prevendas;

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

  view.tdi.base.listas;

type
  TViewListaPreVendasTDI = class(TViewBaseListasTDI)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewListaPreVendasTDI: TViewListaPreVendasTDI;

implementation

{$R *.dfm}

procedure TViewListaPreVendasTDI.FormCreate(Sender: TObject);
begin // create
  inherited;
  ViewListaPreVendasTDI := Self;
//  DS_Dados.DataSet := FService.QRY_ListaPreVendas;
end;

procedure TViewListaPreVendasTDI.FormShow(Sender: TObject);
begin // show
  inherited;
//  FService.GET_ListaPreVendas;
end;

end.
