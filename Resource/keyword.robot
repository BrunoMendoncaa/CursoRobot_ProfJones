
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
    Wait Until Element Is Visible           ${KEY_NAME_ELEMENT}
    Input Text       ${KEY_NAME_ELEMENT}    ${KEY_NAME}
    Input Text       ${KEY_DESC_ELEMENT}    ${KEY_DESC}
    Input Text       ${IP_ELEMENT}          ${IP}
    Click Element    ${KEY_BUTTON}