# Casos de Teste - Fake Store API

## Objetivo

Validar os principais endpoints da Fake Store API, verificando o comportamento esperado para operações de consulta, criação, atualização, exclusão e autenticação.

---

# Casos Básicos

| ID | Endpoint | Método | Objetivo | Resultado Esperado |
|----|----------|--------|----------|--------------------|
| CT_API_001 | /products | GET | Listar todos os produtos | Status **200 OK** e retorno de uma lista de produtos. |
| CT_API_002 | /products/1 | GET | Consultar um produto específico | Status **200 OK** e retorno do produto com os atributos esperados (id, title, price, etc.). |

---

# Casos Intermediários

| ID | Endpoint | Método | Objetivo | Resultado Esperado |
|----|----------|--------|----------|--------------------|
| CT_API_003 | /products | POST | Criar um novo produto | Status **201 Created** e retorno do produto contendo um ID. |
| CT_API_004 | /products/1 | PUT | Atualizar um produto existente | Status **200 OK** e retorno das informações atualizadas. |

---

# Casos Avançados

| ID | Endpoint | Método | Objetivo | Resultado Esperado |
|----|----------|--------|----------|--------------------|
| CT_API_005 | /products/1 | DELETE | Excluir um produto | Status **200 OK** e confirmação da exclusão. |
| CT_API_006 | /auth/login | POST | Realizar autenticação | Status **200 OK** e retorno de um token JWT válido. |

---

## Ferramenta Utilizada

- Postman

## Evidências

As evidências de execução encontram-se na pasta `Evidencias`, contendo as capturas das requisições e respostas obtidas durante os testes.

## Collection

A Collection utilizada encontra-se no arquivo:

`FakeStore_API.postman_collection.json`