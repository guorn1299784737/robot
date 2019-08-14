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
        Sleep           3
        Title Should Be    首页    登录不成功，未跳转到首页
        Add Cookie      token    d323aba8-b00e-4eba-bd54-482f81c75ef3
        Add Cookie      keeplogin    4116%7C3600%7C1565764981%7C692e1a4f4c0f301adc8e6167bab511ca
        Log             登录成功

Login Out
        Log             退出登录成功