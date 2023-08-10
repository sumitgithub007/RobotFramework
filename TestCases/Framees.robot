*** Settings ***
Documentation   To validate the login form
Library     SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}       https://jqueryui.com/droppable/
*** Test Cases ***
validate unsuccessfull login
    open browser  ${url}    ${browser}  #Evaluate  options.add_experimental_option("detach", True)
    #set selenium implicit wait    100000
    loginToApplication
     close browser

*** Keywords ***
loginToApplication
    maximize browser window
    set selenium speed    2 seconds
    select frame    //iframe[@class='demo-frame']
    drag and drop    //div[@id='draggable']    //div[@id='droppable']
    unselect frame    //iframe[@class='demo-frame']