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
        Sleep           1
        Title Should Be    首页    登录不成功，未跳转到首页

Login Out
        Log             退出登录成功

Login In Finace
        [Arguments]     ${username}    ${password}
        [Documentation]    登录财务系统
        Login In        ${username}    ${password}
        Click Link      css:#moduleTab_Opportunities
        Sleep           1