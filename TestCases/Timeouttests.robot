*** Settings ***
Library  SeleniumLibrary



*** Test Cases ***
RegTest

        open browser    https://demowebshop.tricentis.com/register  chrome
        maximize browser window
        ${time}=  Get Selenium Timeout
        Log To Console    ${time}
        Set Selenium Timeout    10
        Wait Until Page Contains    Registeration    # 5 seconds
        select radio button    Gender   M
        input text    name:FirstName    David
        input text    name:LastName     Jhon
        input text    name:Email    anhc@gmail.com
        input text    name:Password    davidjhon
        input text    name:ConfirmPassword    davidjhon
        