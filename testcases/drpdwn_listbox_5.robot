*** Settings ***
Library    Selenium2Library

*** Variables ***
${browser}  chrome
${url}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
#${scrl_elm}     //strong[text()='Continents:  ']


*** Test Cases ***
dropdown & listbox
    Open Browser  ${url}      ${browser}
    Maximize Browser Window
#   Click Element    id:banner-accept
#   Wait Until Page Contains Element    ${scrl_elm}     timeout=10s
#   Scroll Element Into View    ${scrl_elm}
#   Sleep    5
    Select From List By Label    continents     South America       #label means visibletext appear in the application
    Sleep    3
    Select From List By Index    continents     5
#   Select From List By Value    continents     value
#   select list box
    Select From List By Label    selenium_commands      Switch Commands
    Sleep    1
    Select From List By Label    selenium_commands      WebElement Commands
    Sleep    1
    Select From List By Label    selenium_commands      Navigation Commands
    Sleep    1
#   unselect list box
    Unselect From List By Label    selenium_commands    WebElement Commands


*** Keywords ***
