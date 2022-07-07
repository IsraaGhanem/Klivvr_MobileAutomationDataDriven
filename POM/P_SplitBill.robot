*** Settings ***
Library  AppiumLibrary

*** Variables ***
${Transactions}  //android.widget.FrameLayout[@resource-id='com.klivvr.consumer.qa:id/transactionsHistoryFragment']
${SPLITABLE-AMOUNT}  //android.widget.FrameLayout[@index='7']
${SPLIT_BILL-BUTTON}  //android.widget.ImageButton[@resource-id='com.klivvr.consumer.qa:id/fab']
${SPLIT_MONEY_MOBILE_ICON}  //android.widget.RadioButton[@resource-id='com.klivvr.consumer.qa:id/rb_newTransfer']
${SPLIT_MONEY_MOBILE_FIELD}  //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_mobileNumber']
${SPLIT_MONEY_NUMBER}  1022031199
${SPLIT_MONEY_CONTINUE_BUTTON}  //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btnChooseContacts' and @text="Continue"]
${SPLIT_NOW_BUTTON}  //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_request']
${SPLIT_NOTE_FIELD}  //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/edt_note']
${SPLIT_NOTE}  Important
${REQUEST_NOW_BUTTON}  //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_request_now']
${GO_BACK_BUTTON}  //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_positive_action']
*** Keywords ***
Split an Amount
#    wait until keyword succeeds  100s  1s   wait until page contains element  ${Transactions}
#    click element  ${Transactions}
    scroll down  //android.widget.TextView[@resource-id='com.klivvr.consumer.qa:id/amountTv' and @text='-400.0 EGP']
    click element  //android.widget.TextView[@resource-id='com.klivvr.consumer.qa:id/amountTv' and @text='-400.0 EGP']
    wait until keyword succeeds  100s  1s   wait until page contains element    ${SPLITABLE-AMOUNT}
    click element  ${SPLITABLE-AMOUNT}
     wait until keyword succeeds  100s  1s   wait until page contains element  ${SPLIT_BILL-BUTTON}
    click element  ${SPLIT_BILL-BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${SPLIT_MONEY_MOBILE_ICON}
    click element  ${SPLIT_MONEY_MOBILE_ICON}
    wait until keyword succeeds  100s  1s   wait until page contains element    ${SPLIT_MONEY_MOBILE_FIELD}
    input text  ${SPLIT_MONEY_MOBILE_FIELD}  ${SPLIT_MONEY_NUMBER}
    sleep  5s
    click element  ${SPLIT_MONEY_CONTINUE_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${SPLIT_NOW_BUTTON}
    click element  ${SPLIT_NOW_BUTTON}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${SPLIT_NOTE_FIELD}
    click element  ${SPLIT_NOTE_FIELD}
    input text  ${SPLIT_NOTE_FIELD}  ${SPLIT_NOTE}
    wait until keyword succeeds  100s  1s   wait until page contains element  ${REQUEST_NOW_BUTTON}
    click element  ${REQUEST_NOW_BUTTON}
    click element  ${GO_BACK_BUTTON}

