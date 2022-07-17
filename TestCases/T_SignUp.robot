*** Settings ***
Library    DataDriver    InputData.xlsx    sheet_name=SignUp
Library    Process
Resource  ../POM/P_Common.robot
Resource  ../POM/P_Sign_Up.robot

Test Template    Sign Up for a New User

Suite Setup     P_Common.Suite SetUp KW
Suite Teardown      P_Common.Suite Teardown KW

*** Test Cases ***
SIGN UP for a New User
    Sign Up for a New User  ${Invitation_Code}  ${Mobile_Number}  ${First_LegalName}  ${Last_LegalName}   ${OTP}     ${Password}

*** Keywords ***
Sign Up for a New User
    [Arguments]     ${Invitation_Code}  ${Mobile_Number}  ${First_LegalName}  ${Last_LegalName}   ${OTP}     ${Password}
    wait until page contains element        ${GET_STARTED_BUTTON}
    click element   ${GET_STARTED_BUTTON}
    wait until page contains element    ${InvitationCode_SignUp}
    input text      ${InvitationCode_SignUp}      ${Invitation_CODE}
    click element       ${Continuo_INVCODE_SignUp}
    wait until page contains element        ${MOBILE_NUMBER_FIELD}
    input text  ${MOBILE_NUMBER_FIELD}   ${MobileNumber}
    click element  ${CONTINUE_BUTTON_NUMBER}
    wait until page contains element  ${VERIFICATION_CODE_TEXT}
    input text  ${OTP_FIELD}   ${OTP}
    wait until keyword succeeds  100s  1s       wait until page contains element        ${LegalFirstName_SignUp}
    input text      ${LegalFirstName_SignUp}        ${First_LegalName}
    input text      ${LegalLastName_SignUp}        ${Last_LegalName}
    sleep       3s
    hide keyboard
    sleep       3s
    click element    ${Continuo_FirstLastName_SignUp}
    wait until keyword succeeds  100s  1s    wait until page contains element  ${CreatePasswordField_SignUp}
    click element       ${Eye_VisiblePassword_SignUp}
    input text        ${CreatePasswordField_SignUp}     ${Password}
    click element       ${CreatePassword_SignUp}
    sleep       4s
    Close App

