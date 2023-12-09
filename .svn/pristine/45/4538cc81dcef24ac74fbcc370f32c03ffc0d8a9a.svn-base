unit view.preco.livre;

interface

uses
  JvBaseEdits,
  JvExMask,
  JvToolEdit,

  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.Buttons,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Mask,
  Vcl.StdCtrls,

  Winapi.Messages,
  Winapi.Windows,

  view.base;

type
  TViewPrecoLivre = class(TViewBase)
    btnOk: TSpeedButton;
    edtValor: TJvCalcEdit;
    procedure btnOkClick(Sender: TObject);
    procedure edtValorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPrecoLivre: TViewPrecoLivre;

implementation

{$R *.dfm}

procedure TViewPrecoLivre.btnOkClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrOk;
end;

procedure TViewPrecoLivre.edtValorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  case Key of
    VK_RETURN: begin
      btnOk.Click;
    end;
  end;
end;

procedure TViewPrecoLivre.FormShow(Sender: TObject);
begin //Show
  inherited;
  edtValor.SetFocus;
end;

end.
