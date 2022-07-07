*** Settings ***
Library    AppiumLibrary

*** Variables ***
#****login variables***
${Get-Started-button}    id=com.klivvr.consumer.qa:id/btn_getStarted
${Login-button}    //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_signIn']
${Mobile_number_field}    //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_mobileNumber']
${Continue_login_btn}    id=com.klivvr.consumer.qa:id/btn_mobileNumber_verify
${VERIFICATION_CODE_TEXT}  //android.widget.TextView[@text="Verification code"]
${OTP_FIELD}  //android.widget.EditText[@clickable="true"]
${CONTINUE_BUTTON_OTP}  id=com.klivvr.consumer.qa:id/btn_confirmOtp_continue
${PASSWORD_REQUIRED}  id=com.klivvr.consumer.qa:id/tv_title
${PASSWORD_FIELD}  //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/tIE_password']
${Password_login_btn}  //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_signInPasscode_signIn']

#****home variables***
${send_money_button}    //android.view.ViewGroup[@resource-id='com.klivvr.consumer.qa:id/cc_transfer']

#****send money by number variables***
${send_money_title}    //android.widget.TextView[@text='Select who you want to send money to']
${send_money_by_number}    //android.widget.RadioGroup[@resource-id='com.klivvr.consumer.qa:id/rb_newTransfer']
${send_money_by_number_field}    id=com.klivvr.consumer.qa:id/textInputET_mobileNumber
${send_money_continue_btn}    id=com.klivvr.consumer.qa:id/btnSendMoney
${send_money_amount_title}    //android.widget.TextView[@text='Choose amount']
${send_money_amount_field}     id=com.klivvr.consumer.qa:id/textInputET_amount
${send_money_reason_title}    //android.widget.TextView[contains(@text,'You are about to send EGP ')]
${send_money_reason_dropdown_btn}   id=com.klivvr.consumer.qa:id/text_input_end_icon
${send_money_reason_value}    id=com.klivvr.consumer.qa:id/tv_hint
${send_money_Send_btn}    id=com.klivvr.consumer.qa:id/btn_validatePass_validate
${send_money_successDialog_title}    //android.widget.TextView[@text='Successfully sent!']
${send_money_successDialog_btn}    id=com.klivvr.consumer.qa:id/btn_positive_action

#****send money by contacts variables***
${send_money_by_contact}    id=com.klivvr.consumer.qa:id/rb_contactList
${provide_access_to_contact_text}    //android.widget.TextView[@text='Allow Klivvr Qa to access your contacts?']
${provide_access_to_contact_allow_Btn}    id=com.android.permissioncontroller:id/permission_allow_button
${contact_in_list}    //android.view.ViewGroup[@index='0']
${contact_is_displayed}    id=com.klivvr.consumer.qa:id/li_selectedContactName


*** Keywords ***

send_money_by_mobile
    [Arguments]    ${send_money_mobile_number}
    wait until keyword succeeds    100s  1s    wait until page contains element    ${send_money_button}
    click element    ${send_money_button}
    wait until keyword succeeds    100s  1s    wait until page contains element    ${send_money_title}
    input text    ${send_money_by_number_field}    ${send_money_mobile_number}
    click element    ${send_money_continue_btn}
    wait until keyword succeeds    100s  1s     click element    ${send_money_continue_btn}
    wait until keyword succeeds    100s  1s    wait until page contains element    ${send_money_amount_title}
    click element    ${send_money_amount_field}
    input text    ${send_money_amount_field}    ${amount_to_be_sent}
    click element    ${send_money_continue_btn}
    wait until keyword succeeds    100s  1s    wait until page contains element    ${send_money_reason_title}
    click element    ${send_money_reason_dropdown_btn}
    click element    ${send_money_reason_value}
    click element    ${send_money_continue_btn}
    wait until keyword succeeds    100s  1s    wait until page contains element    ${password_field}
    input text    ${password_field}    ${password}
    click element    ${send_money_send_btn}
    wait until keyword succeeds    100s  1s    wait until page contains element    ${send_money_successdialog_title}
    click element    ${send_money_successdialog_btn}

send_money_by_contacts
    wait until keyword succeeds    100s  1s    wait until page contains element    ${send_money_button}
    click element    ${send_money_button}
    wait until keyword succeeds    100s  1s    wait until page contains element    ${send_money_title}
    click element    ${send_money_by_contact}
    wait until keyword succeeds    100s  1s    wait until page contains element    ${provide_access_to_contact_text}
    click element    ${provide_access_to_contact_allow_btn}
    wait until keyword succeeds    100s  1s    wait until page contains element    ${contact_in_list}
    click element    ${contact_in_list}
    wait until keyword succeeds    100s  1s    wait until page contains element    ${contact_is_displayed}
    click element    ${send_money_continue_btn}
    wait until keyword succeeds    100s  1s    wait until page contains element    ${send_money_amount_title}
    click element    ${send_money_amount_field}
    input text    ${send_money_amount_field}    ${amount_to_be_sent}
    click element    ${send_money_continue_btn}
    wait until keyword succeeds    100s  1s    wait until page contains element    ${send_money_reason_title}
    click element    ${send_money_reason_dropdown_btn}
    click element    ${send_money_reason_value}
    click element    ${send_money_continue_btn}
    wait until keyword succeeds    100s  1s    wait until page contains element    ${password_field}
    input text    ${password_field}    ${password}
    click element    ${send_money_send_btn}
    wait until keyword succeeds    100s  1s    wait until page contains element    ${send_money_successdialog_title}
    click element    ${send_money_successdialog_btn}