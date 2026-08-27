*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}   firefox
${url}   https://formy-project.herokuapp.com/

*** Test Cases ***
LoginTest
      Open Browser     ${url}   ${browser}
      loginToApplication
      Close Browser

*** Keywords ***
loginToApplication
      Maximize Browser Window
      Click Link   xpath:/html/body/div/div/li[14]/a
      sleep  2
      Input Text    id:first-name   Anil
      sleep  2
      Input Text    id:last-name    Kamath
      sleep  2
      Click Element   xpath:/html/body/div/form/div/div[8]/a
      sleep  2

