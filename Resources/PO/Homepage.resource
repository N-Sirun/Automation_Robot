*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Launch Homepage
    Go To              https://automationplayground.com/crm/
    page should contain    Customers Are Priority One!