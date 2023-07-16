*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Launch Log In Page
    click link         Sign In
    page should contain  Login