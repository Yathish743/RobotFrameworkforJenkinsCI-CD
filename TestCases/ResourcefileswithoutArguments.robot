*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/OpenBrowser.robot
Documentation  Keywords with Argument & Return Value

*** Variables ***
${Url}   https://www.rahulshettyacademy.com/AutomationPractice/
${Browser}  Chrome

*** Test Cases ***
Browser with Resource file without Arguments
    start browser and maximize without arguments
    page should contain  Practice Page
    close all browsers

Browser with Resource file with Arguments
    start browser and maximize with arguments  https://www.rahulshettyacademy.com/AutomationPractice/  Chrome
    title should be  Practice Page
    close all browsers

Browser with Resource file with Arguments
    start browser and maximize with arguments  ${Url}  ${Browser}
    set selenium speed  2
    click button  xpath://input[@id="hide-textbox"]
    element should not be visible  xpath://input[@id="displayed-text"]
    close all browsers

Start Browser and Maximize with Arguments and return Text
    ${value}=  Start Browser and Maximize with Arguments and return Text  ${Url}  ${Browser}
    set selenium speed  2
    input text  xpath://input[@id="displayed-text"]   ${value}
    click button  xpath://input[@id="hide-textbox"]
    element should not be visible  xpath://input[@id="displayed-text"]
    close all browsers

Stepup and TearnDown menthod
    [Setup]  SetUp the Browser and maximize
    [Teardown]  TearDown the Browser and close
    Select Radio Button  radioButton  radio2
    Select Checkbox   xpath://input[@id='checkBoxOption2']
    Click Button  xpath://input[@id='hide-textbox']
    Select From List By Value  name:dropdown-class-example  option2
    Input Text  xpath://input[@id='autocomplete']   India
    Click Link  xpath://a[text()='Limited offer - FREE Core Java & QA Resume course']