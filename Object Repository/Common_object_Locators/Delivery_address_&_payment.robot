*** variables ***
${Phone_number}    id=enterAddressPhoneNumber
${postal_code}    id=enterAddressPostalCode
${Address_line1}    id=enterAddressAddressLine1
${Address_line2}    id=enterAddressAddressLine2
${address_city}    id=enterAddressCity
${state}          id=enterAddressStateOrRegion
${continue_to_payment}    name=shipToThisAddress
${Full_name}      id=enterAddressFullName
${deliver_to_address}    //body/div[contains(@class,'checkout checkout-as checkout-as-desktop')]/div[contains(@class,'a-container')]/form[contains(@class,'a-nostyle')]/div[contains(@class,'a-spacing-base address-book')]/div[@id='address-book-entry-0']/div[2]
${continue_to_checkout}    //body/div/div[contains(@class,'notouch')]/div[contains(@class,'checkout sosp checkout-sosp-desktop')]/div[contains(@class,'a-container')]/div[contains(@class,'a-spacing-base clearfix')]/form[contains(@class,'a-spacing-base checkout-page-form')]/div[contains(@class,'a-row a-spacing-medium')]/div[contains(@class,'save-sosp-button-box a-column a-span4 a-span-last a-box a-color-alternate-background a-right')]/div[contains(@class,'a-box-inner')]/span[1]
${continue_for_final_review}    //span[@id='pp-eg-116']
${logout_dropdown}    //a[@id='nav-link-accountList']//span[@class='nav-icon nav-arrow']
