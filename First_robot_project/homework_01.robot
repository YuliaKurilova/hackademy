*** Settings ***    
Library    Dialogs    

*** Variables ***
${initial_variable}    Initial Value


*** Test Cases ***
Homework Test
    ${input}=    Get Value From User    Write the input: 
    Should Be Equal As Strings    ${input}   ${initial_variable}    
    
    
    
    
    
