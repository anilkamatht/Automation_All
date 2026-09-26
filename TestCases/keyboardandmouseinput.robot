*** Settings ***
Library  SeleniumLibrary
Resource   ../Resources/Keyandmouse.robot

*** Variables ***
${browser}   chrome
${url}   https://formy-project.herokuapp.com/keypress
${name}    David



*** Test Cases ***
Check Keyboard and Mouse Input
  Open my Browser   ${url}   ${browser}
  Enter Full Name  ${name}
  Click Button Test
  Close my browsers
