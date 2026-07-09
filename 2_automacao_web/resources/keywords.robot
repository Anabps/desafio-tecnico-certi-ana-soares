*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

Resource    variables.robot
Resource    locators.robot

*** Keywords ***

Abrir Navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Fechar Navegador
    Close Browser

Preencher Dados Válidos
    Input Text      ${FIRST_NAME_FIELD}         ${FIRST_NAME}
    Input Text      ${LAST_NAME_FIELD}          ${LAST_NAME}
    Input Text      ${ADDRESS_FIELD}            ${ADDRESS}
    Input Text      ${EMAIL_FIELD}              ${EMAIL}
    Input Text      ${PHONE_FIELD}              ${PHONE}

    Click Element   ${GENDER_MALE}

    Input Password  ${PASSWORD_FIELD}           ${PASSWORD}
    Input Password  ${CONFIRM_PASSWORD_FIELD}   ${PASSWORD}

Enviar Formulário
    Scroll Element Into View    ${SUBMIT_BUTTON}
    Sleep    1s
    Execute JavaScript    document.getElementById('submitbtn').click();

Preencher Senhas Diferentes
    Input Password    ${PASSWORD_FIELD}          ${PASSWORD}
    Input Password    ${CONFIRM_PASSWORD_FIELD}  ${WRONG_PASSWORD}

Realizar Upload PDF
    Choose File    ${UPLOAD_BUTTON}    C:/desafio-tecnico-certi-ana-soares/2_automacao_web/resources/teste.pdf