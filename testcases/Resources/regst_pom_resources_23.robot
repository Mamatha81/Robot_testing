*** Settings ***
Library     Selenium2Library
Variables   ../../page_objects/locators_23.py

*** Keywords ***
open my browser
    [Arguments]     ${url}      ${browser}
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
click register link
    Click Link    ${link_regis}
enter firstname
    [Arguments]     ${firstName}
    Input Text    ${f_name}    ${firstName}
enter lastname
    [Arguments]     ${lastName}
    Input Text    ${l_name}    ${lastName}
enter phone no
    [Arguments]     ${phone}
    Input Text    ${phone_no}    ${phone}
enter email
    [Arguments]     ${userName}
    Input Text    ${email}    ${userName}
enter add
    [Arguments]     ${address1}
    Input Text    ${add1}    ${address1}
enter city name
    [Arguments]     ${city}
    Input Text    ${citys}    ${city}
enter state name
    [Arguments]     ${state}
    Input Text    ${states}    ${state}
enter postal code
    [Arguments]     ${postalCode}
    Input Text      ${postal_code}      ${postalCode}
scroll country
    [Arguments]     ${country}
    Input Text    ${drp_country}    ${country}
enter username
    [Arguments]     ${email}
    Input Text    ${username}    ${email}
enter password
    [Arguments]     ${password}
    Input Text    ${password}    ${password}
enter confirm password
    [Arguments]     ${confirmPassword}
    Input Text    ${conf_password}    ${confirmPassword}
click submit
    Click Button    ${submission}
successful regs
    Page Should Contain    Thank you for registering
close browser
    Close All Browsers