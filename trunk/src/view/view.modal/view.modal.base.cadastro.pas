unit view.modal.base.cadastro;

interface

uses
  AdvCombo,
  AdvDBComboBox,
  JvDBControls,
  JvExMask,
  JvMaskEdit,
  JvToolEdit,
  UFuncoes,
  UTelaBase,

  Data.DB,

  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.Buttons,
  Vcl.Controls,
  Vcl.DBCtrls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Mask,
  Vcl.StdCtrls,

  Winapi.Messages,
  Winapi.Windows,

  view.base;

type
  TViewBaseCadastro = class(TViewBase)
    pnlTopo: TPanel;
    pnlRodapeCadastro: TPanel;
    pnlBtnFechar: TPanel;
    btnFechar: TSpeedButton;
    pnlDadosTitulo: TPanel;
    pnlLineTitulo: TPanel;
    pnlInfoTitulo: TPanel;
    lblNomeSistema: TLabel;
    DS_Cadastro: TDataSource;
    pnlBtnCancelar: TPanel;
    ShapeBtnCancelar: TShape;
    btnCancelar: TSpeedButton;
    pnlBtnSalvar: TPanel;
    ShapeBtnSalvar: TShape;
    btnSalvar: TSpeedButton;
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnFecharClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    

  published


    function VerificaCampos: boolean;

  public


  end;

var
  ViewBaseCadastro: TViewBaseCadastro;

implementation

{$R *.dfm}

procedure TViewBaseCadastro.btnFecharClick(Sender: TObject);
begin //fechar
  inherited;
  Self.Close;
end;

procedure TViewBaseCadastro.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if DS_Cadastro.DataSet.State in dsEditModes then
    DS_Cadastro.DataSet.Cancel;
end;

procedure TViewBaseCadastro.pnlTopoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const // move o form sem as bordas
   sc_DragMove = $f012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

function TViewBaseCadastro.VerificaCampos: boolean;
var
  i, j: Integer;
begin // Verifica Campos em Branco que são Requerids

  Result := True;
  for i := 0 to DS_Cadastro.DataSet.FieldCount - 1 do
  begin
    if DS_Cadastro.DataSet.Fields[i].Required then
    begin
      if (DS_Cadastro.DataSet.Fields[i].isNull) or (DS_Cadastro.DataSet.Fields[i].asString = '') then
      begin

        fnc_CriarMensagem('AVISO DO SISTEMA', 'ATENÇÃO',
          'O CAMPO: "'+ DS_Cadastro.DataSet.Fields[i].DisplayLabel
           + '" É OBRIGATÓRIO. POR FAVOR, PREENCHA.',
          ExtractFilepath(Application.ExeName) +
          '\Icones\Confirmacao.png', 'OK');

        for j := 0 to Self.ComponentCount - 1 do
        begin

          {TDBEdit}
          if Self.Components[j] is TDBEdit then
          begin
            if DS_Cadastro.DataSet.Fields[i].FieldName = TDBEdit(Self.Components[j]).DataField  then
            begin
//              TDBEdit(Self.Components[j]).SetFocus;
              TDBEdit(Self.Components[j]).Color := clRed;
            end;
          end;

          {TJvDBMaskEdit}
          if Self.Components[j] is TJvDBMaskEdit then
          begin
            if DS_Cadastro.DataSet.Fields[i].FieldName = TJvDBMaskEdit(Self.Components[j]).DataField  then
            begin
//              TJvDBMaskEdit(Self.Components[j]).SetFocus;
              TJvDBMaskEdit(Self.Components[j]).Color := clRed;
            end;
          end;

          {TAdvDBComboBox}
          if Self.Components[j] is TAdvDBComboBox then
          begin
            if DS_Cadastro.DataSet.Fields[i].FieldName = TAdvDBComboBox(Self.Components[j]).DataField  then
            begin
//              TAdvDBComboBox(Self.Components[j]).SetFocus;
//              TAdvDBComboBox(Self.Components[j]).Color := clRed;
            end;
          end;

        end;

        Result := False;
        break;

      end;
    end;
  end;

end;

procedure TViewBaseCadastro.btnCancelarClick(Sender: TObject);
begin// cancelar
  inherited;
  DS_Cadastro.DataSet.Cancel;
  Self.ModalResult := mrCancel;
end;

end.
