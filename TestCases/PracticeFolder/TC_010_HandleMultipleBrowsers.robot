*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Url1}  https://www.rahulshettyacademy.com/AutomationPractice/
${URL2}  https://rahulshettyacademy.com/angularpractice/

*** Test Cases ***
Switch between two browsers
    open browser   ${Url1}  Chrome
    maximize browser window
    open browser   ${Url2}  Chrome
    maximize browser window
    Switch Browser  1
    ${Get url}=  get location
    log to console  ${Get url}
    input text  xpath://input[@id="displayed-text"]  HideButton
    click element  xpath://input[@id="hide-textbox"]
    Switch Browser  2
    ${Get url}=  get location
    log to console  ${Get url}
    #input text  xpath://input[@name="name" and @class="form-control ng-dirty ng-invalid ng-touched"]  Name entered
    close all browsers