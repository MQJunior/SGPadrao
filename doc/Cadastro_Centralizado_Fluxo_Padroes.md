
# Projeto de Cadastro Centralizado e Integração com Sistemas Derivados

## 🛠️ Objetivo do Projeto

Desenvolver uma base centralizada de cadastros de Pessoas, Endereços, Localizações (País, Estado, Cidade, Bairro, CEP), Documentos e Usuários, com autenticação única e validação de acesso para diferentes sistemas derivados.

Cada sistema derivado é responsável apenas pelo controle de sessão e permissões internas, enquanto o Cadastro Central valida a identidade dos usuários e fornece as informações cadastrais.

---

## 🏛️ Papel de Cada Sistema

| Sistema                     | Responsabilidade                                      |
|-----------------------------|------------------------------------------------------|
| Cadastro Central            | Gerenciar cadastros e autenticar usuários             |
| Sistemas Derivados          | Gerar token de sessão, validar autorização no central |
|                             | Definir permissões internas do usuário               |

---

## 🔐 Fluxo de Autenticação e Comunicação

1. O usuário envia login e senha para o sistema derivado.
2. O sistema derivado consulta o Cadastro Central:
   - Envia `login`, `senha`, `sistema_origem`.
   - Inclui o header `X-API-KEY` para identificação do derivado.
3. O central valida:
   - A API Key do sistema derivado.
   - O login e senha do usuário.
   - Se o usuário está autorizado a acessar aquele sistema.
4. Se tudo OK:
   - O central responde com informações básicas do usuário.
   - O derivado gera o token local (JWT, sessão PHP, etc.).
5. O derivado controla a expiração e renovação do token local.

---

## 🛡️ Controle de Acesso dos Sistemas Derivados (API Key)

Cada sistema derivado possui:
- Um identificador único (`sistema_origem`).
- Uma `API Key` cadastrada no Central.
- Status de ativo/inativo.

Toda comunicação com o central deve incluir:
```
X-API-KEY: abc123xyz
```

Se o derivado não for reconhecido ou estiver inativo, o central bloqueia a comunicação.

---

## 🧷 Modelo de Comunicação (Headers, Requisições e Respostas)

### Requisição de Autenticação:
```
POST /api/usuarios/autenticar
Headers:
  Content-Type: application/json
  X-API-KEY: abc123xyz
Body:
  {
    "login": "joao",
    "senha": "123456",
    "sistema_origem": "SGTopo"
  }
```

### Resposta (Sucesso):
```json
{
  "status": "ok",
  "usuario_codigo": 42,
  "pessoa_codigo": 88,
  "nome": "João da Silva",
  "sistemas_autorizados": ["SGTopo", "SGTrade"],
  "permitido_neste_sistema": true
}
```

### Resposta (Erro):
```json
{
  "status": "erro",
  "mensagem": "Login ou senha inválidos ou sistema não autorizado"
}
```

---

## 🟢 Checklist de Implementação

- [ ] Cadastro de sistemas derivados com API Key no Central.
- [ ] Endpoint de autenticação disponível no Central.
- [ ] Controle de sessão/token gerado pelos derivados.
- [ ] Validação de API Key em todas as chamadas.
- [ ] Documentação das respostas esperadas.
- [ ] Auditoria básica de tentativas de login.

---

## 🚀 Observações Futuras

- Implementar 2FA opcional no Central.
- Log de auditoria de acessos e autenticações.
- Integração futura com login social (Google, Facebook).
- Possibilidade de Single Sign-On (SSO).
