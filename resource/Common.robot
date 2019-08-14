*** settings ***
Library                 SeleniumLibrary
Test Setup             Init Browser

*** Variables ***
${BROWSER}              %{BROWSER}

*** Keywords ***
Init Browser
        Open Browser    https://www.baidu.com/           ${BROWSER}
        Maximize Browser Window