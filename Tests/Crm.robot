*** Settings ***
Documentation   Basic info about the suite
Library         SeleniumLibrary


*** Variables ***
*** Test Cases ***
Should be able to add new customer
    [Documentation]    This is basic info about test
    [Tags]             Smoke    Contacts    ID-1006
    log                Starting the Test Case!
    open browser       https://automationplayground.com/crm/    Chrome
    sleep              3
    close browser

*** Keywords ***
