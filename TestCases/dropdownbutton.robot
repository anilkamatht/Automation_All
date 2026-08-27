*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}   https://formy-project.herokuapp.com/

*** Test Cases ***
Handling DropDownbuttons
    Open Browser     ${url}   ${browser}
    Maximize Browser Window
    Click Link    xpath:/html/body/div/div/li[6]/a
    Sleep  2
    Click Button    id:dropdownMenuButton
    Click Link     xpath:/html/body/div/div/div/a[4]
    Sleep  2
    Close Browser

