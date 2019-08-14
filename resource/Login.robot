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

Login Out
        Log             退出登录成功

Login In Finace By Erp
        [Arguments]     ${username}    ${password}
        [Documentation]    登录财务系统
        Login In        ${username}    ${password}
        Click Link      id:moduleTab_Opportunities
        Sleep           2

Login In Finace
        [Arguments]     ${username}    ${password}
        [Documentation]    登录财务系统
        Open Browser    ${FANICE LOGIN IN URL}           ${BROWSER}
        Input Text      css:input#pd-form-username    ${username}
        Input Password  css:input#pd-form-password    ${password}
        Click Button    css:#submit
        Sleep           2
        Click Element   css:.layui-layer-btn0
        Click Button    css:#submit
        Sleep           3
        Title Should Be    报表    登录不成功，未跳转到首页