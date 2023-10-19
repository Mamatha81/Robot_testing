#robot testcases/using_tags_22.robot
#robot --include=start[tagname] testcases/using_tags_22.robot
#robot -i start -i over testcases/using_tags_22.robot     -i means include
#robot -e over testcases/using_tags_22.robot             -e means exclude
#robot -i start -e over testcases/using_tags_22.robot
*** Settings ***

*** Variables ***

*** Test Cases ***
tc1 user regs
    [Tags]  start
    Log To Console    user regs is start
    Log To Console    user regs is over
tc2 user log
    [Tags]  over
    Log To Console    this is login test start
    Log To Console    this is logi test over
tc3 user settings
    [Tags]  start
    Log To Console    this is changing user test case
    Log To Console    this is changing test is over
tc4 logout
    [Tags]  over
    Log To Console    this is logout test
    Log To Console    this is logout test is over


*** Keywords ***