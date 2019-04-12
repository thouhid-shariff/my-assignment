*** Settings ***
Resource          ../../GenericLibrary/GlobalStandardLibraries.txt
Resource          ../../Object Repository/Products/headphone_locators.robot

*** Keywords ***
Add headphones to the cart
    Wait Until Page Contains Element    ${search_bar}    5
    Click Element    ${filter}
    Wait Until Page Contains Element    ${select_headphone}    5
    Click Element    ${select_headphone}
    Wait Until Page Contains Element    ${select_first_headphone}    5
    ${parent_window}    Get Title
    Click Element    ${select_first_headphone}
    Click Element    ${select_range}
    sleep    5
    Select Window    NEW
    ${child_window}    Get Title
    Switch Browser    1
    Log To Console    New window is : \ ${child_window}
    Click Element    ${add_to_cart}
