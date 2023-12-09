unit view.base;

interface

uses
  AdvCombo,
  AdvDBComboBox,
  DBCtrlsEh,
  sCurrencyEdit,
  sToolEdit,

  System.Classes,
  System.SysUtils,
  System.Variants,

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

//  provider.imagelist,

  service.cadastro;

type
  TViewBase = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure CorFocoEnter(Sender: TObject);
    procedure CorFocoExit(Sender: TObject);
    procedure SetaPropriedade;

  published
//    FImageList: TProviderImageList;
    FService: TServiceCadastro;

  public

    CONST
      COR_FOCO        = $00EBEBEB; // $0089E6EB;
      COR_PERDER_FOCO = clWindow;

  end;

var
  ViewBase: TViewBase;

implementation

{$R *.dfm}

procedure TViewBase.CorFocoEnter(Sender: TObject);
begin //Ao receber o foco

  // TDBEdit
  if (Sender is TDBEdit) then
    (Sender as TDBEdit).Color := COR_FOCO;

  // TEdit
  if (Sender is TEdit) then
    (Sender as TEdit).Color := COR_FOCO;

  // TsDateEdit
  if (Sender is TsDateEdit) then
    (Sender as TsDateEdit).Color := COR_FOCO;

  // TsCurrencyEdit
  if (Sender is TsCurrencyEdit) then
    (Sender as TsCurrencyEdit).Color := COR_FOCO;

  // TAdvDBComboBox
  if (Sender is TAdvDBComboBox) then
    (Sender as TAdvDBComboBox).Color := COR_FOCO;

end;

procedure TViewBase.CorFocoExit(Sender: TObject);
begin //Ao perder o foco

  // TDBEdit
  if (Sender is TDBEdit) then
    (Sender as TDBEdit).Color := COR_PERDER_FOCO;

  // TEdit
  if (Sender is TEdit) then
    (Sender as TEdit).Color := COR_PERDER_FOCO;

  // TsDateEdit
  if (Sender is TsDateEdit) then
    (Sender as TsDateEdit).Color := COR_PERDER_FOCO;

  // TsCurrencyEdit
  if (Sender is TsCurrencyEdit) then
    (Sender as TsCurrencyEdit).Color := COR_PERDER_FOCO;

  // TAdvDBComboBox
  if (Sender is TAdvDBComboBox) then
    (Sender as TAdvDBComboBox).Color := COR_PERDER_FOCO;

end;

procedure TViewBase.FormCreate(Sender: TObject);
begin // create

//  SetaPropriedade;

  FService       := TServiceCadastro.Create(nil);
//  FImageList     := TProviderImageList.Create(nil);

//  FService.CODIGO_USUARIO := 1; //Código do Usuário Logado

end;

procedure TViewBase.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FService);
//  FreeAndNil(FImageList);
end;

procedure TViewBase.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE: begin
      Self.Close;
    end;
  end;
end;

procedure TViewBase.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TViewBase.SetaPropriedade;
var
  i: Integer;
begin

  for i := 0 to Self.ComponentCount - 1 do
  begin

    // TDBEdit
    if Self.Components[i] is TDBEdit then
    begin
      TDBEdit(Self.Components[i]).OnEnter := CorFocoEnter;
      TDBEdit(Self.Components[i]).OnExit  := CorFocoExit;
    end;

    // TEDit
    if Self.Components[i] is TEDit then
    begin
      TEDit(Self.Components[i]).OnEnter := CorFocoEnter;
      TEDit(Self.Components[i]).OnExit  := CorFocoExit;
    end;

    // TsDateEdit
    if Self.Components[i] is TsDateEdit then
    begin
      TsDateEdit(Self.Components[i]).OnEnter := CorFocoEnter;
      TsDateEdit(Self.Components[i]).OnExit  := CorFocoExit;
    end;

    // TsCurrencyEdit
    if Self.Components[i] is TsCurrencyEdit then
    begin
      TsCurrencyEdit(Self.Components[i]).OnEnter := CorFocoEnter;
      TsCurrencyEdit(Self.Components[i]).OnExit  := CorFocoExit;
    end;

    // TAdvDBComboBox
    if Self.Components[i] is TAdvDBComboBox then
    begin
      TAdvDBComboBox(Self.Components[i]).OnEnter := CorFocoEnter;
      TAdvDBComboBox(Self.Components[i]).OnExit  := CorFocoExit;
    end;

  end;
end;

end.
