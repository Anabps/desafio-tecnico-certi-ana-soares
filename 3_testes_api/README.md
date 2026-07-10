# Testes de API - Fake Store API

## Objetivo

Esta pasta contém os artefatos produzidos para a etapa de testes de API do desafio técnico.

Os testes foram realizados utilizando a **Fake Store API**, com o objetivo de validar o comportamento dos principais endpoints da aplicação, verificando operações de consulta, criação, atualização, exclusão e autenticação.

API utilizada: https://fakestoreapi.com/

---

## Ferramentas utilizadas

- Postman
- JavaScript (Scripts de Teste do Postman)

---

## Estrutura da pasta

```text
3_testes_api
│
├── Casos_de_Teste_API.md
├── FakeStore_API.postman_collection.json
├── Evidencias
│   ├── CT_API_001_GET_Products.png
│   ├── CT_API_002_GET_ProductById.png
│   ├── CT_API_003_POST_Product.png
│   ├── CT_API_004_PUT_Product.png
│   ├── CT_API_005_DELETE_Product.png
│   └── CT_API_006_Login.png
└── README.md
```

---

## Casos de teste contemplados

Foram elaborados e executados seis casos de teste, classificados conforme solicitado no desafio:

### Casos Básicos

| ID | Descrição |
|----|-----------|
| CT_API_001 | Listar todos os produtos (`GET /products`) |
| CT_API_002 | Consultar um produto por ID (`GET /products/{id}`) |

### Casos Intermediários

| ID | Descrição |
|----|-----------|
| CT_API_003 | Criar um novo produto (`POST /products`) |
| CT_API_004 | Atualizar um produto existente (`PUT /products/{id}`) |

### Casos Avançados

| ID | Descrição |
|----|-----------|
| CT_API_005 | Excluir um produto (`DELETE /products/{id}`) |
| CT_API_006 | Autenticar um usuário (`POST /auth/login`) |

---

## Validações realizadas

Os scripts implementados na aba **Tests** do Postman realizam validações como:

- Verificação do código de status HTTP;
- Validação da estrutura da resposta;
- Verificação da existência dos atributos esperados;
- Validação dos dados retornados pela API;
- Verificação do retorno do token de autenticação no endpoint de login.

---

## Evidências

As evidências da execução dos testes encontram-se na pasta **Evidencias**, contendo capturas de tela das requisições executadas e das respostas retornadas pela API.

---

## Collection

A Collection utilizada está disponível no arquivo:

`FakeStore_API.postman_collection.json`

Ela contém todas as requisições utilizadas durante os testes, juntamente com os scripts automatizados de validação implementados no Postman.