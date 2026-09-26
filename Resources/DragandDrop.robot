*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py


*** Keywords ***
Open my Browser
    [Arguments]  ${url}   ${browser}
    Open Browser  ${url}   ${browser}
    Maximize Browser Window

Drag and Drop Test
    Drag And Drop    ${Source}    ${Destination}
