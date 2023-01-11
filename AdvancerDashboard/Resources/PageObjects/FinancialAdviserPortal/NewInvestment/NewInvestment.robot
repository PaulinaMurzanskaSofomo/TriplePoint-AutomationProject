*** Settings ***
Library    SeleniumLibrary

Variables    ./NewInvestmentWebElements.py
Resource    ../ReferNewClient/ReferNewClient.robot

*** Keywords ***
Find Existing Client
    ${element count}=    get element count   ${EXISTING_CLIENT_ROW}
    ${clients_list}=    get webelements    ${EXISTING_CLIENT_ROW}
    ${last_index}=    evaluate    ${element count}-1
    ${selected_id}  set variable    heading${last_index}
    ${client_tab}    set variable    id:${selected_id}
    ${investement_link}    set variable
    ...    xpath://*[@id="heading${last_index}"]/div/table/tbody/tr/td[6]/a
    scroll element into view    ${client_tab}
    click element    ${investement_link}
    sleep    5s

Click Add New Investment
    wait until page contains element    ${NEW_INVESTMENT_LINK}
    click link    ${NEW_INVESTMENT_LINK}


