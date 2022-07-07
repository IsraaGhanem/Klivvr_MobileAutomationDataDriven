*** Settings ***
Resource  ../PO/Open_APP.robot
Resource  ../PO/Login.robot
Resource  ../PO/SPLIT.robot
Resource  ../PO/transaction.robot


*** Test Cases ***
SPLIT BILL
    Open APP
    LOGIN
    Transaction Page
    Split an Amount

