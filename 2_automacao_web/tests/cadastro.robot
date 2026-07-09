*** Settings ***

Documentation     Automação dos testes da página Register
Resource          ../resources/keywords.robot

Test Setup        Abrir Navegador
Test Teardown     Fechar Navegador

*** Test Cases ***

CT001 - Cadastro com Dados Válidos
    [Documentation]
    ...    Verifica se um usuário consegue realizar o cadastro com dados válidos.
    ...    Resultado esperado: o formulário deve ser submetido com sucesso.
    ...    Observação: atualmente este teste falha devido ao BUG-005, identificado durante os testes exploratórios.
    ...    O campo Country não permite seleção, impedindo a conclusão do cadastro.

    Preencher Dados Válidos

    # O campo Country deveria ser selecionado aqui, porém a aplicação
    # apresenta um defeito que impede sua utilização.

    Enviar Formulário

    Location Should Contain
...    WebTable
...    msg=Esperava que o cadastro fosse concluído com sucesso. O teste permaneceu na página de cadastro, indicando possível ocorrência do BUG-005 (campo Country impede a submissão do formulário).

CT002 - Validação dos Campos Obrigatórios
    [Documentation]
    ...    Verifica o comportamento ao enviar o formulário vazio.
    ...    Resultado esperado: o sistema deve impedir a submissão e exibir mensagens claras para os campos obrigatórios.
    ...    Resultado observado: o formulário não é enviado, porém não há mensagens claras de validação.
    ...    Defeito relacionado: BUG-010.

    Enviar Formulário

    Location Should Contain
    ...    Register
    ...    msg=O formulário não foi submetido.

    Log
    ...    BUG-010: A aplicação não informa claramente quais campos são obrigatórios.

CT003 - Senhas Diferentes
    [Documentation]
    ...    Verifica que o sistema deve impedir a submissão quando as senhas são diferentes.
    ...    Resultado esperado: o cadastro não deve ser enviado.
    ...    Resultado observado: a aplicação permite a tentativa de submissão.
    ...    Defeito relacionado: BUG-012.

    Preencher Dados Válidos
    Input Password    ${PASSWORD_FIELD}          ${PASSWORD}
    Input Password    ${CONFIRM_PASSWORD_FIELD}  ${WRONG_PASSWORD}

    Enviar Formulário

    Location Should Contain
    ...    WebTable
    ...    msg=Esperava que o sistema bloqueasse a submissão devido às senhas diferentes.

CT004 - Upload de Arquivo Inválido
    [Documentation]
    ...    Verifica que o campo de upload aceita apenas arquivos de imagem.
    ...    Resultado esperado: arquivos PDF devem ser rejeitados.
    ...    Resultado observado: a aplicação permite selecionar um arquivo PDF.
    ...    Defeito relacionado: BUG-014.

    Realizar Upload PDF

    Fail
    ...    BUG-014 confirmado: a aplicação permite selecionar um arquivo PDF no campo destinado exclusivamente ao upload de imagens.

CT005 - Validação do Formato do Campo Phone
    [Documentation]
    ...    Verifica que o sistema informa ao usuário o formato esperado para o campo Phone.
    ...    Resultado esperado: uma mensagem de validação deve ser exibida quando um telefone inválido é informado.
    ...    Resultado atual: FAIL esperado devido ao BUG-004 identificado nos testes exploratórios.

    Input Text    ${PHONE_FIELD}    abc123

    Enviar Formulário

    Page Should Contain
    ...    Invalid phone number