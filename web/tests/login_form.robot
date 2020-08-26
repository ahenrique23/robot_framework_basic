*** Settings ***
Resource        ../resources/base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Login com sucesso
    [Tags]                          sucesso
    Go To                           ${url}/login
    Login With                      stark                       jarvis!

    Should See Logged User          Tony Stark

Senha invalida
    [Tags]                          senha_invalida
    Go To                           ${url}/login
    Login With                      stark                       jarvis

    Should Contain Login Alert      Senha é invalida


Usuário invalido
    [Tags]                          usuario_invalido
    Go To                           ${url}/login
    Login With                      star                        jarvis!

    Should Contain Login Alert      O usuário informado não está cadastrado!
