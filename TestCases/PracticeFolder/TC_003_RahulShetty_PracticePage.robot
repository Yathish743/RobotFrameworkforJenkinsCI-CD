*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://www.rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
RahulShettyAcademy Practice Page for Radio button, Check Box, link and Button
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Set Selenium Speed  2seconds
    Select Radio Button  radioButton  radio2
    Select Checkbox   xpath://input[@id='checkBoxOption2']
    Click Button  xpath://input[@id='hide-textbox']
    Select From List By Value  name:dropdown-class-example  option2
    Input Text  xpath://input[@id='autocomplete']   India
    Click Link  xpath://a[text()='Limited offer - FREE Core Java & QA Resume course']
