    ##### Klivvr Mobile Automation Framework  #######
1- Make sure that the following libraries are set upped on ur machine

-- AppiumLibrary from the following Command
pip install robotframework-appiumlibrary

-- Process Library from the following Command
 pip install robotframework-processlibrary
 
 -- Data Driven Library from the following Command
pip install robotframework-datadriver 
pip install --upgrade robotframework-datadriver
pip install --upgrade robotframework-datadriver[XLS]

2- For Page Object Model Folder >>> POM
Each file contain xpaths need to access all elements in mobile app to make a full test run to satisfy 
our requirments 
and for Common file This contain common needed keywords
Such as Run Automatic Appium Server , Open App >>> to open mobile app 

--1-- P_SignUp             
--2-- P_LogIn              
--3-- P_KYC               
--4-- P_AddMoney           
--5-- Common              
--6-- SendMoney
--7- RequestMoney
 --8-- SplitBill
 --9-- Transactions
 
 
3- For Results Folder This contain the file represent results in details pass, Fail test cases 
excution time and more information

4- For TestCases Folder 
Each file contain 
imported libraries such as Data driven library , Process library to import keywords related to run Automatic Appium Server 
Test Templae  Which we write beside here the keyword we need ti input data from excel sheet in 

Test Cases Section that contain the Test case we run depend on file content , Which functionality will be tested 
[Sign up, Log In, KYC, ......] 

Keyword contain the script that will be run in test cases section 

5- Command Line to be written in Terminal 

robot -d Results TestCases/TestCase File name.robot

Example 
robot -d Results TestCases/T_KYC.robot

6- Also Excel sheet attached to Test Cases file contain Several Sheets depend on Test cases file that need data to input and specified in 
settings section which sheet We get data from to Test Case file 








