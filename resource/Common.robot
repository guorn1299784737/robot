*** settings ***
Library                 SeleniumLibrary
Suite Setup             Open Browser    https://www.baidu.com/           firefox
Suite Setup             Maximize Browser Window

*** Variables ***
${BROWSER}              %{BROWSER}

*** Keywords ***