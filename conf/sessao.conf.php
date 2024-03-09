<?php
/**
 * sessao.sgpadrao.conf.php
 *
 * Sistema - Configuração Sessão
 *
 * Definições da Sessao
 *
 * @date   2017-09-30
 *
 * @author       Marcio Queiroz Jr <mqjunior@gmail.com>
 * @version      1.0
 * @copyright    Copyright © 2006, Marcio Queiroz Jr.
 * @package      SGPadrao
 * @subpackage   Config
 * @category     Sessao
 */


/** @var string $SISTEMA['INCLUDES']['CLASSES']['ARQUIVO'] - Define a LIB que gerencia sessao; */
$SISTEMA['INCLUDES']['CLASSES']['SESSAO'] = $SISTEMA['INCLUDES']['DIR']['LIB'] . 'class.sessao.lib.php';

/**
 * Define se a sessao deve continuar ou finalizar;
 * @global  string    $SISTEMA['CONFIG']['SESSAO']['GERAL']['PROCEDIMENTO']
 * @name              $SISTEMA['CONFIG']['SESSAO']['GERAL']['PROCEDIMENTO']
 */
$SISTEMA['CONFIG']['SESSAO']['GERAL']['PROCEDIMENTO'] = 'FINALIZAR'; //  { CONTINUAR | FINALIZAR }

/**
 * Define o NOME da Sessao;
 * @global  string    $SISTEMA['CONFIG']['SESSAO']['GERAL']['NOME']
 * @name              $SISTEMA['CONFIG']['SESSAO']['GERAL']['NOME']
 */
$SISTEMA['CONFIG']['SESSAO']['GERAL']['NOME'] = 'SESSAO_SGPADRAO';
/**
 * Define o Tempo de Expiração da Sessão em Minutos;
 * @global  string    $SISTEMA['CONFIG']['SESSAO']['GERAL']['TEMPO_EXPIRACAO']
 * @name              $SISTEMA['CONFIG']['SESSAO']['GERAL']['TEMPO_EXPIRACAO']
 */
$SISTEMA['CONFIG']['SESSAO']['GERAL']['TEMPO_EXPIRACAO'] = 100;
/**
 * Define a Limitação;  (none/nocache/private/private_no_expire/public)
 * @global  string    $SISTEMA['CONFIG']['SESSAO']['GERAL']['LIMITACAO']
 * @name              $SISTEMA['CONFIG']['SESSAO']['GERAL']['LIMITACAO']
 */
$SISTEMA['CONFIG']['SESSAO']['GERAL']['LIMITACAO'] = 'private';
/**
 * Define o Local onde será salvo os arquivos de sessão caso não seja setado, será o diretório Definido no PHP.ini
 * @global  string    $SISTEMA['CONFIG']['SESSAO']['GERAL']['LOCAL_DIR']
 * @name              $SISTEMA['CONFIG']['SESSAO']['GERAL']['LOCAL_DIR']
 */
$SISTEMA['CONFIG']['SESSAO']['GERAL']['LOCAL_DIR'] = 'D:/Desenvolvimento/SGPadrao/tmp/sessions/';
/**
 * Define se a Sessão é autenticada (Protegida por senha)
 * @global  string    $SISTEMA['CONFIG']['SESSAO']['GERAL']['SESSAO_AUTENTICACAO']
 * @name              $SISTEMA['CONFIG']['SESSAO']['GERAL']['SESSAO_AUTENTICACAO']
 */
$SISTEMA['CONFIG']['SESSAO']['GERAL']['SESSAO_AUTENTICACAO'] = true;
/**
 * Define o comando a ser chamando para efetuar a autenticacao {ex: Logar}
 * @global  string    $SISTEMA['CONFIG']['SESSAO']['GERAL']['COMANDO_AUTENTICACAO']
 * @name              $SISTEMA['CONFIG']['SESSAO']['GERAL']['COMANDO_AUTENTICACAO']
 *
$SISTEMA['CONFIG']['SESSAO']['GERAL']['COMANDO_AUTENTICACAO'] = 'LOGAR';
/**
 * Define o comando a ser chamando para efetuar a autenticacao {ex: Logar}
 * @global  string    $SISTEMA['CONFIG']['SESSAO']['GERAL']['COMANDO_AUTENTICACAO']
 * @name              $SISTEMA['CONFIG']['SESSAO']['GERAL']['COMANDO_AUTENTICACAO']
 *
$SISTEMA['CONFIG']['SESSAO']['GERAL']['COMANDO_LOGIN'] = 'LOGIN';
*/

$SISTEMA['CONFIG']['SESSAO']['GERAL']['PALAVRA_CHAVE'] = 'SGPadrao';

$SISTEMA['CONFIG']['SESSAO']['DATABASE'] = $SISTEMA['CONFIG']['SISTEMA']['DATABASE'];

/**
 * Define o nome da tabela no banco de dados
 * @global  string    $SISTEMA['CONFIG']['SESSAO']['DATABASE']['ENTIDADE_DB']
 * @name              $SISTEMA['CONFIG']['SESSAO']['DATABASE']['ENTIDADE_DB']
 */
$SISTEMA['CONFIG']['SESSAO']['DATABASE']['ENTIDADE_DB'] = 'TBL_SYS_SESSOES';

// tabela Usuarios
$SISTEMA['CONFIG']['SESSAO']['DATABASE']['ENTIDADE_USUARIO'] = 'TBL_USUARIOS';



$SISTEMA['SESSAO']['DATABASE']['DATA']['CODIGO'] = null;
/**
 * Campos da tabela no banco de dados - USUARIO
 * @global  int   $SISTEMA['SESSAO']['DATABASE']['DATA']['USUARIO']
 * @name          $SISTEMA['SESSAO']['DATABASE']['DATA']['USUARIO']
 */
$SISTEMA['SESSAO']['DATABASE']['DATA']['USUARIO'] = null;
/**
 * Campos da tabela no banco de dados - SESSAO_ID
 * @global  int   $SISTEMA['SESSAO']['DATABASE']['DATA']['SESSAO_ID']
 * @name          $SISTEMA['SESSAO']['DATABASE']['DATA']['SESSAO_ID']
 */
$SISTEMA['SESSAO']['DATABASE']['DATA']['SESSAO_ID'] = null;
/**
 * Campos da tabela no banco de dados - IPCLIENTE
 * @global  int   $SISTEMA['SESSAO']['DATABASE']['DATA']['IPCLIENTE']
 * @name          $SISTEMA['SESSAO']['DATABASE']['DATA']['IPCLIENTE']
 */
$SISTEMA['SESSAO']['DATABASE']['DATA']['IPCLIENTE'] = null;
/**
 * Campos da tabela no banco de dados - DATAINICIO
 * @global  int   $SISTEMA['SESSAO']['DATABASE']['DATA']['DATAINICIO']
 * @name          $SISTEMA['SESSAO']['DATABASE']['DATA']['DATAINICIO']
 */
$SISTEMA['SESSAO']['DATABASE']['DATA']['DATAINICIO'] = null;
/**
 * Campos da tabela no banco de dados - DATAFIM
 * @global  int   $SISTEMA['SESSAO']['DATABASE']['DATA']['DATAFIM']
 * @name          $SISTEMA['SESSAO']['DATABASE']['DATA']['DATAFIM']
 */
$SISTEMA['SESSAO']['DATABASE']['DATA']['DATAFIM'] = null;
/**
 * Campos da tabela no banco de dados - USUARIOLOGIN
 * @global  int   $SISTEMA['SESSAO']['DATABASE']['DATA']['USUARIOLOGIN']
 * @name          $SISTEMA['SESSAO']['DATABASE']['DATA']['USUARIOLOGIN']
 */
$SISTEMA['SESSAO']['DATABASE']['DATA']['USUARIOLOGIN'] = null;
/**
 * Campos da tabela no banco de dados - SISTEMANOME
 * @global  int   $SISTEMA['SESSAO']['DATABASE']['DATA']['SISTEMANOME']
 * @name          $SISTEMA['SESSAO']['DATABASE']['DATA']['SISTEMANOME']
 */
$SISTEMA['SESSAO']['DATABASE']['DATA']['SISTEMANOME'] = null;
?>