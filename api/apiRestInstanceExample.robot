
*** Settings ***
Library    String
Library    REST          http://echo.jsontest.com          ssl_verify=false

*** Test Cases ***
Get Employee
    GET       employee/1001
    Output    response  body
    Rest Instances	${CURDIR}/log.json
    String    response body Over Quota      1003
    
