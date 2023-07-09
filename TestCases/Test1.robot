*** Settings ***
Library   SeleniumLibrary
Library    SeleniumLibrary
Resource    ../Resources/Resource.robot
Library    SeleniumLibrary
Resource    ../Resources/Resource.robot

*** Variables ***
${URL1}   http://www.saucedemo.com
${browser}   Chrome
${username}   standard_user
${password}   secret_sauce

*** Test Cases ***
TestCase001
    Open Browser and Maximize    ${URL1}    ${browser}
    input text   xpath://input[@id='user-name']   ${username}
    input text    id:password   ${password}
    sleep     3
    click button    id:login-button
    sleep     3
    close browser

