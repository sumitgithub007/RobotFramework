*** Settings ***
Documentation       To validate the login form
Library  SeleniumLibrary
Library    Collections
Test Setup     Open the browser with Mortgage payment url
#Test Teardown    Close Browser Session
Resource    resource.robot
*** Variables ***
${browser}    chrome
${url}       https://rahulshettyacademy.com/loginpagePractise/
${Error_Msg_Locator}    css:.alert.alert-danger.col-md-12
${checkout_button}    css:.nav-link.btn.btn-primary

*** Test Cases ***
#Validate unsuccessful Login
#  Fill the login form    ${username}    ${password}
#  Wait until the element is visible on the page    css:.alert.alert-danger.col-md-12
#  verify error message is correct

#Validate cards display on shopping page
#    Fill the login form    ${correct_username}    ${correctpassword}
#    Wait until the element is visible on the page    ${checkout_button}
#    verify cart title in the shop page
#    Select the cart item       Nokia Edge

Select the form and navigate to child window
    Fill the Login details and select the user option







*** Keywords ***
Fill the login form
  [Arguments]      ${username}    ${password}
  input text   xpath://input[@id='username']    ${username}
  input password    xpath://input[@id='password']    ${password}
  click button    signInBtn

Wait until the element is visible on the page
    [Arguments]    ${element}
    wait until element is visible    ${element}

verify error message is correct
   ${result}=     Get text     ${Error_Msg_Locator}
   log to console    ${result}
   should be equal as strings    ${result}    Incorrect username/password.    #robot buil in
   element text should be     ${Error_Msg_Locator}    Incorrect username/password.    #selenium se ara hai ye

verify cart title in the shop page
    @{expectedlist}=    create list     iphone X    Samsung Note 8    Nokia Edge    Blackberry
    @{Actual_List}=    create List
    @{elements} =  Get WebElements    css:.card-title
    FOR  ${itemm}   IN    @{elements}
     Log     ${itemm.text}
     append to list    ${Actual_List}  ${itemm.text}
    END
     lists should be equal      ${Actual_List}     ${expectedlist}

Select the cart item
    [Arguments]  ${itemName}
    ${index}    set variable     1
     @{elements} =  Get WebElements    css:.card-title
      FOR  ${itemm}   IN    @{elements}
            Exit For Loop if  '${itemm.text}' == '${itemName}'
               ${index} =   evaluate    ${index} +1

      END
    click button     xpath:(//*[text()='Add '])[${index}]

Fill the Login details and select the user option
  input text   xpath://input[@id='username']    rahulshettyacademy
  input password    xpath://input[@id='password']    password
  click element     css:input[value='user']
  double click element       css:.modal.fade.show
  select from list by value    css:select.form-control    teach
  select checkbox     terms
  checkbox should not be selected    terms
