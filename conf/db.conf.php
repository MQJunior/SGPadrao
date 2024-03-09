<?php
/**
* db.sgpadrao.conf.php
*
* SGPadrao - Configuração DB
*
* Definições do Banco de dados
*
* @date   2018-01-10
*
* @author       Marcio Queiroz Jr <mqjunior@gmail.com>
* @version      1.0
* @copyright    Copyright © 2006, Marcio Queiroz Jr.
* @package      SGPadrao
* @subpackage   Config
* @category     DataBase
*/

/**
 * Define o NOME do Sistema;
 * @global  string    $SISTEMA['CONFIG']['SISTEMA']['DATABASE']['NOME']
 * @name              $SISTEMA['CONFIG']['SISTEMA']['DATABASE']['NOME']
 */
$SISTEMA['CONFIG']['SISTEMA']['DATABASE']['NOME'] = 'sgpadrao';

/**
 * Define o ENDERECO do servidor DB;
 * @global  string    $SISTEMA['CONFIG']['SISTEMA']['DATABASE']['HOSTNAME']
 * @name              $SISTEMA['CONFIG']['SISTEMA']['DATABASE']['HOSTNAME']
 */
$SISTEMA['CONFIG']['SISTEMA']['DATABASE']['HOSTNAME'] = 'localhost';

/**
 * Define o nome do USUARIO no Banco de Dados;
 * @global  string    $SISTEMA['CONFIG']['SISTEMA']['DATABASE']['USERNAME']
 * @name              $SISTEMA['CONFIG']['SISTEMA']['DATABASE']['USERNAME']
 */
//$SISTEMA['CONFIG']['SISTEMA']['DATABASE']['USERNAME'] = 'jahisaco_z2sys'; // WEB
$SISTEMA['CONFIG']['SISTEMA']['DATABASE']['USERNAME'] = 'SGPadrao'; 	// LOCAL

/**
 * Define a SENHA de acesso ao Banco de Dados;
 * @global  string    $SISTEMA['CONFIG']['SISTEMA']['DATABASE']['PASSWORD']
 * @name              $SISTEMA['CONFIG']['SISTEMA']['DATABASE']['PASSWORD']
 */
//$SISTEMA['CONFIG']['SISTEMA']['DATABASE']['PASSWORD'] = 'qaz951357';   // WEB
$SISTEMA['CONFIG']['SISTEMA']['DATABASE']['PASSWORD'] = 'T1CuXi8I'; 	// LOCAL

/**
 * Define o nome da BASE de dados;
 * @global  string    $SISTEMA['DATABASE']['DATABASENAME']
 * @name              $SISTEMA['DATABASE']['DATABASENAME']
 */
//$SISTEMA['CONFIG']['SISTEMA']['DATABASE']['DATABASENAME'] = 'jahisaco_z2system'; 	// WEB
$SISTEMA['CONFIG']['SISTEMA']['DATABASE']['DATABASENAME'] = 'sgpadrao';				// LOCAL	

/**
 * Define o tipo de Banco de Dados
 * {0 - MySQL|1-Firebird} ;
 * @global  string    $SISTEMA['CONFIG']['SISTEMA']['DATABASE']['TIPODB']
 * @name              $SISTEMA['CONFIG']['SISTEMA']['DATABASE']['TIPODB']
 */
$SISTEMA['CONFIG']['SISTEMA']['DATABASE']['TIPODB'] = '0';

?>