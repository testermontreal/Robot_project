*** Settings ***
Library    SeleniumLibrary    


*** Tasks ***
TC001_login_Test_Orange
    Open Browser    https://opensource-demo.orangehrmlive.com/index.php/auth/validateCredentials    gc  
    ${Wait}=    Get Selenium Implicit Wait
    Log To Console    ${Wait}
    ${Wait_Speed}=    Get Selenium Speed
    Log To Console    ${Wait_Speed}    
    #Set Selenium Speed    3s
    #Sleep    3s    
    Input Text    id=txtUsername    Admin    
    Input Password    id=txtPassword    admin123
    Click Button    id=btnLogin
    Click Link    link=Welcome siddhara
    #Sleep    2s
    Set Selenium Implicit Wait    200s   
    Click Link    link=Logout  