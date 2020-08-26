*** Settings ***
Resource        ../resources/base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Selecionando por id
    [tags]      id
    Go To                               ${url}/radios

    Selecionando e validando por id    

Selecionando por value
    [tags]      value
    Go To                               ${url}/radios
    
    Selecionando e validando por value
