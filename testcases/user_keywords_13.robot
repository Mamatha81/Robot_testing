user define keyword without arguments
user define keyword with arguments
user define keyword with arguments & return value

*** Settings ***
Library     Selenium2Library
Resource   Resources/resources_13.robot
*** Variables ***
${url}      https://demo.guru99.com/test/newtours/
${browser}      chrome

*** Test Cases ***
user_define
    ${pagetitle}=    launching       ${url}      ${browser}
    Log To Console    ${pagetitle}
    Log    ${pagetitle}
    Input Text    name:userName    mercury
    Input Text    name:password    mercury
    Sleep    3


