*** Settings ***
Library     Selenium2Library
Resource    Resources/locators_kwd_resources_23.robot

*** Variables ***
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}      chrome
${user}     Admin
${pwd}      admin123

*** Test Cases ***
login_pom
    Set Selenium Speed    2
    Open my Browser       ${url}       ${browser}
    enter username      ${user}
    enter password      ${pwd}
    click signin
    log succesful
    close my browser