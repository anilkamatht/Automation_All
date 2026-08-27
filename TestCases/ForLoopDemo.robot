*** Test Cases ***
#ForLoop1
    #FOR    ${i}    IN RANGE    1    10
        #Log To Console    ${i}
    #END

#ForLoop2
      #FOR  ${I}   IN  1 2 3 4 5 6 7 8
      #Log To Console    ${i}
      #END

#ForLoop3
      #FOR  ${I}   IN  1  2  3  4  5  6  7  8
      #Log To Console    ${i}
      #END

#Forloop4withList
   # @{items}   create list  1  2  3  4  5
      #FOR   ${I}  IN  @{items}
     # Log To Console    ${i}
   # END

#ForLoop5
    #FOR  ${i}  IN  JHON  DAVID  SMITH  SCOTT
    #Log To Console     ${i}
    #END

#ForLoop6
   #@{nameslist}  Create List  JHON  DAVID  SMITH  SCOTT
    #FOR  ${i}  IN   @{nameslist}
    #Log To Console      ${i}
    #END

Forloop6withExit
      @{items}   create list  10   20   30  40   50
      FOR   ${I}  IN  @{items}
     Log To Console    ${i}
     Exit For Loop If    ${i}==30
   END










