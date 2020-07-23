*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Store Keyword to a variables
    ${key_var}=   set variable   log to console
    run Keyword   ${key_var}   TestingWorld@gmail.com

Run Keyword Stored into the variable
    ${var}=  set variable   NO
    run keyword if   '${var}'=='NO'  log to console   Value found
    run keyword if   '${var}'=='YES'  log to console   Value Not found
