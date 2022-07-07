*** Settings ***
Library  AppiumLibrary

*** Variables ***
###     Sign Up Variables       ###
${InvitationCode_SignUp}        //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_invitationCode']
${Continuo_INVCODE_SignUp}      //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_invitationCode_continue']
${GET_STARTED_BUTTON}  //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_getStarted']
${MOBILE_NUMBER_FIELD}  //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_mobileNumber']
${VERIFICATION_CODE_TEXT}  //android.widget.TextView[@text="Verification code"]
${OTP_FIELD}  //android.widget.EditText[@clickable="true"]
${CONTINUE_BUTTON_NUMBER}  //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_mobileNumber_verify']
${CONTINUE_BUTTON_OTP}  id=com.klivvr.consumer.qa:id/btn_confirmOtp_continue
${LegalFirstName_SignUp}        //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_firstName']
${LegalLastName_SignUp}         //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_lastName']
${Continuo_FirstLastName_SignUp}        //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_accountDetails_continue']
${CreatePasswordField_SignUp}        //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/tIE_password']
${Eye_VisiblePassword_SignUp}       //android.widget.ImageButton[@resource-id='com.klivvr.consumer.qa:id/text_input_end_icon']
${CreatePassword_SignUp}        //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_createPass_continue']








