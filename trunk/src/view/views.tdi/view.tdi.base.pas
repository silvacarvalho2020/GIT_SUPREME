unit view.tdi.base;

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
  Winapi.Windows,

  view.base;

type
  TViewBaseTDI = class(TViewBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBaseTDI: TViewBaseTDI;

implementation

{$R *.dfm}

end.
