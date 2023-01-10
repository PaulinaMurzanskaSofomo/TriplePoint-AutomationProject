REFER_NEW_CLIENT_BUTTON = 'xpath://*[@id="thePage:advRegTemplate:j_id116"]/div[' \
                          '2]/div[4]'
# Refer new client form

TITLE_SELECT = "id:j_id0:advRegTemplate:j_id121:j_id123:0:j_id126:j_id127:fieldSet" \
               ":0:inputFieldId"
NAME_INPUT = 'id:j_id0:advRegTemplate:j_id121:j_id123:0:j_id126:j_id127:fieldSet:1' \
             ':inputTextId'
MIDDLE_NAME_INPUT = 'id:j_id0:advRegTemplate:j_id121:j_id123:0:j_id126:j_id127' \
                    ':fieldSet:2:inputTextId'
LAST_NAME_INPUT = 'id:j_id0:advRegTemplate:j_id121:j_id123:0:j_id126:j_id127' \
                  ':fieldSet:3:inputTextId'
GENDER_SELECT = 'id:j_id0:advRegTemplate:j_id121:j_id123:0:j_id126:j_id127' \
                ':fieldSet' \
                ':4:inputFieldId'
DATE_OF_BIRTH_SELECT = 'id:j_id0:advRegTemplate:j_id121:j_id123:0:j_id126:j_id127' \
                       ':fieldSet:5:dateInputFieldId'
INSURANCE_NUMBER_INPUT = 'id:j_id0:advRegTemplate:j_id121:j_id123:0:j_id126' \
                         ':j_id127:fieldSet:6:inputTextId'
EMAIL_INPUT = 'id:j_id0:advRegTemplate:j_id121:j_id123:0:j_id126:j_id127:fieldSet' \
              ':7:inputFieldId'
TEL_NUMBER_INPUT = 'id:j_id0:advRegTemplate:j_id121:j_id123:0:j_id126:j_id127' \
                   ':fieldSet:8:inputFieldId'
BANK_ACCOUNT_INPUT = 'id:j_id0:advRegTemplate:j_id121:j_id123:2:j_id126:j_id127' \
                     ':fieldSet:0:inputTextId'
SORT_CODE_INPUT = 'id:j_id0:advRegTemplate:j_id121:j_id123:2:j_id126:j_id127' \
                  ':fieldSet:1:inputTextId'
MONTH_SELECT = 'xpath://*[@id="ui-datepicker-div"]/div/div/select[1]'
YEAR_SELECT = 'xpath://*[@id="ui-datepicker-div"]/div/div/select[2]'
DAY_LINK = "css:ui-state-default"
DATE_OF_BIRTH_INPUT="id:j_id0:advRegTemplate:j_id121:j_id123:0:j_id126:j_id127" \
                    ":fieldSet:5:dateInputFieldId"
ADD_ADDRESS_LINK = 'id:mainAddressFieldsManual'
ADD_ADDRESS_FORM = 'xpath://*[' \
                   '@id="j_id0:advRegTemplate:j_id121:j_id123:1:mainAddressFields' \
                   '"]/div[2]'
ADD_STREET_INPUT = "id:j_id0:advRegTemplate:j_id121:j_id123:1:addressStreet"
ADD_CITY_INPUT = "id:j_id0:advRegTemplate:j_id121:j_id123:1:addressCity"
ADD_COUNTY_INPUT = "id:j_id0:advRegTemplate:j_id121:j_id123:1:addressCounty"
ADD_COUNTRY_INPUT = "id:j_id0:advRegTemplate:j_id121:j_id123:1:addressCountry"
ADD_POSTCODE_INPUT = 'id:j_id0:advRegTemplate:j_id121:j_id123:1:addressPostcode'


UK_RESIDENCY_RADIO = 'id:j_id0:advRegTemplate:j_id121:j_id123:3:j_id126:j_id127' \
                     ':fieldSet:0:j_id142:j_id143:radioSelectFieldId:0'
NON_UK_RESIDENCY_RADIO = 'id:j_id0:advRegTemplate:j_id121:j_id123:3:j_id126' \
                         ':j_id127:fieldSet:0:j_id142:j_id143:radioSelectFieldId:1'

UK_TAX_RESIDENCY_RADIO = 'id:j_id0:advRegTemplate:j_id121:j_id123:3:j_id126' \
                         ':j_id127:fieldSet:1:j_id142:j_id143:radioSelectFieldId:0'
NON_UK_TAX_RESIDENCY_RADIO ='j_id0:advRegTemplate:j_id121:j_id123:3:j_id126' \
                            ':j_id127:fieldSet:1:j_id142:j_id143:radioSelectFieldId:1'

# Form submitting steps
NEXT_BUTTON = 'xpath://*[@id="j_id0:advRegTemplate:j_id121"]/div[1]/div[4]/div '
INTRODUCING_BUTTON = 'xpath://*[@id="j_id0:advRegTemplate:j_id114"]/div[1]/div[' \
                     '4]/div[2]/div[2]'
SUBMIT_BUTTON = 'xpath://*[@id="j_id0:advRegTemplate:j_id114"]/div[1]/div[' \
                '5]/div/div[2]/a'
SEND_EMAIL_INVITE_BUTTON = 'xpath://html/body/div[3]/div/a'
BACK_TO_DASHBOARD_LINK = "xpath://html/body/div[4]/div/p[3]/a"
SEND_INVITE_SUCCESS_MODAL = 'xpath://html/body/div[4]/div'


# ADVISING
ADVISING_BUTTON = 'xpath://*[@id="j_id0:advRegTemplate:j_id114"]/div[1]/div[' \
                  '4]/div[1]/div[2]'
ADVISING_FORM = 'xpath://*[@id="j_id0:advRegTemplate:j_id114"]/div[1]/div[6]'
PRODUCT_TYPE_SELECT = 'id:j_id0:advRegTemplate:j_id114:productType'
INVESTOR_TYPE_SELECT = 'id:j_id0:advRegTemplate:j_id114:investorType'
TAX_WRAPPER_SELECT = 'id:j_id0:advRegTemplate:j_id114:taxwrapper'
INITIAL_INVESTMENT_INPUT = 'id:j_id0:advRegTemplate:j_id114:initInvestment'
PAYMENT_METHOD_SELECT = 'id:j_id0:advRegTemplate:j_id114:payment'
SERVICE_DURATION_SELECT = 'id:j_id0:advRegTemplate:j_id114:serviceDuration'
INCOME_FREQUENCY_SELECT = 'id:j_id0:advRegTemplate:j_id114:serviceType'
INITIAL_ADVISER_CHARGE_INPUT = 'id:j_id0:advRegTemplate:j_id114:feePercent'
SUBMIT_ADVISING_LINK = 'id:j_id0:advRegTemplate:j_id114:nonIsaRefer'
AUTHORISATION_FORM = "xpath://html/body/div[5]/div"
DOWNLOAD_LINK = "xpath://html/body/div[5]/div/a[1]"
BACK_TO_REFER_CLIENT_PAGE_LINK = 'xpath://html/body/div[5]/div/a[2]'
SEND_EMAIL_INVITE_FROM_ADVISING = 'xpath://html/body/div[2]/div/a'