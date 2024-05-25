*** Keywords ***

# ACTION
user login with
    [Arguments]
    ...    ${email}
    ...    ${password}

    Type text    ${EMAIL INPUT TEXT}    ${email}
    Type text    ${PASSWORD INPUT TEXT}    ${password}
    Click on    ${LOGIN BUTTON}

user click on forgot password link
    Click on    ${FORGOT PASSWORD LINK}

# ASSERT
user should see error message
    [Arguments]    ${expect error}

    ${actual error}
    ...     Set variable
    ...     //*[text()='${expect error}']

    Wait for elements state    ${actual error}    visible

user should see error banner
    [Arguments]    ${expect banner}

    ${actual banner}
    ...     Set variable
    ...     //*[text()='${expect banner}']
    
    Wait for elements state    ${actual banner}    visible