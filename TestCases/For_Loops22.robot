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
     FOR    ${i}    IN RANGE    11
        ${result} =         ${i}
        #${conv_res}     convert to integer    ${result}
        log to console    ${result}
     END

