test setup  will run before every test case
test teardown  will run after every test case
suite setup  will run before test suite
suite teardown  will run after test suite
*** Settings ***
Suite Setup     Log To Console    open browser
Suite Teardown  Log To Console    close browser
Test Setup      Log To Console    login application
Test Teardown   Log To Console    logout application
*** Variables ***

*** Test Cases ***
tc1 prepaid
    Log To Console    this is prepaid recharge testcase
tc2 postpaid
    Log To Console    this is postpaid racharge testcase
tc3 search
    Log To Console    this is search test case
tc4 adv search
    Log To Console    this is adv search testcase

*** Keywords ***