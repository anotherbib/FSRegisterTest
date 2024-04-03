*** Settings ***
Library         SeleniumLibrary
Resource    CommonKeyword.robot

*** Keywords ***
user register new future skill account with ${username} and ${firstname} and ${surname} and ${phone} and ${password} and ${confirmpassword}
    CommonKeyword.Wait until element is ready then click element    xpath=//button[text()="สมัครสมาชิก"]
    CommonKeyword.Wait until element is ready then input text    name=email    ${username}
    CommonKeyword.Wait until element is ready then input text    name=firstName    ${firstname}
    CommonKeyword.Wait until element is ready then input text    name=lastName    ${surname}
    CommonKeyword.Wait until element is ready then input text    name=phoneNumber    ${phone}
    CommonKeyword.Wait until element is ready then input text    name=newPassword    ${password}
    CommonKeyword.Wait until element is ready then input text    name=confirmPassword    ${confirmpassword}
    CommonKeyword.Wait until element is ready then check element    name=consent
    CommonKeyword.Wait until element is ready then click element    xpath=//button[text()="สมัครสมาชิก"]    
