*** Settings ***
Library    DataDriver    InputData.xlsx    sheet_name=SendMoney
Library    Process
Resource  ../POM/P_Common.robot
Resource  ../POM/P_LogIn.robot
Resource  ../POM/P_SendMoney.robot

Test Template       send_money_by_contacts

Suite Setup     P_Common.Suite SetUp KW
Suite Teardown      P_Common.Suite Teardown KW

*** Test Cases ***
Send Money By Mobile Number TC
        #send_money_by_mobile
        send_money_by_contacts
*** Keywords ***
send_money_by_mobile
    [Arguments]    ${Mobile_Number}        ${OTP}      ${Password}
    ...  ${send_money_mobile_number}    ${amount_to_be_sent}

    ### Log In App
    click element  ${SIGN_IN_BUTTON}
    wait until page contains element    ${MOBILE_NUMBER_FIELD}
    input text  ${MOBILE_NUMBER_FIELD}   ${MOBILE_NUMBER}
    click element  ${CONTINUE_BUTTON_NUMBER}
    wait until page contains element  ${VERIFICATION_CODE_TEXT}
    input text  ${OTP_FIELD}   ${OTP}
    wait until page contains element  ${PASSWORD_REQUIRED}
    input text  ${PASSWORD_FIELD}  ${PASSWORD}
    click element  ${LOGIN_BUTTON}
    ### Send Money
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
    wait until keyword succeeds    50s  1s    wait until page contains element    ${send_money_successdialog_title}
    click element    ${send_money_successdialog_btn}

send_money_by_contacts
    [Arguments]    ${Mobile_Number}        ${OTP}      ${Password}      ${amount_to_be_sent}
    Run Automatic Appium Server
    Open APP
    ### Log In App
    click element  ${SIGN_IN_BUTTON}
    wait until page contains element    ${MOBILE_NUMBER_FIELD}
    input text  ${MOBILE_NUMBER_FIELD}   ${MOBILE_NUMBER}
    click element  ${CONTINUE_BUTTON_NUMBER}
    wait until page contains element  ${VERIFICATION_CODE_TEXT}
    input text  ${OTP_FIELD}   ${OTP}
    wait until page contains element  ${PASSWORD_REQUIRED}
    input text  ${PASSWORD_FIELD}  ${PASSWORD}
    click element  ${LOGIN_BUTTON}

    ### Send Money
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
