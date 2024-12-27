*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     http://45.136.236.146:8081/
${PATH_TO_CHROMEDRIVER}    C:/Users/namo_/Downloads/chromedriver-win64/chromedriver-win64/chromedriver.exe
${EMAIL}    namo.nanon5@gmail.com
${PASSWORD}    Namo2546666

*** Test Cases ***
Test Create Discussion
    Open Browser    ${URL}    Chrome
    Wait Until Element Is Visible   xpath=//*[@id="content"]/div/div/div/nav/ul/li[1]/button    10s
    Element Text Should Be          xpath=//*[@id="content"]/div/div/div/nav/ul/li[1]/button/span    Start a Discussion
    Click Element                   xpath=//*[@id="content"]/div/div/div/nav/ul/li[1]/button
    #Capture Page Screenshot
    Wait Until Element Is Visible   xpath=//input[@placeholder="Username or Email"]    10s
    Input Text                      xpath=//input[@placeholder="Username or Email"]    ${EMAIL}
    Input Text                      xpath=//input[@placeholder="Password"]            ${PASSWORD}
    Element Text Should Be          xpath=//*[@id="modal"]/div/div/div/form/div[2]/div[2]/div[4]/button/span    Log In
    Click Element                   xpath=//*[@id="modal"]/div/div/div/form/div[2]/div[2]/div[4]/button/span
    #Capture Page Screenshot
    Sleep                           2s
    Click Element                   xpath=//*[@id="content"]/div/div/div/nav/ul/li[1]/button/span
    #Capture Page Screenshot
    Sleep                           2s
    Input Text                      xpath=//*[@id="composer"]/div/div[2]/div/div[1]/ul/li[3]/h3/input    HII
    Input Text                      xpath=//*[@id="composer"]/div/div[2]/div/div[1]/div/div/div/div/div[1]/textarea    Hello
    Element Text Should Be          xpath=//*[@id="composer"]/div/div[2]/div/div[1]/div/div/ul/li[1]/button/span    Post Discussion
    Click Element                   xpath=//*[@id="composer"]/div/div[2]/div/div[1]/div/div/ul/li[1]/button/span
    #Capture Page Screenshot
    Sleep                           2s
    Element Text Should Be          xpath=//*[@id="modal"]/div/div/div/form/div[1]/h3    Choose Tags for Your Discussion
    Element Text Should Be          xpath=//*[@id="modal"]/div/div/div/form/div[3]/ul/li/span[2]    General
    Element Text Should Be          xpath=//*[@id="modal"]/div/div/div/form/div[2]/div/div[2]/button/span    OK
    Click Element                   xpath=//*[@id="modal"]/div/div/div/form/div[3]/ul/li/span[2]
    Click Element                   xpath=//*[@id="modal"]/div/div/div/form/div[2]/div/div[2]/button/span
    #Capture Page Screenshot
    Sleep                           2s
    Element Text Should Be          xpath=//*[@id="content"]/div/div[2]/header/div/ul/li[2]/h2    HII
    Element Text Should Be          xpath=//*[@id="content"]/div/div[2]/div/div/div/div[1]/article/div/div    Hello
    #Capture Page Screenshot
    Click Element                   xpath=//*[@id="content"]/div/div[2]/div/nav/ul/li[1]/div/button[2]/i[2]
    Click Element                   xpath=//*[@id="content"]/div/div[2]/div/nav/ul/li[1]/div/ul/li[5]/button
    Close Browser

Test Login
    Open Browser    ${URL}    Chrome
    Wait Until Element Is Visible   xpath=//*[@id="content"]/div/div/div/nav/ul/li[1]/button    10s
    Element Text Should Be          xpath=//*[@id="header-secondary"]/ul/li[3]/button/span    Log In
    #Capture Page Screenshot
    Sleep                           2s
    Click Element                   xpath=//*[@id="header-secondary"]/ul/li[3]/button/span
    Wait Until Element Is Visible   xpath=//input[@placeholder="Username or Email"]    10s
    Input Text                      xpath=//input[@placeholder="Username or Email"]    ${EMAIL}
    Input Text                      xpath=//input[@placeholder="Password"]            ${PASSWORD}
    Element Text Should Be          xpath=//*[@id="modal"]/div/div/div/form/div[2]/div[2]/div[4]/button    Log In
    Click Element                   xpath=//*[@id="modal"]/div/div/div/form/div[2]/div[2]/div[4]/button
    #Capture Page Screenshot
    Sleep                           2s
    Wait Until Element Is Visible   xpath=//*[@id="header-secondary"]/ul/li[3]/div/button    10s
    #Capture Page Screenshot
    Close Browser

Test Forgot Password
    Open Browser    ${URL}    Chrome
    Wait Until Element Is Visible   xpath=//*[@id="content"]/div/div/div/nav/ul/li[1]/button    10s
    Element Text Should Be          xpath=//*[@id="header-secondary"]/ul/li[3]/button/span    Log In
    Sleep                           2s
    Click Element                   xpath=//*[@id="header-secondary"]/ul/li[3]/button/span
    Sleep                           2s
    #Capture Page Screenshot
    Element Text Should Be          xpath=//*[@id="modal"]/div/div/div/form/div[3]/p[1]/a    Forgot password?
    Click Element                   xpath=//*[@id="modal"]/div/div/div/form/div[3]/p[1]/a
    Element Text Should Be          xpath=//*[@id="modal"]/div/div/div/form/div[1]/h3    Forgot Password
    Element Text Should Be          xpath=//*[@id="modal"]/div/div/div/form/div[2]/div/p     Enter your email address and we will send you a link to reset your password.
    Input Text                      xpath=//*[@id="modal"]/div/div/div/form/div[2]/div/div[1]/input    ${EMAIL}
    Element Text Should Be          xpath=//*[@id="modal"]/div/div/div/form/div[2]/div/div[2]/button/span    Recover Password
    Click Element                   xpath=//*[@id="modal"]/div/div/div/form/div[2]/div/div[2]/button/span
    #Capture Page Screenshot
    Sleep                           5s
    Element Text Should Be          xpath=//*[@id="modal"]/div/div/div/form/div[2]/div/p    We've sent you an email containing a link to reset your password. Check your spam folder if you don't receive it within the next minute or two.
    Element Text Should Be          xpath=//*[@id="modal"]/div/div/div/form/div[2]/div/div/button    OK
    Click Element                   xpath=//*[@id="modal"]/div/div/div/form/div[2]/div/div/button
    #Capture Page Screenshot
    Close Browser