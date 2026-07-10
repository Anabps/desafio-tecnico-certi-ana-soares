# Desafio Técnico - Quality Assurance (QA)

**Candidata:** Ana Beatriz Pimentel Soares

---

## Sobre o projeto

Este repositório contém a solução desenvolvida para o desafio técnico de **Quality Assurance (QA)**.

O objetivo foi demonstrar conhecimentos em planejamento, execução, documentação e automação de testes, contemplando diferentes níveis de validação de software por meio de:

- Testes Exploratórios Web;
- Automação de Testes Web;
- Testes de API.

Todos os artefatos foram organizados de forma independente para facilitar a navegação, reprodução dos testes e análise dos resultados.

---

# Estrutura do projeto

```text
DESAFIO-TECNICO-CERTI-ANA-SOARES
│
├── 2_automacao_web
│   ├── resources
│   ├── results
│   ├── tests
│   ├── README.md
│   ├── requirements.txt
│   ├── run_tests.bat
│   └── video_execucao.mp4
│
├── 3_testes_api
│   ├── Evidencias
│   ├── Casos_de_Teste_API.md
│   ├── FakeStore_API.postman_collection.json
│   └── README.md
│
├── 11_testes_exploratorios_web
│   ├── Evidencias
│   └── Exploratorios.md
│
├── 12_casos_de_testes_web
│   └── Casos_de_Teste.md
│
├── .gitignore
└── README.md
```

---

# Etapas desenvolvidas

## 1. Testes Exploratórios Web

Foram realizados testes exploratórios na página **Register** da aplicação **Automation Testing Demo**, buscando identificar problemas funcionais, inconsistências de usabilidade e falhas de validação.

Foram produzidos os seguintes artefatos:

- Casos de teste;
- Registro dos bugs encontrados;
- Evidências de execução;
- Documentação da atividade.

---

## 2. Automação Web

Foi desenvolvida uma suíte de testes automatizados utilizando **Robot Framework** e **SeleniumLibrary**, baseada nos principais cenários identificados durante a etapa exploratória.

### Casos automatizados

- CT001 – Cadastro com dados válidos;
- CT002 – Validação dos campos obrigatórios;
- CT003 – Senhas diferentes;
- CT004 – Upload de arquivo inválido;
- CT005 – Validação do campo Phone.

Alguns cenários apresentam **falha esperada**, pois reproduzem defeitos previamente identificados durante os testes exploratórios, demonstrando que a automação é capaz de detectar comportamentos incorretos da aplicação.

Os relatórios de execução são gerados automaticamente pelo Robot Framework.

---

## 3. Testes de API

Os testes de API foram realizados utilizando a **Fake Store API** por meio do **Postman**.

Foram desenvolvidos:

- 2 casos de teste básicos;
- 2 casos de teste intermediários;
- 2 casos de teste avançados.

Além da execução das requisições, foram implementados scripts automatizados para validação das respostas da API.

As validações contemplam:

- Código de status HTTP;
- Estrutura da resposta;
- Dados retornados;
- Token de autenticação;
- Tempo de resposta (quando aplicável).

Também foram disponibilizados:

- Collection do Postman;
- Casos de teste;
- Evidências de execução.

---

# Tecnologias utilizadas

### Testes Web

- Robot Framework
- SeleniumLibrary
- Selenium WebDriver
- Python
- Google Chrome
- ChromeDriver

### Testes de API

- Postman
- JavaScript (Scripts de Teste)

### Controle de versão

- Git
- GitHub

---

# Como executar

## Automação Web

Instale as dependências:

```bash
pip install -r 2_automacao_web/requirements.txt
```

Execute a suíte de testes:

```bash
cd 2_automacao_web
.\run_tests.bat
```

Ou execute diretamente pelo Robot Framework:

```bash
robot -d tests/results tests/cadastro.robot
```

Após a execução serão gerados automaticamente:

- `report.html`
- `log.html`
- `output.xml`

na pasta:

```text
2_automacao_web/tests/results
```

---

# Estrutura dos artefatos

| Pasta | Conteúdo |
|--------|----------|
| **1_testes_exploratorios_web** | Casos de teste, bugs encontrados, evidências e documentação dos testes exploratórios. |
| **2_automacao_web** | Código da automação, recursos, suíte de testes, dependências e relatórios de execução. |
| **3_testes_api** | Collection do Postman, casos de teste, evidências e documentação dos testes de API. |

---

# Considerações finais

Este projeto foi desenvolvido com o objetivo de demonstrar conhecimentos nas principais atividades desempenhadas por um profissional de **Quality Assurance**, incluindo:

- Planejamento de testes;
- Elaboração de casos de teste;
- Execução de testes exploratórios;
- Registro e documentação de defeitos;
- Automação de testes Web;
- Testes de API;
- Organização da documentação e dos artefatos produzidos.

As falhas identificadas durante os testes exploratórios foram documentadas e, quando aplicável, reproduzidas na automação, evidenciando a capacidade dos testes automatizados em detectar comportamentos incorretos da aplicação.

---

# Autora

**Ana Beatriz Pimentel Soares**

- Engenheira Eletrônica
- Analista de Qualidade de Software (QA)
- Certificação **ISTQB® Certified Tester Foundation Level (CTFL)**

**GitHub:** https://github.com/Anabps