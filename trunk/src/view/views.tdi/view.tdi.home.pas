unit view.tdi.home;

interface

uses
  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Imaging.pngimage,

  Winapi.Messages,
  Winapi.Windows,

  view.base;

type
  TViewTDIHome = class(TViewBase)
    pnlBackground: TPanel;
    ImgLogoSistema: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewTDIHome: TViewTDIHome;

implementation

{$R *.dfm}

end.
