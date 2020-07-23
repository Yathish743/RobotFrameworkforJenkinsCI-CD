*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${URL}  https://www.rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Scroll down using JavaScript
    Open Browser  ${URL}  Chrome
    maximize browser window
    execute javascript   window.scrollTo(0,1000)
    sleep  10seconds
    execute javascript   window.scrollTo(1000,0)
    close browser

Open Context menu or Right Click
    Open Browser  ${URL}  Chrome
    maximize browser window
    open context menu  xpath://a[@id='opentab']
    sleep  10seconds
    close browser

Double Click
    Open Browser  ${URL}  Chrome
    maximize browser window
    double click element  xpath://input[@id="confirmbtn"]
    sleep  5seconds
    #ACCEPT
    close browser

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

