*** Settings ***
Documentation   Basic info about the suite
Resource        ../Resources/Crm.resource
Resource        ../Resources/Common.resource
Resource        ../Resources/PO/Homepage.resource
Resource        ../Resources/PO/SignIn.resource
Resource        ../Resources/PO/AddCustomer.resource
Resource        ../Resources/PO/Profile.resource
Test Setup      Begin Web Test
Test Teardown   Close The Browser

*** Variables ***
*** Test Cases ***
Should be able to add new customer
    [Documentation]    This is basic info about test
    [Tags]             Smoke    Contacts    ID-1006
    log                Starting the Test Case!
    Test Speed
    Homepage.Launch Homepage
    SignIn.Launch Log In Page
    Enter Credentials For Logging In
    AddCustomer.Verify Adding New Customer Button
    Filling In The Customer Info

Should be able to edit customer profile
    [Documentation]    Edit profile clicking pencil icon
    [Tags]             ID-1008
    log                Profile editing!
    Test Speed
    Homepage.Launch Homepage
    SignIn.Launch Log In Page
    Enter Credentials For Logging In
    Profile.Edit Customer Profile
    Profile.Back To Customers List



