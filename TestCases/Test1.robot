*** Settings ***
Library   SeleniumLibrary
Resource    ../Resources/Resource.robot


*** Variables ***
${URL1}   http://www.saucedemo.com
${browser}   Chrome
${username}   standard_user
${password}   secret_sauce

*** Test Cases ***
TestCase001
    [Setup]    Open Browser and Maximize    ${URL1}    ${browser}
    [Teardown]    close browser
    [Tags]    Smoke
    input text   xpath://input[@id='user-name']   ${username}
    input text    id:password   ${password}
    sleep     3
    click button    id:login-button
    ${Title}=    get title
    log    ${Title}
    ${Cookies}=  get cookies
    log    ${Cookies}
    set screenshot directory    Screenshots
    scroll element into view    xpath://*[@id="page_wrapper"]/footer/ul/li[1]/a
    #wait until element is visible    xpath://*[@id="item_3_img_link"]/img
    capture element screenshot    xpath://*[@id="item_3_img_link"]/img

