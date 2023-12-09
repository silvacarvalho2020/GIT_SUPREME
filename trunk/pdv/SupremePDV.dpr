program SupremePDV;

uses
  Vcl.Forms,
  System.SysUtils,
  view.principal in 'src\views\view.principal.pas' {ViewPrincipal},
  service.cadastro in 'src\services\service.cadastro.pas' {ServiceCadastro: TDataModule},
  view.base in 'src\views\view.base.pas' {ViewBase},
  view.base.listas in 'src\views\view.base.listas.pas' {ViewBaseListas},
  view.abrirCaixa in 'src\views\view.abrirCaixa.pas' {ViewAbrirCaixa},
  providers.functions in 'src\providers\providers.functions.pas',
  providers.variaveis in 'src\providers\providers.variaveis.pas',
  view.telaFundo in 'src\views\view.telaFundo.pas' {ViewTelaFundo},
  view.formapgto in 'src\views\view.formapgto.pas' {ViewFormaPGTO},
  providers.conversao in 'src\providers\providers.conversao.pas',
  view.login in 'src\views\view.login.pas' {ViewLogin},
  service.atualiza in 'src\services\service.atualiza.pas' {ServiceAtualiza: TDataModule},
  service.conexao in 'src\services\service.conexao.pas' {ServiceConexao: TDataModule},
  view.caixa.cardex in 'src\views\view.caixa.cardex.pas' {ViewCaixaCardex},
  view.vendas.listagem in 'src\views\view.vendas.listagem.pas' {ViewVendasListagem},
  view.consulta.precos in 'src\views\view.consulta.precos.pas' {ViewConsultaPrecos},
  view.consulta.clientes in 'src\views\view.consulta.clientes.pas' {ViewConsultarClientes},
  view.parametros.pdv in 'src\views\view.parametros.pdv.pas' {ViewParametrosPDV},
  view.acbr.fiscal in 'src\views\view.acbr.fiscal.pas' {ViewACBrFiscal},
  controller.conversao.pdv in 'src\controllers\controller.conversao.pdv.pas',
  service.acbr.config.fb30 in 'src\services\service.acbr.config.fb30.pas' {ServiceConfigACBr: TDataModule},
  view.base.lancamentos in 'src\views\view.base.lancamentos.pas' {ViewBaseLancamentos},
  view.caixa.sangria.suprimentos in 'src\views\view.caixa.sangria.suprimentos.pas' {ViewSangriaSuprimento},
  records.parametro.pdv.balanca in 'src\records\records.parametro.pdv.balanca.pas',
  view.fiscal.listagem in 'src\views\view.fiscal.listagem.pas' {ViewFiscalListagem},
  view.abrircaixa.usuario in 'src\views\view.abrircaixa.usuario.pas' {ViewAbrirCaixaUsuario},
  view.produto.nao.encontrado in 'src\views\view.produto.nao.encontrado.pas' {ViewProdutoNaoEncontrado},
  view.autorizacao.gerencial in 'src\views\view.autorizacao.gerencial.pas' {ViewAutorizacaoGerencial},
  view.regras.testes in 'src\views\view.regras.testes.pas' {ViewRegrasTestes},
  Classe.conexao in '..\Fontes\Classes\Classe.conexao.pas',
  UFuncoes in '..\Fontes\UFuncoes.pas',
  UMensagem in '..\Fontes\UMensagem.pas' {FrmMensagem},
  UFormat in '..\Fontes\UFormat.pas',
  Conexao in '..\Fontes\Login\Conexao.pas' {FrmConfigConexao},
  view.preco.livre in 'src\views\view.preco.livre.pas' {ViewPrecoLivre},
  View.mensagens in '..\comuns\View.mensagens.pas' {ViewMensagens};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.CreateForm(TServiceAtualiza, ServiceAtualiza);
  if ServiceConexao.Conexao.Fnc_conectar_banco_dados then
  begin

//      Application.CreateForm(TFrmLogin, FrmLogin);
  //    FrmLogin := TFrmLogin.Create(nil);
//      FrmLogin.ShowModal;

//      Application.CreateForm(Tform_esmaecer_fundo, form_esmaecer_fundo);

//    Application.CreateForm(TFrmHome, FrmHome);
//     Application.CreateForm(TFrmConfigConexao, FrmConfigConexao);

//      FrmLogin.Hide;
//      FrmLogin.free;
//      Application.Run;

    Application.CreateForm(TViewPrincipal, ViewPrincipal);
    Application.CreateForm(TViewTelaFundo, ViewTelaFundo);
    Application.Run;

  end
  else
  begin

    fnc_CriarMensagem('CONEXÃO AO BANCO DE DADOS',
      'ERRO AO CONECTAR AO BANCO DE DADOS',
      'Não foi possivel conectar ao banco de dados, possivel causa: ' +
      ServiceConexao.Conexao.MsgErro, ExtractFilepath(Application.ExeName) +
      '\Icones\Atencao.png', 'OK');

    Application.CreateForm(TFrmConfigConexao, FrmConfigConexao);
    FrmConfigConexao.showmodal;

  end;

end.
