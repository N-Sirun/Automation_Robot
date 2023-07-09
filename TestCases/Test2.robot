*** Settings ***
Library   SeleniumLibrary
Resource    ../Resources/Resource.robot

*** Test Cases ***
TestCase002
    Open Browser and Maximize    ${URL2}    ${browser}
    select radio button    add_type    office
    sleep     3
    select checkbox    terms
    sleep    3
    close browser
*** Variables ***
${URL2}    https://thetestingworld.com/testings/
${browser}   Chrome