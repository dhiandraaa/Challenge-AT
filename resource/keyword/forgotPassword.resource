*** Keywords ***

# ASSERT
user should see forgot password title visible
    Element should be visible    ${TITLE FORGOT PASSWORD}

user should see email input text enable
    Element should be enabled  ${EMAIL INPUT TEXT}

user should see reset password button enable
    Element should be enabled  ${RESET PASSWORD BUTTON}