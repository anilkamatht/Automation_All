*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}   https://formy-project.herokuapp.com/form
${first_name}    id:first-name
${last_name}     id:last-name
${job_title}     id:job-title
${edu_high_school}    id:radio-button-1
${edu_college}        id:radio-button-2
${edu_grad_school}    id:radio-button-3
${sex_male}           id:checkbox-1
${sex_female}         id:checkbox-2
${sex_prefer_not}     id:checkbox-3
${experience}         id:select-menu
${date}               id:datepicker
#${submit}             css:.btn.btn-lg.btn-primary
${submit}              xpath:/html/body/div/form/div/div[8]/a


*** Test Cases ***
Fill Complete Web Form
    Open Browser     ${url}   ${browser}
    Maximize Browser Window
    Title Should Be    Formy

    # Text fields
    Element Should Be Visible    ${first_name}
    Input Text    ${first_name}    Anil
    Element Should Be Visible    ${last_name}
    Input Text    ${last_name}     Kamath
    Element Should Be Visible    ${job_title}
    Input Text    ${job_title}     QA Engineer

    # Highest level of education (radio buttons)
    Click Element    ${edu_college}

    # Sex (checkboxes)
    Select Checkbox    ${sex_male}
    Select Checkbox    ${sex_female}

    # Years of experience (dropdown)
    Select From List By Label    ${experience}    2-4
    Select From List By Value    ${experience}    2

    # Date
    Input Text    ${date}    08/23/2026
    Press Keys    ${date}    RETURN

    Click Element    ${submit}
    Wait Until Page Contains    The form was successfully submitted!
    Sleep    2
    Close Browser
