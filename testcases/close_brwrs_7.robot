*** Settings ***
Library     Selenium2Library

*** Variables ***

*** Test Cases ***
Close_brwsrs
    Open Browser        https://opensource-demo.orangehrmlive.com/web/index.php/auth/login      chrome
    Maximize Browser Window

    Open Browser        https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm    chrome
    Maximize Browser Window
#    Close Browser       # it will close recent browser
    Close All Browsers  # it will close  all browsers





*** Keywords ***
