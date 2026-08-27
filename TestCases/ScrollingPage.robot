*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
ScrollingTest
    Open Browser  https://www.britannica.com/biography/A-P-J-Abdul-Kalam   chrome
    Maximize Browser Window
    #Execute Javascript   window.scrollTo(0, 1700)  #Scroll to certain pixels
    #Scroll Element Into View    xpath://*[@id="ref1"]/p[3]/a[2]
    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)  #end of the page

    sleep  5
    Execute Javascript  window.scrollTo(0,-document.body.scrollHeight)  # begin of the page
    sleep  2
    
