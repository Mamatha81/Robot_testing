#**select radiobutton and checkbox
*** Settings ***
Library    Selenium2Library

*** Variables ***
${browser}  chrome
${url}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Test Cases ***
testing radio box and check box
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed    1seconds

    #input Text
    Input Text    xpath://input[@name='firstname']  roboo
    Input Text    xpath://input[@name='lastname']   workk

    #radio buttons
    Select Radio Button    sex      Female
    Select Radio Button    exp      4

    #selecting check box
    Select Checkbox    Manual Tester
    Select Checkbox    Automation Tester

    #unselect check box
    Unselect Checkbox    Manual Tester

*** Keywords ***
