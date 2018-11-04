*** Settings ***

Library    SeleniumLibrary 
#Test Setup    Open Browser To Mahara  
#Test Teardown    Capture Screenshot and Close Browser
Resource    Keywords/Mahara/Mahara_keywords.txt

*** Variables ***
${password}    MaharaDemo


*** Test Cases ***

Mahara Admin Login Template Test Case
    [Template]    Mahara Admin Login
    admin    ${password}
    student    ${password}
    learner    ${password}
    staff    ${password}
    sitestaff    ${password}
         