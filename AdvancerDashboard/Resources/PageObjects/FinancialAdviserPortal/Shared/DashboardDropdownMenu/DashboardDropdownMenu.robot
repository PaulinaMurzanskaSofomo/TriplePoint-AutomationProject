*** Settings ***
Library    SeleniumLibrary
Variables    ./DashboardDropdownMenuWebElements.py

*** Keywords ***
Back To Dashboard
     click element    ${MENU_UNFOLD_BUTTON}
     sleep    1s
     click link    ${BACK_TO_DASHBOARD_DROPDOWN_LINK}
     sleep    1s

Logout
     click element    ${MENU_UNFOLD_BUTTON}
     sleep    1s
     click link    ${LOGOUT_FROM_DASHBOARD_DROPDOWN_LINK}
     sleep    1s

Wait Untill Dashboard Loads
    wait until page contains element    ${REFER_NEW_CLIENT_BUTTON}