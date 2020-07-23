*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Multiple Tabs
    open browser  https://www.rahulshettyacademy.com/AutomationPractice/  Chrome
    maximize browser window
    click element  xpath://a[@id="opentab"]
    select window  Practice Page
    ${Url1}=  get location
    log to console  ${Url1}
    select window  Rahul Shetty Academy
    ${Url1}=  get location
    log to console  ${Url1}
    close all browsers
