

*** Test Cases ***
Forloop1
    FOR    ${i}    IN RANGE    1    10
           Exit For Loop If    ${i} == 9
           Log To Console    ${i}
    END
    Log    Exited
    
example2
