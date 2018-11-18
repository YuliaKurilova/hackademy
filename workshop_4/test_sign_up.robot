*** Settings ***
Library    SeleniumLibrary    
Variables   Objects/Automation_practice/Robot_resource.py
Test Setup    Open Browser    ${url}     ${browser}   
Test Teardown    Close Browser
***Variables***
${url}    http://automationpractice.com/index.php   
${browser}    chrome   
*** Test Cases ***
Register To Eshop
    Click Link    ${link_login}
    Wait Until Page Contains Element    ${auth_tbox_email}    
    Input Text   ${auth_tbox_email}     hello@hellllo.com 
    Click Button    ${btn_create_account}
    Wait Until Page Contains Element    ${sup_radio_mrs}    
    Click Element    ${sup_radio_mrs}
    Input Text    ${sup_tbox_first_name}    Hacker
    Input Text    ${sup_tbox_last_name}    School
    Textfield Should Contain    ${sup_tbox_email}    hello@hellllo.com 
    Input Password    ${sup_pwd_password}    password    
    Select From List By Index    ${sup_dropdown_day}    26
    Select From List By Label    ${sup_dropdown_month}    March${SPACE}
    Select From List By Value    ${sup_dropdown_year}    2010  
    Select Checkbox    ${sup_chck_newslettter}
    Capture Page Screenshot    
              
      
    

