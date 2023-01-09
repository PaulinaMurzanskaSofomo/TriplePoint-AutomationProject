*** Settings ***
Library    SeleniumLibrary

Variables    ./CommonWebElements.py
Variables    ./CommonVariables.py

*** Keywords ***
Open And Maximize Browser (args:url,browser)
    [arguments]    ${url}    ${browser}
    open browser    ${url}    ${browser}
    maximize browser window
    sleep    1s

Open Browser And Login To Advancer Dashboard
    Open And Maximize Browser (args:url,browser)    ${ADVANCER_LOGIN_URL}    Chrome
    input text    ${LOGIN_EMAIL_INPUT}    ${DEMO_USER["email"]}
    input text    ${LOGIN_PASSWORD_INPUT}    ${DEMO_USER["password"]}
    mouse over    ${LOGIN_BUTTON}
    click element    ${LOGIN_BUTTON}
