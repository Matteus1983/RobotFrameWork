*** Settings ***
Documentation    Dicionário informando os dias que tem nos meses do ano de 2022

*** Variables ***
 
&{DiasDosMeses}    janeiro=31  fevereiro=28  março=31  abril=30  maio=31  junho=30  julho=31  agosto=31  setembro=30  outubro=31  novembro=30  dezembro=31



*** Test Cases ***
Imprimir dias dos meses de 2022
    Log To Console   Em janeiro tem ${DiasDosMeses.janeiro} dias!
    Log To Console   Em fevereiro tem ${DiasDosMeses.fevereiro} dias!
    Log To Console   Em março tem ${DiasDosMeses.março} dias!
    Log To Console   Em abril tem ${DiasDosMeses.abril} dias!
    Log To Console   Em maio tem ${DiasDosMeses.maio} dias!
    Log To Console   Em junho tem ${DiasDosMeses.junho} dias!
    Log To Console   Em julho tem ${DiasDosMeses.julho} dias!
    Log To Console   Em agosto tem ${DiasDosMeses.agosto} dias!
    Log To Console   Em setembro tem ${DiasDosMeses.setembro} dias!
    Log To Console   Em outubro tem ${DiasDosMeses.outubro} dias!
    Log To Console   Em novembro tem ${DiasDosMeses.novembro} dias!
    Log To Console   Em dezembro tem ${DiasDosMeses.dezembro} dias!
