*** Settings ***
Library  SeleniumLibrary
Library    XML

#*** Variables ***
#${browser}   chrome
#${url}   https://formy-project.herokuapp.com/

*** Test Cases ***
TestingInputBox
    #Open Browser     ${url}   ${browser}
    Open Browser     https://formy-project.herokuapp.com/    chrome


    Maximize Browser Window
    Title Should Be    Formy
    Click Link   xpath:/html/body/div/div/li[14]/a
    sleep  2
    ${"First_name"}     Set Variable  id:first-name
    Element Should Be Visible    ${"First_name"}
    Element Should Be Visible    ${"First_name"}
    #Element Should Not Be Visible    ${"First_name"}
     Input Text    ${"First_name"}      Anil
     sleep  5
     Clear Element Text     ${"First_name"}
     Sleep    3
     Close Browser


*** Keywords ***





