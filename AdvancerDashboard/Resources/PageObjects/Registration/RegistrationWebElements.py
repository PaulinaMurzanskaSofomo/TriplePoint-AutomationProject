# Registration form
TITLE_SELECT = 'id:Registration:advRegTemplate:j_id120:j_id122:0:j' \
                       '_id123:j_id124:fieldSet:0:inputFieldId'
NAME_INPUT = 'id:Registration:advRegTemplate:j_id120:j_id122:0:j_id123:j_id124' \
               ':fieldSet:1:inputTextId'
LAST_NAME_INPUT = 'id:Registration:advRegTemplate:j_id120:j_id122:0:j_id123' \
                    ':j_id124:fieldSet:2:inputTextId'
PERSONAL_FCA_INPUT = 'id:Registration:advRegTemplate:j_id120:j_id122:0:j_id123' \
                       ':j_id124:fieldSet:3:inputTextId'
COMPANY_NAME_INPUT = 'id:Registration:advRegTemplate:j_id120:j_id122:0:j_id123' \
                       ':j_id124:fieldSet:4:inputTextId'
COMPANY_FCA_INPUT = 'id:Registration:advRegTemplate:j_id120:j_id122:0:j_id123' \
                      ':j_id124:fieldSet:5:inputTextId'
EMAIL_INPUT = 'id:Registration:advRegTemplate:j_id120:j_id122:2:j_id123:j_id124' \
                ':fieldSet:0:inputFieldId'
CONFIRM_EMAIL_INPUT = 'id:Registration:advRegTemplate:j_id120:j_id122:2:j_id123' \
                        ':j_id124:fieldSet:1:inputFieldId'
PASSWORD_INPUT = 'id:Registration:advRegTemplate:j_id120:j_id122:3:passwordInput'
PASSWORD_CONFIRM_INPUT = 'id:Registration:advRegTemplate:j_id120:j_id122:3' \
                           ':confirmPasswordInput'
TEL_INPUT = 'id:Registration:advRegTemplate:j_id120:j_id122:4:j_id123:j_id124' \
              ':fieldSet:0:inputFieldId'
OFFICE_TEL_INPUT = 'id:Registration:advRegTemplate:j_id120:j_id122:4:j_id123' \
                     ':j_id124:fieldSet:1:inputFieldId'
KEEP_ME_UPDATED_CHECKBOX = "id:Registration:advRegTemplate:j_id120:j_id122:4" \
                           ":j_id123:j_id124:fieldSet:2:booleanInputFieldId"

# Registration form - add address manually
ADD_ADDRESS_LINK = "id:mainAddressFieldsManual"
ADD_ADDRESS_FORM = "id:Registration:advRegTemplate:j_id120:j_id122:1" \
                   ":mainAddressFields"
ADD_STREET_INPUT = "id:Registration:advRegTemplate:j_id120:j_id122:1" \
                     ":addressStreet"
ADD_CITY_INPUT = "id:Registration:advRegTemplate:j_id120:j_id122:1:addressCity"
ADD_COUNTY_INPUT = "id:Registration:advRegTemplate:j_id120:j_id122:1" \
                     ":addressCounty"
ADD_COUNTRY_INPUT = "id:Registration:advRegTemplate:j_id120:j_id122:1" \
                      ":addressCountry"
ADD_POSTCODE_INPUT = 'id:Registration:advRegTemplate:j_id120:j_id122:1' \
                       ':addressPostcode'

# Form submit handlers
REGISTER_SUBMIT_BUTTON = 'xpath://*[' \
                         '@id="Registration:advRegTemplate:j_id120"]/div[' \
                      '17]/div'
SUBMIT_REGISTRATION_LINK = 'xpath://*[' \
                           '@id="Registration:advRegTemplate:j_id120:Register"]'

# Form submit success
REGISTERED_FORM_SUCCESS_DIV = 'id:verificationPage:advRegTemplate:j_id109:j_id111'
REGISTRATION_SUCCESS_INFO = 'xpath://*[@id="verificationPage:advRegTemplate' \
                                ':j_id109:j_id111"]/div/table/tbody/tr/td[1]/div[2] '
