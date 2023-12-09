unit provider.imagelist;

interface

uses
  System.Classes,
  System.ImageList,
  System.SysUtils,
  System.Variants,

  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.ImgList,

  Winapi.Messages,
  Winapi.Windows;

type
  TProviderImageList = class(TForm)
    ImageList_16: TImageList;
    ImageList_32: TImageList;
    ImageList_48: TImageList;
    ImageList_24: TImageList;
    ImageList_36: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProviderImageList: TProviderImageList;

implementation

{$R *.dfm}

end.
