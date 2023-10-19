#right click,double click,drag and drop
*** Settings ***
Library     Selenium2Library

*** Variables ***

*** Test Cases ***
right_click
    Open Browser    https://swisnl.github.io/jQuery-contextMenu/3.x/demo.html   chrome
    Maximize Browser Window
    Open Context Menu    xpath://span[text()='right click me']
    Sleep    3
    
#    double click
    Go To    https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    xpath://button[text()='Copy Text']
    Sleep    3

    Go To    http://www.dhtmlgoodies.com/packages/dhtml-suite-for-applications/demos/demo-drag-drop-3.html
    Maximize Browser Window
    Drag And Drop    id:box2    id:box102
    Sleep    3
    Close Browser



*** Keywords ***