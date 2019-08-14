*** settings ***
Library                 SeleniumLibrary
Resource                ../resource/Login.robot

*** Variables ***
${BROWSER}              %{BROWSER}

*** Test Cases ***
Visit Login
        Login In         郭然宁    123456
        Go To            ${ORDER_ORDER_INDEX_URL}
        Log              Get Locations
        Title Should Be  费用统计  费用统计页面报错
        Select From List By Value  css:["data_type='data_type'"]  pre
        Click Button     css:["type='submit'"]
        Capture Page Screenshot
*** Keywords ***