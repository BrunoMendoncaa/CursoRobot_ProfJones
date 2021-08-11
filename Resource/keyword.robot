*** Settings ***
Resource    actions.robot

*** Keywords ***
Abrir o navegador
    [Documentation]        entrar na página principal do clash royale
    Open Browser                 ${URL.main}        ${BROWSER}
    Maximize Browser Window

Clicar em register
    [Documentation]        clicar em registrar-se
    Clicar Elemento        ${REGISTRO}

Realizar um cadastro
    [Documentation]        realizar o cadastro no clash royale
    Digitar Texto        ${NOME_ELEMENT}    ${USER.nome}
    Digitar Texto        ${EMAIL_ELEMENT}   ${USER.email}
    Clicar Botao         ${SUBMIT_BUTTON}

Realizar login clash Royale
    [Documentation]        realizar o login na plataforma
    Go To                  ${URL.login}
    Digitar Texto          ${EMAIL_ELEMENT}        ${USER.email}
    Digitar Texto          ${PASS_ELEMENT}         ${USER.password}
    Clicar Elemento        ${LOGIN_BUTTON}

Criar chave
    [Documentation]        criar chave de api
    Go To               ${URL.key}
    Digitar Texto       ${KEY_NAME_ELEMENT}    ${KEY.nome}
    Digitar Texto       ${KEY_DESC_ELEMENT}    ${KEY.desc}
    Digitar Texto       ${IP_ELEMENT}          ${KEY.ip}
    Clicar Elemento     ${KEY_BUTTON}
