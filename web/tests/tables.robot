*** Settings ***
Resource        ../resources/base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão


*** Test Cases ***
Verifica o valor ao informar o numero da linha
    [Tags]      numero_linha
    Go To                           ${url}/tables
    Verificando o valor informando a linha        1   $ 10.000.000

Descobre a linha pelo texto chave e valida os demais valores
    Go To                           ${url}/tables
    Verificando a linha pelo texto e valida os valores      $ 10.000.000    Homem de Ferro
