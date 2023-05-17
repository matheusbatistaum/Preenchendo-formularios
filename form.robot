** Settings **
Library  SeleniumLibrary

** Variables **
${input_name}          id:name
${input_phone}         id:phone
${input_email}         id:email
${input_password}      id:password
${textarea_address}    id:address
${button_submit}       name:submit

** Keywords **
abrir navegador e acessar o site
    Open Browser  https://itera-qa.azurewebsites.net/home/automation  chrome

preencher campos    
   Input Text       ${input_name}          Matheus
   Input Text       ${input_phone}         222222222
   Input Text       ${input_email}         teste@teste.com
   Input Text       ${input_password}      123456789
   Input Text       ${textarea_address}    testando testando testando       

clicar em submit
   Click Element    ${button_submit}

fechar navegador
   Close Browser


** Test Cases **
Cenário 1: Preencher formulário
    abrir navegador e acessar o site
    preencher campos
    clicar em submit
    fechar navegador