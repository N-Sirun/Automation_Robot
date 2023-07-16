*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Crm.resource

*** Keywords ***

Begin Web Test
    open browser     about:blank    Chrome
Setting Selenium Speed
    set selenium speed    .2
Launch Homepage
    Go To              https://automationplayground.com/crm/
    page should contain    Customers Are Priority One!
Close The Browser
    close browser