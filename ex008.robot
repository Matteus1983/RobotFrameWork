*** Settings ***
Library    SeleniumLibrary
Test Setup    Acessar o site e logar com o perfil Cliente

*** Variables ***
#Variaveis de configuração da página Admin
${URL}               https://phptravels.net/api/admin
${Browser}           Chrome

#Dados do teste da página Admin
${Email}             admin@phptravels.com
${Password}          demoadmin

#Elementos da página Admin
${Input_Email}       (//input[@name="email"])[1]
${Input_Password}    //input[@name="password"]
${Input_Check}       //ins[@class="iCheck-helper"]
${Input_Login}       //button[@type="submit"]

#Variaveis de configuração da página Agents
${URL2}             https://phptravels.net/login
${Browser2}         Chrome

#Dados do teste da página Agents
${Email2}           agent@phptravels.com
${Password2}        demoagent

#Elementos da página Agents
${Input_Email2}      (//input[@name="email"])[1]
${Input_Password2}   //input[@name="password"] 
${Input_Login2}      //button[@type="submit"] 

*** Keywords ***
Acessar o site e logar com o perfil ${perfil}
    IF  "${perfil}"=="Admin"
        Open Browser    ${URL}    ${Browser}
        Maximize Browser Window
        Input Text       ${Input_Email}       ${Email}
        Input Text       ${Input_Password}    ${Password}
        Click Element    ${Input_Check}
        Click Element    ${Input_Login}
    ELSE IF  "${perfil}"=="Cliente"
        Open Browser    ${URL2}    ${Browser2}
        Maximize Browser Window
        Input Text       ${Input_Email2}       ${Email2}
        Input Text       ${Input_Password2}    ${Password2}
        Click Element    ${Input_Login2}
    END

*** Test Cases ***
Cenário 1: Abrir o site da PhpTravels e fazer login
    Acessar o site e logar com o perfil perfil
