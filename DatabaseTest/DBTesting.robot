*** Settings ***
Library     SeleniumLibrary
Library     DatabaseLibrary
Library     OperatingSystem

Suite Setup     Connect to Database     ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}     ${DBPort}
Suite Teardown    Disconnect From Database

*** Variables ***
${DBName}     robotDB
${DBUser}       system
${DBPass}       admin
${DBHost}       127.0.0.1
${DBPort}       1521


*** Test Cases ***
Create Person Table
    execute sql string    Create table Person(id integer,first_name  varchar(20)