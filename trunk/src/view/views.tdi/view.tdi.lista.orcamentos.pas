unit view.tdi.lista.orcamentos;

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
  TViewListaOrcamentosTDI = class(TViewBaseListasTDI)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewListaOrcamentosTDI: TViewListaOrcamentosTDI;

implementation

{$R *.dfm}

procedure TViewListaOrcamentosTDI.FormCreate(Sender: TObject);
begin // create
  inherited;
  ViewListaOrcamentosTDI := Self;
//  DS_Dados.DataSet := FService.QRY_ListaOrcamentos;
end;

procedure TViewListaOrcamentosTDI.FormShow(Sender: TObject);
begin// show
  inherited;
//  FService.GET_ListaOrcamentos;
end;

end.
