*** Settings ***
Library  AppiumLibrary

*** Variables ***
${Transactions}  //android.widget.FrameLayout[@resource-id='com.klivvr.consumer.qa:id/transactionsHistoryFragment']

*** Keywords ***
Transaction Page
    wait until keyword succeeds  100s  1s   wait until page contains element  ${Transactions}
    click element  ${Transactions}