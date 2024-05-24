*** Keywords ***

# ACTION
User login with
    [Arguments]
    ...    ${email}
    ...    ${password}

    Type text    ${EMAIL INPUT TEXT}    ${email}
    Type text    ${PASSWORD INPUT TEXT}    ${password}
    Click on    ${LOGIN BUTTON}