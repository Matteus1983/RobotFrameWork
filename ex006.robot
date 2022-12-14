*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${input_name}       //input[@id="name"]
${input_phone}      //input[@id="phone"]
${input_email}      //input[@id="email"]
${input_password}   //input[@id="password"]
${textarea_adress}  //textarea[@id="address"]
${button_submit}    //button[@name="submit"]

*** Keywords ***
abrir navegador e preencher ${Quantidade} formularios
  FOR    ${i}  IN RANGE  ${Quantidade}
   Open Browser   https://itera-qa.azurewebsites.net/home/automation  chrome
   Input Text     ${input_name}       Mateus ${i}
   Input Text     ${input_phone}      991659857
   Input Text     ${input_email}      mateus@teste.com
   Input Text     ${input_password}   123456
   Input Text     ${textarea_adress}  Mateus Moura da Silva em busca da Califórnia  
   Click Element  ${button_submit}
   Close Browser
  END

*** Test Cases ***
Cenário 1: Preencher formulário 
  abrir navegador e preencher 3 formularios
