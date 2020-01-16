*** Keywords ***
Open Firefox Browser
    Open Browser                  ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed            0
    Set Selenium Timeout          20
    Set Selenium Implicit Wait    20

Click Link Promotion
    Wait Until Page Contains Element    //*[@id="menulist"]/ul/li[4]/a                                                                                                        
    Click Element                       //a[contains(text(),'Promotions')]
    Wait Until Page Contains Element    //*[@id="menulist"]/ul/li[4]/ul/li[1]/a/span                                                                                          
    Execute JavaScript                  document.evaluate( "//*[contains(text(),'Product Discount')]" ,document, null, XPathResult.ANY_TYPE, null ).iterateNext().click();
    Wait Until Element Is Visible       //*[@id="body"]/div/div/div[1]/div/div[1]/div/div[8]/a/div/div
    Execute JavaScript                  document.evaluate( "//*['Gaming Gear']" ,document, null, XPathResult.ANY_TYPE, null ).iterateNext().click();