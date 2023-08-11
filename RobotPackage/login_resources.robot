*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_URL}    https://admin-demo.nopcommerce.com/login
${Browser}       chrome


*** Keywords ***
open my browser
    open browser   ${LOGIN_URL}   ${Browser}    options=add_experimental_option("detach",${True})
    maximize browser window

close Browsers
     close all browsers

Open Login page
    go to       ${LOGIN_URL }

Input the username
    [Arguments]     ${username}
    input text      id:Email        ${username}

Input the Password
    [Arguments]     ${password}
    input text      id:Password     ${password}

click the login button
   click element        xpath://button[@type='submit']

click the logout link
   # click element    xpath://a[@href='/logout']
    click link      logout
Error message should be visible
    page should contain     Login was unsuccessful

My login is successful
    page should contain     Dashboard



