*** Settings ***
Library  SeleniumLibrary

Resource   ../Resources/DragandDrop.robot

*** Variables ***
${browser}   chrome
${url}   https://formy-project.herokuapp.com/dragdrop


*** Test Cases ***
Drag and ropfunction
    Open my Browser   ${url}   ${browser}
    Drag and Drop Test
