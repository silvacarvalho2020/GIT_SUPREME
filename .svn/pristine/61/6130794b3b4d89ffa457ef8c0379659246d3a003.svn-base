unit DMAntigo;

interface

uses
  

  Data.Bind.Components,
  Data.Bind.ObjectScope,
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

  REST.Client,
  REST.Response.Adapter,
  REST.Types,

  System.Classes,
  System.SysUtils;

type
  TDataModuleAntigo = class(TDataModule)
    FDConnection: TFDConnection;
    DriverFB: TFDPhysFBDriverLink;
    FDCursor: TFDGUIxWaitCursor;
    Cores: TFDQuery;
    SISTEMA: TStringField;
    BTNCONFIRMAR: TStringField;
    BTNBOTOES: TStringField;
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    TabCep: TFDMemTable;
    RESTClientCNPJ: TRESTClient;
    RESTRequestCNPJ: TRESTRequest;
    RESTResponseCNPJ: TRESTResponse;
    TabCNPJ: TFDMemTable;
    DSAdapterCNPJ: TRESTResponseDataSetAdapter;
    TabCliente: TFDQuery;
    TabClienteIDCLIENTE: TIntegerField;
    TabClienteRAZAOSOCIAL: TStringField;
    TabClienteFANTASIA: TStringField;
    TabClienteENDERECO: TStringField;
    TabClienteNUMERO: TStringField;
    TabClienteBAIRRO: TStringField;
    TabClienteCEP: TStringField;
    TabClienteROTA: TIntegerField;
    TabClienteCOMPLEMENTO: TStringField;
    TabClienteCIDADE: TIntegerField;
    TabClienteTIPOPESSOA: TStringField;
    TabClienteCPF: TStringField;
    TabClienteCNPJ: TStringField;
    TabClienteRG: TStringField;
    TabClienteINSESTADUAL: TStringField;
    TabClienteTIPOINSCRICAO: TIntegerField;
    TabClienteINSMUNICIPAL: TStringField;
    TabClienteINSSUFRAMA: TStringField;
    TabClienteEMAIL: TStringField;
    TabClienteTELEFONE: TStringField;
    TabClienteCELULAR: TStringField;
    TabClienteVENDEDOR: TIntegerField;
    TabClienteOBSERVACAO: TStringField;
    TabClienteFOTO: TStringField;
    TabClienteATIVO: TStringField;
    TabClienteREFREFERENCIA1: TStringField;
    TabClienteREFREFERENCIA2: TStringField;
    TabClienteREFTELEFONE1: TStringField;
    TabClienteREFESTADOCIVIL: TStringField;
    TabClienteREFNATURALIDADE: TStringField;
    TabClienteENTREGANOME: TStringField;
    TabClienteENTREGAENDERECO: TStringField;
    TabClienteENTREGANUMERO: TStringField;
    TabClienteENTREGABAIRRO: TStringField;
    TabClienteENTREGACEP: TStringField;
    TabClienteENTREGACOMPLEMENTO: TStringField;
    TabClienteENTREGACIDADE: TIntegerField;
    TabClienteENTREGATELEFONE: TStringField;
    TabClienteCOBRANCANOME: TStringField;
    TabClienteCOBRANCAENDERECO: TStringField;
    TabClienteCOBRANCANUMERO: TStringField;
    TabClienteCOBRANCABAIRRO: TStringField;
    TabClienteCOBRANCACEP: TStringField;
    TabClienteCOBRANCACOMPLEMENTO: TStringField;
    TabClienteCOBRANCATELEFONE: TStringField;
    TabClienteCOBRANCACIDADE: TIntegerField;
    TabClienteREFTELEFONE2: TStringField;
    TabClienteSPCSITUACAO: TStringField;
    TabClienteGRUPOCLIENTES: TIntegerField;
    TabClienteUSUARIOALTERACAO: TIntegerField;
    TabClienteUSUARIOCADASTRO: TIntegerField;
    TabClienteDATADECADASTRO: TDateField;
    TabClienteULTIMAALTERACAO: TDateField;
    TabClienteSPCDATARETIRADA: TDateField;
    TabClienteSPCDATAREGISTRO: TDateField;
    TabClienteDATANASCIMENTO: TDateField;
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
  private

  public


  end;

var
  DataModuleAntigo: TDataModuleAntigo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}





{$R *.dfm}

end.
