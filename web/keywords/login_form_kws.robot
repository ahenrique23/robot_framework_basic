***Settings***
Documentation       Todas palavras chave de automação e comportamentos da login_form.robot

*** Keywords ***

Login With
    [Arguments]                     ${uname}                    ${pass}
    Input Text                      ${input_txt_user}           ${uname}
    Input Text                      ${input_txt_pas}            ${pass}
    Click Element                   ${btn_login}

Should Contain Login Alert
    [Arguments]                     ${expect_message}
    ${message}=                     Get WebElement              id:flash
    Log                             ${message}
    Should Contain                  ${message.text}             ${expect_message}

Should See Logged User
    [Arguments]                     ${full_name}

    Page Should Contain             Olá, ${full_name}. Você acessou a área logada!