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

    select from list by label    language    हिन्दी
    set selenium timeout    6 seconds
    wait until page contains element     xpath://*[text()='Commons']    #default 5seconds