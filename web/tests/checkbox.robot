*** Settings ***
Resource        ../resources/base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Marcando opção com id
    [tags]      id
    Go To                           ${url}/checkboxes
    
    Selecionando e validando checkbox id

Marcando opção com CSS Selector
    [tags]      ironman
    Go To                           ${url}/checkboxes
    
    Selecionando e validando checkbox CssSelector

Selecionando checkbox Xpath
    [tags]      pantera
    Go To                           ${url}/checkboxes
    
    Selecionando e validando checkbox Xpath
