*** Settings ***
Library    DataDriver    InputData.xlsx    sheet_name=AddMoney
Library    Process
Resource  ../POM/P_Common.robot
Resource  ../POM/P_LogIn.robot
Resource  ../POM/P_AddMoney.robot

Test Template       Top Up with Specific Amount

*** Test Cases ***
ADD MONEY
    Log In with Already Registered User      ${Mobile_Number}        ${OTP}      ${Password}
    Top Up with Specific Amount  ${ChooseAmount}

*** Keyword ***

Top Up with Specific Amount
    [Arguments]     ${Mobile_Number}        ${OTP}      ${Password}     ${ChooseAmount}
    Run Automatic Appium Server
    Open APP

    #### Log In with Already Registered User
    click element  ${SIGN_IN_BUTTON}
    wait until page contains element    ${MOBILE_NUMBER_FIELD}
    input text  ${MOBILE_NUMBER_FIELD}   ${MOBILE_NUMBER}
    click element  ${CONTINUE_BUTTON_NUMBER}
    wait until page contains element  ${VERIFICATION_CODE_TEXT}
    input text  ${OTP_FIELD}   ${OTP}
    wait until page contains element  ${PASSWORD_REQUIRED}
    input text  ${PASSWORD_FIELD}  ${PASSWORD}
    click element  ${LOGIN_BUTTON}

    ### Add Money
    wait until keyword succeeds  100s  1s      wait until page contains element     ${AddMoneyButton_Home}
    click element       ${AddMoneyButton_Home}
    wait until keyword succeeds  100s  1s  wait until page contains element        //android.widget.RadioButton[@text='${ChooseAmount}']
    click element       //android.widget.RadioButton[@text='${ChooseAmount}']
    wait until page contains element        ${Continuo_AddMoney}
    click element       ${Continuo_AddMoney}
    wait until keyword succeeds  100s  1s      wait until page contains element  ${TOPUp_AddMoney}
    click element       ${Visa_TopUp}
    input text      ${CardNumber_TopUp}    ${CardNumber}
    click element       ${ExpiryMonth_TopUp}
    wait until page contains element        ${ExpiryMonthList_TopUp}
    click element       ${ExpiryMonthList_TopUp}
    click element       ${ExpiryYear_TopUp}
    click element       ${ExpiryYearList_TopUp}
    input text      ${CVN_TopUp}        ${CVNNumber}
    click element       ${Pay_TopUp}
