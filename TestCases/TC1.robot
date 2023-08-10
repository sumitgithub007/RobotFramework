*** Settings ***
Documentation   To validate the login form
Library     SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}       https://demo.nopcommerce.com/
*** Test Cases ***
validate unsuccessfull login
    open browser  ${url}    ${browser}  #Evaluate  options.add_experimental_option("detach", True)
    set selenium implicit wait    100000
    loginToApplication
     close browser

*** Keywords ***
loginToApplication
    maximize browser window
    set selenium speed    3seconds
    #title should be    abc
    click link    xpath://a[@class='ico-login']
    input text     id:Email    pavanoltraining@gmail.com
    input text    id:Password     Test@123
    ${attr}    get element attribute   id:Password    value
    log to console    "xxxxxxxxxxxxxxxxxxxxxxxxxxxx"+${attr}
    click element    xpath://button[@class='button-1 login-button']
    ${email_ele}    set variable    id:Email
    element should be visible    ${email_ele}
    ${vall}    get text    xpath://a[@class='ico-login']
    log to console    ${vall}+"dddddddddddddddddddddddddddddddddddddddddddddddddddd"
    clear element text    ${email_ele}
    sleep    7
    input text    ${email_ele}    goyal@gmail.com
    sleep    7
    #select checkbox ,#select radio button