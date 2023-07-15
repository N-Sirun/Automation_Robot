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
    page should contain    Customers Are Priority One!

    #set window position    x=241    y=169
    set selenium speed    .2
    click link         Sign In
    page should contain  Login

    input text        id=email-id    exampletest@mail.com
    input password    id=password    admin
    click button      Submit
    page should contain     Our Happy Customers

    click link      id=new-customer
    location should contain    crm/add-customer.html

    input text      id=EmailAddress     exampletest1@mail.com
    input text      id=FirstName        George
    input text      id=LastName         Mevis
    input text      id=City             Los-Angeles
    dropdown
    sleep              3
    close browser

*** Keywords ***
