*** Settings ***


Documentation     A resource file with resuable keywords and variables.

...         The system specific keywords created here form our own
...         domain specific language
Library    SeleniumLibrary

*** Variables ***
${url}  https://rahulshettyacademy.com/loginpagePractise/  #https://rahulshettyacademy.com/angularpractice/shop     #https://rahulshettyacademy.com/loginpagePractise/
${browser}    chrome
${username}    goyalsumit319@gmail.com
${password}    sumit1234
${correct_username}    rahulshettyacademy
${correctpassword}     learning

*** Keywords ***
Open the browser with Mortgage payment url
  open browser  ${url}    ${browser}    options=add_experimental_option("detach",${True})
    set selenium implicit wait    5000
Close Browser Session
    close browser