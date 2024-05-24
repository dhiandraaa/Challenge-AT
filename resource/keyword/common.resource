*** Keywords ***
User open browser
    [Arguments]
    ...     ${browser}=chromium
    ...     ${screen}=${SCREEN}

    IF    '${screen}' == 'desktop'
        ${_viewport}    Set variable    {'width': 1440, 'height': 900}
        ${_is_mobile}    Set variable    False
        ${_has_touch}    Set variable    False
    ELSE IF    '${screen}' == 'mobile'
        ${_viewport}    Set variable    {'width': 360, 'height': 640}
        ${_is_mobile}    Set variable    True
        ${_has_touch}    Set variable    True
    END

    New browser
    ...     browser=${browser}
    ...     headless=False
    ...     downloadsPath=downloads
    New context
    ...     viewport=${_viewport}
    ...     isMobile=${_is_mobile}
    ...     hasTouch=${_has_touch}

User open the website
    [Arguments]
    ...     ${url}=${BASE URL}

    User open browser    
    New page    ${url}    domcontentloaded

Element should be visible
    [Arguments]     ${element}

    Get element states  ${element}  contains  visible

Element should not be visible
    [Arguments]     ${element}

    Get element states  ${element}  should not be  visible

Click on
    [Arguments]
    ...    ${element}

    Click    ${element}

Type text
    [Arguments]
    ...    ${element}
    ...    ${input}

    Fill text    ${element}    ${input}

User redirect to
    [Arguments]
    ...    ${url}

    ${_current_url}    Get url
    Should Contain    ${_current_url}    ${url}

Wait for loading
    Set Browser Timeout    30s
