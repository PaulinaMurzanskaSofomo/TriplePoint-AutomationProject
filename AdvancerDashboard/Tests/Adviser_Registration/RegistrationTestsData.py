from typing import TypedDict


class User(TypedDict):
    title: str
    name: str
    last_name: str
    personal_FCA: str
    company_name: str
    company_FCA: str
    email: str
    password: str
    personal_tel: str
    office_tel: str
    postcode: str
    street: str
    city: str
    county: str
    country: str


NEW_USER_TO_REGISTER: User = dict(
        title="Mr",
        name="John",
        last_name="Smithson",
        personal_FCA="ATR80865",
        company_name="Hughes Ltd.",
        company_FCA="993249",
        email="john.smithson003@hotmail.co.uk",
        password="3FxD&:>ndH:(1p`(6#v",
        personal_tel="+44 2583 042675",
        office_tel="+44 3449 16759",
        postcode="HD9 9PH",
        street="8 Zoe Motorway",
        city="Port Alice",
        county="Port Julie",
        country="United Kingdom",
)

REGISTER_ADVISER_URL = 'https://triplepoint--staging.sandbox.my.site.com/IFASelfReg'
REGISTER_SUCCESS_MESSAGE = "Thank you for registering"
