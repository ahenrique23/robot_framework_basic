***Settings***
Documentation       Todas palavras chave de automação e comportamentos

*** Keywords ***
Selecionando e validando checkbox id
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}

Selecionando e validando checkbox CssSelector
    Select Checkbox                 ${check_iron}
    Checkbox Should Be Selected     ${check_iron}

Selecionando e validando checkbox Xpath
    Select Checkbox                 ${check_panther}
    Checkbox Should Be Selected     ${check_panther}