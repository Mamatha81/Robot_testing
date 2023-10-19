*** Settings ***
Library    Selenium2Library

*** Variables ***
${browser}      chrome
${url}         https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    Open Browser    ${url}     ${browser}
#     Maximize Browser Window
#    Click Link    xpath://a[@class='ico-login']
#    Input Text    id:Email      admin@yourstore.com
#    Input Text    id:Password       admin
#    Click Element    xpath://button[@type='submit']
    loginto_nop_application
    Close Browser

*** Keywords ***
loginto_nop_application
    Maximize Browser Window
    Click Link    xpath://a[@class='ico-login']
    Input Text    id:Email      admin@yourstore.com
    Input Text    id:Password       admin
    Click Element    xpath://button[@type='submit']
