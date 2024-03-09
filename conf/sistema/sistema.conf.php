<?php
/**
* @file sistema.conf.php
* @name sistema
* @desc
*   Seta-se as Tabelas para o processamento, Tabela do Sistema, Tabela de Configura��o dos Backup's, Tabela de Usu�rios do sistema
*
* @author     M�rcio Queiroz Jr <mqjunior@gmail.com>
* @version    0.0.0 
* @copyright  Copyright � 2006, M�rcio Queiroz Jr.
* @package    sistema
* @subpackage Config
* @todo       
*   Descricao todo
*
* @date 2018-04-02  v. 0.0.0
*
*/

/* CONFIGURA��O DO BANCO DE DADOS */ 
$this->SISTEMA_['ENTIDADE']['SISTEMA']['CONF']['DATABASE'] = $this->SISTEMA_['CONFIG']['SISTEMA']['DATABASE'];
/* NOME DA TABELA DA ENTIDADE NO BANCO DE DADOS */
$this->SISTEMA_['ENTIDADE']['SISTEMA']['CONF']['DATABASE']['TBL_SISTEMA'] = 'TBL_SISTEMA';

/* TABELA DO BACKUP NO BANCO DE DADOS - RELACIONADA  */
$this->SISTEMA_['ENTIDADE']['SISTEMA']['CONF']['DATABASE']['TBL_BACKUP'] = 'TBL_SYS_BACKUP';


/* TABELA USUARIO NO BANCO DE DADOS - RELACIONADA  */
$this->SISTEMA_['ENTIDADE']['SISTEMA']['CONF']['DATABASE']['TBL_USUARIO'] = $this->SISTEMA_['CONFIG']['USUARIO']['DATABASE']['ENTIDADE_DB'];


?>