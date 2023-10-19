specify test data in the script          18
read data file from exel file(.xsls)     19
read test data from csv data(.csv)
*** Settings ***
Library     Selenium2Library
Resource    Resources/log_resources_18.robot
Suite Setup     open_my_browser
Suite Teardown      close_my_browser
Test Template       invalid_login

*** Test Cases ***              user                pwd
right user empty password       admin@yourstore.com     ${empty}
right user wrong password       admin@yourstore.com     abc
wrong user empty password       admi@yourstore.com      ${empty}
wrong user right password       admi@yourstore.com      admin
wrong user wrong password       admi@yourstore.com      abc



*** Keywords ***
invalid_login
        [Arguments]     ${user}     ${pwd}
        input_username    ${user}
        input_pwd    ${pwd}
        click_login_btn
        error_msg_shouldbe_visible
