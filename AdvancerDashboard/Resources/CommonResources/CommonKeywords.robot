*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Open And Maximize Browser (args:url,browser)
    [arguments]    ${url}    ${browser}
    open browser    ${url}    ${browser}
    maximize browser window
    sleep    1s
