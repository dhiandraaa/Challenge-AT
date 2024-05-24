*** Keywords ***

# ACTION
user click on login entry point
    Click on    ${LOGIN ENTRY POINT}

# ASSERT
user should see logout button
    Element should be visible    ${LOGOUT BUTTON}