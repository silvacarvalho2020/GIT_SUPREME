unit service.atualiza;

interface

uses
  Data.DB,

  FireDAC.Comp.Client,
  FireDAC.Comp.Script,
  FireDAC.Comp.ScriptCommands,
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
  FireDAC.Stan.Util,
  FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait,

  System.Classes,
  System.SysUtils,

  service.conexao;

type
  TServiceAtualiza = class(TServiceConexao)
    FDScript_DDLs: TFDScript;
    FDScript_Atualizador: TFDScript;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceAtualiza: TServiceAtualiza;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TServiceAtualiza.DataModuleCreate(Sender: TObject);
var
  i: integer;
begin
  inherited;

  for i := 0 to FDScript_DDLs.SQLScripts.Count - 1 do
    FDScript_Atualizador.ExecuteScript(FDScript_DDLs.SQLScripts.Items[i].SQL);
end;

end.
