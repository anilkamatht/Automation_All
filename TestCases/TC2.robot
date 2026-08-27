*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}   edge
${url}   https://formy-project.herokuapp.com/

*** Test Cases ***
AutocompleteTest
      Open Browser     ${url}   ${browser}
      fillAutocompleteForm
      Close Browser

*** Keywords ***
fillAutocompleteForm
      Maximize Browser Window
      Click Link   xpath:/html/body/div/div/li[1]/a
      sleep  2
      Input Text    id:autocomplete   1555 Park Blvd
      Input Text    id:street_number   1555 Park Blvd
      Input Text    id:route   Palo Alto
      Input Text    id:locality   Palo Alto
      Input Text    id:administrative_area_level_1   CA
      Input Text    id:postal_code   94306
      Input Text    id:country   United States
      sleep  2
