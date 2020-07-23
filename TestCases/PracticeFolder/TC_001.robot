*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://www.naukri.com/mnjuser/homepagehttps://www.naukri.com/mnjuser/homepage

*** Test Cases ***
TC_001 Open Browser, navigate to naukri homepage
    Open Browser    ${URL}    ${Browser}
    Close Browser

*** Keywords ***


