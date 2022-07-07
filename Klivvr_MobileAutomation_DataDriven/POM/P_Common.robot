*** Settings ***
Library  AppiumLibrary


*** Variables ***
${GET_STARTED_BUTTON}  //android.widget.Button[@resource-id='com.klivvr.consumer.qa:id/btn_getStarted']


*** Keywords ***
Run Automatic Appium Server
    start process  appium -a localhost -p 4723  shell=True  alias=appiumserver  stdout=${CURDIR}/appium_stdout.txt  stderr=${CURDIR}/appium_stderr.txt
    process should be running    appiumserver
    sleep    10s

Kill Appium Server
    Terminate Process appiumserver    kill=True

Open APP
    open application  http://localhost:4723/wd/hub  platformName=Android  deviceName=emulator-5556  appPackage=com.klivvr.consumer.qa  appActivity=com.klivvr.consumer.app.ui.splash.SplashActivity  automationName=Uiautomator2
    wait until keyword succeeds  100s  1s  wait until page contains element  ${GET_STARTED_BUTTON}

Close App
    close application

