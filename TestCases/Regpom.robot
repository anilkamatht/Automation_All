*** Settings ***
Library  SeleniumLibrary

Resource   ../Resources/Registrationpom.robot

*** Variables ***
${browser}   chrome
${url}   https://demo.guru99.com/test/newtours/
${name}    David
${Surname}    Jhon
${mobile}   1234567890
${emailid}  davidJoHn@gmail.com
${addressfield}  Toranto
${City1}  Toranto
${State1}  Brampton
${zpcode}  L3S 1E7
${Country}   UNITED STATES
${Username1}  johnxyx
${Password1}  johnxyx
${ConfirmPassword1}   johnxyx



*** Test Cases ***
Fill Registration Form
  Opem my Browser   ${url}   ${browser}
  Click Register Link
   Enter First Name   ${name}
   Enter Last Name    ${Surname}
   Enter Phone  ${mobile}
   Enter Email  ${emailid}
   Enter Address  ${addressfield}
   Enter City  ${City1}
   Enter State  ${State1}
   Enter Postal Code  ${zpcode}
   Country  ${Country}
   Enter Username  ${Username1}
   Enter Password  ${Password1}
   Enter Confirm Password  ${ConfirmPassword1}
   Execute Javascript    document.querySelectorAll('[class*="cb-box"]').forEach((e) => e.remove())
   Scroll Element Into View    name:submit
   Click Submit
   sleep  3
   Close my browsers
   sleep  3