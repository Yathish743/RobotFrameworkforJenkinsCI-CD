*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Test Cases ***
Multiple Tabs
    open browser  https://www.rahulshettyacademy.com/AutomationPractice/  Chrome
    maximize browser window
    click element  xpath://a[@id="opentab"]
    @{List}  get window Handles
    FOR  ${i}  IN  @{List}
    select window  ${i}
    ${Url}=  get location
    log to console  ${Url}
    END
    close all browsers
