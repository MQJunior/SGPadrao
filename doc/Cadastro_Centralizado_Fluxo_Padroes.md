
# 📂 Projeto: Cadastro Centralizado com Integração de Sistemas Derivados

## 🎯 Objetivo

Desenvolver um sistema de Cadastro Centralizado para gestão de Pessoas, Localizações e Usuários, permitindo que múltiplos sistemas derivados (PDV, ERP, SGTopo, SGTrade, etc.) consumam essas informações via API REST, garantindo identidade única e integridade cadastral.

O Central NÃO gerencia clientes, fornecedores, técnicos ou funcionários. Esses cadastros são responsabilidade de cada sistema derivado, que pode opcionalmente vincular seus registros a uma Pessoa cadastrada no Central.

---

## 🏛️ Estrutura de Dados (Central vs Derivado)

### Central (Global):
- Pessoas (identidade única)
- Usuários (autenticação)
- Localizações (País, Estado, Cidade, Bairro, CEP, Logradouro)
- Documentos (CPF, CNPJ, RG, etc.)

### Derivados (Local):
- Clientes → podem ou não vincular com Pessoa do Central
- Fornecedores → podem ou não vincular com Pessoa
- Técnicos → podem ou não vincular com Pessoa
- Funcionários → podem ou não vincular com Pessoa
- Contatos locais

> Endereços são sempre definidos no derivado, conforme o papel daquela pessoa no sistema (cliente, fornecedor, técnico, etc.). O Central apenas provê a estrutura para compor os endereços.

---

## 🔐 Fluxo de Autenticação

1. Usuário digita login e senha no derivado.
2. Derivado envia a requisição para o Central: `POST /api/usuarios/autenticar`.
3. Derivado inclui `X-API-KEY` (chave do sistema derivado) para validação.
4. Central valida:
   - API Key (se o sistema é autorizado).
   - Login e senha do usuário.
   - Se o usuário está autorizado a acessar aquele sistema.
5. Se autorizado, o derivado gera seu próprio token local (sessão ou JWT).

---

## 🛡️ Segurança no Fluxo de Consulta de Pessoas

- Consulta não deve ser automática ao digitar CPF.
- Exibir apenas dados mínimos para confirmar identidade:
  ```
  Pessoa encontrada:
  Nome: João Paulo da Silva
  CPF: ***.456.***-00
  Telefone: (11) *****-9999
  Deseja vincular esta pessoa ao cadastro local?
  [Sim] [Não]
  ```
- Log de todas as consultas.
- Limite de tentativas de consulta por usuário e sistema.
- Controle de permissões (ex.: apenas administradores podem consultar pessoas).

---

## 🏗️ Tecnologia Recomendada (Central)

- Banco de Dados: PostgreSQL
- Backend/API: PHP (Slim Framework, Lumen ou Vanilla PHP)
- Autenticação via JWT ou OAuth2
- Containerização recomendada (Docker)

> PostgreSQL pela robustez, integridade relacional, suporte a JSONB e recursos avançados como índices GIN/BRIN, views materializadas e suporte a geolocalização (PostGIS, se necessário).

---

## 📋 Checklist de Implementação

### 🔸 Cadastro Central
- [ ] Estruturar tabelas de Pessoas, Usuários, Localizações, Documentos.
- [ ] Cadastro de Sistemas Derivados com API Key e status ativo/inativo.
- [ ] Implementar autenticação de usuários.
- [ ] Desenvolver API RESTful com autenticação e validação de sistemas.

### 🔸 Segurança e Auditoria
- [ ] Logar todas as autenticações e consultas de pessoa.
- [ ] Implementar limite de tentativas de consulta.
- [ ] Exibir apenas dados mínimos na consulta inicial de CPF.
- [ ] Permitir bloqueio de API Keys ou usuários suspeitos.

### 🔸 Derivados
- [ ] Gerar token local após autenticação no Central.
- [ ] Validar permissão de acesso ao sistema derivado.
- [ ] Gerenciar cadastros de Clientes, Fornecedores, Técnicos, Funcionários, etc.
- [ ] Opcional: permitir vincular cadastros locais a Pessoas do Central.

---

## 🟢 Observações Finais

- A arquitetura garante independência entre os sistemas derivados e centraliza apenas a identidade e a geografia.
- Facilita a integração futura com novas tecnologias (criptoativos, SSO, 2FA, login social).
- Permite evolução sem quebra de compatibilidade entre os sistemas.

---

---

## 📧 E-mail como Dado Centralizado

### 🎯 Definição

O e-mail principal é considerado um **dado de identidade global** e pertence ao cadastro de Pessoas no sistema Central, assim como CPF ou CNPJ.

- O e-mail é **único por Pessoa** no Central.
- É utilizado para:
  - Autenticação de usuários (login)
  - Recuperação de senha
  - Notificações globais
  - Integração futura com login social (Google, Facebook, etc.)
  - Possível autenticação de dois fatores (2FA)

### 🛡️ Regras para E-mail:

| Tipo de E-mail            | Onde é Armazenado             | Observação                                  |
|---------------------------|------------------------------|----------------------------------------------|
| E-mail principal (login, identidade) | Central (Pessoa)                  | Único por pessoa, usado em autenticação      |
| E-mail para cobranças, financeiro, etc. | Derivado (ex.: clientes_emails) | Podem existir vários, são contextuais e locais|

### 🧩 Exemplo:

Pessoa (Central):
```
João Paulo da Silva
CPF: 123.456.789-00
E-mail: joao.silva@email.com
```

Cliente (PDV):
```
Cliente Código: 2001
Pessoa Código: 88
Nome Exibição: João - Carpinteiro
E-mail cobrança: financeiro@carpintariajoao.com
```

> **Importante:** O e-mail principal é sempre centralizado, mas cada derivado pode armazenar e-mails adicionais específicos conforme suas necessidades operacionais.

---
