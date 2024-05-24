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
Resource            keyword/login.resource

Resource            pageObject/dashboard.resource
Resource            pageObject/login.resource

Resource            properties.resource