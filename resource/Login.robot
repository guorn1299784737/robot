*** settings ***
Library                 SeleniumLibrary
Variables               ../config/url.py

*** Variables ***
${BROWSER}              %{BROWSER}

*** Keywords ***
Login In
        [Arguments]     ${username}    ${password}
        [Documentation]    用户登录
        Open Browser    ${LOGIN IN URL}           ${BROWSER}
        Input Text      css:input#form-username    ${username}
        Input Password  css:input#form-password    ${password}
        Click Button    css:#submit
        Element Should Contain    css:.layui-layer    登录成功
        ${token} =     Get Cookie    token
        ${keeplogin} =     Get Cookie    keeplogin
        ${PHPSESSID} =     Get Cookie    PHPSESSID
        Log             ${token}
        Log             ${keeplogin}
        Log             ${PHPSESSID}
        Log             登录成功

Login Out
        Log             退出登录成功