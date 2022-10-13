*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${input_name}          id:name
${input_phone}         id:phone
${input_email}         id:email
${input_password}      id:password
${textarea_address}    id:address
${button_submit}       name:submit


*** Keywords ***
abrir navegador e acessar o site  
    Open Browser    https://itera-qa.azurewebsites.net/home/automation    chrome
maximizar o navegador
    Maximize Browser Window
preencher campos 
    Input Text    ${input_name}           Mateus
    Sleep    2
    Input Text    ${input_phone}          123456789
    Sleep    2
    Input Text    ${input_email}          matteus.300@hotmail.com
    Sleep    2
    Input Text    ${input_password}       987654321
    Sleep    2
    Input Text    ${textarea_address}     Necessário acreditar que o sonho é possível      

clicar em submit
    Click Button  ${button_submit}

fechar navegador
    Close Browser

*** Test Cases ***
Cenário 1: Preencher formulário 
    abrir navegador e acessar o site
    maximizar o navegador
    preencher campos
    clicar em submit
    fechar navegador