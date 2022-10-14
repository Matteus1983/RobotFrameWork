*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#Dados do teste
${NomeDaMusica}    Linkin Park - Numb

#Variáveis de configuração
${URL}        https://www.youtube.com/  
${Browser}    chrome

#Elementos
${Input_Pesquisa}     //input[@id="search"]
${Button_Pesquisa}    //button[@id="search-icon-legacy"]
${Primeiro}           (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${Spam}               //button[@class="ytp-ad-skip-button ytp-button"]
${Prova}              (//yt-icon[@id="logo-icon"])[1]

*** Keywords ***
Dado que eu acesso o site do youtube
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
Quando digito o nome da música
    Input Text     ${Input_Pesquisa}    ${NomeDaMusica}
E clico no botão buscar
    Click Button   ${Button_Pesquisa} 
E clico na primeira opção da lista
    Wait Until Element Is Visible    ${Primeiro}    10
    Click Element    ${Primeiro}
Então o vídeo é executado
    Wait Until Element Is Visible    ${Spam}    10
    Click Element    ${Spam}
    Wait Until Element Is Visible    ${Prova}  10
    Element Should Be Visible    ${Prova}

*** Test Cases ***
Cenário 1: Executar vídeo o site do youtube
    Dado que eu acesso o site do youtube
    Quando digito o nome da música
    E clico no botão buscar
    E clico na primeira opção da lista
    Então o vídeo é executado
