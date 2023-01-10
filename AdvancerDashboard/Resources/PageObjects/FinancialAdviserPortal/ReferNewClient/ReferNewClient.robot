*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

Variables    ./ReferNewClientWebElements.py

*** Keywords ***
Wait Untill Dashboard Loads
    wait until page contains element    ${REFER_NEW_CLIENT_BUTTON}

Click Refer New Client
    wait until page contains element    ${REFER_NEW_CLIENT_BUTTON}
    mouse over    ${REFER_NEW_CLIENT_BUTTON}
    click element    ${REFER_NEW_CLIENT_BUTTON}

Complete New Client Form (new_client)
    [Arguments]    ${new_client}
    Select Title (new_client)    ${new_client}
    Select Gender (new_client)   ${new_client}
    Select Date Of Birth (new_client)    ${new_client}
    Complete Text Fields (new_client)   ${new_client}
    Add Address Manually (new_client)    ${new_client}
    Add UK Residency (new_client)    ${new_client}
    Add Tax Residency (new_client)     ${new_client}


Select Title (new_client)
    [Arguments]    ${new_client}
    click element    ${TITLE_SELECT}
    select from list by value    ${TITLE_SELECT}    ${new_client["title"]}
    list selection should be    ${TITLE_SELECT}    ${new_client["title"]}
    press keys    None    RETURN

Select Gender (new_client)
    [Arguments]    ${new_client}
    click element    ${GENDER_SELECT}
    select from list by value    ${GENDER_SELECT}    ${new_client["gender"]}
    list selection should be    ${GENDER_SELECT}    ${new_client["gender"]}
    press keys    None    RETURN

Select Date Of Birth (new_client)
    [Arguments]    ${new_client}
    click element    ${DATE_OF_BIRTH_INPUT}
    input text    ${DATE_OF_BIRTH_INPUT}    ${new_client["date_of_birth"]}
    press keys    None    RETURN

Add Address Manually (new_client)
    [Arguments]    ${new_client}
    click element    ${ADD_ADDRESS_LINK}
    wait until page contains element    ${ADD_ADDRESS_FORM}
    input text    ${ADD_STREET_INPUT}    ${new_client["street"]}
    input text    ${ADD_CITY_INPUT}    ${new_client["city"]}
    input text    ${ADD_COUNTY_INPUT}    ${new_client["county"]}
    input text    ${ADD_COUNTRY_INPUT}   ${new_client["country"]}
    input text    ${ADD_POSTCODE_INPUT}    ${new_client["postcode"]}

Add UK Residency (new_client)
    [Arguments]    ${new_client}
    IF    ${new_client["is_uk_resident"]}
        click element    ${UK_RESIDENCY_RADIO}
    ELSE
        click element    ${UK_RESIDENCY_RADIO}
    END

Add Tax Residency (new_client)
    [Arguments]    ${new_client}
    IF    ${new_client["tax_return_abroad"]}
        click element    ${UK_TAX_RESIDENCY_RADIO}
    ELSE
        click element    ${NON_UK_TAX_RESIDENCY_RADIO}
    END

Complete Text Fields (new_client)
    [Arguments]    ${new_client}
    wait until page contains element   ${NAME_INPUT}
    input text    ${NAME_INPUT}   ${new_client["name"]}
    input text    ${MIDDLE_NAME_INPUT}    ${new_client["middle_name"]}
    input text    ${LAST_NAME_INPUT}    ${new_client["last_name"]}
    input text    ${INSURANCE_NUMBER_INPUT}   ${new_client["insurance_no"]}
    input text    ${EMAIL_INPUT}   ${new_client["email"]}
    input text    ${TEL_NUMBER_INPUT}   ${new_client["tel_no"]}
    input text    ${BANK_ACCOUNT_INPUT}    ${new_client["bank_account"]}
    input text    ${SORT_CODE_INPUT}    ${new_client["sort_code"]}

Click Next
    click element    ${NEXT_BUTTON}

Click Introduce
   wait until page contains element  ${INTRODUCING_BUTTON}
    click element    ${INTRODUCING_BUTTON}
    sleep    5s

Click Submit
    mouse over    ${SUBMIT_BUTTON}
    sleep    1s
    press keys    ${SUBMIT_BUTTON}    RETURN

Send Email Invite
    [Arguments]  ${user}
    wait until page contains     Dear ${user["name"]}
    mouse over    ${SEND_EMAIL_INVITE_BUTTON}
    press keys   ${SEND_EMAIL_INVITE_BUTTON}    RETURN

Click Back To Dashboard
   click link    ${BACK_TO_DASHBOARD_LINK}
   sleep    3s



# ADVISING

Click Advising
    wait until page contains element    ${ADVISING_BUTTON}
    click element    ${ADVISING_BUTTON}
    wait until element is visible    ${INVESTOR_TYPE_SELECT}

Fill Advising Form And Submit
    select from list by index    ${INVESTOR_TYPE_SELECT}    1
    select from list by index    ${TAX_WRAPPER_SELECT}    1
    select from list by value    ${PAYMENT_METHOD_SELECT}    Bank transfer
    input text    ${INITIAL_INVESTMENT_INPUT}   12000
    select from list by value    ${SERVICE_DURATION_SELECT}    2 years
    select from list by value    ${INCOME_FREQUENCY_SELECT}    Monthly
    input text    ${INITIAL_ADVISER_CHARGE_INPUT}    10
    sleep    2s
    mouse over    ${SUBMIT_ADVISING_LINK}
    press keys    ${SUBMIT_ADVISING_LINK}    RETURN
    sleep    5s








#
#Verify File Download
#    ${chrome options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
#    ${prefs}  Create Dictionary
#    ...  download.default_directory=/Users/paulinamurzanska/Desktop/TriplePoint
#    ...    -Automation/TriplePoint-TestingApplication/AdvancerDashboard/Downloads
#    Call Method  ${chrome options}  add_experimental_option  prefs  ${prefs}
#    Create Webdriver  Chrome  chrome_options=${chrome options}
#    Click Link  ${DOWNLOAD_LINK}
#    Sleep  5s
#    ${files}  list files in directory    /Users/paulinamurzanska/Desktop/TriplePoint-Automation/TriplePoint-TestingApplication/AdvancerDashboard/Downloads
#    Length Should Be  ${files}  1



