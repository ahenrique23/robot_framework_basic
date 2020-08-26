*** Settings ***
Library     SeleniumLibrary

Resource           helpers.robot
Resource           page_helpers.robot

*** Variables ***
${url}              https://training-wheels-protocol.herokuapp.com


*** Keywords ***
Nova sessão
    Open Browser                    ${url}             chrome

Encerra sessão
    Capture page Screenshot
    Close Browser



