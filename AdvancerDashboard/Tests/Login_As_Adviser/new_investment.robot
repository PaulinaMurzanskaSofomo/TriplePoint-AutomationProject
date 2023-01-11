*** Settings ***
Documentation    New investment

Library    SeleniumLibrary
Resource    ../../Resources/CommonResources/CommonKeywords.robot
Resource    ../../Resources/PageObjects/FinancialAdviserPortal/Shared/IntroducingAndAdvising/IntroducingAndAdvising.robot
Resource    ../../Resources/PageObjects/FinancialAdviserPortal/Shared/DashboardDropdownMenu/DashboardDropdownMenu.robot
Resource    ../../Resources/PageObjects/FinancialAdviserPortal/ReferNewClient/ReferNewClient.robot
Resource    ../../Resources/PageObjects/FinancialAdviserPortal/NewInvestment/NewInvestment.robot
Variables   ../../Resources/PageObjects/FinancialAdviserPortal/NewInvestment/NewInvestmentWebElements.py
Variables   ./LoginAsAdviserTestData.py

Test Setup        CommonKeywords.Open Browser And Login To Advancer Dashboard
Test Teardown     close browser

*** Test Cases ***
Test No 7 - New Investment - Introducing
    [Documentation]    Add new investment for an existing client -
    ...    Introducing. Check if new investment has been created properly.
    [Tags]
    DashboardDropdownMenu.Wait Untill Dashboard Loads
    NewInvestment.Find Existing Client
    NewInvestment.Click Add New Investment
    IntroducingAndAdvising.Click Introduce
    IntroducingAndAdvising.Submit Instruduce Form
# test breaks here -  we get error that client must be
# over18


Test No 8 - New Investment - Advising
    [Documentation]    Add new investment for an existing client - Advising
...    (few scenarios with different values). Check if new investment has been created
...    properly.
    [Tags]
    DashboardDropdownMenu.Wait Untill Dashboard Loads
    NewInvestment.Find Existing Client
    NewInvestment.Click Add New Investment
    IntroducingAndAdvising.Click Advising
    IntroducingAndAdvising.Fill Advising Form (advising form data)    ${ADVISING_FORM_DATA}
    IntroducingAndAdvising.Submit Advising Form
# test breaks here -  we get error that client must be
# over18