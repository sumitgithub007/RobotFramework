*** Settings ***
Library     SeleniumLibrary
Resource    ../RobotPackage/login_resources.robot
Suite Setup         open my browser
Suite Teardown      close Browsers
Test Template       Invalid Login scenarios


*** Test Cases ***
Right user empty password       admin@yourstore.com     ${EMPTY}
Right user wrong password       admin@yourstore.com       xyzzjj
Wrong user Empty password       adm@yourstore.com       ${EMPTY}
Wrong user wrong password       nwer@yourstore.com        xyzzjjeee





*** Keywords ***
Invalid Login scenarios
    [Arguments]     ${username}     ${password}
    Input the username      ${username}
    Input the Password      ${password}
    click the login button
    Error message should be visible