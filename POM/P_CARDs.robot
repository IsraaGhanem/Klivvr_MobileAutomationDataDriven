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

${ENTER_AMOUNT_BUTTON}  //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_amount']
${Cards_Button}     //android.widget.FrameLayout[@resource-id='com.klivvr.consumer.qa:id/cardsFragment']
${Card_Tap}     //android.widget.FrameLayout[@resource-id='com.klivvr.consumer.qa:id/cv_card']
${FreezeButton_Cards}    //android.widget.ImageButton[@resource-id='com.klivvr.consumer.qa:id/fab']
${Confirm_Cards}    //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_validatePass_validate']
${UnFreezeCard_Cards}   //android.widget.ImageButton[@resource-id='com.klivvr.consumer.qa:id/fab']
${ChangePIN_Cards}      //android.view.ViewGroup[@resource-id='com.klivvr.consumer.qa:id/ll_changePin']
${AddMoney_Cards}       //android.view.ViewGroup[@resource-id='com.klivvr.consumer.qa:id/ll_topUp']
${BackORClose_Button_Cards}     //android.widget.ImageButton[@index='0']
${CloseWindow_X_Cards}
${FreezeText_Cards}     //android.widget.TextView[@text='Freeze']
${UnFreezeText_Cards}       //android.widget.TextView[@text='Unfreeze']

*** Keywords ***
Activate Card
    wait until keyword succeeds  100s  1s   wait until page contains element        ${ActivateButton_Home}
    click element       ${ActivateButton_Home}
    wait until page contains element        ${Continuo_ActivateCard}
    click element       ${Continuo_ActivateCard}
    wait until keyword succeeds  100s  1s   wait until page contains element        ${PINField01_ActivateCard}
    input text      ${PINField01_ActivateCard}
    wait until page contains element        ${Password_ActivateCard}
    input text      ${Password_ActivateCard}        ${PASSWORD}
    click element       ${}
    wait until page contains element        ${ConfirmPassword_ActivateCard}
    click element       ${ConfirmPassword_ActivateCard}

Enter Cards Page
    wait until keyword succeeds  100s  1s   wait until page contains element    ${Cards_Button}
    click element   ${Cards_Button}
    wait until keyword succeeds  100s  1s   wait until page contains element    ${Card_Tap}
    click element   ${Card_Tap}

Freeze Card
    wait until page contains element    ${FreezeText_Cards}
    click element   ${FreezeButton_Cards}
    wait until page contains element  ${PASSWORD_REQUIRED}
    input text  ${PASSWORD_FIELD}  ${PASSWORD}
    click element   ${Confirm_Cards}
    wait until page contains element   ${UnFreezeCard_Cards}

UnFreeze Card
    wait until page contains element    ${UnFreezeText_Cards}
    click element   ${UnFreezeCard_Cards}
    wait until page contains element  ${PASSWORD_REQUIRED}
    input text  ${PASSWORD_FIELD}  ${PASSWORD}
    click element   ${Confirm_Cards}
    wait until page contains element   ${FreezeText_Cards}

Change PIN Code
    #### Change pin is blockes As there is a bug in this process
    wait until page contains element    ${ChangePIN_Cards}
    click element   ${ChangePIN_Cards}
    wait until page contains element  ${PASSWORD_REQUIRED}
    input text  ${PASSWORD_FIELD}  ${PASSWORD}
    click element   ${Confirm_Cards}




















