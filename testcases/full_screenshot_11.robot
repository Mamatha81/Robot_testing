#   element screen shot,full page screen shot
*** Settings ***
Library     Selenium2Library
*** Variables ***

*** Test Cases ***
element_page_ss
    Set Selenium Speed    2
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login      chrome
    Maximize Browser Window
    Input Text    name:username    Admin
    Input Text    name:password    admin123
#    Capture Element Screenshot    xpath://div[@class='orangehrm-login-branding']   D:/Robotlearning1/strtt.png
#    Capture Page Screenshot     D:/Robotlearning1/strt.png
    Capture Element Screenshot    xpath://div[@class='orangehrm-login-branding']    logo.png
    Capture Page Screenshot     element_page_ss.png

*** Keywords ***