*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
    #set window position    x=241    y=169

Launch Log In Page
    click link         Sign In
    page should contain  Login

Enter Credentials For Logging In
    input text        id=email-id    exampletest@mail.com
    input password    id=password    admin
    click button      Submit
    page should contain     Our Happy Customers

Verify Adding New Customer Button
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
