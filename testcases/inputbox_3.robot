#Element vis and elm enable
*** Settings ***
Library    Selenium2Library

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
testing_inputbox
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store
    Click Link    xpath://a[@class='ico-login']
    ${email_txt}    Set Variable    id:Email

    Element Should Be Visible   ${email_txt}
    Element Should Be Enabled   ${email_txt}
#    Element Should Not Be Visible    ${email_txt}  it will get FAIL

    Input Text    ${email_txt}  admin@yourstore.com
    Sleep    3
    Clear Element Text    ${email_txt}
    Sleep    3
    Close Browser


*** Keywords ***

