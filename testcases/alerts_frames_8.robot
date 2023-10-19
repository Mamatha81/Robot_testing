*** Settings ***
Library     Selenium2Library

*** Variables ***

*** Test Cases ***
handling alerts and frames
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    Click Element      xpath://button[@onclick='myFunctionAlert()']
    Sleep      3
#    Handle Alert        accept
#    Handle Alert        dismiss
#    Handle Alert         leave
    Alert Should Be Present     I am an alert box!
#    Alert Should Not Be Present     I am an alert box!    *** it will fail because we have mentioned should not be

*** Keywords ***