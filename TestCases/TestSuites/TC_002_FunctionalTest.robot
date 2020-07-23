*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://www.rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Mouse Down and Up
    Open Browser  ${URL}  Chrome
    maximize browser window
    mouse down  xpath://button[text()='Home']
    sleep  10seconds
    mouse up    xpath://button[text()='Home']
    sleep  10 seconds
    close browser

Mouse Hover
    Open Browser  ${URL}  Chrome
    maximize browser window
    execute javascript   window.scrollTo(0,1000)
    sleep  5seconds
    mouse over  xpath://button[@id="mousehover"]
    sleep  5seconds
    close browser
