*** Settings ***
Library    DataDriver    InputData.xlsx    sheet_name=RequestMoney
Library    Process
Resource  ../POM/P_Common.robot
Resource  ../POM/P_LogIn.robot
Resource  ../POM/P_RequestMoney.robot

Test Template       Request Money by Number

*** Test Cases ***
Request Money TC
        Request Money by Number

*** Keywords ***
Request Money by Number
   [Arguments]      ${Mobile_Number}        ${OTP}      ${Password}     ${REQUEST_MONEY_NUMBER}
   ...  ${AMOUNT_VALUE}     ${REQUEST_EXPIRY_DATE}      ${ADD_NOTE}
   Run Automatic Appium Server
   Open APP
   ## Log In
   click element  ${SIGN_IN_BUTTON}
   wait until page contains element    ${MOBILE_NUMBER_FIELD}
   input text  ${MOBILE_NUMBER_FIELD}   ${MOBILE_NUMBER}
   click element  ${CONTINUE_BUTTON_NUMBER}
   wait until page contains element  ${VERIFICATION_CODE_TEXT}
   input text  ${OTP_FIELD}   ${OTP}
   wait until page contains element  ${PASSWORD_REQUIRED}
   input text  ${PASSWORD_FIELD}  ${PASSWORD}
   click element  ${LOGIN_BUTTON}
   ### Request Money
   wait until keyword succeeds  100s  1s   wait until page contains element    ${REQUEST_MONEY_BUTTON}
   click element  ${REQUEST_MONEY_BUTTON}
   wait until keyword succeeds  100s  1s   wait until page contains element    ${REQUEST_MONEY_MOBILE_ICON}
   click element  ${REQUEST_MONEY_MOBILE_ICON}
   wait until keyword succeeds  100s  1s   wait until page contains element    ${REQUEST_MONEY_MOBILE_FIELD}
   input text  ${REQUEST_MONEY_MOBILE_FIELD}  ${REQUEST_MONEY_NUMBER}
   sleep  5s
   click element  ${REQUEST_MONEY_CONTINUE_BUTTON}
   wait until page contains element  ${ENTER_AMOUNT_BUTTON}
   click element    ${ENTER_AMOUNT_BUTTON}
   input text   ${ENTER_AMOUNT_BUTTON}  ${AMOUNT_VALUE}
   go back
   wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUEST_MONEY_CONTINUE_BUTTON_2}
   click element  ${REQUEST_MONEY_CONTINUE_BUTTON_2}
   wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUESTED_AMOUNT_BUTTON}
   click element  ${REQUESTED_AMOUNT_BUTTON}
   wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUEST_EXPIRY_DATE_FIELD}
   input text  ${REQUEST_EXPIRY_DATE_FIELD}  ${REQUEST_EXPIRY_DATE}
   input text  ${ADD_NOTE_FIELD}  ${ADD_NOTE}
   wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUEST_NOW_BUTTON}
   click element  ${REQUEST_NOW_BUTTON}
   click element  ${GO_BACK_BUTTON}

Request Money Recent
   [Arguments]      ${Mobile_Number}        ${OTP}      ${Password}
   ...  ${AMOUNT_VALUE}     ${REQUEST_EXPIRY_DATE}      ${ADD_NOTE}
   Run Automatic Appium Server
   Open APP
   ## Log In
   click element  ${SIGN_IN_BUTTON}
   wait until page contains element    ${MOBILE_NUMBER_FIELD}
   input text  ${MOBILE_NUMBER_FIELD}   ${MOBILE_NUMBER}
   click element  ${CONTINUE_BUTTON_NUMBER}
   wait until page contains element  ${VERIFICATION_CODE_TEXT}
   input text  ${OTP_FIELD}   ${OTP}
   wait until page contains element  ${PASSWORD_REQUIRED}
   input text  ${PASSWORD_FIELD}  ${PASSWORD}
   click element  ${LOGIN_BUTTON}
   ### Request Money
   wait until keyword succeeds  100s  1s   wait until page contains element    ${REQUEST_MONEY_BUTTON}
   click element  ${REQUEST_MONEY_BUTTON}
   wait until keyword succeeds  100s  1s   wait until page contains element    ${REQUEST_MONEY_RECENT_ICON}
   click element  ${REQUEST_MONEY_RECENT_ICON}
   click element  ${REQUEST_MONEY_RECENT_CHOICE}
   sleep  5s
   click element  ${REQUEST_MONEY_CONTINUE_BUTTON}
   wait until page contains element  ${ENTER_AMOUNT_BUTTON}
   click element    ${ENTER_AMOUNT_BUTTON}
   input text   ${ENTER_AMOUNT_BUTTON}  ${AMOUNT_VALUE}
   go back
   wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUEST_MONEY_CONTINUE_BUTTON_2}
   click element  ${REQUEST_MONEY_CONTINUE_BUTTON_2}
   wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUESTED_AMOUNT_BUTTON}
   click element  ${REQUESTED_AMOUNT_BUTTON}
   wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUEST_EXPIRY_DATE_FIELD}
   input text  ${REQUEST_EXPIRY_DATE_FIELD}  ${REQUEST_EXPIRY_DATE}
   input text  ${ADD_NOTE_FIELD}  ${ADD_NOTE}
   wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUEST_NOW_BUTTON}
   click element  ${REQUEST_NOW_BUTTON}
   click element  ${GO_BACK_BUTTON}


Request Money by Username
   [Arguments]      ${Mobile_Number}        ${OTP}      ${Password}
   ...  ${AMOUNT_VALUE}     ${REQUEST_EXPIRY_DATE}      ${ADD_NOTE}
   Run Automatic Appium Server
   Open APP
   ## Log In
   click element  ${SIGN_IN_BUTTON}
   wait until page contains element    ${MOBILE_NUMBER_FIELD}
   input text  ${MOBILE_NUMBER_FIELD}   ${MOBILE_NUMBER}
   click element  ${CONTINUE_BUTTON_NUMBER}
   wait until page contains element  ${VERIFICATION_CODE_TEXT}
   input text  ${OTP_FIELD}   ${OTP}
   wait until page contains element  ${PASSWORD_REQUIRED}
   input text  ${PASSWORD_FIELD}  ${PASSWORD}
   click element  ${LOGIN_BUTTON}
   ### Request Money
   wait until keyword succeeds  100s  1s   wait until page contains element    ${REQUEST_MONEY_BUTTON}
   click element  ${REQUEST_MONEY_BUTTON}
   wait until keyword succeeds  100s  1s   wait until page contains element    ${REQUEST_MONEY_USERNAME_ICON}
   click element  ${REQUEST_MONEY_USERNAME_ICON}
   wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUEST_MONEY_USERNAME_FIELD}
   input text  ${REQUEST_MONEY_USERNAME_FIELD}  ${REQUEST_MONEY_USERNAME}
   sleep  5s
   click element  ${REQUEST_MONEY_CONTINUE_BUTTON}
   wait until page contains element  ${ENTER_AMOUNT_BUTTON}
   click element    ${ENTER_AMOUNT_BUTTON}
   input text   ${ENTER_AMOUNT_BUTTON}  ${AMOUNT_VALUE}
   go back
   wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUEST_MONEY_CONTINUE_BUTTON_2}
   click element  ${REQUEST_MONEY_CONTINUE_BUTTON_2}
   wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUESTED_AMOUNT_BUTTON}
   click element  ${REQUESTED_AMOUNT_BUTTON}
   wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUEST_EXPIRY_DATE_FIELD}
   input text  ${REQUEST_EXPIRY_DATE_FIELD}  ${REQUEST_EXPIRY_DATE}
   input text  ${ADD_NOTE_FIELD}  ${ADD_NOTE}
   wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUEST_NOW_BUTTON}
   click element  ${REQUEST_NOW_BUTTON}
   click element  ${GO_BACK_BUTTON}


Request Money from Contacts
   [Arguments]      ${Mobile_Number}        ${OTP}      ${Password}
   ...  ${AMOUNT_VALUE}     ${REQUEST_EXPIRY_DATE}      ${ADD_NOTE}
   Run Automatic Appium Server
   Open APP
   ## Log In
   click element  ${SIGN_IN_BUTTON}
   wait until page contains element    ${MOBILE_NUMBER_FIELD}
   input text  ${MOBILE_NUMBER_FIELD}   ${MOBILE_NUMBER}
   click element  ${CONTINUE_BUTTON_NUMBER}
   wait until page contains element  ${VERIFICATION_CODE_TEXT}
   input text  ${OTP_FIELD}   ${OTP}
   wait until page contains element  ${PASSWORD_REQUIRED}
   input text  ${PASSWORD_FIELD}  ${PASSWORD}
   click element  ${LOGIN_BUTTON}
   ### Request Money
   wait until keyword succeeds  100s  1s   wait until page contains element    ${REQUEST_MONEY_BUTTON}
   click element  ${REQUEST_MONEY_BUTTON}
   wait until keyword succeeds  100s  1s   wait until page contains element    ${REQUEST_MONEY_CONTACTS_ICON}
   click element  ${REQUEST_MONEY_CONTACTS_ICON}
   click element  ${REQUEST_MONEY_CONTACTS_CHECKBOX}
   sleep  5s
   click element  ${REQUEST_MONEY_CONTINUE_BUTTON}
   wait until page contains element  ${ENTER_AMOUNT_BUTTON}
   click element    ${ENTER_AMOUNT_BUTTON}
   input text   ${ENTER_AMOUNT_BUTTON}  ${AMOUNT_VALUE}
   go back
   wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUEST_MONEY_CONTINUE_BUTTON_2}
   click element  ${REQUEST_MONEY_CONTINUE_BUTTON_2}
   wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUESTED_AMOUNT_BUTTON}
   click element  ${REQUESTED_AMOUNT_BUTTON}
   wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUEST_EXPIRY_DATE_FIELD}
   input text  ${REQUEST_EXPIRY_DATE_FIELD}  ${REQUEST_EXPIRY_DATE}
   input text  ${ADD_NOTE_FIELD}  ${ADD_NOTE}
   wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUEST_NOW_BUTTON}
   click element  ${REQUEST_NOW_BUTTON}
   click element  ${GO_BACK_BUTTON}
