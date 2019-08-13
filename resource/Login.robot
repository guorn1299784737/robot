*** settings ***
Library                 SeleniumLibrary
Variables               ../config/url.py

*** Variables ***
${BROWSER}              %{BROWSER}

*** Keywords ***
Login In
        [Arguments]     ${username}    ${password}
        [Documentation]    用户登录
        Open Browser    ${LOGIN_IN_URL}           ${BROWSER}
        Input Text      css:input#form-username    ${username}
        Input Password  css:input#form-password    ${password}
        Click Button    css:#submit
        Element Should Contain    css:.layui-layer    登录成功
        Log             登录成功

Login Out
        Log             退出登录成功