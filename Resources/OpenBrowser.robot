*** Settings ***
Library  SeleniumLibrary
Documentation  Resourcefile for Open Browser and Close Browser
Library   ../ExternalKeywords/CreateFloder.py

*** Variables ***
${Url1}  https://www.rahulshettyacademy.com/AutomationPractice/
${Browser1}  Chrome

*** Keywords ***
Start Browser and Maximize without Arguments
    open browser  ${Url1}  ${Browser1}
    maximize browser window

Start Browser and Maximize with Arguments
    [Arguments]  ${url}  ${browser}
    open browser  ${url}  ${browser}
    maximize browser window

Start Browser and Maximize with Arguments and return Text
    [Arguments]  ${url}  ${browser}
    open browser  ${url}  ${browser}
    maximize browser window
    ${Title}=  Get Title
    [Return]  ${Title}

SetUp the Browser and maximize
    open browser  ${Url1}  ${Browser1}
    maximize browser window

TearDown the Browser and close
    ${Title}=  Get Title
    Log   ${Title}
    Close Browser

Create folder at runtime
    create_folder
    create_sub_folder
    Log  Folder and subfolder in D directory

Create folder with Arguments at runtime
    [Arguments]  ${Foldername}  ${SubFolderName}
    create_folder_by_Arguments  ${Foldername}  ${SubFolderName}
    Log  Folder and subfolder are created with Arguments in D directory

Concatenate two values
    [Arguments]  ${val1}  ${val2}
    ${values}=  concatenate_two_values  ${val1}  ${val2}
    Log  ${values}
