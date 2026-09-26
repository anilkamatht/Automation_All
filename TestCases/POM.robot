*** Settings ***
Library  SeleniumLibrary

Resource   ../Resources/FormKeywords.robot

*** Variables ***
${browser}   chrome
${url}   https://formy-project.herokuapp.com/form
${name}    Anil
${Surname}    Kamath
${Job}   Engineer
${YOE}   2-4
${Day}   08/23/2026


*** Test Cases ***
Fill Complete Web Form
  Opem my Browser   ${url}   ${browser}
   Enter First Name   ${name}
   Enter Last Name    ${Surname}
   Enter Job title     ${Job}
   Highest level of education
   Sex
   sleep  2
   Years of experience  ${YOE}
   Date     ${Day}
   Click Submit
   Close my browsers
   sleep  3
