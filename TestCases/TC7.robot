*** Settings ***
Documentation   To validate the login form
Library     SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}       https://wikipedia.org/
*** Test Cases ***
validate unsuccessfull login
    open browser  ${url}    ${browser}  #Evaluate  options.add_experimental_option("detach", True)
    #set selenium implicit wait    100000
    loginToApplication
     close browser

*** Keywords ***
loginToApplication
    maximize browser window
    set selenium speed    0.5 seconds
    
    handle alert    accept
    handle alert    dismiss
    alert should be present    Press a button  #automatic will close also ye verify karega alert par text okkk
    open context menu
