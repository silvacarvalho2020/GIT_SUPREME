unit service.conexao;

interface

uses
  Classe.conexao,

  Data.DB,

  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.UI,
  FireDAC.DApt,
  FireDAC.DApt.Intf,
  FireDAC.DatS,
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
  FireDAC.Stan.Param,
  FireDAC.Stan.Pool,
  FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait,

  System.Classes,
  System.IniFiles,
  System.SysUtils,

  Vcl.Forms,

  service.base;

type
  TServiceConexao = class(TServiceBase)
    FDConn: TFDConnection;
    FBDriverLink: TFDPhysFBDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    QRY_Usuarios: TFDQuery;
    QRY_UsuariosUCIDUSER: TIntegerField;
    QRY_UsuariosUCUSERNAME: TStringField;
    QRY_UsuariosUCLOGIN: TStringField;
    QRY_UsuariosUCPASSWORD: TStringField;
    QRY_UsuariosUCPASSEXPIRED: TStringField;
    QRY_UsuariosUCUSEREXPIRED: TIntegerField;
    QRY_UsuariosUCUSERDAYSSUN: TIntegerField;
    QRY_UsuariosUCEMAIL: TStringField;
    QRY_UsuariosUCPRIVILEGED: TIntegerField;
    QRY_UsuariosUCTYPEREC: TStringField;
    QRY_UsuariosUCPROFILE: TIntegerField;
    QRY_UsuariosUCKEY: TStringField;
    QRY_UsuariosUCINATIVE: TIntegerField;
    QRY_UsuariosUCIMAGE: TMemoField;
    procedure DataModuleCreate(Sender: TObject);
  private

  public
    conexao: TConexao;

    // ================= Procedures ====================
    procedure GetUsuarios;
  end;

var
  ServiceConexao: TServiceConexao;

implementation

uses
  Conexao;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TServiceConexao.DataModuleCreate(Sender: TObject);
begin

  inherited;
  conexao := TConexao.Create(FDConn);
  conexao.Fnc_conectar_banco_dados;

end;

procedure TServiceConexao.GetUsuarios;
begin //Carrega todos os Usuários do Sistema
  QRY_usuarios.Close;
  QRY_usuarios.SQL.Clear;
  QRY_usuarios.SQL.Add('select * from UCTABUSERS where uctyperec = :uctyperec order by uciduser');
  QRY_usuarios.Params[0].AsString := 'U';
  QRY_usuarios.Open();
end;

end.
