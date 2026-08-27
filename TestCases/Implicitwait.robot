*** Settings ***
Library  SeleniumLibrary



*** Test Cases ***
RegTest

        open browser    https://demowebshop.tricentis.com/register  chrome
        maximize browser window

        ${implicittime}=  Get Selenium Implicit Wait
        Log To Console    ${implicittime}
        
        
        Set Selenium Implicit Wait    10
        ${implicittime}=  Get Selenium Implicit Wait
        Log To Console    ${implicittime}

        select radio button    Gender   M
        input text    name:FirstName1    David
        input text    name:LastName     Jhon
        input text    name:Email    anhc@gmail.com
        input text    name:Password    davidjhon
        input text    name:ConfirmPassword    davidjhon