*** Settings ***
Documentation     Robot Framework test script
Library           SSHLibrary

*** Variables ***

*** Test Cases ***
NewTest01
    Log    HELLO GUYS !!!

NewTest02
    Open Connection    172.26160.182
    Login    debian    debian
    sleep    2
    List Directory    /home/debian
    sleep    2
    Close Connection

NewTest03
    Open Connection    172.26160.182
    Login    debian    debian
    sleep    2
    ${Output}==    SSHLibrary.ExecuteCommand    java --version
    sleep    2
    Close Connection
