*** Keywords ***

# ACTION
user click on login entry point
    Click on    ${LOGIN ENTRY POINT}

user click on logout button
    Click on    ${LOGOUT BUTTON}

user click on close modal FTUE
    Click on    ${CLOSE MODAL}

# ASSERT
user should see logout button
    Element should be visible    ${LOGOUT BUTTON}