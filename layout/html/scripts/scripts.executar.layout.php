<?php
/**
* @file scripts.executar.layout.php
* @name scripts.executar
* @desc
*   Layout para o formul�rio de execu��o
*
* @author     M�rcio Queiroz Jr <mqjunior@gmail.com>
* @version    0.0.0 
* @copyright  Copyright � 2006, M�rcio Queiroz Jr.
* @package    scripts
* @subpackage Layout
* @todo       
*   Descricao todo
*
* @date 2018-07-10  v. 0.0.0
*
*/

// -------------------- CAPTURA DE DADOS -----------------//
/* Verifica os campos obrigat�rios e seta-se os mesmo como required */
$EntidadeCampos = $EntidadeScriptsCampos;

/* Captura as Variaveis que ser�o exibidas */
foreach ($EntidadeCampos as $tmpValor){
  $tmpVar = "VAR_SCRIPTS_".$tmpValor['NOME'];
  $$tmpVar = $this->SISTEMA_['ENTIDADE']['SCRIPTS']['VARS'][$tmpValor['NOME']];
}

// -------------------- MANIPULA��O -----------------//
/* Formata o campo DATACRIACAO */
$VAR_SCRIPTS_DATACRIACAO = FORMATA_CAMPO($VAR_SCRIPTS_DATACRIACAO,$this->SISTEMA_['CONFIG']['SISTEMA']['GERAL']['DATA_HORA_EXIBICAO_FORMATO'],'data');



/* Verifica se o registro foi desativado */
if($VAR_SCRIPTS_REG_ATIVO=='1'){
  $VAR_SCRIPTS_REG_ATIVO=true;
  $VAR_REGISTRO_INATIVO="";
}else{
  $VAR_SCRIPTS_REG_ATIVO=false;
  $VAR_REGISTRO_INATIVO=" <div class=\"form-group\">
          <div class=\"col-sm-offset-5 col-sm-7\" id=\"DIV_LOG_INFO\">
            <b class=\"text-yellow\">$SysRtl_Registro_Inativo</b>
          </div>
          <div class=\"col-sm-5\">
          </div>";
}
// -------------------- PERMISSAO -----------------//
$PERMISSAO_ = new permissao($this->SISTEMA_);

/* Permiss�o exibir detalhes do log do registro */
$tmpLogAtividade="<i class=\"fa fa-info-circle\"></i>";            
if($PERMISSAO_->ChecarPermissao($this->SISTEMA_['SESSAO']['USUARIO']['CODIGO'], 'LOGATIVIDADE', 'INFORMACAO')){
  $tmpLogAtividade="<a href=\"javascript::;\" onclick=\"PesquisaDados('.?XMLHTML=true&SysEntidade=LOGATIVIDADE&SysEntidadeAcao=INFORMACAO&txtChaveRegistro=$VAR_SCRIPTS_CODIGO&TXT_LOGATIVIDADE_ENTIDADE=SCRIPTS&SID=$SistemaSessaoUID','','DIV_LOG_INFO',null)\">
              <i class=\"fa fa-info-circle\"></i>
            </a> ";
}      
/* Permiss�o exibir Data de Cria��o do registro e o Usu�rio que criou*/
$tmpLogVer = "";
if($PERMISSAO_->ChecarPermissao($this->SISTEMA_['SESSAO']['USUARIO']['CODIGO'], 'LOGATIVIDADE', 'VER'))
$tmpLogVer = "<h6 class=\"text-muted\">
            $tmpLogAtividade
            <i>$SysRtl_Scripts_Campos_USUARIO_NOME:</i><b> $VAR_SCRIPTS_USUARIO_NOME</b> - <i>$SysRtl_Scripts_Campos_DATACRIACAO:</i><b> $VAR_SCRIPTS_DATACRIACAO</b></h6>";
  

/* Permiss�o para o bot�o excluir */  
$btn_excluir = "";
if($PERMISSAO_->ChecarPermissao($this->SISTEMA_['SESSAO']['USUARIO']['CODIGO'], 'SCRIPTS', 'EXCLUIR'))
  $btn_excluir = "<a href=\"javascript::;\" class=\"btn btn-sm btn-$SistemaLayoutCor\" onclick=\"PesquisaDados('.?XMLHTML=true&SysEntidade=SCRIPTS&SysEntidadeAcao=EXCLUIR&SID=$SistemaSessaoUID&txtChaveRegistro=$VAR_SCRIPTS_CODIGO','','DIV_CONTEUDO',null)\"><i class=\"fa fa-trash-o\"></i> <b>$SysRtl_Btn_Excluir</b></a>";

/* Permiss�o para o bot�o desativar */    
$btn_desativar = "";
if($VAR_SCRIPTS_REG_ATIVO)
  if($PERMISSAO_->ChecarPermissao($this->SISTEMA_['SESSAO']['USUARIO']['CODIGO'], 'SCRIPTS', 'DESATIVAR'))
    $btn_desativar = "<a href=\"javascript::;\" class=\"btn btn-sm btn-$SistemaLayoutCor\" onclick=\"PesquisaDados('.?XMLHTML=true&SysEntidade=SCRIPTS&SysEntidadeAcao=DESATIVAR&SID=$SistemaSessaoUID&txtChaveRegistro=$VAR_SCRIPTS_CODIGO','','DIV_CONTEUDO',null)\"><i class=\"fa fa-unlink\"></i> <b>$SysRtl_Btn_Desativar</b></a>";

/* Permiss�o para o bot�o ativar */      
$btn_ativar = "";
if(!$VAR_SCRIPTS_REG_ATIVO)
  if($PERMISSAO_->ChecarPermissao($this->SISTEMA_['SESSAO']['USUARIO']['CODIGO'], 'SCRIPTS', 'ATIVAR'))
    $btn_desativar = "<a href=\"javascript::;\" class=\"btn btn-sm btn-$SistemaLayoutCor\" onclick=\"PesquisaDados('.?XMLHTML=true&SysEntidade=SCRIPTS&SysEntidadeAcao=ATIVAR&SID=$SistemaSessaoUID&txtChaveRegistro=$VAR_SCRIPTS_CODIGO','','DIV_CONTEUDO',null)\"><i class=\"fa fa-link\"></i> <b>$SysRtl_Btn_Ativar</b></a>";

/* Permiss�o para o bot�o editar */      
$btn_editar = "";
if($PERMISSAO_->ChecarPermissao($this->SISTEMA_['SESSAO']['USUARIO']['CODIGO'], 'SCRIPTS', 'ALTERAR'))
  $btn_editar = "<a href=\"javascript::;\" class=\"btn btn-sm btn-$SistemaLayoutCor\" onclick=\"PesquisaDados('.?XMLHTML=true&SysEntidade=SCRIPTS&SysEntidadeAcao=ALTERAR&SID=$SistemaSessaoUID','','DIV_CONTEUDO','FORM_SCRIPTS_CONSULTAR')\"><i class=\"fa fa-edit\"></i> <b>$SysRtl_Btn_Editar</b></a>";

/* Permiss�o para o bot�o novo */    
$btn_novo = "";
if($PERMISSAO_->ChecarPermissao($this->SISTEMA_['SESSAO']['USUARIO']['CODIGO'], 'SCRIPTS', 'INCLUIR'))
  $btn_novo = "<a href=\"javascript::;\" class=\"btn btn-sm btn-$SistemaLayoutCor\" onclick=\"PesquisaDados('.?XMLHTML=true&SysEntidade=SCRIPTS&SysEntidadeAcao=INCLUIR&SID=$SistemaSessaoUID','','DIV_CONTEUDO',null)\"><i class=\"fa fa-file-o\"></i> <b>$SysRtl_Btn_Novo</b></a>";
  
/* Permiss�o para o bot�o pesquisar */  
$btn_pesquisar = "";
if($PERMISSAO_->ChecarPermissao($this->SISTEMA_['SESSAO']['USUARIO']['CODIGO'], 'SCRIPTS', 'PESQUISAR'))
  $btn_pesquisar = "<a href=\"javascript::;\" class=\"btn btn-sm btn-$SistemaLayoutCor\" onclick=\"PesquisaDados('.?XMLHTML=true&SysEntidade=SCRIPTS&SysEntidadeAcao=PESQUISAR&SID=$SistemaSessaoUID','','DIV_CONTEUDO',null)\"><i class=\"fa fa-search\"></i> <b>$SysRtl_Btn_Pesquisar</b></a>";

unset($PERMISSAO_);
// -------------------- EXIBI��O DO FORMULARIO -----------------//

/* Layout do Formul�rio */
$this->SISTEMA_['SAIDA']['EXIBIR'] .= "
<div class=\"col-md-8 col-sm-offset-2\">
  <div class=\"box box-$SistemaLayoutCor\" id=\"DIV_FORM_SCRIPTS\">
    <div class=\"box-header with-border\">
      <h3 class=\"box-title\">$SysRtl_Scripts_Consultar_Conteudo_Titulo</h3>
      
      <div class=\"btn-group pull-right\">
        $btn_excluir
        $btn_desativar
        $btn_ativar
        $btn_editar
        $btn_novo
        $btn_pesquisar
      </div>
      
    </div>
    <div class=\"box-body\">
      <form class=\"form-horizontal\" method=\"post\" action=\"javascript::;\" id=\"FORM_SCRIPTS_CONSULTAR\" name=\"FORM_SCRIPTS_CONSULTAR\" onSubmit=\"\">
        <input type=\"hidden\" id=\"SysEntidade\" name=\"SysEntidade\" value=\"SCRIPTS\">
        <input type=\"hidden\" id=\"SysEntidadeAcao\" name=\"SysEntidadeAcao\" value=\"ALTERAR\">
        <input type=\"hidden\" name=\"txtChaveRegistro\" value=\"$VAR_SCRIPTS_CODIGO\">
        <div class=\"form-group\">
          <label for=\"TXT_SCRIPTS_NOME\" class=\"col-sm-2 control-label\">$SysRtl_Scripts_Campos_NOME</label>
          <div class=\"col-sm-9\">
           <b class=\"form-control\">$VAR_SCRIPTS_NOME</b>
          </div>
        </div>
<div class=\"form-group\">
          <label for=\"TXT_SCRIPTS_DESCRICAO\" class=\"col-sm-2 control-label\">$SysRtl_Scripts_Campos_DESCRICAO</label>
          <div class=\"col-sm-9\">
           <b class=\"form-control\">$VAR_SCRIPTS_DESCRICAO</b>
          </div>
        </div>
<div class=\"form-group\">
          <label for=\"TXT_SCRIPTS_TIPO\" class=\"col-sm-2 control-label\">$SysRtl_Scripts_Campos_TIPO</label>
          <div class=\"col-sm-9\">
           <b class=\"form-control\">$VAR_SCRIPTS_TIPO</b>
          </div>
        </div>
<div class=\"form-group\">
          <label for=\"TXT_SCRIPTS_SCRIPT\" class=\"col-sm-2 control-label\">$SysRtl_Scripts_Campos_SCRIPT</label>
          <div class=\"col-sm-9\">
           <b class=\"form-control\">$VAR_SCRIPTS_SCRIPT</b>
          </div>
        </div>

        $VAR_REGISTRO_INATIVO
        </div>
        <div class=\"box-footer\">
          <div class=\"col-sm-offset-5 col-sm-7\" id=\"DIV_LOG_INFO\">
            $tmpLogVer
          </div>
          <di class=\"col-sm-9\" >
          </di>
        </div>
      </form>        
    </div>
  </div>
</div>";

/* Layout JavaScript para manipula��o do Layout */
$this->SISTEMA_['SAIDA']['EXIBIR'] .= "
<script language=\"text/javascript\">
  LBL_TITULO.innerText='$SysRtl_Scripts_Consultar_Cabecalho_Titulo';
  LBL_SUBTITULO.innerText='$SysRtl_Scripts_Consultar_Cabecalho_Subtitulo';
  LBL_SUBTITULO_LOCAL.innerText='$SysRtl_Scripts_Consultar_Cabecalho_Subtitulo';
  LBL_ARVORE_LOCAL.innerHTML ='<a href=\"javascript::;\"><i class=\"fa $SysRtl_Scripts_Consultar_Cabecalho_Icone\"></i> $SysRtl_Scripts_Consultar_Cabecalho_Titulo</a>';
</script>";
?>