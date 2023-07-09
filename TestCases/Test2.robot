*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
TestCase002
    open browser     ${URL2}     ${browser}
    maximize browser window
    select radio button    add_type    office
    sleep     3
    select checkbox    terms
    sleep    3
    close browser
*** Variables ***
${URL2}    https://thetestingworld.com/testings/
${browser}   Chrome
#${username}   standard_user
#${password}   secret_sauce