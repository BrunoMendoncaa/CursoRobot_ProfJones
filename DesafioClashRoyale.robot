*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${URL}                    https://developer.clashroyale.com/
${URL_LOGIN}              ${URL}#/login
${BROWSER}                chrome
${NOME}                   Bruno mendonça
${EMAIL}                  brunomendonca011@gmail.com
${PASSWORD}               Theo2020!

${REGISTRO}               xpath=//*[@id="content"]/div/div[2]/div/header/div/div/div[3]/div/a[1]
${LOGIN_BUTTON}           xpath=//*[@id="content"]/div/div[2]/div/div/div/div/div/div/form/div[4]/button
${TITULO}                 Clash Royale API
${NOME_ELEMENT}           id=name
${EMAIL_ELEMENT}          id=email
${PASS_ELEMENT}           id=password

${KEY_NAME}               BrunoKey
${KEY_DESC}               Descrição
${IP}                     187.11.121.221

${KEY_NAME_ELEMENT}        ${NOME_ELEMENT}
${KEY_DESC_ELEMENT}        id=description
${IP_ELEMENT}              id=range-0

${SUBMIT_BUTTON}          Submit

*** Tasks ***
DESAFIO CLASH ROYALE: REGISTRO
    Abrir o navegador
    Clicar em register
    Realizar um cadastro

DESAFIO CLASH ROYALE: CRIAÇÃO DE CHAVE
    Realizar login clash Royale
    Criar chave

*** Keywords ***
Abrir o navegador
    Open Browser                 ${URL}        ${BROWSER}
    Maximize Browser Window
    Title Should Be    ${TITULO}

Clicar em register
    Click Element                ${REGISTRO}

Realizar um cadastro
    Input Text        ${NOME_ELEMENT}    ${NOME}
    Input Text        ${EMAIL_ELEMENT}   ${EMAIL}
    Click Button      ${SUBMIT_BUTTON}

Realizar login clash Royale
    Go To    ${URL_LOGIN}

    Input Text         ${EMAIL_ELEMENT}        ${EMAIL}
    Input Text         ${PASS_ELEMENT}         ${PASSWORD}
    Click Element      ${LOGIN_BUTTON}

Criar chave
    Sleep    2s
    Go To    ${URL}#/new-key
    Wait Until Element Is Visible          ${KEY_NAME_ELEMENT}
    Input Text      ${KEY_NAME_ELEMENT}    ${KEY_NAME}
    Input Text      ${KEY_DESC_ELEMENT}    ${KEY_DESC}
    Input Text      ${IP_ELEMENT}          ${IP}
    Click Element    xpath=//*[@id="content"]/div/div[2]/div/div/section/div/div/div[2]/form/div[5]/button