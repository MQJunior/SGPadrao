<?php
/**
 * @file sgpadrao.login.bin.php
 * @name login
 * @desc
 *   Script para verificar a autenticacao do usuario
 *
 * @author     Marcio Queiroz Jr <mqjunior@gmail.com>
 * @version    0.0.0 
 * @copyright  Copyright � 2006, Marcio Queiroz Jr.
 * @package    sgpadrao
 * @subpackage bin
 * @todo       
 *
 *
 * @date 2018-01-12  v. 0.0.0
 */
if (!isset($VAR_USUARIO_ID))
  die("Faltou Paramentro: VAR_USUARIO_ID");
if (!isset($VAR_SISTEMA_ID))
  die("Faltou Paramentro: VAR_SISTEMA_ID");

$TMP_SESSAO_UID = "";
if (isset($this->SISTEMA_['SESSAO']['CLIENTE']['SESSAO_UID']))
  $TMP_SESSAO_UID = $this->SISTEMA_['SESSAO']['CLIENTE']['SESSAO_UID'];
function MontarMenu($p_MenuArray, $p_Layout, $p_SessaoUID = "")
{
  $tmp_Saida = "";
  $tmp_Eval_Saida = "";
  $tmp_MenuNome = "";
  $tmp_MenuEntidade = "";
  $tmp_MenuEntidadeAcao = "";
  $tmp_MenuItens = "";
  $tmp_Nivel = 0;
  $tmp_LayoutMaxIdx = count($p_Layout) - 1;
  $tmp_SessaoUID = $p_SessaoUID;

  for ($i = 0; $i < count($p_MenuArray); $i++) {
    $tmp_Nivel = $p_MenuArray[$i]['NIVEL'];
    if ($tmp_Nivel > $tmp_LayoutMaxIdx)
      $tmp_Nivel = $tmp_LayoutMaxIdx;
    $tmp_MenuNome = $p_MenuArray[$i]['NOME'];
    $tmp_MenuEntidade = $p_MenuArray[$i]['ENTIDADE'];
    $tmp_MenuEntidadeAcao = "";
    if (isset($p_MenuArray[$i]['ACAO']))
      $tmp_MenuEntidadeAcao = $p_MenuArray[$i]['ACAO'];
    if (is_array($p_MenuArray[$i]['ITENS'])) {
      $tmp_MenuItens = MontarMenu($p_MenuArray[$i]['ITENS'], $p_Layout, $p_SessaoUID);
      $tmp_Eval_Saida = $p_Layout[$tmp_Nivel]['ITENS'];
    } else {
      $tmp_Eval_Saida = $p_Layout[$tmp_Nivel]['MENU'];
    }
    eval("\$tmp_Eval_Saida = \"$tmp_Eval_Saida\";");
    $tmp_Saida .= $tmp_Eval_Saida;
  }
  return $tmp_Saida;
}


require($this->SISTEMA_['INCLUDES']['DIR']['DEF'] . "sgpadrao.menu.geral.def.php");

$VAR_SISTEMA_MENU = MontarMenu($VAR_MENU_GERAL, $VAR_LAYOUT_MENU, $TMP_SESSAO_UID);

?>