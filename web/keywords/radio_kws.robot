***Settings***
Documentation       Todas palavras chave de automação e comportamentos

*** Keywords ***
Selecionando e validando por id
    Select Radio Button                 movies              ${capitao} 
    Radio Button Should Be Set To       movies              ${capitao}


Selecionando e validando por value
    Select Radio Button                 movies              ${iron}
    Radio Button Should Be Set To       movies              ${iron}
    