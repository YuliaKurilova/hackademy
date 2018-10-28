*** Settings ***
Test Setup    Log    Setup    
Test Teardown    Log   Teardown    
Library    SeleniumLibrary                       
*** Variables ***
${initial_variable}    Initial Value


*** Test Cases ***
First Test
    Get Time and Print to Log

*** Keywords ***

Get Time and Print to Log 
    ${local_variable}=    Get Time    
    Log    ${local_variable}
    Log    ${initial_variable}    
    