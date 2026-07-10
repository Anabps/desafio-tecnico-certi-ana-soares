# Automação Web

## Objetivo

Esta pasta contém a automação dos principais cenários de teste da página **Register** da aplicação **Automation Testing Demo**, desenvolvida como parte do desafio técnico.

A automação foi implementada utilizando **Robot Framework** e **SeleniumLibrary**, contemplando cenários positivos e negativos baseados nos bugs identificados durante a etapa de testes exploratórios.

**Aplicação testada:**

http://demo.automationtesting.in/Register.html

---

## Tecnologias utilizadas

- Robot Framework
- SeleniumLibrary
- Selenium WebDriver
- Python
- Google Chrome
- ChromeDriver

---

## Estrutura da pasta

```text
2_automacao_web
│
├── README.md
├── requirements.txt
├── run_tests.bat
│
├── resources
│   ├── keywords.robot
│   ├── locators.robot
│   ├── variables.robot
│   └── teste.pdf
│
└── tests
    ├── cadastro.robot
    └── results
        ├── log.html
        ├── report.html
        └── output.xml
```

---

## Casos de teste automatizados

| ID | Cenário | Objetivo |
|----|----------|----------|
| CT001 | Cadastro com dados válidos | Validar o fluxo completo de cadastro. O teste possui **falha esperada**, pois o formulário não pode ser submetido devido ao problema no campo **Country**, identificado durante os testes exploratórios. |
| CT002 | Campos obrigatórios | Verificar que o formulário não é enviado quando os campos obrigatórios permanecem vazios e evidenciar a ausência de mensagens claras indicando quais campos precisam ser preenchidos. |
| CT003 | Senhas diferentes | Validar que o sistema deveria impedir a submissão quando os campos **Password** e **Confirm Password** possuem valores diferentes. O comportamento observado corresponde a um bug previamente reportado. |
| CT004 | Upload de arquivo inválido | Verificar que apenas arquivos de imagem sejam aceitos no campo de upload. O teste evidencia o bug em que arquivos PDF também podem ser selecionados. |
| CT005 | Telefone inválido | Verificar que o sistema informe ao usuário o formato esperado para o campo **Phone**. Foi observado que nenhuma mensagem de orientação é apresentada. |

---

## Como executar

### 1. Instalar as dependências

```bash
pip install -r requirements.txt
```

### 2. Executar os testes

Utilizando o script:

```bash
.\run_tests.bat
```

Ou diretamente pelo Robot Framework:

```bash
robot -d tests/results tests/cadastro.robot
```

---

## Resultados da execução

Após a execução dos testes, o Robot Framework gera automaticamente os seguintes artefatos na pasta **tests/results**:

- `report.html`
- `log.html`
- `output.xml`

Esses arquivos apresentam o resumo da execução, o detalhamento de cada caso de teste e os logs necessários para análise dos resultados.

---

## Observações

- Os testes automatizados foram desenvolvidos utilizando **Robot Framework** e **SeleniumLibrary**.
- Alguns cenários apresentam **falha esperada**, pois reproduzem defeitos identificados durante os testes exploratórios da aplicação.
- As falhas observadas durante a execução correspondem aos bugs documentados no relatório de testes exploratórios e demonstram que a automação é capaz de identificar comportamentos incorretos da aplicação.
- Os relatórios gerados pelo Robot Framework permitem rastrear facilmente os cenários executados, os resultados obtidos e as evidências da execução.

---

## Dependências

As dependências necessárias para execução da automação estão descritas no arquivo `requirements.txt`.

Conteúdo utilizado:

```text
robotframework==7.4.2
robotframework-seleniumlibrary==6.9.0
selenium==4.45.0
```