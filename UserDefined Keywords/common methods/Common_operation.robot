*** Settings ***
Resource          ../../GenericLibrary/GlobalStandardLibraries.txt
Resource          ../../Testdata_Folder/Common_test_folder/Authentication_data.robot
Resource          ../../Object Repository/Common_object_Locators/Delivery_address_&_payment.robot
Resource          ../../Object Repository/Common_object_Locators/checkout.robot
Resource          ../../Object Repository/Common_object_Locators/login_locators.robot

*** Keywords ***
Login operation
    # Trying to login Amzon account
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window
    Click Element    ${sign_in}
    Input Text    ${username}    ${username_value}
    Click Element    ${continue_event}
    Input Text    ${password}    ${password_value}
    Click Element    ${login}
    # As it asks for OTP verification lets try to skip this mobile verification as of now
    Click Element    ${skip_&_continue}

Checkout
    # Navgating to new Buy cart page
    Click Element    ${click_on_cart}
    Wait Until Page Contains Element    ${delete_item}    5
    Click Element    ${delete_item}
    Click Element    ${reduce_item}
    Click Element    ${reduce_to_one}
    Click Element    ${proceed_to_buy}
    # Entering Address details Randomly with the help of random package and selecting default address
    ${NAME}    Generate Random String    10    [LETTERS]
    Run Keyword And Ignore Error    Input Text    ${Full_name}    ${NAME}
    ${NUMBER}    Generate Random String    10    [NUMBERS]
    Run Keyword And Ignore Error    Input Text    ${Phone_number}    ${NUMBER}
    ${CODE}    Generate Random String    5    [NUMBERS]
    Run Keyword And Ignore Error    Input Text    ${postal_code}    ${CODE}
    ${LOCALITY_FROM_REGION}    Generate Random String    50    [LETTERS]
    Run Keyword And Ignore Error    Input Text    ${Address_line1}    ${LOCALITY_FROM_REGION}
    Sleep    4
    ${LOCALITY_FROM_LANDMARK}    Generate Random String    30    [LETTERS]
    Run Keyword And Ignore Error    Input Text    ${Address_line2}    ${LOCALITY_FROM_LANDMARK}
    ${CITY}    Generate Random String    10    [LETTERS]
    Run Keyword And Ignore Error    Input Text    ${address_city}    ${CITY}
    ${REGION}    Generate Random String    10    [LETTERS]
    Run Keyword And Ignore Error    Input Text    ${state}    ${REGION}
    Capture Page Screenshot
    Click Element    ${continue_to_payment}
    Wait Until Page Contains Element    ${deliver_to_address}    5
    Click Element    ${deliver_to_address}
    Wait Until Page Contains Element    ${continue_to_checkout}    5
    Click Element    ${continue_to_checkout}
    Sleep    5
    # Navigating to landing page of amazon to sign out
    Go Back
    Go Back
    Go Back
    Go Back
    Go Back
    Wait Until Page Contains Element    ${logout_dropdown}    5
    Mouse Over    ${logout_dropdown}
    Sleep    2
    Click Element    ${sign-out}

Delete previous added cart items
    Click Element    ${click_on_cart}
    Wait Until Page Contains Element    ${delete_first_item}    5
    Click Element    ${delete_first_item}
    Click Element    ${delete_item}
