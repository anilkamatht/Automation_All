*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
GetAllLinksTest
    Open Browser   https://formy-project.herokuapp.com/  chrome
    Maximize Browser Window
    ${AllLinksCount}=  Get Element Count    xpath://a
    Log To Console    ${AllLinksCount}

    @{LinkItems}    Create List
    FOR  ${i}   IN RANGE  1   ${AllLinksCount}+1
    ${LINKTEXT}=  Get Text    xpath:(//a)[${i}]
    Log To Console     ${LINKTEXT}
    END

    

