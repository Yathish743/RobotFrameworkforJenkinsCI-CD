*** Settings ***
Library   SeleniumLibrary

*** Variables ***

*** Test Cases ***
Printing in console log
    ${Var}=  set variable   HelloWorld
    log to console  ${Var}

