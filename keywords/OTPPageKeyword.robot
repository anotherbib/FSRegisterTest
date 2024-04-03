*** Settings ***
Library         SeleniumLibrary
Resource    CommonKeyword.robot

*** Keywords ***
display OTP page then display message as "${expected_message}"
    CommonKeyword.Wait until page contains element then verify text    ${expected_message}