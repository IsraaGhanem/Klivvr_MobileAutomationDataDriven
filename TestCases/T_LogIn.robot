*** Settings ***
Library    DataDriver    InputData.xlsx    sheet_name=LogIn
Library    Process
Resource  ../POM/P_Common.robot
Resource  ../POM/P_LogIn.robot
Resource  ../POM/P_SendMoney.robot

Test Template    Log In with Already Registered User

Suite Setup     P_Common.Suite SetUp KW
Suite Teardown      P_Common.Suite Teardown KW

*** Test Cases ***
Log In with Already Registered User TC
        Log In with Already Registered User     ${Mobile_Number}        ${OTP}      ${Password}

*** Keywords ***
Log In with Already Registered User
    [Arguments]     ${Mobile_Number}        ${OTP}      ${Password}
    click element  ${SIGN_IN_BUTTON}
    wait until page contains element    ${MOBILE_NUMBER_FIELD}
    input text  ${MOBILE_NUMBER_FIELD}   ${MOBILE_NUMBER}
    click element  ${CONTINUE_BUTTON_NUMBER}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${VERIFICATION_CODE_TEXT}
    input text  ${OTP_FIELD}   ${OTP}
    wait until page contains element  ${PASSWORD_REQUIRED}
    input text  ${PASSWORD_FIELD}  ${PASSWORD}
    click element  ${LOGIN_BUTTON}
    wait until keyword succeeds    100s  1s    wait until page contains element    ${send_money_button}
    sleep   5s