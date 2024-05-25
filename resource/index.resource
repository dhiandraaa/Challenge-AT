*** Settings ***
Documentation
...     Add this file as resources in all of your
...     test documents to ensure they run properly.
...
...     Collect all resource files here and
...     sort in alphabetical order (A–Z).

### Libraries ###
Library             Browser
Library             String

### Resource
Resource            keyword/common.resource
Resource            keyword/dashboard.resource
Resource            keyword/forgotPassword.resource
Resource            keyword/login.resource

Resource            pageObject/dashboardPO.resource
Resource            pageObject/forgotPasswordPO.resource
Resource            pageObject/loginPO.resource

Resource            properties.resource