unit service.conexao;

interface

uses
  Classe.conexao,

  Data.DB,

  FireDAC.Comp.Client,
  FireDAC.Comp.UI,
  FireDAC.Phys,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Async,
  FireDAC.Stan.Def,
  FireDAC.Stan.Error,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Pool,
  FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait,

  System.Classes,
  System.IniFiles,
  System.SysUtils,

  Vcl.Dialogs, Conexao;

type
  TServiceConexao = class(TDataModule)
    FDConn: TFDConnection;
    FBDriverLink: TFDPhysFBDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    procedure DataModuleCreate(Sender: TObject);
  private

  public
    conexao: TConexao;

  end;

var
  ServiceConexao: TServiceConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TServiceConexao.DataModuleCreate(Sender: TObject);
begin
  inherited;
  conexao := TConexao.Create(FDConn);
  conexao.Fnc_conectar_banco_dados;

end;

end.
