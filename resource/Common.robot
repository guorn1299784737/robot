*** settings ***
Library                 SeleniumLibrary
Suite Setup             Open Browser    https://www.baidu.com/           ${BROWSER}
Suite Setup             Maximize Browser Window

*** Variables ***
${BROWSER}              %{BROWSER}

*** Keywords ***