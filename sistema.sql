/******************************************************************************/
/***          Generated by IBExpert 2012.02.21 17/02/2018 17:55:32          ***/
/******************************************************************************/

/******************************************************************************/
/***      Following SET SQL DIALECT is just for the Database Comparer       ***/
/******************************************************************************/


/******************************************************************************/
/***                                Domains                                 ***/
/******************************************************************************/

CREATE DOMAIN BAIRRO AS
VARCHAR(40);

CREATE DOMAIN CEP AS
VARCHAR(9);

CREATE DOMAIN CODIGO AS
INTEGER;

CREATE DOMAIN CODIGO_LINK AS
INTEGER;

CREATE DOMAIN CPFCNPJ AS
VARCHAR(20);

CREATE DOMAIN DATA AS
DATE;

CREATE DOMAIN DATA_PRECISA AS
NUMERIC(15,15);

CREATE DOMAIN DESCRICAO AS
BLOB SUB_TYPE 1 SEGMENT SIZE 200;

CREATE DOMAIN EMAIL AS
VARCHAR(200);

CREATE DOMAIN ENDERECO AS
VARCHAR(40);

CREATE DOMAIN ESCOLHA AS
CHAR(1);

CREATE DOMAIN LINK AS
VARCHAR(1000);

CREATE DOMAIN NEW_DOMAIN AS
SMALLINT
NOT NULL;

CREATE DOMAIN NOME AS
VARCHAR(100);

CREATE DOMAIN NOMEGRANDE AS
VARCHAR(300);

CREATE DOMAIN NOMESIMPLES AS
VARCHAR(10);

CREATE DOMAIN NOME_TEXTO AS
VARCHAR(500);

CREATE DOMAIN NUMERO AS
INTEGER;

CREATE DOMAIN ORDEM AS
INTEGER
DEFAULT 0;

CREATE DOMAIN STRING20 AS
VARCHAR(20);

CREATE DOMAIN STRING50 AS
VARCHAR(50);

CREATE DOMAIN TELEFONE AS
VARCHAR(15);

CREATE DOMAIN TEMPO AS
DOUBLE PRECISION;

CREATE DOMAIN TESTESINCLUSAO AS
VARCHAR(35);

CREATE DOMAIN TEXTO AS
BLOB SUB_TYPE 1 SEGMENT SIZE 150;

CREATE DOMAIN TIPO AS
INTEGER;

CREATE DOMAIN UF AS
VARCHAR(2);

CREATE DOMAIN VALOR AS
DOUBLE PRECISION;



/******************************************************************************/
/***                               Generators                               ***/
/******************************************************************************/

CREATE GENERATOR GEN_TBL_ARQUIVOS_ID;
CREATE GENERATOR GEN_TBL_SESSOES_ID;
CREATE GENERATOR GEN_TBL_SISTEMA_ID;
CREATE GENERATOR GEN_TBL_SYS_ACOES_ID;
CREATE GENERATOR GEN_TBL_SYS_MENUS_ID;
CREATE GENERATOR GEN_TBL_SYS_PERMISSOES_ID;
CREATE GENERATOR GEN_TBL_USUARIOS_ID;


/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE TBL_ARQUIVOS (
    CODIGO       CODIGO NOT NULL,
    NOME         NOMEGRANDE,
    TIPO         STRING20,
    LOCAL        NOMEGRANDE,
    TAMANHO      NOMESIMPLES,
    NOME_HASH    STRING50,
    DATACRIACAO  DATA,
    SESSAO       CODIGO_LINK,
    USUARIO      CODIGO_LINK,
    REG_ATIVO    TIPO DEFAULT 1
);


CREATE TABLE TBL_SESSOES (
    CODIGO       CODIGO NOT NULL,
    USUARIO      CODIGO_LINK NOT NULL,
    SESSAO_UID   NOME,
    IPCLIENTE    STRING20,
    DATAINICIO   DATA NOT NULL,
    DATAFIM      DATA,
    REG_ATIVO    TIPO DEFAULT 1,
    CLIENTENOME  NOME
);


CREATE TABLE TBL_SISTEMA (
    CODIGO       CODIGO NOT NULL,
    NOME         STRING20 NOT NULL,
    NOME_CURTO   NOMESIMPLES,
    DESCRICAO    DESCRICAO,
    DATACRIACAO  DATA,
    SESSAO       CODIGO_LINK,
    USUARIO      CODIGO_LINK
);


CREATE TABLE TBL_SYS_ACOES (
    CODIGO    CODIGO NOT NULL,
    NOME      NOME NOT NULL,
    ENTIDADE  NOME NOT NULL,
    RESTRITO  TIPO DEFAULT 1 NOT NULL
);


CREATE TABLE TBL_SYS_ENTIDADES (
    NOME    NOME NOT NULL,
    TABELA  NOME NOT NULL
);


CREATE TABLE TBL_SYS_LOGS (
    DATACRIACAO     DATA NOT NULL,
    IPCLIENTE       STRING20 NOT NULL,
    USUARIO         CODIGO_LINK NOT NULL,
    SESSAO          CODIGO_LINK NOT NULL,
    ENTIDADE        NOME NOT NULL,
    ACAO            NOME NOT NULL,
    CHAVE_REGISTRO  CODIGO_LINK
);


CREATE TABLE TBL_SYS_MENUS (
    CODIGO         CODIGO NOT NULL,
    NOME           NOME,
    ENTIDADE_ACAO  CODIGO_LINK,
    ORDEM          ORDEM,
    NIVEL          ORDEM,
    TIPO           NUMERO,
    ICONE          STRING50,
    MENU_PAI       CODIGO_LINK,
    SESSAO         CODIGO_LINK,
    USUARIO        CODIGO_LINK,
    DATACRIACAO    DATA,
    REG_ATIVO      NUMERO DEFAULT 1 NOT NULL
);


CREATE TABLE TBL_SYS_PERMISSOES (
    CODIGO           CODIGO NOT NULL,
    USUARIO          CODIGO_LINK NOT NULL,
    ACAO             CODIGO_LINK NOT NULL,
    ENTIDADE_CODIGO  CODIGO_LINK,
    TIPO_ACESSO      ESCOLHA,
    DATACRIACAO      DATA NOT NULL,
    USUARIO_CRIOU    CODIGO_LINK NOT NULL,
    SESSAO           CODIGO_LINK NOT NULL
);


CREATE TABLE TBL_USUARIOS (
    CODIGO         CODIGO NOT NULL,
    NOME           NOME,
    NOME_EXIBIR    STRING20,
    EMAIL          EMAIL,
    FUNCAO         STRING20,
    TITULO         NOME_TEXTO,
    SENHA          STRING20,
    PESSOA         CODIGO_LINK,
    TIPO           TIPO DEFAULT 5 NOT NULL,
    GRUPO          CODIGO_LINK,
    DESCRICAO      TEXTO,
    IMAGEM         CODIGO_LINK,
    USUARIO_CRIOU  CODIGO_LINK,
    SESSAO         CODIGO_LINK,
    DATACRIACAO    DATA,
    REG_ATIVO      TIPO DEFAULT 1,
    NIVEL          TIPO DEFAULT 0 NOT NULL
);


INSERT INTO TBL_USUARIOS (CODIGO, NOME, NOME_EXIBIR, EMAIL, FUNCAO, TITULO, SENHA, PESSOA, TIPO, GRUPO, IMAGEM, USUARIO_CRIOU, SESSAO, DATACRIACAO, REG_ATIVO, NIVEL) VALUES (1, 'SUPERVISOR', 'SUPERVISOR', 'SUPERVISOR', NULL, NULL, 'ROOTSUPERVISOR', 1, 1, 1, NULL, 1, 1, '2013-05-08 10:16:33', 1, 0);
INSERT INTO TBL_USUARIOS (CODIGO, NOME, NOME_EXIBIR, EMAIL, FUNCAO, TITULO, SENHA, PESSOA, TIPO, GRUPO, IMAGEM, USUARIO_CRIOU, SESSAO, DATACRIACAO, REG_ATIVO, NIVEL) VALUES (3, 'M�RCIO VICARIO RIBEIRO DE QUEIROZ J�NIOR', 'M�RCIO QUEIROZ JR', 'mqjunior@gmail.com', 'PROGRAMADOR', 'PROGRAMADOR ANALISTA', 'WSX852', 1, 1, 1, 10, 1, 1, '2012-03-09 16:47:12', 1, 1);


COMMIT WORK;

INSERT INTO TBL_SISTEMA (CODIGO, NOME, NOME_CURTO, DATACRIACAO, SESSAO, USUARIO) VALUES (1, 'SysPadrao', 'SyP', '2018-01-14 14:35:08', 1, 1);

COMMIT WORK;

INSERT INTO TBL_SYS_ENTIDADES (NOME, TABELA) VALUES ('USUARIO', 'TBL_USUARIOS');
INSERT INTO TBL_SYS_ENTIDADES (NOME, TABELA) VALUES ('PERMISSAO', 'TBL_SYS_PERMISSOES');
INSERT INTO TBL_SYS_ENTIDADES (NOME, TABELA) VALUES ('SISTEMA', 'TBL_SISTEMA');
INSERT INTO TBL_SYS_ENTIDADES (NOME, TABELA) VALUES ('MENSAGEM', 'TBL_MENSAGENS');
INSERT INTO TBL_SYS_ENTIDADES (NOME, TABELA) VALUES ('MENU', 'TBL_MENU');

COMMIT WORK;

INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (1, 'PESQUISAR', 'USUARIO', 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (2, 'PESQUISAR', 'PERMISSAO', 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (6, 'ALTERAR', 'USUARIO', 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (7, 'ATIVAR', 'USUARIO', 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (8, 'BLOQUEAR', 'USUARIO', 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (9, 'INCLUIR', 'USUARIO', 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (3, 'LOGIN', 'USUARIO', 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (4, 'LOGAR', 'SISTEMA', 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (10, 'CONSULTAR', 'USUARIO', 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (11, 'REDEFINIR_SENHA', 'USUARIO', 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (12, 'ALTERAR_SENHA', 'USUARIO', 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (13, 'ALTERAR_PERFIL', 'USUARIO', 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (14, 'PRINCIPAL', 'SISTEMA', 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (15, 'DEBUG', 'SISTEMA', 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (17, 'DOCUMENTACAO', 'SISTEMA', 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (20, 'LISTAR', 'MENSAGEM', 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (21, 'MONTAR', 'MENU', 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (22, 'RELOAD', 'MENU', 0);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (23, 'INCLUIR', 'PERMISSAO', 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (24, 'PERFIL', 'USUARIO', 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (25, 'ALTERAR_IMAGEM', 'USUARIO', 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (26, 'EDITAR', 'MENU', 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (27, 'CONSULTAR', 'MENU', 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (28, 'ORDEM_MUDAR', 'MENU', 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (29, 'EXIBIR', 'MENU', 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (30, 'ALTERAR', 'MENU', 1);
INSERT INTO TBL_SYS_ACOES (CODIGO, NOME, ENTIDADE, RESTRITO) VALUES (31, 'INCLUIR', 'MENU', 1);

COMMIT WORK;

INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (1, 'MENU PRINCIPAL', NULL, 0, 0, 0, '', NULL, 14889, 3, '2018-02-14 00:12:23', 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (2, 'Sistema', NULL, 0, 1, 1, 'fa-cube', 1, 14889, 3, '2018-02-14 00:17:00', 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (3, 'Cadastros', NULL, 1, 1, 1, 'fa-list-alt', 1, 14889, 3, '2018-02-14 00:17:11', 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (4, 'Atendimento', 15, 2, 1, 1, 'fa-book', 1, 14889, 3, '2018-02-14 00:19:58', 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (5, 'Usu�rios', 1, 0, 2, 1, 'fa-users', 2, 14889, 3, '2018-02-14 00:23:41', 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (6, 'Permiss�es', 2, 0, 3, 1, 'fa-lock', 23, 14889, 3, '2018-02-14 00:25:46', 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (7, 'Debug', 15, 1, 2, 1, 'fa-stack-overflow', 2, 14889, 3, '2018-02-14 00:27:53', 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (8, 'Clientes', 15, 0, 2, 1, 'fa-book', 3, 14889, 3, '2018-02-14 00:30:43', 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (9, 'Fornecedores', 15, 1, 2, 1, 'fa-book', 3, 14889, 3, '2018-02-14 00:31:35', 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (10, 'Colaboradores', 15, 2, 2, 1, 'fa-book', 3, 14889, 3, '2018-02-14 00:34:51', 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (11, 'Relat�rios', NULL, 3, 1, 1, 'fa-share', 1, 14889, 3, '2018-02-14 00:36:37', 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (12, 'Financeiro', NULL, 0, 2, 1, 'fa-share', 11, 14889, 3, '2018-02-14 00:37:58', 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (13, 'Contas a Receber', 15, 0, 3, 1, 'fa-book', 12, 14889, 3, '2018-02-14 00:39:32', 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (14, 'Mensagens', 15, 4, 1, 1, 'fa-book', 1, 14889, 3, '2018-02-14 00:42:54', 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (15, 'Documenta��o', 15, 5, 1, 1, 'fa-book', 1, 14889, 3, '2018-02-14 00:43:46', 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (16, 'Menu Geral', 26, 2, 2, 1, 'fa-list', 2, 14889, 3, '2018-02-14 17:43:21', 1);
INSERT INTO TBL_SYS_MENUS (CODIGO, NOME, ENTIDADE_ACAO, ORDEM, NIVEL, TIPO, ICONE, MENU_PAI, SESSAO, USUARIO, DATACRIACAO, REG_ATIVO) VALUES (23, 'Seguran�a', NULL, 3, 2, 1, 'fa-unlock-alt', 2, 14889, 3, '2018-02-17 02:27:50', 1);

COMMIT WORK;

INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (31, 3, 15, 0, '+', '2018-02-08 14:50:27', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (32, 3, 17, 0, '+', '2018-02-08 15:06:57', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (33, 3, 20, 0, '+', '2018-02-08 15:10:20', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (35, 4, 15, 0, '+', '2018-02-09 12:59:40', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (94, 12, 20, 0, '+', '2018-02-13 23:20:17', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (92, 4, 25, 0, '+', '2018-02-13 20:45:45', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (36, 4, 21, 0, '-', '2018-02-09 12:59:40', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (95, 12, 14, 0, '+', '2018-02-13 23:20:17', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (96, 12, 25, 0, '+', '2018-02-13 23:20:17', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (97, 12, 13, 0, '+', '2018-02-13 23:20:17', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (98, 12, 12, 0, '+', '2018-02-13 23:20:17', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (34, 4, 1, 0, '-', '2018-02-08 19:15:35', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (37, 4, 22, 0, '-', '2018-02-09 12:59:40', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (38, 4, 4, 0, '-', '2018-02-09 12:59:40', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (39, 4, 3, 0, '-', '2018-02-09 12:59:40', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (40, 4, 13, 0, '+', '2018-02-09 13:02:12', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (93, 3, 25, 0, '+', '2018-02-13 20:45:51', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (99, 12, 24, 0, '+', '2018-02-13 23:20:17', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (100, 12, 21, 0, '-', '2018-02-13 23:20:17', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (101, 12, 22, 0, '-', '2018-02-13 23:20:17', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (41, 4, 12, 0, '+', '2018-02-09 13:02:12', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (42, 4, 10, 0, '+', '2018-02-09 13:02:12', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (43, 4, 9, 0, '+', '2018-02-09 13:02:12', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (44, 4, 11, 0, '+', '2018-02-09 13:02:12', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (102, 12, 4, 0, '-', '2018-02-13 23:20:17', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (103, 12, 3, 0, '-', '2018-02-13 23:20:17', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (105, 3, 27, 0, '+', '2018-02-16 01:10:48', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (106, 4, 20, 0, '+', '2018-02-16 19:51:05', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (107, 3, 28, 0, '+', '2018-02-16 21:49:16', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (46, 3, 23, 0, '+', '2018-02-09 22:00:06', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (47, 11, 14, 0, '+', '2018-02-09 21:56:28', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (48, 11, 21, 0, '-', '2018-02-09 21:56:28', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (49, 11, 22, 0, '-', '2018-02-09 21:56:28', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (50, 11, 4, 0, '-', '2018-02-09 21:56:28', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (51, 11, 3, 0, '-', '2018-02-09 21:56:28', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (52, 4, 2, 0, '-', '2018-02-09 21:58:02', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (53, 15, 14, 0, '+', '2018-02-09 21:58:15', 4, 14891);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (18, 3, 2, 0, '+', '2018-02-07 13:09:22', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (54, 15, 21, 0, '-', '2018-02-09 21:58:15', 4, 14891);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (20, 3, 13, 0, '+', '2018-02-07 13:09:22', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (21, 3, 8, 0, '+', '2018-02-07 13:09:22', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (22, 3, 10, 0, '+', '2018-02-07 13:09:22', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (55, 15, 22, 0, '-', '2018-02-09 21:58:15', 4, 14891);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (56, 15, 4, 0, '-', '2018-02-09 21:58:15', 4, 14891);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (24, 3, 14, 0, '+', '2018-02-07 13:20:17', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (57, 15, 3, 0, '-', '2018-02-09 21:58:15', 4, 14891);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (25, 3, 1, 0, '+', '2018-02-07 13:26:08', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (58, 4, 17, 0, '+', '2018-02-09 22:33:08', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (26, 3, 6, 0, '+', '2018-02-07 13:32:32', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (27, 3, 12, 0, '+', '2018-02-07 13:32:32', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (28, 3, 7, 0, '+', '2018-02-07 13:32:32', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (29, 3, 9, 0, '+', '2018-02-07 13:32:32', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (30, 3, 11, 0, '+', '2018-02-07 13:32:32', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (59, 3, 21, 0, '-', '2018-02-09 22:33:26', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (60, 3, 22, 0, '-', '2018-02-09 22:33:26', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (61, 3, 4, 0, '-', '2018-02-09 22:33:26', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (62, 3, 3, 0, '-', '2018-02-09 22:33:26', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (63, 4, 14, 0, '-', '2018-02-09 22:33:33', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (104, 3, 26, 0, '+', '2018-02-14 17:38:43', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (64, 14, 14, 0, '+', '2018-02-09 22:33:45', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (65, 14, 21, 0, '-', '2018-02-09 22:33:45', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (66, 14, 22, 0, '-', '2018-02-09 22:33:46', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (67, 14, 4, 0, '-', '2018-02-09 22:33:46', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (68, 14, 3, 0, '-', '2018-02-09 22:33:46', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (108, 3, 29, 0, '+', '2018-02-16 21:55:25', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (109, 3, 30, 0, '+', '2018-02-16 23:21:06', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (110, 3, 31, 0, '+', '2018-02-17 01:05:52', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (69, 3, 24, 0, '+', '2018-02-09 23:20:22', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (70, 4, 24, 0, '+', '2018-02-09 23:21:01', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (71, 9, 14, 0, '+', '2018-02-10 01:27:41', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (72, 9, 13, 0, '+', '2018-02-10 01:27:41', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (73, 9, 12, 0, '+', '2018-02-10 01:27:41', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (74, 9, 24, 0, '+', '2018-02-10 01:27:41', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (75, 9, 21, 0, '-', '2018-02-10 01:27:41', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (76, 9, 22, 0, '-', '2018-02-10 01:27:41', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (77, 9, 4, 0, '-', '2018-02-10 01:27:42', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (78, 9, 3, 0, '-', '2018-02-10 01:27:42', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (79, 9, 20, 0, '+', '2018-02-10 01:27:49', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (80, 14, 17, 0, '-', '2018-02-10 01:51:03', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (81, 7, 14, 0, '+', '2018-02-10 19:51:01', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (82, 7, 21, 0, '-', '2018-02-10 19:51:01', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (83, 7, 22, 0, '-', '2018-02-10 19:51:01', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (84, 7, 4, 0, '-', '2018-02-10 19:51:01', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (85, 7, 3, 0, '-', '2018-02-10 19:51:01', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (86, 16, 2, 0, '+', '2018-02-10 19:57:47', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (87, 16, 14, 0, '+', '2018-02-10 19:57:47', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (88, 16, 21, 0, '-', '2018-02-10 19:57:47', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (89, 16, 22, 0, '-', '2018-02-10 19:57:47', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (90, 16, 4, 0, '-', '2018-02-10 19:57:47', 3, 14889);
INSERT INTO TBL_SYS_PERMISSOES (CODIGO, USUARIO, ACAO, ENTIDADE_CODIGO, TIPO_ACESSO, DATACRIACAO, USUARIO_CRIOU, SESSAO) VALUES (91, 16, 3, 0, '-', '2018-02-10 19:57:47', 3, 14889);

COMMIT WORK;



/******************************************************************************/
/***                           Unique Constraints                           ***/
/******************************************************************************/

ALTER TABLE TBL_SISTEMA ADD CONSTRAINT UNQ1_TBL_SISTEMA UNIQUE (NOME);
ALTER TABLE TBL_USUARIOS ADD CONSTRAINT UNQ1_TBL_USUARIOS UNIQUE (EMAIL);


/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE TBL_ARQUIVOS ADD CONSTRAINT PK_TBL_ARQUIVOS PRIMARY KEY (CODIGO);
ALTER TABLE TBL_SESSOES ADD CONSTRAINT PK_TBL_SESSOES PRIMARY KEY (CODIGO);
ALTER TABLE TBL_SISTEMA ADD CONSTRAINT PK_TBL_SISTEMA PRIMARY KEY (CODIGO);
ALTER TABLE TBL_SYS_ACOES ADD PRIMARY KEY (CODIGO);
ALTER TABLE TBL_SYS_ENTIDADES ADD CONSTRAINT PK_TBL_SYS_ENTIDADES PRIMARY KEY (NOME);
ALTER TABLE TBL_SYS_MENUS ADD CONSTRAINT PK_TBL_SYS_MENUS PRIMARY KEY (CODIGO);
ALTER TABLE TBL_SYS_PERMISSOES ADD CONSTRAINT PK_TBL_SYS_PERMISSOES PRIMARY KEY (CODIGO);
ALTER TABLE TBL_USUARIOS ADD CONSTRAINT PK_TBL_USUARIOS PRIMARY KEY (CODIGO);


/******************************************************************************/
/***                              Foreign Keys                              ***/
/******************************************************************************/

ALTER TABLE TBL_ARQUIVOS ADD CONSTRAINT FK_TBL_ARQUIVOS_SESSAO FOREIGN KEY (SESSAO) REFERENCES TBL_SESSOES (CODIGO);
ALTER TABLE TBL_ARQUIVOS ADD CONSTRAINT FK_TBL_ARQUIVOS_USUARIO FOREIGN KEY (USUARIO) REFERENCES TBL_USUARIOS (CODIGO);
ALTER TABLE TBL_SESSOES ADD CONSTRAINT FK_TBL_SESSOES_USUARIO FOREIGN KEY (USUARIO) REFERENCES TBL_USUARIOS (CODIGO);
ALTER TABLE TBL_SISTEMA ADD CONSTRAINT FK_TBL_SISTEMA_SESSAO FOREIGN KEY (SESSAO) REFERENCES TBL_SESSOES (CODIGO);
ALTER TABLE TBL_SISTEMA ADD CONSTRAINT FK_TBL_SISTEMA_USUARIO FOREIGN KEY (USUARIO) REFERENCES TBL_USUARIOS (CODIGO);
ALTER TABLE TBL_SYS_ACOES ADD CONSTRAINT FK_TBL_SYS_ACOES_1 FOREIGN KEY (ENTIDADE) REFERENCES TBL_SYS_ENTIDADES (NOME);
ALTER TABLE TBL_SYS_MENUS ADD CONSTRAINT FK_TBL_SYS_MENUS_ENTIDADE_ACAO FOREIGN KEY (ENTIDADE_ACAO) REFERENCES TBL_SYS_ACOES (CODIGO);
ALTER TABLE TBL_SYS_MENUS ADD CONSTRAINT FK_TBL_SYS_MENUS_MENU_PAI FOREIGN KEY (MENU_PAI) REFERENCES TBL_SYS_MENUS (CODIGO);
ALTER TABLE TBL_SYS_MENUS ADD CONSTRAINT FK_TBL_SYS_MENUS_SESSOES FOREIGN KEY (SESSAO) REFERENCES TBL_SESSOES (CODIGO);
ALTER TABLE TBL_SYS_MENUS ADD CONSTRAINT FK_TBL_SYS_MENUS_USUARIOS FOREIGN KEY (USUARIO) REFERENCES TBL_USUARIOS (CODIGO);
ALTER TABLE TBL_SYS_PERMISSOES ADD CONSTRAINT FK_TBL_SYS_PERMISSOES_ACAO FOREIGN KEY (ACAO) REFERENCES TBL_SYS_ACOES (CODIGO);
ALTER TABLE TBL_SYS_PERMISSOES ADD CONSTRAINT FK_TBL_SYS_PERMISSOES_USUARIO FOREIGN KEY (USUARIO) REFERENCES TBL_USUARIOS (CODIGO);
ALTER TABLE TBL_USUARIOS ADD CONSTRAINT FK_TBL_USUARIOS_IMAGEM FOREIGN KEY (IMAGEM) REFERENCES TBL_ARQUIVOS (CODIGO);
ALTER TABLE TBL_USUARIOS ADD CONSTRAINT FK_TBL_USUARIOS_SESSAO FOREIGN KEY (SESSAO) REFERENCES TBL_SESSOES (CODIGO);
ALTER TABLE TBL_USUARIOS ADD CONSTRAINT FK_TBL_USUARIOS_USUARIO_CRIOU FOREIGN KEY (USUARIO_CRIOU) REFERENCES TBL_USUARIOS (CODIGO);


/******************************************************************************/
/***                                Indices                                 ***/
/******************************************************************************/

CREATE INDEX TBL_ARQUIVOS_IDX_NOME ON TBL_ARQUIVOS (NOME);
CREATE INDEX TBL_ARQUIVOS_IDX_NOME_HASH ON TBL_ARQUIVOS (NOME_HASH);
CREATE INDEX TBL_SESSOES_DATAFIM ON TBL_SESSOES (DATAFIM);
CREATE INDEX TBL_SESSOES_REGATIVO ON TBL_SESSOES (REG_ATIVO);
CREATE INDEX TBL_SESSOES_SESSAOUID ON TBL_SESSOES (SESSAO_UID);
CREATE INDEX TBL_SYS_ACOES_NOME ON TBL_SYS_ACOES (NOME);
CREATE INDEX TBL_SYS_LOGS_IDX_ACAO ON TBL_SYS_LOGS (ACAO);
CREATE INDEX TBL_SYS_LOGS_IDX_ENTIDADE ON TBL_SYS_LOGS (ENTIDADE);
CREATE INDEX TBL_SYS_LOGS_IDX_SESSAO ON TBL_SYS_LOGS (SESSAO);
CREATE INDEX TBL_SYS_LOGS_IDX_USUARIO ON TBL_SYS_LOGS (USUARIO);
CREATE INDEX TBL_SYS_PERMISSOES_CHAVE_ENTIDA ON TBL_SYS_PERMISSOES (ENTIDADE_CODIGO);


/******************************************************************************/
/***                                Triggers                                ***/
/******************************************************************************/


SET TERM ^ ;



/******************************************************************************/
/***                          Triggers for tables                           ***/
/******************************************************************************/



/* Trigger: TBL_ARQUIVOS_BI */
CREATE TRIGGER TBL_ARQUIVOS_BI FOR TBL_ARQUIVOS
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_tbl_arquivos_id,1);
end
^


/* Trigger: TBL_SESSOES_BI */
CREATE TRIGGER TBL_SESSOES_BI FOR TBL_SESSOES
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_tbl_sessoes_id,1);
end
^


/* Trigger: TBL_SISTEMA_BI */
CREATE TRIGGER TBL_SISTEMA_BI FOR TBL_SISTEMA
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_tbl_sistema_id,1);
end
^


/* Trigger: TBL_SYS_ACOES_BI */
CREATE TRIGGER TBL_SYS_ACOES_BI FOR TBL_SYS_ACOES
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_tbl_sys_acoes_id,1);
end
^


/* Trigger: TBL_SYS_MENUS_BI */
CREATE TRIGGER TBL_SYS_MENUS_BI FOR TBL_SYS_MENUS
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_tbl_sys_menus_id,1);
end
^


/* Trigger: TBL_SYS_PERMISSOES_BI */
CREATE TRIGGER TBL_SYS_PERMISSOES_BI FOR TBL_SYS_PERMISSOES
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_tbl_sys_permissoes_id,1);
end
^


/* Trigger: TBL_USUARIOS_BI */
CREATE TRIGGER TBL_USUARIOS_BI FOR TBL_USUARIOS
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codigo is null) then
    new.codigo = gen_id(gen_tbl_usuarios_id,1);
end
^


SET TERM ; ^
