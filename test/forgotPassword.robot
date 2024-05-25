*** Settings ***
Resource            ../resource/index.resource
Force Tags
...    login                 fogot password
 
Test Setup          user open the website
Test Teardown       Close Browser    ALL

*** Test Cases ***
I should redirect to forgot password page
    Given user click on login entry point
    When user click on forgot password link
    Then user redirect to    ${FORGOT PASSWORD URL}
        And user should see forgot password title visible
        And user should see email input text enable
        And user should see reset password button enable