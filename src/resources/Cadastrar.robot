**Settings**
Library  AppiumLibrary

**Keywords**
Open Session
    Set Appium Timeout  10

    Open Application       remote_url=http://localhost:4723
    ...                    platformName=Android
    ...                    deviceName=Android Emulator
    ...                    automationName=UIAutomator2
    ...                    app=${EXECDIR}/apks/app-curso.apk
    ...                    udid=emulator-5554
    ...                    autoGrantPermissions=true

Close Session
    Close Application

Start PageMobile
    [Arguments]    ${query}
    Wait Until Page Contains    por Maria Clara    ${query}

Click CadastrarUsuário
    Wait Until Page Contains Element    button_cadastrar
    Click Element   button_cadastrar

Input Name Query
    [Arguments]  ${query}
    Wait Until Page Contains Element    TextInputNome
    Input Text  TextInputNome   ${query}

Input Email Query
    [Arguments]  ${query}
    Input Text  TextInputEmail   ${query}

Click Identificação Query
    [Arguments]  ${query}
    Click Text   ${query}

Click Estado Query
    [Arguments]  ${query}
    Wait Until Page Contains    Acre
    Click text   Acre
    Wait Until Page Contains   Alagoas
    # TODO: inserir um Scroll Down até achar elemento de valor X
    #AppiumLibrary.Scroll down   Mato Grosso do Sul (MS)
    #Scroll Down    Mato Grosso (MS)
    Click Text  ${query}

Click BotaoCadastrar
    Click Element    BotaoCadastrar

Click BotaoVoltar
    Click Element    BotaoVoltar

Click BotaoSobre
    Start PageMobile             6
    Click Element                button_sobre
    Wait Until Page Contains     Automação com Appium
    Click Element                button_ok    

Click ConsultarUsuario
    Start PageMobile                        6
    #Wait Until Page Contains Element        button_listar
    Click Element                           button_listar

Listview NomeUser
    [Arguments]  ${query}
    Wait Until Page Contains    ${query}

Listview EmailUser
    [Arguments]  ${query}
    Wait Until Page Contains    ${query}

