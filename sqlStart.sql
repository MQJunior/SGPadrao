
INSERT INTO TBL_SYS_ENTIDADES (CODIGO, NOME, TABELA, REG_ATIVO) VALUES (1, 'ENTIDADEACAO', 'TBL_SYS_ACOES', 1);
INSERT INTO TBL_SYS_ENTIDADES (CODIGO, NOME, TABELA, REG_ATIVO) VALUES (2, 'SISTEMA', 'TBL_SISTEMA', 1);
INSERT INTO TBL_SYS_ENTIDADES (CODIGO, NOME, TABELA, REG_ATIVO) VALUES (3, 'USUARIO', 'TBL_USUARIOS', 1);
INSERT INTO TBL_SYS_ENTIDADES (CODIGO, NOME, TABELA, REG_ATIVO) VALUES (4, 'PERMISSAO', 'TBL_SYS_PERMISSOES', 1);
INSERT INTO TBL_SYS_ENTIDADES (CODIGO, NOME, TABELA, REG_ATIVO) VALUES (5, 'MENU', 'TBL_MENU', 1);
INSERT INTO TBL_SYS_ENTIDADES (CODIGO, NOME, TABELA, REG_ATIVO) VALUES (6, 'LOGATIVIDADE', 'TBL_SYS_LOGS', 1);
INSERT INTO TBL_SYS_ENTIDADES (CODIGO, NOME, TABELA, REG_ATIVO) VALUES (7, 'TAREFAS', 'TBL_SYS_TAREFAS', 1);
INSERT INTO TBL_SYS_ENTIDADES (CODIGO, NOME, TABELA, REG_ATIVO) VALUES (8, 'SCRIPTS', 'TBL_SYS_SCRIPTS', 1);
INSERT INTO TBL_SYS_ENTIDADES (CODIGO, NOME, TABELA, REG_ATIVO) VALUES (9, 'BACKUP', 'TBL_SYS_BACKUP', 1);

COMMIT WORK;

INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (1, 'PESQUISAR', 'ENTIDADEACAO', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (2, 'CONSULTAR_ENTIDADE', 'ENTIDADEACAO', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (3, 'LISTAR_ACAO', 'ENTIDADEACAO', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (4, 'INCLUIR_ENTIDADE', 'ENTIDADEACAO', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (5, 'INCLUIR_ACAO', 'ENTIDADEACAO', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (6, 'CONSULTAR_ACAO', 'ENTIDADEACAO', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (7, 'ALTERAR_ACAO', 'ENTIDADEACAO', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (8, 'SALVAR_ARQUIVO', 'ENTIDADEACAO', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (9, 'CRIAR_DIRETORIO', 'ENTIDADEACAO', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (10, 'EDITAR_ARQUIVO', 'ENTIDADEACAO', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (11, 'CRIAR_ARQUIVO', 'ENTIDADEACAO', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (12, 'VISUALIZAR_ARQUIVO', 'ENTIDADEACAO', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (13, 'IMPORTAR_MODELO', 'ENTIDADEACAO', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (14, 'LOGAR', 'SISTEMA', 0, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (15, 'PRINCIPAL', 'SISTEMA', 1, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (16, 'DEBUG', 'SISTEMA', 1, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (17, 'DOCUMENTACAO', 'SISTEMA', 1, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (18, 'BACKUP_RESTORE', 'SISTEMA', 1, 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (19, 'CRIAR_TABELA', 'SISTEMA', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (20, 'TABELA_CARREGAR_CSV', 'SISTEMA', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (21, 'CRIAR_TABELA_SQL', 'SISTEMA', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (22, 'TABELA_CSV_GERAR_SQL', 'SISTEMA', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (23, 'BACKUP_INCLUIR', 'SISTEMA', 1, 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (24, 'BACKUP_CONSULTAR', 'SISTEMA', 1, 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (25, 'BACKUP_ALTERAR', 'SISTEMA', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (26, 'TABELAS', 'SISTEMA', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (27, 'BACKUP_EXECUTAR', 'SISTEMA', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (28, 'PESQUISAR', 'USUARIO', 1, 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (29, 'ALTERAR', 'USUARIO', 1, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (30, 'ATIVAR', 'USUARIO', 1, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (31, 'BLOQUEAR', 'USUARIO', 1, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (32, 'INCLUIR', 'USUARIO', 1, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (33, 'LOGIN', 'USUARIO', 0, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (34, 'CONSULTAR', 'USUARIO', 1, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (35, 'REDEFINIR_SENHA', 'USUARIO', 1, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (36, 'ALTERAR_SENHA', 'USUARIO', 1, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (37, 'ALTERAR_PERFIL', 'USUARIO', 1, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (38, 'PERFIL', 'USUARIO', 1, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (39, 'ALTERAR_IMAGEM', 'USUARIO', 1, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (40, 'PESQUISAR', 'PERMISSAO', 1, 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (41, 'INCLUIR', 'PERMISSAO', 1, 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (42, 'MONTAR', 'MENU', 0, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (43, 'RELOAD', 'MENU', 0, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (44, 'EDITAR', 'MENU', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (45, 'CONSULTAR', 'MENU', 1, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (46, 'ORDEM_MUDAR', 'MENU', 1, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (47, 'EXIBIR', 'MENU', 1, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (48, 'ALTERAR', 'MENU', 1, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (49, 'INCLUIR', 'MENU', 1, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (50, 'INFORMACAO', 'LOGATIVIDADE', 1, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (51, 'VER', 'LOGATIVIDADE', 1, 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (52, 'PESQUISAR', 'TAREFAS', 1, 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (53, 'INCLUIR', 'TAREFAS', 1, 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (54, 'AGENTE', 'TAREFAS', 1, 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (55, 'CONSULTAR', 'TAREFAS', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (56, 'ALTERAR', 'TAREFAS', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (57, 'TABELA_REGISTROS', 'TAREFAS', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (58, 'ATIVAR', 'TAREFAS', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (59, 'PESQUISAR', 'SCRIPTS', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (60, 'PESQUISA', 'SCRIPTS', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (61, 'INCLUIR', 'SCRIPTS', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (62, 'CONSULTAR', 'SCRIPTS', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (63, 'ALTERAR', 'SCRIPTS', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (64, 'ATIVAR', 'SCRIPTS', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (65, 'DESATIVAR', 'SCRIPTS', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (66, 'EXCLUIR', 'SCRIPTS', 1, 2);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO, NIVEL) VALUES (67, 'EXECUTAR', 'SCRIPTS', 1, 2);

COMMIT WORK;

INSERT INTO TBL_USUARIOS (CODIGO, NOME, EMAIL, SENHA, PESSOA, TIPO, GRUPO, USUARIO_CRIOU, SESSAO, DATACRIACAO, REG_ATIVO, NOME_EXIBIR, FUNCAO, TITULO, IMAGEM, NIVEL) VALUES (1, 'SISTEMA', 'SISTEMA@SISTEMA', 'SISTEMA', 1, 1, 1, 1, 1, cast('now' as date), 1, 'SISTEMA', 'SISTEMA', 'SISTEMA', NULL, 0);

COMMIT WORK;

INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (1, 'MENU PRINCIPAL', NULL, 0, 0, 0, '', NULL, 1, 1, cast('now' as date), 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (2, NULL, NULL, 1, 0, 1, NULL, NULL, 1, 1, cast('now' as date), 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (3, 'Sistema', NULL, 0, 1, 1, 'fa-cube', 1, 1, 1, cast('now' as date), 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (4, 'Desenvolvimento', NULL, 2, 2, 1, 'fa-gears', 3, 1, 1, cast('now' as date), 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (5, 'Menu Geral', 44, 1, 3, 1, 'fa-list', 4, 1, 1, cast('now' as date), 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (6, 'Ferramentas', NULL, 0, 2, 1, 'fa-wrench', 3, 1, 1, cast('now' as date), 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (7, 'Seguran�a', NULL, 1, 2, 1, 'fa-unlock-alt', 3, 1, 1, cast('now' as date), 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (8, 'Entidade A��o', 1, 0, 3, 1, 'fa-cubes', 4, 1, 1, cast('now' as date), 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (9, 'Debug', 16, 2, 3, 1, 'fa-stack-overflow', 4, 1, 1, cast('now' as date), 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (10, 'Usu�rios', 28, 0, 3, 1, 'fa-users', 7, 1, 1, cast('now' as date), 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (11, 'Permiss�es', 40, 1, 3, 1, 'fa-lock', 7, 1, 1, cast('now' as date), 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (12, 'Backup/Restore', 18, 0, 3, 1, 'fa-hdd-o', 6, 1, 1, cast('now' as date), 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (13, 'Tabelas', 26, 1, 3, 1, 'fa-table', 6, 1, 1, cast('now' as date), 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (15, 'Scripts', 59, 3, 3, 1, 'fa-file-code-o', 6, 1, 1, cast('now' as date), 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (14, 'Tarefas', 52, 2, 3, 1, 'fa-tasks', 6, 1, 1, cast('now' as date), 1);

COMMIT WORK;

INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 1, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 2, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 3, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 4, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 5, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 6, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 7, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 8, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 9, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 10, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 11, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 12, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 13, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 14, 0, '-', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 15, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 16, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 17, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 18, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 19, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 20, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 21, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 22, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 23, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 24, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 25, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 26, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 27, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 28, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 29, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 30, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 31, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 32, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 33, 0, '-', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 34, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 35, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 36, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 37, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 38, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 39, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 40, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 41, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 42, 0, '-', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 43, 0, '-', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 44, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 45, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 46, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 47, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 48, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 49, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 50, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 51, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 52, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 53, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 54, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 55, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 56, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 57, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 58, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 59, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 60, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 61, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 62, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 63, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 64, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 65, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 66, 0, '+', cast('now' as date), 1, 1);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (null, 1, 67, 0, '+', cast('now' as date), 1, 1);

COMMIT WORK;

