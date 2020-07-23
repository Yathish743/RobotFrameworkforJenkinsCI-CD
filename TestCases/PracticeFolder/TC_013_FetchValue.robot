*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Url}  https://www.rahulshettyacademy.com/AutomationPractice/
${Browser}  Chrome

*** Test Cases ***
Fetch value from application at runtime
    Open Browser  ${Url}  ${Browser}
    maximize browser window
    ${PageTitle}=  Get title
    Log  ${PageTitle}
    ${Speed}=  Get Selenium Speed
    Log  ${Speed}
    ${Value}=  Get Value  xpath://input[@id="confirmbtn"]
    Log  ${Value}
    ${Text}=  Get Text  xpath://table[@id="product"]/tbody[1]/tr[2]/td[2]
    Log  ${Text}


    Select From List by Index  xpath://select[@id="dropdown-class-example"]  2
    ${Val}=  Get selected List value  xpath://select[@id="dropdown-class-example"]
    Log  ${Val}
    ${Text}=  Get Selected List label   xpath://select[@id="dropdown-class-example"]
    Log  ${Text}
    ${All labels}=  Get List Items   xpath://select[@id="dropdown-class-example"]
    Log  ${All labels}


    ${ActualUrl}=  Get Location
    Log  ${ActualUrl}
    ${PageHTML}=  Get source
    Log  ${PageHTML}
    ${Attribute}=  Get Element Attribute  xpath://select[@id="dropdown-class-example"]  name
    Log  ${Attribute}
    ${Count}=  Get Element Count  tagname:a
    Log  ${Count}

    Close Browser