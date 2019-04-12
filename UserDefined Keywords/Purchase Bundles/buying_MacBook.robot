*** Settings ***
Resource          ../../GenericLibrary/GlobalStandardLibraries.txt
Resource          ../../Testdata_Folder/Common_test_folder/products_data.robot
Resource          ../../Object Repository/Products/MacBook_locators.robot
Resource          ../../Object Repository/Products/headphone_locators.robot

*** Keywords ***
Add MacBook pro
    # searching for macbook pro and cliking on the second book in the list and adding it to the cart
    Input Text    ${search_bar}    ${MacBook}
    Click Element    ${search}
    Sleep    3
    Click Element    ${select_2nd_link}
    # switching window
    Select Window    NEW
    Select From List    ${select_quantity}    2
    Click Element    ${add_to_cart}
