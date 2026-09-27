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
    go to  https://formy-project.herokuapp.com/
    Click link  xpath:/html/body/div/div/li[3]/a
    sleep  3
    #Selecting Check Box
    Select Checkbox    id:checkbox-1
    Select Checkbox    id:checkbox-2
    sleep  2

    Unselect Checkbox    id:checkbox-2
    
