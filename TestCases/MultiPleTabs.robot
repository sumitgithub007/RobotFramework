*** Settings ***
Documentation   To validate the login form
Library     SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}       https://google.com/
*** Test Cases ***
validate unsuccessfull login
    open browser  ${url}    ${browser}  #Evaluate  options.add_experimental_option("detach", True)
    #set selenium implicit wait    100000
    loginToApplication
     close browser

*** Keywords ***
loginToApplication
    maximize browser window
    set selenium speed    1 seconds
    #click element     //*[text()='Help']
    #sleep    3 seconds
    #switch window    title=Google Account Help
    #${title}    get title
    #log to console    ${title}
    #input text    (//input)[3]    sumit goyal is good
   # switch browser    1
    capture element screenshot      xpath://img[@alt='Google']