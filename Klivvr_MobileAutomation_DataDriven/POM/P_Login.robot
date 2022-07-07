*** Settings ***
Library  AppiumLibrary

*** Variables ***
${GET_STARTED_BUTTON}  //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_getStarted']
${PASSWORD_REQUIRED}  id=com.klivvr.consumer.qa:id/tv_title
${LOGIN_BUTTON}  //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_signInPasscode_signIn']
${ADD_MONEY_TEXT}  //android.widget.TextView[@text='Add Money']
${SIGN_IN_BUTTON}  //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_signIn']
${VERIFICATION_CODE_TEXT}  //android.widget.TextView[@text="Verification code"]
${MOBILE_NUMBER_FIELD}  //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_mobileNumber']
${OTP_FIELD}  //android.widget.EditText[@clickable="true"]
${CONTINUE_BUTTON_NUMBER}  //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_mobileNumber_verify']
${CONTINUE_BUTTON_OTP}  id=com.klivvr.consumer.qa:id/btn_confirmOtp_continue
${PASSWORD_FIELD}  //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/tIE_password']

*** Keywords ***
Log In with Already Registered User
    [Arguments]     ${Mobile_Number}        ${OTP}      ${Password}
    wait until page contains element        ${SIGN_IN_BUTTON}
    click element  ${SIGN_IN_BUTTON}
    wait until page contains element    ${MOBILE_NUMBER_FIELD}
    input text  ${MOBILE_NUMBER_FIELD}   ${MOBILE_NUMBER}
    click element  ${CONTINUE_BUTTON_NUMBER}
    wait until page contains element  ${VERIFICATION_CODE_TEXT}
    input text  ${OTP_FIELD}   ${OTP}
    wait until page contains element  ${PASSWORD_REQUIRED}
    input text  ${PASSWORD_FIELD}  ${PASSWORD}
    click element  ${LOGIN_BUTTON}