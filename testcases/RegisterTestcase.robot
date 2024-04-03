*** Settings ***
Library    SeleniumLibrary
Resource        ../keywords/RegisterKeyword.robot
Resource        ../keywords/OTPPageKeyword.robot
Variables        ../testdata/testdata.yaml
Variables        ../resources/config/config.yaml
Suite Setup    Open Browser    ${baseUrl}    chrome
Suite Teardown     Close Browser

*** Test Cases ***
As a user, I want to register success with valid credential
    When user register new future skill account with ${username} and ${firstname} and ${surname} and ${phone} and ${password} and ${confirmpassword}
    THEN display OTP page then display message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"