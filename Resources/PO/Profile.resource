*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Edit Customer Profile
    click link    xpath=//*[@id="customers"]/tbody/tr[1]/td[5]/a[1]
    location should contain    crm/user.html
Back To Customers List
    click link   Back to Customers
    page should contain    Our Happy Customer
