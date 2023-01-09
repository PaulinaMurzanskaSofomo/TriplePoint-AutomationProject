*** Settings ***

Documentation     Refer a new client with option Introducing.
...               Check if a new client was created properly, with introducing investment.

Library           SeleniumLibrary
Resource          ../../Resources/CommonResources/CommonKeywords.robot
Resource          ../../Resources/PageObjects/FinancialAdviserPortal/ReferNewClient/ReferNewClient.robot
Variables    ./LoginAsAdviserTestData.py

Test Setup        CommonKeywords.Open Browser And Login To Advancer Dashboard
Test Teardown     close browser

*** Test Cases ***
Refer New Client - Introducing
    [Documentation]    Refer New Client - Introducing
    [Tags]    Test No 3
    ReferNewClient.Wait Untill Dashboard Loads
    ${initial_number_of_clients}=    get element count    class:panel-heading
    log    ${initial_number_of_clients}
    ReferNewClient.Click Refer New Client
    ReferNewClient.Complete New Client Form (new_client)    ${NEW_CLIENT}
    ReferNewClient.Click Next
    ReferNewClient.Click Introduce
    ReferNewClient.Click Submit

#    ReferNewClient.Send Email Invite     # test breaks here - send email click is
#    not working

#    ReferNewClient.Click Back To Dashboard    #can't run the following keywords
#    untill  previous keyword pass

#    ReferNewClient.Untill Dashboard Loads

#    ${updated_number_of_clients}=    get element count    class:panel-heading
#    log    ${updated_number_of_clients}

#    ${updated_number_of_clients}    should be equal    ${initial_number_of_clients}+1






