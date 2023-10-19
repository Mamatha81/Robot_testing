*** Settings ***
Library     Selenium2Library

*** Variables ***
${url}      https://admin-demo.nopcommerce.com/login?ReturnUrl
${browser}      chrome

*** Keywords ***
open_my_browser
        Open Browser    ${url}      ${browser}
        Maximize Browser Window

close_my_browser
    Close All Browsers
open_loginpage
    Go To    ${url}
input_username
    [Arguments]     ${user}
    Input Text    id:Email    ${user}
input_pwd
    [Arguments]     ${pwd}
    Input Text    id:Password    ${pwd}
click_login_btn
    Click Element    xpath://button[text()='Log in']
click_logout_btn
    Click Element    Logout
error_msg_shouldbe_visible
    Page Should Contain    Login was unsuccessful
dashboard_visible
    Page Should Contain    Dashboard
    
