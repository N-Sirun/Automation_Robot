*** Settings ***
Documentation   Basic info about the suite
Resource        ../Resources/Crm.resource
Resource        ../Resources/Common.resource
Test Setup      Begin Web Test
Test Teardown   Close The Browser

*** Variables ***
*** Test Cases ***
Should be able to add new customer
    [Documentation]    This is basic info about test
    [Tags]             Smoke    Contacts    ID-1006
    log                Starting the Test Case!
    Setting Selenium Speed
    Launch Homepage
    Launch Log In Page
    Enter Credentials For Logging In
    Verify Adding New Customer Button
    Filling In The Customer Info




