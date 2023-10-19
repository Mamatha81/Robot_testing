*** Settings ***
Library     Selenium2Library
*** Variables ***
${url}      https://demo.guru99.com/test/newtours/
${browser}      chrome
*** Test Cases ***
multiple_links
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Sleep    3
    ${alllinks}=    Get Element Count    xpath://a
    Log To Console    ${alllinks}

#    @{linkitems}    Create List
    FOR    ${i}    IN RANGE    1    ${alllinks}
           ${linktext}=     Get Text    xpath:(//a)[${i}]
           Log To Console    ${linktext}
    END
    Log    Exited


*** Keywords ***