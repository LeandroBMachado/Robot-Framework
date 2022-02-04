*** Test Cases ***
One Return Value
    Pass Execution    Pulando Teste
    ${ret} =    Return One Value    1
    #Some Keyword    ${ret}
    log to console    ${ret}

Multiple Values
    ${a}    ${b}    ${c} =    Return Three Values
    Log to Console    ValorA:${a}
    Log to Console    ValorB:${b}
    Log to Console    ValorC:${c}
    @{list} =    Return Three Values
    Log to console    List:@{list}
    ${scalar}    @{rest} =    Return Three Values
    Log to console    Scalar:${scalar}
    Log to console    Rest:@{rest}

*** Keywords ***
Return One Value
    [Arguments]    ${arg}
    ${arg}=    evaluate    ${arg}+1
    Log to console    ${arg}
    ${arg}=    Set Variable    3
    Log to console    ${arg}
    [Return]    ${arg}

Return Three Values
    [Return]    foo    bar    zap
