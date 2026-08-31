*** Settings ***

Library    SeleniumLibrary

*** Test Cases ***
MouseActions
    #Right Click/Open Context Menu
    Open Browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   chrome
    Maximize Browser Window
    Open Context Menu   xpath:/html/body/main/p/span
    sleep  2

    #double click action
    go to   https://demo.guru99.com/test/simple_context_menu.html
        maximize browser window
        double click element    xpath://*[@id="authentication"]/button
        handle alert    accept
        sleep    3

         #Drag and Drop
        go to    https://formy-project.herokuapp.com/dragdrop
        maximize browser window
        #drag and drop    xpath://div[@id='image']//img   xpath://div[@id='box']
         drag and drop    xpath://*[@id="image"]/img   xpath://*[@id="box"]
        sleep    2