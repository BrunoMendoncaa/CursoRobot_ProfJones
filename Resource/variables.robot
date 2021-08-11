*** Variables ***

#    CONTEUDO
&{URL}                    main=https://developer.clashroyale.com/        
...                       login=https://developer.clashroyale.com/#/login        
...                       key=https://developer.clashroyale.com/#/new-key

&{USER}                   nome=Bruno mendonça        
...                       email=brunomendonca011@gmail.com        
...                       password=Theo2020!

&{KEY}                    nome=BrunoKey        
...                       desc=Descrição        
...                       ip=187.11.121.221

${BROWSER}                chrome
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
