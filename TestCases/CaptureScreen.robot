*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://formy-project.herokuapp.com/form
${first_name}   id:first-name
${submit}       css:.btn.btn-lg.btn-primary

*** Test Cases ***
Capture Page And Element Screenshots
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    Formy

    Input Text    ${first_name}    Anil
    Input Text    id:last-name     Kamath
    Input Text    id:job-title     QA Engineer

    # Full visible page (viewport)
    #Capture Page Screenshot    page-form.png
    Capture Page Screenshot    C:/Users/anil.k/PycharmProjects/Auto/page-form.png
    # Single element only (text box)
    #Capture Element Screenshot    ${first_name}    element-first-name.png
    Capture Element Screenshot    ${first_name}     C:/Users/anil.k/PycharmProjects/Auto/element-first-name.png

    #Capture Element Screenshot    locator    filename

    # Another element (Submit button)
    #Capture Element Screenshot    ${submit}    element-submit-button.png
    Capture Element Screenshot    ${first_name}     C:/Users/anil.k/PycharmProjects/Auto/element-submit-button.png

    Close Browser
