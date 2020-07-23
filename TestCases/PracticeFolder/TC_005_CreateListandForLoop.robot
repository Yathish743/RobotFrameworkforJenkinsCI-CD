*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***

*** Test Cases ***
Create List with different datatyes and Print in console log
    @{List}  create list   Hello  23  32.321  World  abc1234
    ${list_length}  get length  ${List}
    log to console  ${list_length}
    ${list_data}=   get from list  ${List}  2
    log to console  ${list_data}

Run for Range of values using For loop
    FOR  ${i}  IN RANGE  0  10  2
    log to console   ${i}
    END
