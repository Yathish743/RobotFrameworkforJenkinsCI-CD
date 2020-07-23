*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/OpenBrowser.robot
Test Setup  Start Browser and Maximize without Arguments
Test Teardown  TearDown the Browser and clo


*** Variables ***
${URL}  https://www.rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Scroll down using JavaScript
    #Open Browser  ${URL}  Chrome
    #maximize browser window
    execute javascript   window.scrollTo(0,1000)
    sleep  5seconds
    execute javascript   window.scrollTo(1000,0)
    #close browser

Open Context menu or Right Click
    #Open Browser  ${URL}  Chrome
    #maximize browser window
    open context menu  xpath://a[@id='opentab']
    sleep  5seconds
    #close browser

Double Click
    #Open Browser  ${URL}  Chrome
    #maximize browser window
    double click element  xpath://input[@id="confirmbtn"]
    sleep  5seconds
    handle alert  accept
    #press keys  13
    #ACCEPT
    #close browser