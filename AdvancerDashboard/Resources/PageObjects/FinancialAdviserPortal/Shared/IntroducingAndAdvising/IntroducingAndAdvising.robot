*** Settings ***
Library    SeleniumLibrary
Variables    ./IntroducingAndAdvisingWebElements.py

*** Keywords ***
Click Advising
    wait until page contains element    ${ADVISING_BUTTON}
    click element    ${ADVISING_BUTTON}
    wait until element is visible    ${INVESTOR_TYPE_SELECT}

Fill Advising Form (advising form data)
    [Arguments]   ${advising_form_data}
    select from list by index    ${INVESTOR_TYPE_SELECT}
    ...    ${advising_form_data["investor_type"]}
    select from list by index    ${TAX_WRAPPER_SELECT}    ${advising_form_data["tax_wrapper"]}
    select from list by value    ${PAYMENT_METHOD_SELECT}   ${advising_form_data["payment_method"]}
    input text    ${INITIAL_INVESTMENT_INPUT}   ${advising_form_data["initial_investment"]}
    select from list by value    ${SERVICE_DURATION_SELECT}    ${advising_form_data["service_duration"]}
    select from list by value    ${INCOME_FREQUENCY_SELECT}     ${advising_form_data["income_frequency"]}
    input text    ${INITIAL_ADVISER_CHARGE_INPUT}    ${advising_form_data["adviser_charge"]}
    sleep    2s

Submit Advising Form
    mouse over    ${SUBMIT_ADVISING_LINK}
    press keys    ${SUBMIT_ADVISING_LINK}    RETURN
    sleep    5s

Click Introduce
   wait until page contains element  ${INTRODUCING_BUTTON}
    click element    ${INTRODUCING_BUTTON}
    sleep    5s

Submit Instruduce Form
    mouse over    ${INTRODUCING_SUBMIT_BUTTON}
    sleep    1s
    press keys    ${INTRODUCING_SUBMIT_BUTTON}    RETURN