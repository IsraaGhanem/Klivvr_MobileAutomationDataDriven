*** Settings ***
Library  AppiumLibrary

*** Variables ***
${REQUEST_MONEY_BUTTON}  //android.view.ViewGroup[@resource-id='com.klivvr.consumer.qa:id/cc_request']
${REQUEST_MONEY_MOBILE_ICON}  //android.widget.RadioButton[@resource-id='com.klivvr.consumer.qa:id/rb_newTransfer']
${REQUEST_MONEY_MOBILE_FIELD}  //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_mobileNumber']
${REQUEST_MONEY_CONTINUE_BUTTON}  //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btnChooseContacts' and @text="Continue"]
${ENTER_AMOUNT_BUTTON}  //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_amount']
${REQUEST_MONEY_CONTINUE_BUTTON_2}  //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btnCollectMoney' and @text="Continue"]
${REQUESTED_AMOUNT_BUTTON}  //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_request']
${REQUEST_EXPIRY_DATE_FIELD}  //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/edt_expiry_date']
${ADD_NOTE_FIELD}  //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/edt_note']
${REQUEST_NOW_BUTTON}  //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_request_now']
${GO_BACK_BUTTON}  //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_positive_action']


${REQUEST_MONEY_RECENT_ICON}  //android.widget.RadioButton[@resource-id='com.klivvr.consumer.qa:id/rb_recent']
${REQUEST_MONEY_RECENT_CHOICE}  //android.view.ViewGroup[@index='0']


${REQUEST_MONEY_USERNAME_ICON}  //android.widget.RadioButton[@resource-id='com.klivvr.consumer.qa:id/rb_user_name']
${REQUEST_MONEY_USERNAME_FIELD}  //android.widget.EditText[@resource-id='com.klivvr.consumer.qa:id/textInputET_user_name']
${REQUEST_MONEY_USERNAME}  Nourhan.Jamal266


${REQUEST_MONEY_CONTACTS_ICON}  //android.widget.RadioButton[@resource-id='com.klivvr.consumer.qa:id/rb_contactList']
${REQUEST_MONEY_CONTACTS_CHECKBOX}  //android.widget.CheckBox[@resource-id='com.klivvr.consumer.qa:id/checkBox']

*** Keywords ***
Request Money by Number
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
#   click element  ${GO_BACK_BUTTON}

Request Money Recent
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




