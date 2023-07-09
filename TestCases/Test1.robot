*** Settings ***
Library   SeleniumLibrary
Library    SeleniumLibrary
*** Test Cases ***
TestCase001
    open browser     ${URL1}     ${browser}
    maximize browser window
    input text   xpath://input[@id='user-name']   ${username}
    input text    id:password   ${password}
    sleep     3
    click button    id:login-button
    sleep     3
    close browser
*** Variables ***
${URL1}   http://www.saucedemo.com
${URL2}    https://thetestingworld.com/testings/
${browser}   Chrome
${username}   standard_user
${password}   secret_sauce
