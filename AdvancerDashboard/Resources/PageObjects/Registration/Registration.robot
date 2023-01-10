*** Settings ***
Library    SeleniumLibrary

Variables    ./RegistrationWebElements.py

*** Keywords ***
Complete Registration Form (user)
    [Arguments]    ${user}
    Select Title (user)    ${user}
    Complete text fields (user)    ${user}
    Add address manually (user)   ${user}
    select checkbox    ${keep_me_updated_checkbox}

Select Title (user)
    [Arguments]    ${user}
    click element    ${TITLE_SELECT}
    select From list by value    ${TITLE_SELECT}    ${user["title"]}
    list selection should be    ${TITLE_SELECT}    ${user["title"]}
    press keys    None    RETURN

Complete Text Fields (user)
    [Arguments]    ${user}
    input text    ${NAME_INPUT}   ${user["name"]}
    input text    ${LAST_NAME_INPUT}    ${user["last_name"]}
    input text    ${PERSONAL_FCA_INPUT}    ${user["personal_FCA"]}
    input text    ${COMPANY_NAME_INPUT}    ${user["company_name"]}
    input text    ${COMPANY_FCA_INPUT}    ${user["company_FCA"]}
    input text    ${EMAIL_INPUT}    ${user["email"]}
    input text    ${CONFIRM_EMAIL_INPUT}    ${user["email"]}
    input text    ${PASSWORD_INPUT}    ${user["password"]}
    input text    ${PASSWORD_CONFIRM_INPUT}    ${user["password"]}
    input text    ${TEL_INPUT}    ${user["personal_tel"]}
    input text    ${OFFICE_TEL_INPUT}    ${user["office_tel"]}

Add Address Manually (user)
    [Arguments]    ${user}
    click element    ${ADD_ADDRESS_LINK}
    wait until page contains element    ${ADD_ADDRESS_FORM}
    input text    ${ADD_STREET_INPUT}    ${user["street"]}
    input text    ${ADD_CITY_INPUT}    ${user["city"]}
    input text    ${ADD_COUNTY_INPUT}    ${user["county"]}
    input text    ${ADD_COUNTRY_INPUT}   ${user["country"]}
    input text    ${ADD_POSTCODE_INPUT}    ${user["postcode"]}


Submit Registration
    mouse over    ${REGISTER_SUBMIT_BUTTON}
    click element    ${SUBMIT_REGISTRATION_LINK}

Validate If Registration Success (success_message)
    [Arguments]    ${success_message}
    wait until page contains element    ${REGISTERED_FORM_SUCCESS_DIV}
    element should contain    ${REGISTRATION_SUCCESS_INFO}    ${success_message}

Validate If Error Message Shows Up
    page should contain element    ${ERROR_MESSAGE_CONTAINER}
    element should contain   ${ERROR_INDICATOR}  Error:
