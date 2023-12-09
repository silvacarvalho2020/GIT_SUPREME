unit view.abrircaixa.usuario;

interface

uses
  JvBaseEdits,
  JvDBControls,
  JvDBDateTimePicker,
  JvDateTimePicker,
  JvExComCtrls,
  JvExMask,
  JvToolEdit,
  RxCurrEdit,
  RxDBCtrl,
  RxDBCurrEdit,
  RxToolEdit,

  Data.DB,

  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.Buttons,
  Vcl.ComCtrls,
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

  view.base.lancamentos;

type
  TViewAbrirCaixaUsuario = class(TViewBaseLancamentos)
    PC_AbrirCaixaUsuario: TPageControl;
    tab_abrirCaixa: TTabSheet;
    tab_caixasAbertos: TTabSheet;
    edtConta: TDBEdit;
    edtSaldo: TDBEdit;
    lblConta: TLabel;
    lblSaldo: TLabel;
    lblOperador: TLabel;
    cbxOperador: TComboBox;
    lblData: TLabel;
    edtDtaAbertura: TDBDateEdit;
    lblHora: TLabel;
    lblTrocoInicial: TLabel;
    edtTrocoInicial: TJvDBCalcEdit;
    edtHraAbertura: TJvDBDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewAbrirCaixaUsuario: TViewAbrirCaixaUsuario;

implementation

{$R *.dfm}

procedure TViewAbrirCaixaUsuario.btnSalvarClick(Sender: TObject);
begin //salvar
  inherited;
  DS_Dados.DataSet.Post;
  Self.Close;
end;

procedure TViewAbrirCaixaUsuario.FormCreate(Sender: TObject);
begin // create
  inherited;
  DS_Dados.DataSet := FService.QRY_AbrirCaixa;
end;

procedure TViewAbrirCaixaUsuario.FormShow(Sender: TObject);
begin // show
  inherited;
  PC_AbrirCaixaUsuario.ActivePage := tab_abrirCaixa;
end;

end.
