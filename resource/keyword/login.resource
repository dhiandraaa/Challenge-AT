*** Keywords ***

# ACTION
user login with
    [Arguments]
    ...    ${email}
    ...    ${password}
    ...    ${remember}=no

    Type text    ${EMAIL INPUT TEXT}    ${email}
    Type text    ${PASSWORD INPUT TEXT}    ${password}

    IF  '${remember}' == 'yes'
        Click on    ${REMEMBER ME CHECKBOX}
    END
    
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

user should see login email saved with
    [Arguments]
    ...    ${email}
    ...    ${state}

     ${email text}
    ...     Set variable
    ...     //*[@value='${email}']

    IF    '${state}' == 'visible'
        Wait for elements state    ${email text}    visible
    ELSE
        Wait for elements state    ${email text}    hidden
    END