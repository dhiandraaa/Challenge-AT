*** Settings ***
Resource            ../resource/index.resource
Force Tags
...    login                 valid credential
...    blank credential      invalid credential
 
Test Setup          user open the website
Test Teardown       Close Browser    ALL

*** Variables ***
${valid email}            ${USER VALID EMAIL}
${valid password}         ${USER VALID PASSWORD}
${invalid email}          ${USER INVALID EMAIL}
${invalid password}       ${USER INVALID PASSWORD}
${blank email}
${blank password}

*** Test Cases ***
I should be able to login with valid credential
    Given user click on login entry point
    When user login with
        ...    email=${valid email}
        ...    password=${valid password}
    Then user should see logout button

I should be able to login with blank username and password
    Given user click on login entry point
    When user login with
        ...    email=${blank email}
        ...    password=${blank password}
    Then user should see error message    Format email yang Anda masukkan salah

I should be able to login with valid username but invalid password
    Given user click on login entry point
    When user login with
        ...    email=${valid email}
        ...    password=${invalid password}
    Then user should see error banner    Incorrect username or password

I should be able to login with invalid username but valid password
    Given user click on login entry point
    When user login with
        ...    email=${invalid email}
        ...    password=${valid password}
    Then user should see error message    Format email yang Anda masukkan salah

I should be able to login with invalid username but invalid password
    Given user click on login entry point
    When user login with
        ...    email=${invalid email}
        ...    password=${invalid password}
    Then user should see error message    Format email yang Anda masukkan salah



