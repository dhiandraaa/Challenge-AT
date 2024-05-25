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

*** Test Cases ***
I should not be able to see my email saved with remember me function unchecked
    Given user click on login entry point
    When user login with
        ...    email=${valid email}
        ...    password=${valid password}
        ...    remember=no
    And user click on close modal FTUE
    And user click on logout button
    Then user should see login email saved with
        ...    email=${valid email}
        ...    state=hidden
        
I should be able to see my email saved with remember me function checked
    Given user click on login entry point
    When user login with
        ...    email=${valid email}
        ...    password=${valid password}
        ...    remember=yes
    And user click on close modal FTUE
    And user click on logout button
    Then user should see login email saved with
        ...    email=${valid email}
        ...    state=visible