*** Settings ***
Resource            ../resource/index.resource
Force Tags
...     login            valid cresidential
 
Test Setup          User open the website
Test Teardown       Close Browser    ALL

*** Variables ***
${valid email}            ${USER VALID EMAIL}
${valid password}         ${USER VALID PASSWORD}
${invalid email}          ${USER INVALID EMAIL}
${invalid password}       ${USER INVALID PASSWORD}

*** Test Cases ***
I should be able to login with valid cresidential
    Given User click on login entry point
    When User login with
    ...    email=${valid email}
    ...    password=${valid password}