<?php
/**
* @file corte.def.php
* @name corte
* @desc
*   Definiчуo dos campos no Banco de Dados e Seta-se o UID da Sessуo
*
* @author     Mсrcio Queiroz Jr <mqjunior@gmail.com>
* @version    0.0.0 
* @copyright  Copyright Љ 2006, Mсrcio Queiroz Jr.
* @package    corte
* @subpackage Def
* @todo       
*   Descricao todo
*
* @date 2018-03-02  v. 0.0.0
*
*/
/* UID DA SESSУO */
$SistemaSessaoUID = $this->SISTEMA_['SESSAO']['CLIENTE']['SESSAO_UID'];
include("corte.idioma.".strtolower($this->SISTEMA_['CONFIG']['SISTEMA']['GERAL']['IDIOMA']).".def.php");

/*  DEFINIЧеES DOS CAMPOS NO BANCO DE DADOS   */
$EntidadeCorteCampos['TXT_CORTE_CODIGO']=array('NOME' =>'CODIGO'            , 'TIPO'=>'CODIGO'  , 'EXIBIR'=>false , 'PESQUISAR'=>false , 'REQUERIDO'=>false , 'TAMANHO'=>0);

$EntidadeCORTECampos['TXT_CORTE_OS']=array('NOME' =>'OS'                , 'TIPO'=>'CODIGO_LINK'    , 'EXIBIR'=>true , 'PESQUISAR'=>true , 'REQUERIDO'=>false , 'TAMANHO'=>1);
$EntidadeCORTECampos['TXT_CORTE_ARQUIVO_CORTE']=array('NOME' =>'ARQUIVO_CORTE'                , 'TIPO'=>'NOME_TEXTO'    , 'EXIBIR'=>true , 'PESQUISAR'=>true , 'REQUERIDO'=>false , 'TAMANHO'=>500);
$EntidadeCORTECampos['TXT_CORTE_INICIO']=array('NOME' =>'INICIO'                , 'TIPO'=>'DATA'    , 'EXIBIR'=>true , 'PESQUISAR'=>true , 'REQUERIDO'=>true , 'TAMANHO'=>20);
$EntidadeCORTECampos['TXT_CORTE_FINAL']=array('NOME' =>'FINAL'                , 'TIPO'=>'DATA'    , 'EXIBIR'=>true , 'PESQUISAR'=>true , 'REQUERIDO'=>true , 'TAMANHO'=>20);
$EntidadeCORTECampos['TXT_CORTE_TEMPO']=array('NOME' =>'TEMPO'                , 'TIPO'=>'TEMPO'    , 'EXIBIR'=>true , 'PESQUISAR'=>true , 'REQUERIDO'=>false , 'TAMANHO'=>1);
$EntidadeCORTECampos['TXT_CORTE_OPERADOR']=array('NOME' =>'OPERADOR'                , 'TIPO'=>'CODIGO_LINK'    , 'EXIBIR'=>true , 'PESQUISAR'=>true , 'REQUERIDO'=>false , 'TAMANHO'=>1);


$EntidadeCorteCampos['TXT_CORTE_SESSAO']=array('NOME' =>'SESSAO'            , 'TIPO'=>'CODIGO_LINK'   , 'EXIBIR'=>false , 'PESQUISAR'=>false, 'REQUERIDO'=>false , 'TAMANHO'=>0);
$EntidadeCorteCampos['TXT_CORTE_USUARIO']=array('NOME' =>'USUARIO'    , 'TIPO'=>'CODIGO_LINK'   , 'EXIBIR'=>false , 'PESQUISAR'=>false, 'REQUERIDO'=>false , 'TAMANHO'=>0);
$EntidadeCorteCampos['TXT_CORTE_USUARIO_NOME']=array('NOME' =>'USUARIO_NOME'    , 'TIPO'=>'CODIGO_LINK'   , 'EXIBIR'=>false , 'PESQUISAR'=>false, 'REQUERIDO'=>false , 'TAMANHO'=>0);
$EntidadeCorteCampos['TXT_CORTE_DATACRIACAO']=array('NOME' =>'DATACRIACAO'  , 'TIPO'=>'DATA'          , 'EXIBIR'=>true  , 'PESQUISAR'=>false, 'REQUERIDO'=>false , 'TAMANHO'=>20);
$EntidadeCorteCampos['TXT_CORTE_REG_ATIVO']=array('NOME' =>'REG_ATIVO'      , 'TIPO'=>'TIPO'          , 'EXIBIR'=>false , 'PESQUISAR'=>false, 'REQUERIDO'=>false , 'TAMANHO'=>1);

?>