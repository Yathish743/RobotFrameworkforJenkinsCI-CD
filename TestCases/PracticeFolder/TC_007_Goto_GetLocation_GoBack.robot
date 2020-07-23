*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC_007_Goto_GetLocation_GoBack.robot
    Open Browser   https://thetestingworld.com  Chrome
    Go to  https://www.youtube.com/watch?v=HWO7o-Nx9FI
    ${URL}=  Get location
    log to console   ${URL}
    Go back
    ${URL}=  Get location
    log to console   ${URL}
    Close Browser