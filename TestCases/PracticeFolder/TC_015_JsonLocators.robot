*** Settings ***
Library  SeleniumLibrary
Library  ../../ExternalKeywords/JsonElementsLocator.py

*** Variables ***
${Browser}  Chrome
${URL}  https://thetestingworld.com/testings/

*** Test Cases ***
Open Browser, navigate to testingworld page and enter username and password
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Set Selenium Speed  2seconds
    ${Username}=  Real Element locator  Registration.username_textbox_name
    Input Text  name:${Username}  YathishG
    ${email}=  Real Element locator  Registration.email_textbox_name
    Input Text  name:${email}   Yathish@gmail.com
    ${Password}=  Real Element locator  Registration.password_textbox_name
    Input Text  ${Password}   pokiujyhtgrfdewsaq***
    close Browser

*** Keywords ***
Real Element locator
    [Arguments]  ${JsonPath}
    ${Result}=  read_locator_from_json  ${JsonPath}
    [return]  ${Result}
