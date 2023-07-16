*** Settings ***
Documentation   Basic info about the suite
Library         SeleniumLibrary


*** Variables ***
*** Test Cases ***
Should be able to add new customer
    [Documentation]    This is basic info about test
    [Tags]             Smoke    Contacts    ID-1006
    log                Starting the Test Case!
    Begin Web Test
    [Setup]
    open browser     about:blank    Chrome

    Launch Homepage
    Go To              https://automationplayground.com/crm/
    page should contain    Customers Are Priority One!

    #set window position    x=241    y=169
    #set selenium speed    .2
    Log In To Account
    click link         Sign In
    page should contain  Login

    Entering Credentials For Log In
    input text        id=email-id    exampletest@mail.com
    input password    id=password    admin
    click button      Submit
    page should contain     Our Happy Customers

    Verify Adding New Customer
    click link      id=new-customer
    location should contain    crm/add-customer.html
    Filling In The Customer Info
    input text      id=EmailAddress     exampletest1@mail.com
    input text      id=FirstName        George
    input text      id=LastName         Mevis
    input text      id=City             Los-Angeles
    select from list by value    xpath://*[@id="StateOrRegion"]    HI
    select radio button    gender    female
    select checkbox    promos-name
    click button      Submit
    #page should contain    Success! New customer added
    location should contain    customer-success
    sleep              3
    [Teardown]    close browser

*** Keywords ***
