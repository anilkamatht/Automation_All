*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}    chrome
${siteurl}    https://demo.guru99.com/test/newtours/

*** Test Cases ***
RegistrationTest
    Open browser    ${siteurl}     ${browser}
    Maximize Browser Window
    Sleep  2
    Click Link    xpath:/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[2]/td/table/tbody/tr/td[2]/a
    Input Text    name:firstName   David
    Input Text    name:lastName     Jhon
    Input Text    xpath:/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[4]/td[2]/input  1234567890
    Input Text    name:userName   davidJoHn@gmail.com
    Input Text    name:address1    Toranto
    Input Text    name:city    Toranto
    Input Text    name:state    Brampton
    Input Text    name:postalCode    L3S 1E7
    Select From List By Label    country   UNITED STATES
    Input Text    id:email    johnxyx
    Input Password    name:password    johnxyx
    Input Password    name:confirmPassword    johnxyx
    # The site renders a sticky bottom ad bar that intercepts the click on submit.
    Execute Javascript    document.querySelectorAll('[class*="cb-box"]').forEach((e) => e.remove())
    Scroll Element Into View    name:submit
    Click Button    name:submit
    Wait Until Page Contains    Thank you for registering.    10s
    Close Browser

    



    
    



    


