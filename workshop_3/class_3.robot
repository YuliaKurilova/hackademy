*** Settings ***

Library    SeleniumLibrary 
Test Setup    Open Browser To Mahara  
Test Teardown    Capture Screenshot and Close Browser
Resource    Keywords/Mahara/Mahara_keywords.txt

*** Test Cases ***
Mahara Invailid Login 
    Login To Mahara    BlahBlah    Blahblahblah
    Wait Until Page Contains Element    id=messages    
    Page Should Contain    You have not provided the correct credentials to log in. Please check your username and password are correct.    
    Page Should Contain    There was an error with submitting this form. Please check the marked fields and try again.
    
Mahara Admin Login
    Login To Mahara    Admin    MaharaDemo
    Wait Until Page Contains Element    https://demo.mahara.org/user/james-jetts        
    Page Should Contain Element    xpath=//a[@class="user-icon"]  
      

    
    

    
       
    
    
    