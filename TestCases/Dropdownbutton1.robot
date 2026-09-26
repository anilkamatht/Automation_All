*** Settings ***
Library  SeleniumLibrary

Resource  ../Resources/Dropdownbuttons.robot

*** Variables ***
${browser}   chrome
${url}   https://formy-project.herokuapp.com/

*** Test Cases ***
Dropdowntest1
    Open my Browser  ${url}   ${browser}
    sleep  2
    Click Dropdown Link
    sleep  2
    Click Dropdown button
    sleep  2
    Click Dropdown button Link
    Close my browsers


