*** Settings ***
Resource  ../../Resources/OpenBrowser.robot


*** Test Cases ***
Create folder code
    #Create folder at runtime
    #Create folder with Arguments at runtime  robotFrameworkPart1   Testcasesfolder
    Concatenate two values  Testing  World

