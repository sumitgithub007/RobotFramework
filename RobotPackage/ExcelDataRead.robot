*** Settings ***



Library     SeleniumLibrary
#pip install -U robotframework-datadriver[XLS] = ise install karlee very important
#Library     DataDriver      file=..\\RobotPackage\\amazondata.csv      encoding=utf_8    dialect=unix
Library     DataDriver      file=..\\RobotPackage\\datalogin.xlsx      encoding=utf_8    dialect=unix

Resource    ../RobotPackage/login_resources.robot
Suite Setup         open my browser
Suite Teardown      close Browsers
Test Template       Invalid Login scenarios


*** Test Cases ***
LoginTestWithExcel using ${username} and ${password}





*** Keywords ***
Invalid Login scenarios
    [Arguments]     ${username}     ${password}
    Input the username      ${username}
    Input the Password      ${password}
    click the login button
    Error message should be visible