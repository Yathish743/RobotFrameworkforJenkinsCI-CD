*** Settings ***
Library  SeleniumLibrary
Resource  C:/Users/win7/PycharmProjects/RobotFramework/Resources/OpenBrowser.robot
Documentation  Testcases File execute Testcases with Setup and TearnDown functionality
Test Setup   SetUp the Browser and maximize
Test Teardown   TearDown the Browser and close
test timeout  30s

*** Test Cases ***
Setup and TearDown menthod
    Select Radio Button  radioButton  radio2
    Select Checkbox   xpath://input[@id='checkBoxOption2']
    Click Button  xpath://input[@id='hide-textbox']
    Select From List By Value  name:dropdown-class-example  option2
    Input Text  xpath://input[@id='autocomplete']   India
    Click Link  xpath://a[text()='Limited offer - FREE Core Java & QA Resume course']
