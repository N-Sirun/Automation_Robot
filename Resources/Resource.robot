*** Settings ***
Library    SeleniumLibrary

#*** Variables ***
#${URL1}   http://www.saucedemo.com
#${URL2}    https://thetestingworld.com/testings/
#${browser}   Chrome
#${username}   standard_user
#${password}   secret_sauce


*** Keywords ***
Open Browser and Maximize
    [Arguments]    ${UserUrl}    ${BrowserName}
    open browser   ${UserUrl}    ${BrowserName}
    maximize browser window
