<?php
header('Content-Type: text/html; charset=UTF-8');

$this->SISTEMA_['SAIDA']['EXIBIR'] =
  "<!DOCTYPE html>
<html>
  <head>
    <meta charset=\"utf-8\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
    <title>$RtlSistemaTitulo | Entrar</title>
    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback\">

<link rel=\"stylesheet\" href=\"https://adminlte.io/themes/v3/plugins/fontawesome-free/css/all.min.css\">

<link rel=\"stylesheet\" href=\"https://adminlte.io/themes/v3/plugins/icheck-bootstrap/icheck-bootstrap.min.css\">

<link rel=\"stylesheet\" href=\"https://adminlte.io/themes/v3/dist/css/adminlte.min.css?v=3.2.0\">
  </head>
  <body class=\"hold-transition login-page\">
    <div class=\"login-box\">
      <div class=\"login-logo\">
        <a href=\".\"><b>$RtlSistemaTitulo</b></a>
      </div><!-- /.login-logo -->

      <div class=\"card\">
        <div class=\"card-body login-card-body\">
          <p class=\"login-box-msg\">$SysRtl_Sistema_Logar_Mensagem_BoaVindas</p>
        
          <div class=\"login-box-body\">
            <p class=\"text-red\">" . $SAIDA_MENSAGEM_ERROR . "</p>
            <form action=\".\" method=\"post\">
              <div class=\"input-group mb-3\">
                <input type=\"hidden\" name=\"SysEntidade\" value=\"USUARIO\">
                <input type=\"hidden\" name=\"SysEntidadeAcao\" value=\"LOGIN\">

                <div class=\"input-group mb-3\">
                  <input type=\"email\" class=\"form-control\" placeholder=\"Email\" name=\"txtLoginEmail\" id=\"txtLoginEmail\">
                  <div class=\"input-group-append\">
                    <div class=\"input-group-text\">
                      <span class=\"fas fa-envelope\"></span>
                    </div>
                  </div>
                </div>

                <div class=\"input-group mb-3\">
                  <input type=\"password\" class=\"form-control\" placeholder=\"Password\" id=\"txtLoginSenha\" name=\"txtLoginSenha\">
                  <div class=\"input-group-append\">
                    <div class=\"input-group-text\">
                      <span class=\"fas fa-lock\"></span>
                    </div>
                  </div>
                </div>

                
                <div class=\"row\">
                  <div class=\"col-8\">
                    <div class=\"icheck-primary\">
                      <input type=\"checkbox\" name=\"txtManterConectado\" id=\"txtManterConectado\" > 
                      <label for=\"txtManterConectado\"> $SysRtl_Sistema_Logar_TxtManterConectado  </label>
                    </div>
                  </div><!-- /.col -->
                </div>
                
                <div class=\"col-4\">
                    <button type=\"submit\" class=\"btn btn-$SistemaLayoutCor btn-block btn-flat\">Entrar</button>
                </div><!-- /.col -->
              </div>  
            </form>
            <a href=\"#\">Esqueci minha senha</a><br>
          </div>
        </div> <!-- card -->

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->
    <script src=\"https://adminlte.io/themes/v3/plugins/jquery/jquery.min.js\"></script>

    <script src=\"https://adminlte.io/themes/v3/plugins/bootstrap/js/bootstrap.bundle.min.js\"></script>

    <script src=\"https://adminlte.io/themes/v3/dist/js/adminlte.min.js?v=3.2.0\"></script>
  </body>
</html>";

//echo $tmp_Saida_Include;
?>