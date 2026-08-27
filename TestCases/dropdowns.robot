*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}   https://artoftesting.com/samplesiteforselenium

*** Test Cases ***
Handling DropDowns
    Open Browser     ${url}   ${browser}
    Maximize Browser Window
    Select From List By Label    testingDropdown   Database Testing
    sleep  3
    Select From List By Index    testingDropdown   2
    sleep  3
    Select From List By Value    testingDropdown   Performance

