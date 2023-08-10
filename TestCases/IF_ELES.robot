*** Settings ***
Documentation   To validate the login form
Library     SeleniumLibrary
#Documentation   To validate the login form
Library     SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}       https://yahoo.com/
*** Test Cases ***
 Select the datas
     IF    "sumit"=="sumit"
        log to console    "okxxxxxxxxxxxxxxxxxxxxxxx"
     END
