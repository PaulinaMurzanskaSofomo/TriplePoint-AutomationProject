*** Settings ***
Documentation   Register a new Adviser

Library    SeleniumLibrary
Resource    ../../Resources/CommonResources/CommonKeywords.robot
Resource    ../../Resources/PageObjects/Registration/Registration.robot
Variables    ./RegistrationTestsData.py

Test Setup    CommonKeywords.Open And Maximize Browser (args:url,browser)
...    ${REGISTER_ADVISER_URL}    Chrome
Test Teardown    Close Browser

*** Test Cases ***
Test No 1 - Register New User With Success
    [Documentation]   Register new Adviser and check if the person 's
    ...    account was created properly.
    [Tags]    Test No 1
    Registration.Complete Registration Form (user)    ${NEW_USER_TO_REGISTER}
    Registration.Submit Registration
    Registration.Validate If Registration Success (success_message)    ${REGISTER_SUCCESS_MESSAGE}


Test No 1 - Register With Errors
    [Documentation]    Register new Adviser. Fill the form with
    ...    incorrect data and check validation
    [Tags]    Test No 2
    Registration.Complete Registration Form (user)    ${NEW_USER_TO_REGISTER_INCORRECT_DATA}
    Registration.Submit Registration
    Registration.Validate If Error Message Shows Up


