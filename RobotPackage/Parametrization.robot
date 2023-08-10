*** Settings ***
Documentation       To validate the  child windows
Library  SeleniumLibrary
Library  String
Library  Collections
Test Setup     Open the browser with Mortgage payment url
Resource    resource.robot
#Test Teardown    Close Browser


*** Variables ***
${email}
*** Test Cases ***

Validate Child window Functionality
    select link of child window
    verify user switched to child window
    Grab the email id from child window
    Switch to parent window and enter the email fetched

*** Keywords ***
select link of child window
    click element    css:.blinkingText
    sleep  5

verify user switched to child window
    switch window     NEW
    element text should be    css:h1    DOCUMENTS REQUEST

Grab the email id from child window

    ${text}   get text     css:p[class='im-para red']
    @{words}=    split string    ${text}    at
    ${text_split}=  get from list  ${words}     1
     @{email_text}    split string     ${text_split}
       ${email}=  get from list  ${email_text}     0

     log to console    ${email}
    set global variable    ${email}

Switch to parent window and enter the email fetched
    switch window     MAIN
    log to console    "---------------------------------------------------"+${email}
    input text    css:input[id='username']     ${email}
    

