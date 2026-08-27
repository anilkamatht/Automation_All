*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
MyTestCase

  Open Browser  https://formy-project.herokuapp.com/    chrome
  maximize browser window

   open browser    https://artoftesting.com/samplesiteforselenium  chrome
   maximize browser window

   Close All Browsers

