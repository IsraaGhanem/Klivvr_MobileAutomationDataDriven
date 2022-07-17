*** Settings ***
Library    DataDriver    InputData.xlsx    sheet_name=LogIn
Library    Process
Resource  ../POM/P_Common.robot
Resource  ../POM/P_LogIn.robot
Resource  ../POM/P_CARDs.robot

### Here u right the Keyword u want to get variables from .xlsx sheet to
Test Template       Freeze Card

Suite Setup     P_Common.Suite SetUp KW
Suite Teardown      P_Common.Suite Teardown KW

*** Test Cases ***
Freeze Card TC
        Freeze Card

*** Keywords ***

Freeze Card
    [Arguments]     ${Mobile_Number}        ${OTP}      ${Password}
    ## LOg IN
    wait until page contains element        ${SIGN_IN_BUTTON}
    click element  ${SIGN_IN_BUTTON}
    wait until page contains element    ${MOBILE_NUMBER_FIELD}
    input text  ${MOBILE_NUMBER_FIELD}   ${MOBILE_NUMBER}
    click element  ${CONTINUE_BUTTON_NUMBER}
    wait until page contains element  ${VERIFICATION_CODE_TEXT}
    input text  ${OTP_FIELD}   ${OTP}
    wait until page contains element  ${PASSWORD_REQUIRED}
    input text  ${PASSWORD_FIELD}  ${PASSWORD}
    click element  ${LOGIN_BUTTON}

    Enter Cards Page
    wait until page contains element    ${FreezeText_Cards}
    click element   ${FreezeButton_Cards}
    wait until page contains element  ${PASSWORD_REQUIRED}
    input text  ${PASSWORD_FIELD}  ${PASSWORD}
    click element   ${Confirm_Cards}
    wait until page contains element   ${UnFreezeCard_Cards}
    Sleep       4s
    Close App

UnFreeze Card
    [Arguments]     ${Mobile_Number}        ${OTP}      ${Password}
    Run Automatic Appium Server
    Open APP
    Enter Cards Page
    wait until page contains element    ${UnFreezeText_Cards}
    click element   ${UnFreezeCard_Cards}
    wait until page contains element  ${PASSWORD_REQUIRED}
    input text  ${PASSWORD_FIELD}  ${PASSWORD}
    click element   ${Confirm_Cards}
    wait until page contains element   ${FreezeText_Cards}
    Sleep       4s
    Close App

Enter Cards Page
    wait until keyword succeeds  100s  1s   wait until page contains element    ${Cards_Button}
    click element   ${Cards_Button}
    wait until keyword succeeds  100s  1s   wait until page contains element    ${Card_Tap}
    click element   ${Card_Tap}



