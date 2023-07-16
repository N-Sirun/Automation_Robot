*** Settings ***
Resource     ../Resources/PO/Homepage.resource
Resource     ../Resources/Common.resource
Test Setup      Begin Web Test
Test Teardown   Close The Browser

*** Test Cases ***
Validate Search Functionality
    [Documentation]    Testing Search Functionality with happy path
    [Tags]             Smoke    Positive    ID-1007
    Test Speed
    Homepage.Launch Homepage
    Enter And Clear Term Into The Search Box


