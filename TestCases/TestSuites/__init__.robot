*** Settings ***
Library  SeleniumLibrary
Suite Setup  Before each Test Suite
Suite Teardown  After each Test Suite




*** Keywords ***
Before each Test Suite
    Log  Test Suite Started

After each Test Suite
    Log  Test Suite Entered