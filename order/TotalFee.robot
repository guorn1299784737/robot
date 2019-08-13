*** settings ***
Library                 SeleniumLibrary
Resource                ../resource/Login.robot

*** Variables ***
${BROWSER}              %{BROWSER}

*** Test Cases ***
Visit Login
        Login In         郭然宁    123456
        Go To            ${ORDER_ORDER_INDEX_URL}
        ${token}    =     Get Cookie    token
        ${keeplogin}    =     Get Cookie    keeplogin
        ${PHPSESSID}     =     Get Cookie    PHPSESSID
        Log             ${token}
        Log             ${keeplogin}
        Log             ${PHPSESSID}
        Title Should Be  费用统计  费用统计页面报错
        Select From List By Value  css:["data_type='data_type'"]  pre
        Click Button     css:["type='submit'"]
        Capture Page Screenshot
*** Keywords ***