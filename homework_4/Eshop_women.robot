*** Settings ***
Library    SeleniumLibrary    
Variables    Objects/Eshop_objects.py
Resource    Keywords/Eshop_keywords.txt
Test Setup    Open Browser    ${url}     ${browser}   
Test Teardown    Close Browser

***Variables***
${url}    http://automationpractice.com/index.php   
${browser}    chrome 
  
*** Test Cases ***
Test women filters and sorts
    Go to women category
    Wait Until Page Contains Element    ${checkbox_size_m}    
    Select Checkbox    ${checkbox_size_m}
    Click color filter button    ${checkbox_color_black}
    Click color filter button    ${checkbox_color_white}
    Select Checkbox    ${checkbox_availability_available}
    Wait Until Page Contains    Showing 1 - 2 of 2 items       
    Page Should Contain    Showing 1 - 2 of 2 items 
    Sort by price desc     
    #Sort cannot be tested because there is ul used in app
     
    
    
