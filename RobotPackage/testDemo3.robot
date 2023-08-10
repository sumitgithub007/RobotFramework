*** Settings ***
Documentation       To validate the login form
Library  SeleniumLibrary
Test Teardown    Close Browser
Documentation       To validate the login form
Library  SeleniumLibrary
Test Teardown    Close Browser


*** Variables ***
${browser}    chrome
${url}       https://rahulshettyacademy.com/loginpagePractise/
${Error_Msg_Locator}    css:.alert.alert-danger.col-md-12

*** Test Cases ***
Validate unsuccessful Login
  Open the browser with Mortgage payment url
  Fill the login form
  Wait until it checks and display error messaage
  verify error message is correct

*** Keywords ***
Open the browser with Mortgage payment url
  open browser  ${url}    ${browser}    options=add_experimental_option("detach",${True})
Fill the login form
  input text   xpath://input[@id='username']    sumitgoyal124
  input password    xpath://input[@id='password']    sumit123
  click button    signInBtn

Wait until it checks and display error messaage
    wait until element is visible    ${Error_Msg_Locator}

verify error message is correct
   ${result}=     Get text     ${Error_Msg_Locator}
   log to console    ${result}
   should be equal as strings    ${result}    Incorrect username/password.    #robot buil in
   element text should be     ${Error_Msg_Locator}    Incorrect username/password.    #selenium se ara hai ye
   #sleep    1000000