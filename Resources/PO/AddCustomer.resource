*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Verify Adding New Customer Button
    click link      id=new-customer
    location should contain    crm/add-customer.html