*** Settings ***
Library     Selenium2Library
Variables   ../../page_objects/locators_23.py

*** Keywords ***
open my browser
    [Arguments]     ${url}      ${browser}
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
enter username
    [Arguments]     ${username}
    Input Text    ${login_username}    ${username}
enter password
    [Arguments]     ${password}
    Input Text    ${login_password}    ${password}
click signin
    Click Button    //button[text()=' Login ']
log succesful
    Title Should Be    OrangeHRM
close my browser
    Close All Browsers


