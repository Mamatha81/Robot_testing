*** Settings ***
Library     Selenium2Library
*** Variables ***

*** Keywords ***
launching
    [Arguments]     ${appurl}       ${appbrowser}
    Open Browser        ${appurl}      ${appbrowser}
    Maximize Browser Window
    ${title}=  Get Title
    [RETURN]       ${title}