unit ULayout;

interface

uses
  IniFiles,

  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.Buttons,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.StdCtrls,

  Winapi.Messages,
  Winapi.Windows;

type
  TFrmLayout = class(TForm)
    PnLayout: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Btn1: TSpeedButton;
    Btn2: TSpeedButton;
    Btn3: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure Btn1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
  private
    FCorBtnConfirma: String;
    FCorSistema: String;
    FCorBotoes: String;
    { Private declarations }
  public
    procedure AlterarCores;

    Property CorSistema: String Read FCorSistema Write FCorSistema;
    Property CorBtnConfirma: String Read FCorBtnConfirma Write FCorBtnConfirma;
    Property CorBotoes: String Read FCorBotoes Write FCorBotoes;

    { Public declarations }
  end;

var
  // CorSistema, CorBtnConfirma, CorBotoes : String;
  FrmLayout: TFrmLayout;

implementation

{$R *.dfm}
{ TFrmLayout }

procedure TFrmLayout.AlterarCores;
var
  ini: TInifile;
  Inifile: String;
begin
  Inifile := ExtractFilePath(Application.ExeName) + '\Configuracao.ini';
  ini := TInifile.create(Inifile);
  if not fileexists(Inifile) then
  begin
    ini.WriteString('Cores', 'CorSistema', '$00F0A300');
    ini.WriteString('Cores', 'CorBtnConfirma', '$00F0A300');
    ini.WriteString('Cores', 'CorBotoes', '$00F0A300');

    showmessage('Arquivo Criado com SUCESSO!');

  end;

  ini.FREE;
end;

procedure TFrmLayout.Btn1Click(Sender: TObject);
begin
  CorSistema := '$00F0A300';
  CorBtnConfirma := 'clSilver';
  CorBotoes := 'clSilver';

  AlterarCores;

end;

procedure TFrmLayout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmLayout := Nil;
end;

procedure TFrmLayout.FormResize(Sender: TObject);
begin
  PnLayout.Left := Round((FrmLayout.width - PnLayout.width) / 2);
  PnLayout.Top := Round((FrmLayout.Height - PnLayout.Height) / 2);

end;

procedure TFrmLayout.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

end.
