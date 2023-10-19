*** Settings ***
Library     SeleniumLibrary
*** Variables ***

*** Test Cases ***
handling tabbed windows
    Open Browser    https://demo.automationtesting.in/Register.html     chrome
    Maximize Browser Window
#    Set Selenium Speed     5
    Click Element     xpath://a[@class='dropdown-toggle'][1]
#    Sleep    2s
    Wait Until Element Is Visible   xpath://a[text()='Windows']    timeout=5s
    Wait Until Element Is Enabled   xpath://a[text()='Windows']    timeout=5s
    Click Element     xpath://a[text()='Windows']

    ${google_ad}=      Run Keyword And Return Status    Wait Until Element Is Visible    id:Advertisement     error=False     timeout=2s
#    Sleep    50s
    IF    ${google_ad} == True
        Log To Console    inside
        Select Frame    tag:iframe
        Click Element    xpath://*[text()='Close']
    END

    Click Element     xpath://*[@id="Tabbed"]/a/button
    Switch Window      title:Selenium
    Element Should Be Visible    xpath://h4[@class='alert-heading text-center m-0']
    Wait Until Element Is Visible    //a[@id='navbarDropdown']
#    Click Element    id://a[@id='navbarDropdown']
    Close All Browsers

switch_to_multiple_browsers
    Set Selenium Speed    2
    Open Browser    https://www.google.com/     chrome
    Maximize Browser Window
    Open Browser    https://in.search.yahoo.com     chrome
    Maximize Browser Window

    Switch Browser    1
    ${title1}=   get title
    Log To Console    ${title1}

    Switch Browser    2
    ${title2}=   get title
    Log To Console    ${title2}
    Close All Browsers



*** Keywords ***

