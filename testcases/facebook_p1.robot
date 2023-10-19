*** Settings ***
Library     Selenium2Library

*** Variables ***
${browser}      chrome
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/admin/viewJobTitleList

*** Test Cases ***
open_facebook
        Set Selenium Speed    2
        Open Browser    ${url}      ${browser}
        Maximize Browser Window
        Input Text    name:username    Admin
        Input Text    name:password    admin123
        Click Element    xpath://button[@type='submit']
        Title Should Be    OrangeHRM
        Click Element    xpath://*[@class='oxd-main-menu']//span[text()='Dashboard']
        Click Element    xpath://*[@class='oxd-main-menu']//span[text()='Admin']
#        FOR    ${i}    IN RANGE    1    5
#            Click Element   xpath:(//i[@class='oxd-icon bi-trash'])
#        END
#
        ${i}    Set Variable    0
        WHILE    ${i} == 5
            Click Element   xpath:(//i[@class='oxd-icon bi-trash'])
            Sleep    2s
            Click Element    xpath://button[text()=' Yes, Delete ']
             ${i}    Set Variable       ${i}+1
        END

        Click Element    xpath://div[@class='oxd-topbar-body']//span[text()='Job ']
        Sleep    2
        Click Element    xpath://ul[@role='menu']//a[text()='Job Titles']
        ${k}    Set Variable    1
        WHILE    ${k} == 10
            Click Element    xpath://input[@type='checkbox']
            Click Element    xpath://button[text()=' Yes, Delete ']
            ${k}    Set Variable    ${k}+1
        END

        Click Element    xpath://button[text()=' Add ']
        Input Text    xpath:(//input[@class='oxd-input oxd-input--active'])[2]    codirectors
        Click Element    xpath://button[@type='submit']
        Click Element    xpath://*[@class='oxd-main-menu']//span[text()='PIM']
        Close Browser
      

*** Keywords ***