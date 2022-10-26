*** Settings ***
Documentation    Exemplo de uso de variavéia como argumentos em Keywords

*** Variables ***
&{Pessoa}    nome=Mateus    email=matteus.300@hotmail.com    idade=15    sexo=masculino

*** Keywords ***
Uma keyword qualquer 01
    Uma subkeyword com argumentos  ${Pessoa.nome}  ${Pessoa.email} 
    ${Mensagem_Alerta}    Uma subkeyword com retorno    ${Pessoa.nome}  ${Pessoa.idade}
    ${Mensagem_Alerta}    Uma subkeyword com retorno do retorno    ${Pessoa.nome}  ${Pessoa.idade}
    Log    ${Mensagem_Alerta}
Uma subkeyword com argumentos    
    [Arguments]    ${Nome_Usuario}    ${Email_Usuario}
    Log    Nome Usúario: ${Nome_Usuario}
    Log    Email: ${Email_Usuario}

Uma subkeyword com retorno
    [Arguments]    ${Nome_Usuario}    ${Idade_Usuario}
    ${Mensagem}    Set variable IF    ${Idade_Usuario}<18    Não autorizado! O usuário ${Nome_Usuario} é menor de idade!
    [Return]    ${Mensagem}

Uma subkeyword com retorno do retorno
    [Arguments]    ${Nome_Usuario}    ${Idade_Usuario}
    ${Mensagem}    Set variable IF    ${Idade_Usuario}>18   Eu autorizo! O usuário ${Nome_Usuario} é maior de idade!
    [Return]    ${Mensagem}
*** Test Cases ***
Caso de teste 01: Exemplo
    Uma keyword qualquer 01
