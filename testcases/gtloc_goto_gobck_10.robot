*** Settings ***
Library     Selenium2Library
*** Variables ***

*** Test Cases ***
navigation
    Set Selenium Speed    1
    Open Browser    https://www.google.com/     chrome
    Maximize Browser Window
    ${loc}=     Get Location
    Log To Console    ${loc}

    Go To    https://www.bing.com/
    Maximize Browser Window
    ${loc}=     Get Location
    Log To Console    ${loc}

    Go Back
    ${loc}=     Get Location
    Log To Console    ${loc}
    Close Browser

*** Keywords ***