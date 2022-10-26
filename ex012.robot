*** Settings ***
Library    SeleniumLibrary

*** Variables ***
@{Cores}    Preto    Roxo    Azul    Vermelho    Dourado

*** Keywords ***
Usando Log para mensagens
    Log    Minha mensagem de Log
    ${Var}    Set Variable    variavél qualquer
    Log    Posso logar uma ${Var} no meio de um log
Usando Log no Console
    Log To Console    Posso logar na saída do console
    Log Many    Posso logar minha lista completa ${Cores}
    Log    Posso logar somente itens da minha lista ${Cores[0]} - ${Cores[1]}
Usando screen shots
    Log    Nos testes web, podemos logar Screenshot com a SeleniumLibrary
    Open Browser    http://www.robotizandotestes.blogspot.com.br    chrome
    Capture Page Screenshot    nome_do_meuscreenshot.png
    Close Browser

*** Test Cases ***
Caso de teste 01: Utilizando Logs
    Usando Log para mensagens
    Usando Log no Console
    Usando screen shots
