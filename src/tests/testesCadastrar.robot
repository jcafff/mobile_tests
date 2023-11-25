**Settings**
Resource    ../resources/Cadastrar.robot

# Library to use "Generate Random String" method
Library  String 

Test Setup  Open Session
Test Teardown   Close Session


**Test Cases**
Validar página incial
    Start PageMobile    6
  
Cadastrar pessoa válida
    Start PageMobile    6
    Click CadastrarUsuário
    Input Name Query           cesar school
    Input Email Query          cesar_school@cesar.shcool
    Click Identificação Query  Mulher
    Click Estado Query         Alagoas
    Click BotaoCadastrar

    #Solução do ASSERT para identificar um toast message
    Wait Until Page Contains   Cadastro realizado com sucesso

Clicar no botão sobre
    Click BotaoSobre