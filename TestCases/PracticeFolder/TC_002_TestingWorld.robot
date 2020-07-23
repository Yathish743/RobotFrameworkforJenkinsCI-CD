*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://thetestingworld.com/testings/

*** Test Cases ***
Open Browser, navigate to testingworld page and enter username and password
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Set Selenium Speed  2seconds
    Input Text  name:fld_username  YathishG
    Input Text  name:fld_email   Yathish@gmail.com
    Input Text  xpath://input[@name='fld_password']   pokiujyhtgrfdewsaq***
    Select From List By Index   name:sex  2
    Select From List By Value  name:country  101
    Select From List By Label  name:country   Iceland
    capture page screenshot    ./Snapshots/TC_002.png
    #Close Browser