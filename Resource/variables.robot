*** Variables ***

#    CONTEUDO
${URL}                    https://developer.clashroyale.com/
${URL_LOGIN}              ${URL}#/login
${BROWSER}                chrome
${NOME}                   Bruno mendonça
${EMAIL}                  brunomendonca011@gmail.com
${PASSWORD}               Theo2020!
${TITULO}                 Clash Royale API
${KEY_NAME}               BrunoKey
${KEY_DESC}               Descrição
${IP}                     187.11.121.221

#    ELEMENTOS
${REGISTRO}               xpath=//*[@id="content"]/div/div[2]/div/header/div/div/div[3]/div/a[1]
${LOGIN_BUTTON}           xpath=//*[@id="content"]/div/div[2]/div/div/div/div/div/div/form/div[4]/button
${KEY_BUTTON}             xpath=//*[@id="content"]/div/div[2]/div/div/section/div/div/div[2]/form/div[5]/button
${NOME_ELEMENT}           id=name
${EMAIL_ELEMENT}          id=email
${PASS_ELEMENT}           id=password
${KEY_DESC_ELEMENT}       id=description
${IP_ELEMENT}             id=range-0
${SUBMIT_BUTTON}          Submit
${KEY_NAME_ELEMENT}       ${NOME_ELEMENT}
