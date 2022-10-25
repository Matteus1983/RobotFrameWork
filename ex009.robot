*** Settings ***
Documentation    Lista imprimindo todos os meses do ano

*** Variables ***

@{Meses}    Janeiro  Fevereiro  Março  Abril  Maio Junho  Julho  Agosto  Setembro  Outubro  Novembro  Dezembro

*** Keywords ***
Calendário
    Log To Console    ${Meses[0]}  
    Log To Console    ${Meses[1]} 
    Log To Console    ${Meses[2]} 
    Log To Console    ${Meses[3]} 
    Log To Console    ${Meses[4]} 
    Log To Console    ${Meses[5]} 
    Log To Console    ${Meses[6]} 
    Log To Console    ${Meses[7]} 
    Log To Console    ${Meses[8]} 
    Log To Console    ${Meses[8]} 
    Log To Console    ${Meses[9]} 
    Log To Console    ${Meses[10]} 
    Log To Console    ${Meses[11]} 

*** Test Cases ***
Caso de teste 01: Meses do ano
    Calendário
