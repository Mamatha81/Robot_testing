#*** scrolling page using with javascript*******
#scrolling page till it rach a pixel number
#scrolling page till find element on page
#scrolling page till the bottom

*** Settings ***
Library     Selenium2Library

*** Variables ***
${url}      https://www.countries-ofthe-world.com/flags-of-the-world.html
${browser}      chrome

*** Test Cases ***
scrollings
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
#    Execute Javascript  window.scrollTo(0,1500)
#    Scroll Element Into View    xpath://td[text()='India']
    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)       #top to bottom
    Sleep    3
    Execute Javascript  window.scrollTo(0,-document.body.scrollHeight)      #bottom to top
    Sleep    3
*** Keywords ***