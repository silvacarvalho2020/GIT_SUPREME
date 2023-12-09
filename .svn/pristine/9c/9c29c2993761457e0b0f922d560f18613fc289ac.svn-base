{ **************************************************************************** }
{ Projeto: Componentes User Control ShowDelphi Edition                         }
{ Biblioteca multiplataforma de componentes Delphi para o controle de usuários }
{                                                                              }
{ Baseado nos pacotes Open Source User Control 2.31 RC1                        }
{
Autor da versão Original: Rodrigo Alves Cordeiro
Colaboradores da versão original
Alexandre Oliveira Campioni - alexandre.rural@netsite.com.br
Bernard Grandmougin
Carlos Guerra
Daniel Wszelaki
Everton Ramos [BS2 Internet]
Francisco Dueñas - fduenas@flashmail.com
Germán H. Cravero
Luciano Almeida Pimenta [ClubeDelphi.net]
Luiz Benevenuto - luiz@siffra.com
Luiz Fernando Severnini
Peter van Mierlo
Rodolfo Ferezin Moreira - rodolfo.fm@bol.com.br
Rodrigo Palhano (WertherOO)
Ronald Marconi
Sergiy Sekela (Dr.Web)
Stefan Nawrath
Vicente Barros Leonel [ Fknyght ]
*******************************************************************************}
{ Versão ShowDelphi Edition                                                    }
{                                                                              }
{ Direitos Autorais Reservados (c) 2015   Giovani Da Cruz                      }
{                                                                              }
{ Colaboradores nesse arquivo:                                                 }
{                                                                              }
{ Você pode obter a última versão desse arquivo na pagina do projeto           }
{ User Control ShowDelphi Edition                                              }
{ Componentes localizado em http://infussolucoes.github.io/usercontrol-sd/     }
{                                                                              }
{ Esta biblioteca é software livre; você pode redistribuí-la e/ou modificá-la  }
{ sob os termos da Licença Pública Geral Menor do GNU conforme publicada pela  }
{ Free Software Foundation; tanto a versão 2.1 da Licença, ou (a seu critério) }
{ qualquer versão posterior.                                                   }
{                                                                              }
{ Esta biblioteca é distribuída na expectativa de que seja útil, porém, SEM    }
{ NENHUMA GARANTIA; nem mesmo a garantia implícita de COMERCIABILIDADE OU      }
{ ADEQUAÇÃO A UMA FINALIDADE ESPECÍFICA. Consulte a Licença Pública Geral Menor}
{ do GNU para mais detalhes. (Arquivo LICENÇA.TXT ou LICENSE.TXT)              }
{                                                                              }
{ Você deve ter recebido uma cópia da Licença Pública Geral Menor do GNU junto }
{ com esta biblioteca; se não, escreva para a Free Software Foundation, Inc.,  }
{ no endereço 59 Temple Street, Suite 330, Boston, MA 02111-1307 USA.          }
{ Você também pode obter uma copia da licença em:                              }
{ http://www.opensource.org/licenses/lgpl-license.php                          }
{                                                                              }
{                                                                              }
{ Comunidade Show Delphi - www.showdelphi.com.br                               }
{                                                                              }
{ Giovani Da Cruz  -  giovani@infus.inf.br  -  www.infus.inf.br                }
{                                                                              }
{ ****************************************************************************** }
{ ******************************************************************************
  |* Historico
  |*
  |* 01/07/2015: Giovani Da Cruz
  |*  - Criação e distribuição da Primeira Versao ShowDelphi
  ******************************************************************************* }
unit LoginWindow_U;
interface

uses
  Buttons,
  Classes,
  ComCtrls,
  Controls,
  DB,
  Dialogs,
  ExtCtrls,
  Forms,
  Graphics,
  Messages,
  StdCtrls,
  SysUtils,
  UCBase,
  Variants,
  acPNG,
  math,

  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.DApt,
  FireDAC.DApt.Intf,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Async,
  FireDAC.Stan.Error,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,

  Vcl.Imaging.pngimage,

  service.conexao;

type
  TfrmLoginWindow = class(TForm)
    PTop: TPanel;
    ImgTop: TImage;
    PLeft: TPanel;
    imgLeft: TImage;
    PBottom: TPanel;
    ImgBottom: TImage;
    pnlBackground: TPanel;
    StatusBar: TStatusBar;
    pnlLogoSupreme: TPanel;
    imgLogoSupreme: TImage;
    pnlDadosLogin: TPanel;
    PLogin: TPanel;
    LbUsuario: TLabel;
    LbSenha: TLabel;
    lbEsqueci: TLabel;
    EditSenha: TEdit;
    btOK: TBitBtn;
    BtCancela: TBitBtn;
    pnlIconeLogin: TPanel;
    pnlDadosLoginInterno: TPanel;
    imgLogoLogin: TImage;
    pnlIfoLogin: TPanel;
    lblSiteSupreme: TLabel;
    EditUsuario: TComboBox;
    pnlBtnMeuOk: TPanel;
    ShapeBtnMeuOk: TShape;
    btnMeuOk: TSpeedButton;
    pnlBtnMeuCancelar: TPanel;
    ShapeBtnMeuCancelar: TShape;
    btnMeuCancelar: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtCancelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditUsuariossChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure BotoesClickVisualizacao(Sender: TObject);
    procedure btOKClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure lblSiteSupremeMouseEnter(Sender: TObject);
    procedure lblSiteSupremeMouseLeave(Sender: TObject);
    procedure btnMeuOkClick(Sender: TObject);
    procedure btnMeuCancelarClick(Sender: TObject);
    procedure EditSenhaExit(Sender: TObject);

  private

  public
    FUserControl: TUserControl;
  end;
implementation
{$IFDEF FPC}
{$R *.lfm}
{$ELSE}
{$R *.dfm}
{$ENDIF}
procedure TfrmLoginWindow.FormActivate(Sender: TObject);
begin //Joga O Login no Centro.
  PLogin.Left := (pnlDadosLogin.ClientWidth div 2) - (PLogin.Width div  2);
  PLogin.Top  := (pnlDadosLogin.ClientHeight div 2) - (PLogin.Height div  2);
end;

procedure TfrmLoginWindow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;
procedure TfrmLoginWindow.BotoesClickVisualizacao(Sender: TObject);
begin
  Self.ModalResult := mrOk;
end;
procedure TfrmLoginWindow.BtCancelaClick(Sender: TObject);
begin
  Application.Terminate;
end;
procedure TfrmLoginWindow.btnMeuCancelarClick(Sender: TObject);
begin //Meu Cancelar. Para não deletar o Cancelar original
  BtCancela.Click;
end;

procedure TfrmLoginWindow.btnMeuOkClick(Sender: TObject);
begin //Meu Ok. Para não deletar o ok original
  btOK.Click;
end;

procedure TfrmLoginWindow.btOKClick(Sender: TObject);
begin
  // Aqui nao faz nada.Mas não apague.
end;

procedure TfrmLoginWindow.FormShow(Sender: TObject);
var
  w, h: Integer;
begin
//  w := Max(ImgTop.Width, imgLeft.Width + PLogin.Width);
//  w := Max(w, ImgBottom.Width);
//  h := Max(imgLeft.Height + ImgTop.Height + ImgBottom.Height,
//    ImgTop.Height + PLogin.Height + ImgBottom.Height);
//
//  Width := w;
//  Height := h + 28;
//  If FUserControl.Login.MaxLoginAttempts > 0 then
//  Begin
//    Height := Height + 19;
//    StatusBar.Panels[0].Text := FUserControl.UserSettings.Login.LabelTentativa;
//    StatusBar.Panels[2].Text := FUserControl.UserSettings.Login.LabelTentativas;
//  End;
  // Topo
//  PTop.Height := ImgTop.Height;
//  ImgTop.AutoSize := False;
//  ImgTop.Align := alClient;
//  ImgTop.Center := True;
  // Centro
//  PLeft.Width := imgLeft.Width;
//  imgLeft.AutoSize := False;
//  imgLeft.Align := alClient;
//  imgLeft.Center := True;
  // Bottom
//  PBottom.Height := ImgBottom.Height;
//  ImgBottom.AutoSize := False;
//  ImgBottom.Align := alClient;
//  ImgBottom.Center := True;
//
//  PTop.Visible := ImgTop.Picture <> nil;
//  PLeft.Visible := imgLeft.Picture <> nil;
//  PBottom.Visible := ImgBottom.Picture <> nil;

  if FUserControl.Login.GetLoginName = lnUserName then
    EditUsuario.Text := FUserControl.GetLocalUserName;
  if FUserControl.Login.GetLoginName = lnMachineName then
    EditUsuario.Text := FUserControl.GetLocalComputerName;
  Position := Self.FUserControl.UserSettings.WindowsPosition;

  EditUsuario.CharCase := Self.FUserControl.Login.CharCaseUser;
  EditSenha.CharCase := Self.FUserControl.Login.CharCasePass;
  EditUsuario.SetFocus;


  ServiceConexao.GetUsuarios;


  //Carrega os usuários
  EditUsuario.Items.Clear;

  ServiceConexao.QRY_usuarios.First;
  while not ServiceConexao.QRY_usuarios.Eof do
  begin

    EditUsuario.Items.Add(ServiceConexao.QRY_usuariosUCLOGIN.AsString);

    ServiceConexao.QRY_usuarios.Next;

  end;

  EditUsuario.ItemIndex := 0;

  EditUsuario.SetFocus;


end;
procedure TfrmLoginWindow.lblSiteSupremeMouseEnter(Sender: TObject);
begin
  lblSiteSupreme.Font.Color := $007D7D7D;
end;

procedure TfrmLoginWindow.lblSiteSupremeMouseLeave(Sender: TObject);
begin
  lblSiteSupreme.Font.Color := clWhite;
end;

procedure TfrmLoginWindow.EditSenhaExit(Sender: TObject);
begin
  btnMeuOk.Click;
end;

procedure TfrmLoginWindow.EditUsuariossChange(Sender: TObject);
begin
  lbEsqueci.Enabled := Length(EditUsuario.Text) > 0;
end;
procedure TfrmLoginWindow.FormKeyPress(Sender: TObject; var Key: char);
begin
  if Key = #13 then
  Begin
    Key := #0;
    if TfrmLoginWindow(Sender).ActiveControl = EditSenha then
      btOk.Click
    else
    {$IFDEF WINDOWS}
      Perform(WM_NEXTDLGCTL, 0, 0);
    {$ELSE}
      SelectNext(activecontrol,True,True);
    {$ENDIF}
  End;
end;
end.
