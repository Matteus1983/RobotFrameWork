*** Settings ***
Documentation    Fazendo Loops usando o robot framework

*** Variables ***
@{ListaDeFrutas}    maça    abacaxi    banana    morango    laranja


*** Keywords ***
Teste de Repeat Keyword
    Log To Console  ${\n}
    Repeat Keyword    4x    Log To Console    Minha repetição da keyword!
Teste de For do tipo IN RANGE
    Log To Console  ${\n}
    FOR  ${Contador}  IN RANGE    0    5
        Log To Console    Minha posição agora é: ${Contador}
    END
Teste de For do tipo IN
    Log To Console    ${\n}
    FOR  ${Frutas}  IN  @{ListaDeFrutas}
        Log To Console    Minha fruta é: ${Frutas}!    
    END
Teste de For do tipo Enumerate
    Log To Console    ${\n}
    FOR  ${Indice}  ${Frutas}  IN ENUMERATE  @{ListaDeFrutas}
        Log To Console    Minha fruta é: ${Indice} --> ${Frutas}! 
        No Operation   
    END
Teste de Sair do For
    Log To Console    ${\n}
    FOR  ${Indice}  ${Frutas}  IN ENUMERATE  @{ListaDeFrutas}
        Log To Console    Minha fruta é: ${Indice} --> ${Frutas}! 
        Exit For Loop If  "${Frutas}" == "banana"
    END

*** Test Cases ***
Cenário 1: Teste de Repeat Keyword
    [Tags]    T01    
    Teste de Repeat Keyword
Cenário 2: Teste de For do tipo IN RANGE
    [Tags]    T02
    Teste de For do tipo IN RANGE
Cenário 3: Teste de For do tipo IN 
    [Tags]    T03
    Teste de For do tipo IN
Cenário 4: Teste de For do tipo Enumerate
    [Tags]    T04
    Teste de For do tipo Enumerate
Cenário 5: Teste de Sair do For
    [Tags]    T05
    Teste de Sair do For
    
