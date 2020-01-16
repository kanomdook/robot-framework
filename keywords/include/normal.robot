*** Keywords ***
Open Firefox Browser
    Open Browser                  ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed            0
    Set Selenium Timeout          20
    Set Selenium Implicit Wait    20