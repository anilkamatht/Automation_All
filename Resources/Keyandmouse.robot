*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]  ${url}   ${browser}
    Open Browser  ${url}   ${browser}
    Maximize Browser Window

Enter Full Name
      [Arguments]   ${Fullname_value}
        Input Text    ${Full_Name}    ${Fullname_value}

Click Button Test
        Click Button    ${button_test}

Close my browsers
        Close All Browsers
