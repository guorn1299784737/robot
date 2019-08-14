*** settings ***
Library                 SeleniumLibrary

*** Variables ***
${BROWSER}              %{BROWSER}

*** Keywords ***
Init Browser
        Open Browser    https://www.baidu.com/           ${BROWSER}
        Maximize Browser Window