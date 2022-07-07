*** Settings ***
Library  AppiumLibrary

*** Variables ***

### Verify your Identity Variable  ###
${VerifyUrIdentity_KYC}     //android.view.ViewGroup[@resource-id='com.klivvr.consumer.qa:id/cl_btn_verifyIdentity']
${ShippingAddress_KYC}      //android.view.ViewGroup[@resource-id='com.klivvr.consumer.qa:id/cl_btn_shippingAddress']
${RequestCardButton}        //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_kyc_main_cardRequest']
${Page1Title_VerifyUrIdentity_KYC}      //android.widget.TextView[@text='Verify your identity']
${FullName_VerifyUrIdentity_KYC}     //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_fullName']
${GenderList_VerifyUrIdentity_KYC}     //android.widget.Spinner[@resource-id='com.klivvr.consumer.qa:id/textInputET_gender']
${IDNumber_VerifyUrIdentity_KYC}     //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_idNumber']
${ExpiryDate_VerifyUrIdentity_KYC}     //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_idExpiryDate']
${YearExpiryDate01_VerifyUrIdentity_KYC}        //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/month_navigation_fragment_toggle']
${YearExpiryDate02_VerifyUrIdentity_KYC}     //android.widget.TextView[@text='2026']
${OKExpiryDate03_VerifyUrIdentity_KYC}      //android.widget.Button[@text='OK']
${NextMonthExpiryDate02_VerifyUrIdentity_KYC}        //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/month_navigation_next']
${Address_VerifyUrIdentity_KYC}     //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_homeAddress']
${Government_VerifyUrIdentity_KYC}      //android.widget.Spinner[@resource-id='com.klivvr.consumer.qa:id/textInputET_governorate']
${Area/District_VerifyUrIdentity_KYC}     //android.widget.Spinner[@resource-id='com.klivvr.consumer.qa:id/textInputET_area']
${DateofBirth_VerifyUrIdentity_KYC}     //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_dateOfBirth']
${Year01DateOfBirth_KYC}      //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/month_navigation_fragment_toggle']
${Edit01DateOfBirth_KYC}        //android.widget.ImageButton[@resource-id='com.klivvr.consumer.qa:id/mtrl_picker_header_toggle']
${Edit02DateOfBirth_KYC}      //android.widget.EditText[@index='0']
${Edit03DateOfBirth_KYC}      //android.widget.EditText[@index='1']
${OKEditDateOfBirth_KYC}      //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/confirm_button']
${CountryOfBirth_VerifyUrIdentity_KYC}     //android.widget.Spinner[@resource-id='com.klivvr.consumer.qa:id/textInputET_countryOfBirth']
${Occupation_VerifyUrIdentity_KYC}     //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_occupation']
${EmployerName_VerifyUrIdentity_KYC}     //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_employerName']
${EmployerAddress_VerifyUrIdentity_KYC}     //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_employerAddress']
${GreenCardHolderYes_VerifyUrIdentity_KYC}     //android.widget.RadioButton[@resource-id='com.klivvr.consumer.qa:id/rb_fatca_yes']
${GreenCardHolderNo_VerifyUrIdentity_KYC}     //android.widget.RadioButton[@resource-id='com.klivvr.consumer.qa:id/rb_fatca_no']
${SancationYes_VerifyUrIdentity_KYC}     //android.widget.RadioButton[@resource-id='com.klivvr.consumer.qa:id/rb_sanctions_yes']
${SancationNo_VerifyUrIdentity_KYC}     //android.widget.RadioButton[@resource-id='com.klivvr.consumer.qa:id/rb_sanctions_no']
${Continuo_VerifyUrIdentity_KYC}     //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_kyc_basicInfo_continue']

###     If FATCA Yes      ###
${Title2_FATCAYes}      //android.widget.TextView[@text='Are you a U.S. citizen or a U.S. tax resident (e.g. Green Card Holder)?']
${Address_FATCAYes}     //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_addressDetails']
${PostalCode_FATCAYes}      //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_zipCode']
${U.S.Mobile_FATCAYes}      //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_usMobileNumber']
${U.s.HomeNumber_FATCAYes}      //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_usHomeNumber']
${DidUVisit.U.S._FATCAYes}      //android.widget.Spinner[@resource-id='com.klivvr.consumer.qa:id/textInputET_visitUSBefore']
${LastStayIn.U.S._FATCAYes}        //android.widget.Spinner[@resource-id='com.klivvr.consumer.qa:id/textInputET_lastStayInUS']
${PlaceofBirth.U.S._FATCAYes}       //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_placeOfBirthInUS']
${SocialSecuirityNumber_FATCAYes}       //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_socialSecurityNumber']
${TaxPayer_FATCAYes}        //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_taxId']
${VISAType_FATCAYes}        //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_visaType']
${VISAExpiryData_FATCAYes}        //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_visaExpiryDate']
${VISAExpiryDateOK_FATCAYes}        //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/confirm_button']
${VISAExpiryDateCancel_FATCAYes}        //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/cancel_button']
${Continuo_FATCAYes}        //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_kyc_fatca_continue']

#####   If Sancation Yes ######
${Title_SanctionsYes}        //android.widget.TextView[@text='Sanctions exposure on the account']
${TheirFullName_SanctionsYes}        //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_theirFullName']
${Address_SanctionsYes}        //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_addressOfThatPerson']
${WhichCountry_SanctionsYes}        //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_countryRelatedTo']
${TypeOfRelation_SanctionsYes}        //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_typeOfRelationWithCountry']
${ExpectedTransaction_SanctionsYes}        //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_expectedTypeOfTransactions']
${NourthKorea%_SanctionsYes}        //android.widget.Spinner[@resource-id='com.klivvr.consumer.qa:id/textInputET_percentageNorthKorea']
${Cuba%_SanctionsYes}        //android.widget.Spinner[@resource-id='com.klivvr.consumer.qa:id/textInputET_percentageCuba']
${Iran%_SanctionsYes}        //android.widget.Spinner[@resource-id='com.klivvr.consumer.qa:id/textInputET_percentageIran']
${Syria%_SanctionsYes}        //android.widget.Spinner[@resource-id='com.klivvr.consumer.qa:id/textInputET_percentageSyria']
${Crimean%_SanctionsYes}        //android.widget.Spinner[@resource-id='com.klivvr.consumer.qa:id/textInputET_percentageCrimeanPeninsula']
${ContinuoButton_SanctionsYes}        //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_kyc_sanctionsCountries_continue']

###   ID Photo ######
${Title_IDPhoto}        //android.widget.TextView[@text='Can we get a photo of your ID?']
${FrontID_IDPhoto}     //android.widget.FrameLayout[@resource-id='com.klivvr.consumer.qa:id/cv_nationalIdFrontImage']
${BackID_IDPhoto}     //android.widget.FrameLayout[@resource-id='com.klivvr.consumer.qa:id/cv_nationalIdBackImage']
${CameraAccess_IDPhoto}     //android.widget.TextView[@text='Camera access is required']
${AllowAccessButton_IDPhoto}     //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_cameraPermission_allowAccess']
${Submit_IDPhoto}     //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_kyc_scanId_submit']
${AllowFromPhone_IDPhoto}     //android.widget.Button[@resource-id='com.android.permissioncontroller:id/permission_allow_foreground_only_button']
${TakePhoto}        //android.widget.ImageButton[@resource-id='com.klivvr.consumer.qa:id/iBtn_capturePhoto']
${Submit_IDPhoto}       //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_kyc_scanId_submit']

###  Shipping Address  Variables  ###
${Title_ShippingAddress}     //android.widget.TextView[@text='Where do you want to deliver your card?']
${SameNationalIDAddressRadioButton_ShippingAddress}     //android.widget.RadioButton[@resource-id='com.klivvr.consumer.qa:id/rb_shippingAddress_same']
${DifferentAddressRadioButton_ShippingAddress}     //android.widget.RadioButton[@resource-id='com.klivvr.consumer.qa:id/rb_shippingAddress_different']
${Address_ShippingAddress}     //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_address']
${Govornerate_ShippingAddress}     //android.widget.Spinner[@resource-id='com.klivvr.consumer.qa:id/textInputET_governorate']
${Area/District_ShippingAddress}     //android.widget.Spinner[@resource-id='com.klivvr.consumer.qa:id/textInputET_area']
${Country_ShippingAddress}     //android.widget.LinearLayout[@resource-id='com.klivvr.consumer.qa:id/textInputLayout_country']
${AddressType_ShippingAddress}     //android.widget.Spinner[@resource-id='com.klivvr.consumer.qa:id/textInputET_addressType']
${Submit_ShippingAddress}     //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_kyc_shippingAddress_continue']

*** Keywords ***
Enter Verify ur Identity Section
        wait until keyword succeeds  100s  1s   wait until page contains element       ${VerifyUrIdentity_KYC}
        click element       ${VerifyUrIdentity_KYC}

Verify your Identity Natioanl ID Information
        wait until page contains element        ${Page1Title_VerifyUrIdentity_KYC}
        input text      ${FullName_VerifyUrIdentity_KYC}        ${FullNameData}
        input text      ${GenderList_VerifyUrIdentity_KYC}      ${Gender}
        sleep  2s
        click element       ${GenderList_VerifyUrIdentity_KYC}
        click element       ${IDNumber_VerifyUrIdentity_KYC}
        input text      ${IDNumber_VerifyUrIdentity_KYC}        ${ID_Number}
        click element       ${ExpiryDate_VerifyUrIdentity_KYC}
        wait until page contains element        ${YearExpiryDate01_VerifyUrIdentity_KYC}
        click element       ${YearExpiryDate01_VerifyUrIdentity_KYC}
        wait until page contains element        ${YearExpiryDate02_VerifyUrIdentity_KYC}
        click element       ${YearExpiryDate02_VerifyUrIdentity_KYC}
        sleep  3s
        click element       ${OKExpiryDate03_VerifyUrIdentity_KYC}
        input text      ${Address_VerifyUrIdentity_KYC}     ${Address}
        click element       ${Government_VerifyUrIdentity_KYC}
        input text       ${Government_VerifyUrIdentity_KYC}       ${Government}
        click element       ${Area/District_VerifyUrIdentity_KYC}
        click element       ${Area/District_VerifyUrIdentity_KYC}
        input text      ${Area/District_VerifyUrIdentity_KYC}       ${Area/District}
        click element       ${Government_VerifyUrIdentity_KYC}
        Swipe   1000   1000   1000   0  1000
        click element       ${DateofBirth_VerifyUrIdentity_KYC}
        wait until page contains element        ${Edit01DateOfBirth_KYC}
        click element       ${Edit01DateOfBirth_KYC}
        wait until page contains element        ${Edit02DateOfBirth_KYC}
        clear text      ${Edit02DateOfBirth_KYC}
        sleep       2s
        click element   ${Edit03DateOfBirth_KYC}
        input text      ${Edit03DateOfBirth_KYC}        ${Dateofbirth}
        click element       ${OKEditDateOfBirth_KYC}
        hide keyboard
        input text      ${CountryOfBirth_VerifyUrIdentity_KYC}      ${CountryOfBirth}
        click element        ${CountryOfBirth_VerifyUrIdentity_KYC}
        click element       ${Occupation_VerifyUrIdentity_KYC}
        input text      ${Occupation_VerifyUrIdentity_KYC}       ${Occupation}
        input text      ${EmployerName_VerifyUrIdentity_KYC}        ${EmployerName}
        input text      ${EmployerAddress_VerifyUrIdentity_KYC}     ${EmployerAddress}
        Swipe   1000   1000   1000   0  1000
        Swipe   1000   1000   1000   0  1000
        click element       ${GreenCardHolderYes_VerifyUrIdentity_KYC}
        click element       ${SancationYes_VerifyUrIdentity_KYC}
        click element       ${Continuo_VerifyUrIdentity_KYC}

Fill FATCA Data If FATCA Yes
        wait until keyword succeeds  100s  1s   wait until page contains element        ${Title2_FATCAYes}
        input text      ${Address_FATCAYes}     ${Address_FATCAYesData}
        input text      ${PostalCode_FATCAYes}      ${PostalCode_FATCAYesData}
        input text      ${U.S.Mobile_FATCAYes}      ${U.S.Mobile_FATCAYesData}
        input text      ${U.s.HomeNumber_FATCAYes}      ${U.s.HomeNumber_FATCAYesData}
        Swipe   1000   1000   1000   0  1000
        click element        ${DidUVisit.U.S._FATCAYes}
        click element       ${LastStayIn.U.S._FATCAYes}
        wait until page contains element        ${PlaceofBirth.U.S._FATCAYes}
        click element       ${PlaceofBirth.U.S._FATCAYes}
        input text      ${PlaceofBirth.U.S._FATCAYes}       ${PlaceofBirth.U.S._FATCAYesData}
        Swipe   1000   1000   1000   0  1000
        input text      ${SocialSecuirityNumber_FATCAYes}       ${SocialSecuirityNumber_FATCAYesData}
        Swipe   1000   1000   1000   0  1000
        input text      ${TaxPayer_FATCAYes}         ${TaxPayer_FATCAYesData}
        input text      ${VISAType_FATCAYes}        ${VISAType_FATCAYesData}
        Swipe   1000   1000   1000   0  1000
        click element       ${VISAExpiryData_FATCAYes}
        Sleep       2s
        click element       ${VISAExpiryDateOK_FATCAYes}
        sleep  3s
        click element       ${Continuo_FATCAYes}

Fill Sanction Data If Sanction Yes
        wait until keyword succeeds  100s  1s   wait until page contains element        ${Title_SanctionsYes}
        input text      ${TheirFullName_SanctionsYes}       ${TheirName_SanctionYesData}
        input text      ${Address_SanctionsYes}     ${Address_SanctionYesData}
        input text      ${WhichCountry_SanctionsYes}        ${WhichCountryRelated_SanctionYesData}
        input text      ${TypeOfRelation_SanctionsYes}      ${TypeOfRelation_SanctionYesData}
        input text      ${ExpectedTransaction_SanctionsYes}     ${ExpectedTypeofTransaction_SanctionYesData}
        Swipe   1000   1000   1000   0  1000
        click element       ${Cuba%_SanctionsYes}
        sleep       1s
        click element       ${NourthKorea%_SanctionsYes}
        Swipe   1000   1000   1000   0  1000
        click element     ${ContinuoButton_SanctionsYes}

Fill Shipping Address with different Address
        wait until keyword succeeds  100s  1s   wait until page contains element        ${ShippingAddress_KYC}
        click element       ${ShippingAddress_KYC}
        wait until page contains element        ${Title_ShippingAddress}
        click element       ${DifferentAddressRadioButton_ShippingAddress}
        wait until page contains element        ${Address_ShippingAddress}
        input text      ${Address_ShippingAddress}      ${Address_ShippingAddressData}
        input text      ${Govornerate_ShippingAddress}      ${Govornerate_ShippingAddressData}
        click element        ${Govornerate_ShippingAddress}
        click element       ${Area/District_ShippingAddress}
        input text      ${Area/District_ShippingAddress}        ${Area/District_ShippingAddressData}
        click element       ${Area/District_ShippingAddress}
        click element       ${Country_ShippingAddress}
        Swipe   1000   1000   1000   0  1000
        click element       ${Submit_ShippingAddress}

Submit National ID Front and Back Image
        wait until page contains element        ${Title_IDPhoto}
        click element       ${FrontID_IDPhoto}
        wait until page contains element       ${CameraAccess_IDPhoto}
        click element        ${AllowAccessButton_IDPhoto}
        wait until page contains element        ${AllowFromPhone_IDPhoto}
        click element       ${AllowFromPhone_IDPhoto}
        wait until page contains element        ${TakePhoto}
        click element       ${TakePhoto}
        wait until page contains element        ${BackID_IDPhoto}
        click element       ${BackID_IDPhoto}
        wait until keyword succeeds  100s  1s      wait until page contains element        ${TakePhoto}
        click element       ${TakePhoto}
        wait until keyword succeeds  100s  1s     wait until page contains element        ${Title_IDPhoto}
        Swipe   1000   1000   1000   0  1000
        click element       ${Submit_IDPhoto}