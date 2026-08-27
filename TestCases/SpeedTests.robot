*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
RegTest
        ${spead}=   get selenium speed
        Log To Console    ${spead}
        #Sleep
        #Selenium Spped
        #Selenium Timeout
        #Implicit wait
        open browser    https://demowebshop.tricentis.com/register  chrome
        maximize browser window
       # sleep  3
       Set Selenium Speed    2  #Every syntax will take 2 seconds of delay time
        select radio button    Gender   M
        input text    name:FirstName    David
        input text    name:LastName     Jhon
        input text    name:Email    anhc@gmail.com
        input text    name:Password    davidjhon
        input text    name:ConfirmPassword    davidjhon
        ${spead}=   get selenium speed
        Log To Console    ${spead}
