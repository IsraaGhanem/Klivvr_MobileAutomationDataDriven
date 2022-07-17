*** Settings ***
Library  AppiumLibrary

*** Variables ***
${AddMoneyButton_Home}      //android.widget.ImageButton[@resource-id='com.klivvr.consumer.qa:id/fab']
${Continuo_AddMoney}        //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_continue']
${TOPUp_AddMoney}       //android.view.View[@text='Payment Details']
${Visa_TopUp}       //android.widget.RadioButton[@resource-id='card_type_001']
${CardNumber_TopUp}     //android.widget.EditText[@resource-id='card_number']
${ExpiryMonth_TopUp}        //android.widget.Spinner[@resource-id='card_expiry_month']
${ExpiryMonthList_TopUp}     //android.widget.CheckedTextView[@index='3']
${ExpiryYear_TopUp}     //android.widget.Spinner[@resource-id='card_expiry_year']
${ExpiryYearList_TopUp}     //android.widget.CheckedTextView[@index='4']
${CVN_TopUp}        //android.widget.EditText[@resource-id='card_cvn']
${Pay_TopUp}        //android.widget.Button[@text='Pay']


