*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Keywords ***
Abrir site do Google
    Open Browser    https://www.google.com/    chrome
Fechar Navegador
    Close Browser

Abrir site do Status Invest
    Open Browser    https://statusinvest.com.br/    chrome

*** Test Cases ***
Cenário 1: Abrir site do Google
    [Tags]  regressivo1
    Abrir site do Google
    Fechar Navegador
    
Cenário 2: Abrir site status invest  
    Abrir site do Status Invest
    Fechar Navegador
