*** Settings ***

Documentation     Refer a new client

Library     SeleniumLibrary
Resource    ../../Resources/CommonResources/CommonKeywords.robot
Resource    ../../Resources/PageObjects/FinancialAdviserPortal/Shared/IntroducingAndAdvising/IntroducingAndAdvising.robot
Resource    ../../Resources/PageObjects/FinancialAdviserPortal/Shared/DashboardDropdownMenu/DashboardDropdownMenu.robot
Resource    ../../Resources/PageObjects/FinancialAdviserPortal/ReferNewClient/ReferNewClient.robot
Variables   ./LoginAsAdviserTestData.py

Test Setup        CommonKeywords.Open Browser And Login To Advancer Dashboard
Test Teardown     close browser

*** Test Cases ***
Test No 3 - Refer New Client - Introducing
    [Documentation]   Refer a new client with option Introducing.
    ...    Check if a new client was created properly, with introducing investment
    [Tags]    Test No 3
    DashboardDropdownMenu.Wait Untill Dashboard Loads
    ${initial_number_of_clients}=    get element count    class:panel-heading
    ReferNewClient.Click Refer New Client
    ReferNewClient.Complete New Client Form (new_client)    ${NEW_CLIENT}
    ReferNewClient.Click Next
    IntroducingAndAdvising.Click Introduce
    IntroducingAndAdvising.Submit Instruduce Form
    ReferNewClient.Send Email Invite    ${NEW_CLIENT}
    ReferNewClient.Click Back To Dashboard
    DashboardDropdownMenu.Wait Untill Dashboard Loads
    ${updated_number_of_clients}=    get element count    class:panel-heading
    ${increment1}=  set variable    ${1}
    ${sum}  evaluate    ${initial_number_of_clients}+${increment1}
    should be equal    ${updated_number_of_clients}    ${sum}



Test No 4 - Refer New Client - Advising
    [Documentation]    Refer a new client with option Advising.
    ...    Check if a new client was created properly with advising investment.

    [Tags]  Test No 4
    DashboardDropdownMenu.Wait Untill Dashboard Loads
    ${initial_number_of_clients}=    get element count    class:panel-heading
    ReferNewClient.Click Refer New Client
    ReferNewClient.Complete New Client Form (new_client)    ${NEW_CLIENT_2}
    ReferNewClient.Click Next
    IntroducingAndAdvising.Click Advising
    IntroducingAndAdvising.Fill Advising Form (advising form data)
    ...    ${ADVISING_FORM_DATA}
    IntroducingAndAdvising.Submit Advising Form
     # Here test stops as send email modal shows up instead of download modal.!!!


Test no 5 - Refer New Client - Validation Check
    [Documentation]    Refer a new client with the option Introducing.
     ...    Fill the forms with incorrect data and check validation in form for
     ...    referring new client.
     [Tags]    Test no 5
     DashboardDropdownMenu.Wait Untill Dashboard Loads
     ReferNewClient.Click Refer New Client
     ReferNewClient.Complete New Client Form (new_client)    ${NEW_CLIENT_INCORRECT_DATA}
     ReferNewClient.Click Next
     CommonKeywords.Check If Error Message Appears (error_container,error_indicator)
      ...    ${ERROR_MESSAGE_CONTAINER}    ${ERROR_INDICATOR}
     DashboardDropdownMenu.Back To Dashboard
     DashboardDropdownMenu.Wait Untill Dashboard Loads
     DashboardDropdownMenu.Logout


Test No 6 -Refer New Client - Advising Validation Check
    [Documentation]    Refer a new client with option Advising.
    ...    Fill the forms with incorrect data and check validation in form for
    ...    referring new client - Advising.
    [Tags]    Test No 6
    DashboardDropdownMenu.Wait Untill Dashboard Loads
    ReferNewClient.Click Refer New Client
    ReferNewClient.Complete New Client Form (new_client)    ${NEW_CLIENT_3}
    ReferNewClient.Click Next
    IntroducingAndAdvising.Click Advising
    IntroducingAndAdvising.Fill Advising Form (advising form data)
    ...    ${ADVISING_FORM_INCORRECT_DATA}
    IntroducingAndAdvising.Submit Advising Form
    CommonKeywords.Check If Error Message Appears (error_container,error_indicator)
    ...    ${ADVISING_FORM_ERROR_MESSAGE_CONTAINER}  ${ADVISING_FORM_ERROR_INDICATOR}
    DashboardDropdownMenu.Back To Dashboard
    DashboardDropdownMenu.Wait Untill Dashboard Loads
    DashboardDropdownMenu.Logout
