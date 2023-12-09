﻿program SupremeRetaguarda;
uses
  Vcl.Forms,
  view.modal.menu in 'src\view\view.modal\view.modal.menu.pas' {ViewMenu},
  Conexao in 'Fontes\Login\Conexao.pas' {FrmConfigConexao},
  UMensagem in 'Fontes\UMensagem.pas' {FrmMensagem},
  UFuncoes in 'Fontes\UFuncoes.pas',
  System.SysUtils,
  ULayout in 'Cores\ULayout.pas' {FrmLayout},
  UFormat in 'Fontes\UFormat.pas',
  view.modal.base.cadastro in 'src\view\view.modal\view.modal.base.cadastro.pas' {ViewBaseCadastro},
  view.modal.cadastro.clientes in 'src\view\view.modal\view.modal.cadastro.clientes.pas' {ViewCadastroClientes},
  view.base in 'src\view\view.base\view.base.pas' {ViewBase},
  view.tdi.base in 'src\view\views.tdi\view.tdi.base.pas' {ViewBaseTDI},
  view.tdi.base.listas in 'src\view\views.tdi\view.tdi.base.listas.pas' {ViewBaseListasTDI},
  PageControlEx in 'src\view\tdi\PageControlEx.pas',
  TabCloseButton in 'src\view\tdi\TabCloseButton.pas',
  TDI in 'src\view\tdi\TDI.pas',
  VisualizaImagensDasGuiasAbertas in 'src\view\tdi\VisualizaImagensDasGuiasAbertas.pas',
  view.tdi.home in 'src\view\views.tdi\view.tdi.home.pas' {ViewTDIHome},
  view.tdi.lista.clientes in 'src\view\views.tdi\view.tdi.lista.clientes.pas' {ViewListaClientesTDI},
  provider.imagelist in 'src\providers\provider.imagelist.pas' {ProviderImageList},
  service.base in 'src\service\base\service.base.pas' {ServiceBase: TDataModule},
  service.conexao in 'src\service\conexao\service.conexao.pas' {ServiceConexao: TDataModule},
  service.cadastro in 'src\service\cadastro\service.cadastro.pas' {ServiceCadastro: TDataModule},
  view.tdi.lista.fornecedores in 'src\view\views.tdi\view.tdi.lista.fornecedores.pas' {ViewListaFornecedoresTDI},
  view.tdi.lista.produtos in 'src\view\views.tdi\view.tdi.lista.produtos.pas' {ViewListaProdutosTDI},
  view.tdi.lista.faturamento in 'src\view\views.tdi\view.tdi.lista.faturamento.pas' {ViewListaFaturamentoTDI},
  view.tdi.lista.vendas in 'src\view\views.tdi\view.tdi.lista.vendas.pas' {ViewListaVendasTDI},
  view.tdi.lista.prevendas in 'src\view\views.tdi\view.tdi.lista.prevendas.pas' {ViewListaPreVendasTDI},
  view.tdi.lista.orcamentos in 'src\view\views.tdi\view.tdi.lista.orcamentos.pas' {ViewListaOrcamentosTDI},
  view.telaFundo in 'src\view\view.modal\view.telaFundo.pas' {ViewTelaFundo},
  view.modal.base.pesquisa in 'src\view\view.modal\view.modal.base.pesquisa.pas' {ViewBasePesquisa},
  view.modal.pesquisa.cidades in 'src\view\view.modal\view.modal.pesquisa.cidades.pas' {ViewPesquisaCidades},
  view.modal.cadastro.enderecos in 'src\view\view.modal\view.modal.cadastro.enderecos.pas' {ViewCadastroEnderecos},
  view.modal.cadastro.contatos in 'src\view\view.modal\view.modal.cadastro.contatos.pas' {ViewCadastroContatos},
  view.tdi.lista.Fabricantes in 'src\view\views.tdi\view.tdi.lista.Fabricantes.pas' {ViewListaFabricantesTDI},
  view.tdi.lista.grupos in 'src\view\views.tdi\view.tdi.lista.grupos.pas' {ViewListasGruposTDI},
  view.tdi.lista.Subgrupos in 'src\view\views.tdi\view.tdi.lista.Subgrupos.pas' {ViewListaSubGrupoTDI},
  view.modal.cadastro.Fabricantes in 'src\view\view.modal\view.modal.cadastro.Fabricantes.pas' {ViewCadastroFrabricantes},
  view.modal.cadastro.grupos.clientes in 'src\view\view.modal\view.modal.cadastro.grupos.clientes.pas' {ViewGrupoClientesCadastro},
  view.modal.cadastro.grupos in 'src\view\view.modal\view.modal.cadastro.grupos.pas' {ViewCadastroGrupos},
  view.modal.cadastro.Subgrupos in 'src\view\view.modal\view.modal.cadastro.Subgrupos.pas' {ViewCadastroSubGrupos},
  view.modal.cadastro.produtos in 'src\view\view.modal\view.modal.cadastro.produtos.pas' {ViewCadastroProdutos},
  view.modal.cadastro.Fornecedores in 'src\view\view.modal\view.modal.cadastro.Fornecedores.pas' {ViewCadastroFornecedores},
  view.modal.cadastro.vendas in 'src\view\view.modal\view.modal.cadastro.vendas.pas' {ViewCadastroVendas},
  view.modal.pesquisa.pessoas in 'src\view\view.modal\view.modal.pesquisa.pessoas.pas' {ViewPesquisaPessoas},
  view.modal.pesquisa.produto.vendas in 'src\view\view.modal\view.modal.pesquisa.produto.vendas.pas' {ViewPesquisaProdutosVenda},
  funcoes.diversas in 'src\functions\funcoes.diversas.pas',
  service.atualizacao in 'src\service\atualiza\service.atualizacao.pas' {ServiceAtualizacao: TDataModule},
  LoginWindow_U in 'src\view\terceiros\LoginWindow_U.pas' {frmLoginWindow},
  view.modal.cadastro.filial in 'src\view\view.modal\view.modal.cadastro.filial.pas' {ViewCadastroFilial},
  view.tdi.lista.filiais in 'src\view\views.tdi\view.tdi.lista.filiais.pas' {ViewListasFiliaisTDI},
  Classe.conexao in 'Fontes\Classes\Classe.conexao.pas',
  UTelaBase in 'Fontes\UTelaBase.pas' {FrmTelaBase},
  providers.conversao in 'pdv\src\providers\providers.conversao.pas',
  view.modal.pesquisa.cidades.filial in 'src\view\view.modal\view.modal.pesquisa.cidades.filial.pas' {ViewPesquisaCidadesFilial},
  view.modal.contabilista in 'src\view\view.modal\view.modal.contabilista.pas' {ViewPesquisaContabilista},
  view.modal.gerentes in 'src\view\view.modal\view.modal.gerentes.pas' {ViewPesquisaGerentes},
  view.tdi.lista.formaspagamentos in 'src\view\views.tdi\view.tdi.lista.formaspagamentos.pas' {ViewFormasPagamentoTDI},
  view.modal.cadastro.formapagamento in 'src\view\view.modal\view.modal.cadastro.formapagamento.pas' {ViewCadastroPagamento},
  view.tdi.lista.cfop in 'src\view\views.tdi\view.tdi.lista.cfop.pas' {ViewListasCfop},
  view.modal.cadastro.cfop in 'src\view\view.modal\view.modal.cadastro.cfop.pas' {ViewCadastroCFOP},
  view.tdi.lista.ncm in 'src\view\views.tdi\view.tdi.lista.ncm.pas' {ViewBaseListaNCMTDI},
  view.tdi.lista.embalagens in 'src\view\views.tdi\view.tdi.lista.embalagens.pas' {ViewListasEmbalagensTDI},
  view.modal.cadastro.embalagens in 'src\view\view.modal\view.modal.cadastro.embalagens.pas' {ViewCadastroEmbalagem},
  view.modal.cadastro.ncm in 'src\view\view.modal\view.modal.cadastro.ncm.pas' {ViewCadastroNCM},
  view.tdi.lista.cst in 'src\view\views.tdi\view.tdi.lista.cst.pas' {ViewListascstTDI},
  view.modal.cadastro.cst in 'src\view\view.modal\view.modal.cadastro.cst.pas' {ViewCadastroCst};

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TServiceConexao, ServiceConexao);
  if ServiceConexao.Conexao.Fnc_conectar_banco_dados then
  begin
    Application.CreateForm(TViewMenu, ViewMenu);
  ViewMenu.ShowModal;
//      Application.CreateForm(TFrmLogin, FrmLogin);  //agora usa usercontrol
  //    FrmLogin := TFrmLogin.Create(nil);
//      FrmLogin.showmodal;    //agora usa usercontrol
//      Application.CreateForm(Tform_esmaecer_fundo, form_esmaecer_fundo);
//    Application.CreateForm(TFrmHome, FrmHome);
//     Application.CreateForm(TFrmConfigConexao, FrmConfigConexao);
//      FrmLogin.Hide;     //agora usa usercontrol
//      FrmLogin.free;       //agora usa usercontrol
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
  Application.CreateForm(TServiceAtualizacao, ServiceAtualizacao);
end.
