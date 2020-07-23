*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary
ssss
*** Variables ***
${Browser}  Chrome
${URL}  https://www.rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
RahulShettyAcademy Practice Page for Radio button, Check Box, link and Button
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Set Selenium Speed  2seconds
    wait until page contains   Practice Page
    log to console  TRUE
    wait until page contains element  xpath://img[@src="images/rs_logo.png"]
    log to console  Logo is Present
    wait until element contains  xpath://legend[@class="switch-tab"]  Switch Tab Example
    log to console   Text Present in the xpath
    #reload page
    Wait Until Element Is Visible   xpath://input[@id="hide-textbox"]
    log to console    Element visible
    #reload page
    click button    xpath://input[@id="hide-textbox"]
    #Wait Until Element Does Not Contain  xpath://input[@id="hide-textbox"]
    log to console   element is Hid
    click button  xpath://input[@id="show-textbox"]
    Wait Until Element Is Enabled    xpath://input[@id="hide-textbox"]
    log to console   Element is shown
    close browser
