*** Settings ***

Documentation     Refer a new client

Library           SeleniumLibrary
Resource          ../../Resources/CommonResources/CommonKeywords.robot
Resource          ../../Resources/PageObjects/FinancialAdviserPortal/ReferNewClient/ReferNewClient.robot
Variables    ./LoginAsAdviserTestData.py

Test Setup        CommonKeywords.Open Browser And Login To Advancer Dashboard
Test Teardown     close browser

*** Test Cases ***
Refer New Client - Introducing
    [Documentation]   Test No 3 : Refer a new client with option Introducing.
    ...    Check if a new client was created properly, with introducing investment
    [Tags]
    ReferNewClient.Wait Untill Dashboard Loads
    ${initial_number_of_clients}=    get element count    class:panel-heading
    ReferNewClient.Click Refer New Client
    ReferNewClient.Complete New Client Form (new_client)    ${NEW_CLIENT}
    ReferNewClient.Click Next
    ReferNewClient.Click Introduce
    ReferNewClient.Click Submit
    ReferNewClient.Send Email Invite    ${NEW_CLIENT}
    ReferNewClient.Click Back To Dashboard
    ReferNewClient.Wait Untill Dashboard Loads
    ${updated_number_of_clients}=    get element count    class:panel-heading
    ${increment1}=  set variable    ${1}
    ${sum}  evaluate    ${initial_number_of_clients}+${increment1}
    should be equal    ${updated_number_of_clients}    ${sum}



Refer New Client - Advising
    [Documentation]    Test No 4: Refer a new client with option Advising.
    ...    Check if a new client was created properly with advising investment.

    [Tags]
    ReferNewClient.Wait Untill Dashboard Loads
    ReferNewClient.Click Refer New Client
    ReferNewClient.Complete New Client Form (new_client)    ${NEW_CLIENT_2}
    ReferNewClient.Click Next
    ReferNewClient.Click Advising
    ReferNewClient.Fill Advising Form And Submit

     # Here test stops as send email modal shows up instead of download modal.!!!






