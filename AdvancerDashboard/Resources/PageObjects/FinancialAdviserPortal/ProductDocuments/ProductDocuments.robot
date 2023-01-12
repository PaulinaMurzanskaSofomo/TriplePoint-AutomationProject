*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

Variables    ./ProductDocumentsWebElements.py
Resource    ../Shared/DashboardDropdownMenu/DashboardDropdownMenu.robot

*** Keywords ***

Click Documents
    DashboardDropdownMenu.Wait Untill Dashboard Loads
    click link    ${PRODUCT_DOCUMENT_BUTTON}
    wait until element is visible    ${DOCUMENTS_GROUP}
    element should be visible    ${DOCUMENT_ROW}
    ${element count}=    get element count    ${DOCUMENT_ROW}
    ${evaluate_number_of_links}    evaluate   ${element count}>0



