*** settings ***
Library                 SeleniumLibrary
Resource                ../resource/Login.robot
Test Setup             Init Browser

*** Variables ***
${BROWSER}              %{BROWSER}

*** Test Cases ***
Visit Total Fee Index
        Login In Finace         杨波    123456
        Sleep            1
        Go To            ${TOTAL_TOTAL_INDEX_URL}
        Title Should Be  费用统计  费用统计页面报错
        Select From List By Value  css:select[name='data_type']  pre
        Click Button     css:button[type='submit']
        Capture Page Screenshot
*** Keywords ***