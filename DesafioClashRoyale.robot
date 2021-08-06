*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${URL}                    https://developer.clashroyale.com/
${BROWSER}                chrome
${NOME}                   Bruno mendonça
${EMAIL}                  brunomendonca011@gmail.com

${REGISTRO}               xpath=//*[@id="content"]/div/div[2]/div/header/div/div/div[3]/div/a[1]
${TITULO}                 Clash Royale API
${NOME_ELEMENT}           id=name
${EMAIL_ELEMENT}          id=email
${SUBMIT_BUTTON}          Submit

*** Tasks ***
DESAFIO CLASH ROYALE
    Abrir o navegador
    Clicar em register
    Realizar um cadastro

*** Keywords ***
Abrir o navegador
    Set Selenium Implicit Wait    30s
    Open Browser                 ${URL}        ${BROWSER}
    Maximize Browser Window
    Title Should Be    ${TITULO}

Clicar em register
    Click Element                ${REGISTRO}

Realizar um cadastro
    Input Text        ${NOME_ELEMENT}    ${NOME}
    Input Text        ${EMAIL_ELEMENT}   ${EMAIL}
    Click Button      ${SUBMIT_BUTTON}