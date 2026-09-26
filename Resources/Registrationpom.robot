*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Registrationlocators.py

*** Keywords ***
Opem my Browser
    [Arguments]  ${url}   ${browser}
    Open Browser  ${url}   ${browser}
    Maximize Browser Window

Click Register Link
    Click Link   ${Register_link}

Enter First Name
      [Arguments]   ${firstname_value}
        Input Text    ${First_Name}    ${firstname_value}

Enter Last Name
        [Arguments]   ${Lasttname_value}
        Input Text  ${Last_Name}    ${Lasttname_value}

Enter Phone
        [Arguments]   ${Phone_value}
        Input Text   ${Phone}   ${Phone_value}

Enter Email
        [Arguments]   ${Email_value}
        Input Text   ${Email}   ${Email_value}

Enter Address
        [Arguments]   ${Address_value}
        Input Text   ${Address}   ${Address_value}

Enter City
        [Arguments]   ${City_value}
        Input Text   ${City}   ${City_value}

Enter State
        [Arguments]   ${State_value}
        Input Text   ${State}   ${State_value}

Enter Postal Code
        [Arguments]   ${Postal_value}
        Input Text   ${Postal_Code}   ${Postal_value}


Country
           [Arguments]   ${Country_value}
           Select From List By Label    ${Country_List}    ${Country_value}

Enter Username
        [Arguments]   ${Username_value}
        Input Text   ${User_Name}   ${Username_value}

Enter Password
        [Arguments]   ${password_value}
        Input Text   ${Password}   ${password_value}

Enter Confirm Password
        [Arguments]   ${Conpassword_value}
        Input Text   ${ConfirmPassword}   ${Conpassword_value}


Click Submit
     Click Element     ${Click_Submit}


Close my browsers
        Close All Browsers