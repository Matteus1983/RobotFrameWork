*** Settings ***
Library  SeleniumLibrary
Library  FakerLibrary    locale=pt_BR

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
   ${nome}        FakerLibrary.FirstName
   Input Text     ${input_name}       ${nome}
   ${Telefone}    FakerLibrary.PhoneNumber    
   Input Text     ${input_phone}      ${Telefone}
   ${Email}       FakerLibrary.FreeEmail    
   Input Text     ${input_email}      ${Email}
   ${Senha}       FakerLibrary.Password
   Input Text     ${input_password}   ${Senha}
   ${Texto}       FakerLibrary.Text
   Input Text     ${textarea_adress}  ${Texto}  
   Click Element  ${button_submit}
  END

*** Test Cases ***
Cenário 1: Preencher formulário 
  abrir navegador e preencher 1 formularios