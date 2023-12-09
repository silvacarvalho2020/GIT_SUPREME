unit view.tdi.lista.faturamento;

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
  TViewListaFaturamentoTDI = class(TViewBaseListasTDI)
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewListaFaturamentoTDI: TViewListaFaturamentoTDI;

implementation

{$R *.dfm}

procedure TViewListaFaturamentoTDI.FormCreate(Sender: TObject);
begin // create
  inherited;
  ViewListaFaturamentoTDI := Self;
//  DS_Dados.DataSet := FService.QRY_ListaFaturamento;
end;

procedure TViewListaFaturamentoTDI.FormShow(Sender: TObject);
begin // show
  inherited;
//  FService.GET_Faturamento;
end;

end.
