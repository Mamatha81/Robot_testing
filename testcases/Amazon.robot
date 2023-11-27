*** Settings ***
Library     Selenium2Library

*** Variables ***
${browser}       chrome
${url}           https://www.amazon.in/

*** Test Cases ***
mobiles_in_cart
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Element    xpath://div[@id='nav-xshop']//a[text()='Mobiles']
    Click Element    xpath://input[@id='twotabsearchtextbox']
    Input Text    xpath://input[@id='twotabsearchtextbox']    iqoo
    Press Keys    xpath://input[@id='twotabsearchtextbox']    ENTER
    Click Element    xpath://div[@id='reviewsRefinements']//section[@aria-label='4 Stars & Up']
    Sleep    2


    FOR    ${counter}    IN RANGE    1    4
           Log    ${counter}
           Click Element    (//h2[contains(@class,'a-size-mini') and contains(.//span,'iQOO')])[${counter}]
           Sleep    2
           ${linktext}=     Get Element Attribute    xpath    //h2[contains(@class,'a-size-mini')]//a

           Log To Console    ${linktext}
           Sleep    2


    END












*** Keywords ***