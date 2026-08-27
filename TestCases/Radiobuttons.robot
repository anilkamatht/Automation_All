*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}   https://formy-project.herokuapp.com/

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    Open Browser     ${url}   ${browser}
    Maximize Browser Window
    Click Link    xpath:/html/body/div/div/li[12]/a

    #Selecting Radio Buttons
    Sleep    3
    Select Radio Button    exampleRadios    option2
    sleep  3
    Select Radio Button    exampleRadios    option1
    
    #Selecting Check Box
    Select Checkbox    checkbox-2
    Select Checkbox    checkbox-3
    sleep  2

    Unselect Checkbox    checkbox-3
    
