*** Settings ***
Library   SeleniumLibrary
Library    SeleniumLibrary
*** Test Cases ***
TestCase001
    open browser     ${URL}     ${browser}
    input text   xpath://input[@id='user-name']   ${username}
    close browser
*** Variables ***
${URL}   http://www.saucedemo.com
${browser}   Chrome
${username}   standard_user
