# selenium speed, selenium timeout, implicit wait, sleep
#sleep : it accepts only 1 conditoin
# ex   sleep   1

# selenium speed : it accepts all statement conditions
# set selenium speed    1second

# selenium timeout : wait until page contains xxxxxxx     default 5sec
# set selenium timeout 10 seconds. we should give this before statement

#implicit wait : couldn't able then wait for some x time default 0*** Keywords ***
#set selenium implicit  wait 5 sec
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
waits and time outs
    ${speed}=   Get Selenium Speed
    Log To Console    ${speed}
    Open Browser    ${url}      ${browser}
    Maximize Browser Window

    Set Selenium Speed    1second
    Title Should Be     OrangeHRM
    Input Text    name:username     Admin
    Input Text    name:password     admin123
    Click Element    xpath://button[@type='submit']
    ${speed}=   Get Selenium Speed
    Log To Console    ${speed}

*** Keywords ***

