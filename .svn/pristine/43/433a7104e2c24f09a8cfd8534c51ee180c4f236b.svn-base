unit view.modal.cadastro.ncm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.modal.base.cadastro, Data.DB,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, JvExMask,
  JvToolEdit, JvBaseEdits, JvDBControls, DBCtrlsEh;

type
  TViewCadastroNCM = class(TViewBaseCadastro)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    JvDBCalcEdit1: TJvDBCalcEdit;
    JvDBCalcEdit2: TJvDBCalcEdit;
    JvDBCalcEdit3: TJvDBCalcEdit;
    JvDBCalcEdit4: TJvDBCalcEdit;
    Label9: TLabel;
    Label12: TLabel;
    JvDBCalcEdit5: TJvDBCalcEdit;
    JvDBCalcEdit6: TJvDBCalcEdit;
    JvDBCalcEdit7: TJvDBCalcEdit;
    JvDBCalcEdit8: TJvDBCalcEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBCheckBoxEh1: TDBCheckBoxEh;
    Label17: TLabel;
    DBEdit3: TDBEdit;
    Label18: TLabel;
    DBEdit4: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewCadastroNCM: TViewCadastroNCM;

implementation

{$R *.dfm}

uses service.cadastro, UFuncoes;

procedure TViewCadastroNCM.btnSalvarClick(Sender: TObject);
begin
  inherited;
      FService.QRY_Filial.Post;
    Fnc_CriarMensagem('CADASTRO DO NCM SALVO COM SUCESSO ', 'CONFIRMANDO DADOS',
            'NCM CADASTRADO COM SUCESSO!',
            ExtractFilepath(Application.ExeName) +
            '\Icones\Confirmacao.png', 'OK');
    close;

end;

procedure TViewCadastroNCM.FormShow(Sender: TObject);
begin
  inherited;

    DS_Cadastro.DataSet  := FService.QRY_NCM;
    FService.QRY_NCM.Open();

if Operacao = 'Inserir' then
  begin
     //FILIAL
    FService.QRY_NCM.Open();
    FService.QRY_NCM.Insert;
  end;

   if Operacao = 'Editar' then
  begin
   FService.GET_NCM(IdPesquisa.ToString);
    FService.QRY_NCM.Edit;
  end;
end;

end.
