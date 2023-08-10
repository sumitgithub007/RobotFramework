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
     open browser  ${url}    ${browser}  #Evaluate  options.add_experimental_option("detach", True)
     set selenium implicit wait    6 seconds
     input text     (//input[@type='text'])[1]    radio
     ${element}    set variable    xpath:(//span[@style='display: block;'])
     ${allelementscount} =    get element count   ${element}
   #   log to console    ${allelementscount} + "xxxxxxxx"
      FOR   ${i}     IN RANGE    1  ${allelementscount}
         ${text_val} =    get text    xpath:(//span[@style='display: block;'])[${i}]    #
         IF  $text_val=="radio reference"
                # sleep    99
                 click element    xpath:(//span[@style='display: block;'])[${i}]
                 sleep    99
         END
      END

       #log to console     ${text_val}


