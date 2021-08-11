*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Digitar Texto
    [Arguments]        ${elemento}           ${conteudo}

    Wait Until Element Is Visible        ${elemento}
    Input Text    ${elemento}            ${conteudo}

Clicar Elemento
    [Arguments]        ${elemento}
    
    Wait Until Element Is Visible    ${elemento}
    Click Element                    ${elemento}

Clicar Botao
    [Arguments]        ${botao}

    Wait Until Element Is Visible    ${botao}
    Click Button                     ${botao}        