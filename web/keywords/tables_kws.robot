***Settings***
Documentation       Todas palavras chave de automação e comportamentos

*** Keywords ***
Verificando o valor informando a linha
    [Arguments]     ${linha}      ${dado}
    Table Row Should Contain        ${row_id}   ${linha}   ${dado}

Verificando a linha pelo texto e valida os valores
    [Arguments]     ${salario}      ${personagem}  
    ${target}=                      Get WebElement      ${row_xpath}
    Log                             ${target.text}
    Should Contain                  ${target.text}          ${salario} 
    Should Contain                  ${target.text}          ${personagem}