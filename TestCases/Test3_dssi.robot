*** Settings ***
Library    RequestsLibrary
Library    RequestsLibrary
Resource    ../Resources/Resource.robot
Library    SeleniumLibrary

*** Test Cases ***
TestCase002
    Open Browser and Maximize    ${URLAU}     ${browser}
    input text    name:_vercel_password    ${sit_pass}
    click button    class:submit
    page should contain element    xpath://*[@id="__next"]/main/header/div[1]/div[1]/div[1]
    ${response}    RequestsLibrary.GET    ${URLAU}    ${browser}
    Log  ${response}
    sleep   3
    GET    ${URLAU} params:stationCode=au    params:platform=1
   # close browser
*** Variables ***
#${URL1}    https://dssisit.vercel.app/line-station-rail-platform/tests
${browser}   Chrome
${URLAU}   https://dssisit.vercel.app/line-station-rail-platform/tests
${sit_pass}   MX_Signatures_DSSI