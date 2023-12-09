unit UTelaBase;

interface

uses
  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.Forms,
  Vcl.Graphics,

  Winapi.Messages,
  Winapi.Windows;

type
  TFrmTelaBase = class(TForm)
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTelaBase: TFrmTelaBase;

implementation

{$R *.dfm}

procedure TFrmTelaBase.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE: begin
      Self.Close;
    end;
    VK_RETURN: begin
      perform(WM_NEXTDLGCTL,0,0);
    end;
  end;

end;

end.
