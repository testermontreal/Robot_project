*** Settings ***
Library    SeleniumLibrary    



*** Test Cases ***
TC001_Login_SalesForces
    Open Browser    https://login.salesforce.com/?locale=fr-ca    gc
    Input Text    id=username    Admin    
    Input Password    id=password    admin1234
    Click Button    id=Login    
    Capture Element Screenshot    id=error    ./Screenshot/error_login.png
    Capture Page Screenshot    ./Screenshot/error_login_page.png
    ${Text}    Get Text    id=error
    Log To Console    ${Text}
    Sleep    2s    
    Close Browser
    
TC002_Scroll_page
    Open Browser    https://www.bdeb.qc.ca/    gc
    Execute Javascript    window.scrollTo(0,1000)
    Sleep    2s    
    Execute Javascript    window.scrollTo(0,-1000)
    Sleep    2s    
    #Execute Javascript    alert("Salut tout le monde")
    