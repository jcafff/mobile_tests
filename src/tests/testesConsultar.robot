**Settings**
Resource    ../resources/Cadastrar.robot

# Library to use "Generate Random String" method
Library  String 

Test Setup  Open Session
Test Teardown   Close Session

**Test Cases**
Consultar cadastro de pessoas
    Click ConsultarUsuario
    Listview Nomeuser       cesar school
    Listview EmailUser      cesar_school@cesar.shcool