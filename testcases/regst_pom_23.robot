*** Settings ***
Library     Selenium2Library
Resource    Resources/regst_pom_resources_23.robot
*** Variables ***
${browser}      chrome
${url}      https://demo.guru99.com/test/newtours/
*** Test Cases ***
registration
    Set Selenium Speed    1
    open my browser     ${url}      ${browser}
    click register link
    enter firstname         mamatha
    enter lastname          praveen
    enter phone no          1234567890
    enter email         mamapr@gmail.com
    enter add           bidrahalli
    enter city name     banglore
    enter state name    karantaka
    enter postal code       560048
    scroll country      INDIA
    enter username      mamat
    enter password      prama
    enter confirm password      prama
    click submit
    successful regs
#    close browser



