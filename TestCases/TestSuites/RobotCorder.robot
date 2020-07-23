*** Settings ***
Documentation     A test suite with a single test for Practice Page
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    Chrome
${SLEEP}    3

*** Test Cases ***
Practice Page test
    Open Browser    https://www.rahulshettyacademy.com/AutomationPractice/    ${BROWSER}
    Click Element    //body
    Click Element    //input[@name="radioButton"]
    Click Element    xpath=(//input[@name="radioButton"])[2]
    Click Element    xpath=(//input[@name="radioButton"])[3]
    Click Element    //div[@id="ui-id-6"]
    Input Text    //input[@id="autocomplete"]    India
    Select From List By Value    //select[@name="dropdown-class-example"]    option1
    Select From List By Value    //select[@name="dropdown-class-example"]    option2
    Select From List By Value    //select[@name="dropdown-class-example"]    option3
    Click Element    //input[@name="checkBoxOption1"]
    Click Element    //input[@name="checkBoxOption2"]
    Click Element    //input[@name="checkBoxOption3"]
    Click Element    //input[@name="checkBoxOption1"]
    Click Element    //input[@name="checkBoxOption2"]
    Click Element    //input[@name="checkBoxOption3"]
    Input Text    //input[@name="enter-name"]    SDA
    Click Element    //input[@id="alertbtn"]

    Close Browser