*** Settings ***
Resource        ../resources/base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão


*** Test Cases ***
Selecionar por texto e validar pelo valor
    [Tags]      texto
    Go To                           ${url}/dropdown

    Selecionando por texto          Scott Lang
    Validar por valor               7

Selecionar por valor e validar pelo texto
    [Tags]      value
    Go To                           ${url}/dropdown

    Selecionando por valor          6

    Validando por texto             Loki
