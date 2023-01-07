*** Settings ***
Documentation   Register a new Adviser and check if the person 's
...    account was created properly.

Library    SeleniumLibrary
Resource    ../../Resources/CommonResources/CommonKeywords.robot
Resource    ../../Resources/PageObjects/Registration/Registration.robot
Variables    ./RegistrationTestsData.py

Test Setup    CommonKeywords.Open And Maximize Browser (args:url,browser)
...    ${REGISTER_ADVISER_URL}    Chrome
Test Teardown    Close Browser

*** Test Cases ***
Register New User With Success
    [Documentation]   Registration of Adviser -    Test No 1
    [Tags]    robot:skip
    Registration.Complete Registration Form (user)    ${NEW_USER_TO_REGISTER}
    Registration.Submit Registration
    Registration.Validate If Registration Success (success_message)    ${REGISTER_SUCCESS_MESSAGE}
