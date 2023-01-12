*** Settings ***
Documentation    Product Documents

Library    SeleniumLibrary

Resource    ../../Resources/PageObjects/FinancialAdviserPortal/ProductDocuments/ProductDocuments.robot
Resource    ../../Resources/CommonResources/CommonKeywords.robot

Test Setup    CommonKeywords.Open Browser And Login To Advancer Dashboard
Test Teardown    close browser

*** Test Cases ***
Test No 12 - Product Documents
    [Documentation]    Check if downloading of Product documents is possible.
    [Tags]    robot:skip    Test No 12
    ProductDocuments.Click Documents

