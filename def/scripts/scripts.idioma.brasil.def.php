<?php
/**
* @file scripts.idioma.brasil.def.php
* @name scripts.idioma.brasil
* @desc
*   Arquivo com as legendas dos campos, formul�rios, mensagens e bot�es. <idioma portugu�s-Brasil>
*
* @author     M�rcio Queiroz Jr <mqjunior@gmail.com>
* @version    0.0.0 
* @copyright  Copyright � 2006, M�rcio Queiroz Jr.
* @package    scripts
* @subpackage Def.Idioma
* @todo       
*   Descricao todo
*
* @date 2018-07-04  v. 0.0.0
*
*/

/* 
  Legendas dos Bot�es
*/
$SysRtl_Btn_Alterar = "Alterar";
$SysRtl_Btn_Ativar = "Ativar";
$SysRtl_Btn_Buscar = "Buscar";
$SysRtl_Btn_Consultar = "Consultar";
$SysRtl_Btn_Desativar = "Desativar";
$SysRtl_Btn_Editar = "Editar";
$SysRtl_Btn_Excluir = "Excluir";
$SysRtl_Btn_Incluir = "Incluir";
$SysRtl_Btn_Novo = "Novo";
$SysRtl_Btn_Pesquisar = "Pesquisar";
$SysRtl_Btn_Salvar = "Salvar";
$SysRtl_Btn_Executar = "Executar";

/* Legendas da mensagem de sucesso */
$this->SISTEMA_['ENTIDADE']['SCRIPTS']['MENSAGEM']['SUCESSO']['MENSAGEM'] = "Informa��es salva com sucesso!";
$this->SISTEMA_['ENTIDADE']['SCRIPTS']['MENSAGEM']['SUCESSO']['EXCLUSAO'] = "Registro exclu�do com sucesso!";
$this->SISTEMA_['ENTIDADE']['SCRIPTS']['MENSAGEM']['SUCESSO']['EXECUCAO'] = "Script executado com sucesso!";
$this->SISTEMA_['ENTIDADE']['SCRIPTS']['MENSAGEM']['SUCESSO']['TITULO'] = "Entidade Scripts";

/* Legendas dos Campos do Banco de Dados */
$SysRtl_Scripts_Campos_CODIGO ="C�digo";
$SysRtl_Scripts_Campos_SESSAO ="Sess�o";
$SysRtl_Scripts_Campos_DATACRIACAO ="Dt Cria��o";
$SysRtl_Scripts_Campos_USUARIO ="Usu�rio";
$SysRtl_Scripts_Campos_USUARIO_NOME ="Criado por";
$SysRtl_Scripts_Campos_REG_ATIVO ="Ativo";
      //----------------------//
$SysRtl_Scripts_Campos_NOME ="Nome";
$SysRtl_Scripts_Campos_DESCRICAO ="Descricao";
$SysRtl_Scripts_Campos_TIPO ="Tipo";
$SysRtl_Scripts_Campos_SCRIPT ="Script";

/* Legendas do formul�rio pesquisar */
$SysRtl_Scripts_Pesquisar_Cabecalho_Titulo = "Scripts";
$SysRtl_Scripts_Pesquisar_Cabecalho_Subtitulo = "Pesquisar";
$SysRtl_Scripts_Pesquisar_Cabecalho_Icone = "fa-user";
$SysRtl_Scripts_Pesquisar_Conteudo_Titulo = "Pesquisa Scripts";
      //----------------------//

$SysRtl_Scripts_Incluir_Cabecalho_Titulo = "Scripts";
$SysRtl_Scripts_Incluir_Cabecalho_Subtitulo = "Incluir";
$SysRtl_Scripts_Incluir_Cabecalho_Icone = "fa-user";
$SysRtl_Scripts_Incluir_Conteudo_Titulo = "Incluir Scripts";
      //----------------------//
      
/* Legendas do formul�rio consultar */
$SysRtl_Scripts_Consultar_Cabecalho_Titulo = "Scripts";
$SysRtl_Scripts_Consultar_Cabecalho_Subtitulo = "Consultar";
$SysRtl_Scripts_Consultar_Cabecalho_Icone = "fa-user";
$SysRtl_Scripts_Consultar_Conteudo_Titulo = "Consulta Scripts";
      //----------------------//
      
/* Legendas do formul�rio alterar */
$SysRtl_Scripts_Alterar_Cabecalho_Titulo = "Scripts";
$SysRtl_Scripts_Alterar_Cabecalho_Subtitulo = "Alterar";
$SysRtl_Scripts_Alterar_Cabecalho_Icone = "fa-user";
$SysRtl_Scripts_Alterar_Conteudo_Titulo = "Altera��o Scripts";
      //----------------------//

      /* Legendas do formul�rio executar */
$SysRtl_Scripts_Alterar_Cabecalho_Titulo = "Scripts";
$SysRtl_Scripts_Alterar_Cabecalho_Subtitulo = "Executar";
$SysRtl_Scripts_Alterar_Cabecalho_Icone = "fa-user";
$SysRtl_Scripts_Alterar_Conteudo_Titulo = "Altera��o Scripts";
      //----------------------//
      
/* Op��es dos campos do Tipo Tipo */
$SysOpt_Scripts_TIPO['OPCOES']= array(
                                    array( 'VALOR'=>'1', 'LEGENDA'=>'PHP'),
                                    array( 'VALOR'=>'2', 'LEGENDA'=>'SHELL'),
                                    array( 'VALOR'=>'3', 'LEGENDA'=>'WIN')
                                    );
?>