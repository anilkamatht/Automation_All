*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]  ${url}   ${browser}
    Open Browser  ${url}   ${browser}
    Maximize Browser Window

Click Dropdown Link
    Click Link   ${drop_down}

Click Dropdown button
    Click Button  ${dropdown_button}

Click Dropdown button Link
     Click Link  ${File_upload}

Close my browsers
        Close All Browsers