#count no of rows in a table
#count no of columns in a table
#get data from table
#validation on table

*** Settings ***
Library     Selenium2Library

*** Variables ***
${url}      https://testautomationpractice.blogspot.com/
${browser}      chrome

*** Test Cases ***
rows_columns
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Set Selenium Speed    1
    Scroll Element Into View    xpath://h2[text()='Web Table']
    ${rows}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr
    Log To Console    ${rows}
    ${cols}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr[1]/th
    Log To Console    ${cols}
    ${textdata}=    Get Text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    Log To Console    ${textdata}
    Table Column Should Contain    xpath://table[@name='BookTable']    4    Price
#    column shoulb in 4th column in price
    Table Row Should Contain    xpath://table[@name='BookTable']    3    Java
    Table Cell Should Contain    xpath://table[@name='BookTable']    5    3    Selenium
    Table Header Should Contain    xpath://table[@name='BookTable']    BookName
    
*** Keywords ***

