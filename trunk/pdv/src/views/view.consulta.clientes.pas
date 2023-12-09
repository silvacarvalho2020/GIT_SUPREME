unit view.consulta.clientes;

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
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Imaging.pngimage,
  Vcl.ImgList,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,

  Winapi.Messages,
  Winapi.Windows,

  view.base.listas;

type
  TViewConsultarClientes = class(TViewBaseListas)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DS_DadosStateChange(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewConsultarClientes: TViewConsultarClientes;

implementation

{$R *.dfm}

procedure TViewConsultarClientes.btnSalvarClick(Sender: TObject);
begin // selecionar
//  inherited;
  Self.ModalResult := mrOk;
end;

procedure TViewConsultarClientes.DS_DadosStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TViewConsultarClientes.FormCreate(Sender: TObject);
begin // create
  inherited;
  DS_Dados.DataSet := FService.QRY_ConsultarClientes;
end;

procedure TViewConsultarClientes.FormShow(Sender: TObject);
begin // show
  inherited;
  FService.GET_Clientes;
end;

end.
