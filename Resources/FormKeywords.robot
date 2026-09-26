*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Opem my Browser
    [Arguments]  ${url}   ${browser}
    Open Browser  ${url}   ${browser}
    Maximize Browser Window

Enter First Name
      [Arguments]   ${firstname_value}
        Input Text    ${first_name}    ${firstname_value}

Enter Last Name
        [Arguments]   ${Lasttname_value}
        Input Text  ${last_name}    ${Lasttname_value}

Enter Job title
        [Arguments]   ${Jobtitle_value}
        Input Text   ${job_title}   ${Jobtitle_value}

Highest level of education
       Click Element   ${edu_high_school}

Sex
         Select Checkbox  ${sex_male}

Years of experience
           [Arguments]   ${experience_value}
           Select From List By Label    ${experience}    ${experience_value}

Date
            [Arguments]   ${date_value}
        Input Text   ${date}   ${date_value}
        Press Keys    ${date}    RETURN


Click Submit
     Click Element     ${submit}
        


Close my browsers
        Close All Browsers


