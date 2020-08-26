***Settings***
Documentation       Todas palavras chave de automação e comportamentos

*** Keywords ***
Selecionando por texto
    [Arguments]     ${select}
    Select From List By Label       class:avenger-list              ${select}

Validar por valor
    [Arguments]     ${value}
    ${selected}=                    Get Selected List Value         ${select_label}
    Should Be Equal                 ${selected}                     ${value}

Selecionando por valor
    [Arguments]     ${select}
    Select From List By Value       id:dropdown                     ${select}

Validando por texto
    [Arguments]     ${text}
    ${selected}=                    Get Selected List Label         id:dropdown
    Should Be Equal                 ${selected}                     ${text}