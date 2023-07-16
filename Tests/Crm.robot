*** Settings ***
Documentation   Basic info about the suite
Resource        ../Resources/Crm.robot
Resource        ../Resources/Common.robot


*** Variables ***
*** Test Cases ***
Should be able to add new customer
    [Documentation]    This is basic info about test
    [Tags]             Smoke    Contacts    ID-1006
    log                Starting the Test Case!
    Begin Web Test
    Setting Selenium Speed
    Launch Homepage
    Launch Log In Page
    Enter Credentials For Logging In
    Verify Adding New Customer Button
    Filling In The Customer Info
    Close The Browser



