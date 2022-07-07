*** Settings ***
Library    Process
Library    DataDriver    InputData.xlsx    sheet_name=KYC
Resource  ../POM/P_Common.robot
Resource  ../POM/P_LogIn.robot
Resource  ../POM/P_KYC.robot

Test Template             KYC Full Process

*** Variable ***
${Dateofbirth}      11/13/96

*** Test Cases ***
KYC Full PROCESS TC
        KYC Full Process

*** Keywords ***
KYC Full Process
    [Arguments]     ${Mobile_Number}        ${OTP}      ${Password}
    ...  ${FullNameData}     ${Gender}       ${ID_Number}    ${Address}      ${Government}
    ...  ${Government}       ${Area/District}    ${Dateofbirth}      ${CountryOfBirth}      ${Occupation}
    ...  ${Occupation}      ${EmployerName}        ${EmployerAddress}
    ...  ${Address_FATCAYesData}     ${PostalCode_FATCAYesData}      ${US_Mobile_FATCAYesData}
    ...  ${Us_HomeNumber_FATCAYesData}      ${PlaceofBirth_US_FATCAYesData}
    ...  ${SocialSecuirityNumber_FATCAYesData}       ${TaxPayer_FATCAYesData}        ${VISAType_FATCAYesData}
    ...  ${TheirName_SanctionYesData}     ${Address_SanctionYesData}     ${WhichCountryRelated_SanctionYesData}
    ...  ${TypeOfRelation_SanctionYesData}       ${ExpectedTypeofTransaction_SanctionYesData}
    ...  ${Address_ShippingAddressData}      ${Govornerate_ShippingAddressData}      ${Area/District_ShippingAddressData}

#### Run appium and open app
    Run Automatic Appium Server
    Open APP

#### Log In
    click element  ${SIGN_IN_BUTTON}
    wait until page contains element    ${MOBILE_NUMBER_FIELD}
    input text  ${MOBILE_NUMBER_FIELD}   ${MOBILE_NUMBER}
    click element  ${CONTINUE_BUTTON_NUMBER}
    wait until page contains element  ${VERIFICATION_CODE_TEXT}
    input text  ${OTP_FIELD}   ${OTP}
    wait until page contains element  ${PASSWORD_REQUIRED}
    input text  ${PASSWORD_FIELD}  ${PASSWORD}
    click element  ${LOGIN_BUTTON}

#### Enter Verify ur Identity Section
        wait until keyword succeeds  100s  1s   wait until page contains element       ${VerifyUrIdentity_KYC}
        click element       ${VerifyUrIdentity_KYC}

#### Verify your Identity Natioanl ID Information
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
        Swipe   1000   1000   1000   0  1000
        input text      ${EmployerAddress_VerifyUrIdentity_KYC}     ${EmployerAddress}
        Swipe   1000   1000   1000   0  1000
        Swipe   1000   1000   1000   0  1000
        click element       ${GreenCardHolderYes_VerifyUrIdentity_KYC}
        click element       ${SancationYes_VerifyUrIdentity_KYC}
        click element       ${Continuo_VerifyUrIdentity_KYC}

#### Fill FATCA Data If FATCA Yes
        wait until keyword succeeds  100s  1s   wait until page contains element        ${Title2_FATCAYes}
        input text      ${Address_FATCAYes}     ${Address_FATCAYesData}
        input text      ${PostalCode_FATCAYes}      ${PostalCode_FATCAYesData}
        input text      ${U.S.Mobile_FATCAYes}      ${US_Mobile_FATCAYesData}
        input text      ${U.s.HomeNumber_FATCAYes}      ${Us_HomeNumber_FATCAYesData}
        Swipe   1000   1000   1000   0  1000
        click element        ${DidUVisit.U.S._FATCAYes}
        click element       ${LastStayIn.U.S._FATCAYes}
        wait until page contains element        ${PlaceofBirth.U.S._FATCAYes}
        click element       ${PlaceofBirth.U.S._FATCAYes}
        input text      ${PlaceofBirth.U.S._FATCAYes}       ${PlaceofBirth_US_FATCAYesData}
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

#### Fill Sanction Data If Sanction Yes
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

#### Submit National ID Front and Back Image
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
        click element       ${TakePhoto}
        wait until keyword succeeds  100s  1s     wait until page contains element        ${Title_IDPhoto}
        Swipe   1000   1000   1000   0  1000
        click element       ${Submit_IDPhoto}

#### Fill Shipping Address with different Address
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
        ## Click Request Card Button
        wait until keyword succeeds  100s  1s   wait until page contains element        ${RequestCardButton}
        click element       ${RequestCardButton}


