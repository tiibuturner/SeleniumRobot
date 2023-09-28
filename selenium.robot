*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Facebook register
    Open Browser    http://www.facebook.com/r.php    
    ...    Chrome    options=add_experimental_option("detach", True)
    Sleep    2
    Maximize Browser Window
    Sleep    2
    Click Element    xpath://button[@title='Decline optional cookies']

    Page Should Contain    Create a new account

    Sleep    2
    ##Aktivoi
    Click Element    name:firstname
    Input Text    name:firstname    Luke

    Click Element    name:lastname
    Input Text    name:lastname    Skywalker

    Click Element    name:reg_email__
    Input Text    name:reg_email__    lukeskywalker@rebels.com

    Click Element    name:reg_passwd__
    Input Password    name:reg_passwd__    darthvadersucks

    Click Element    name:reg_email_confirmation__
    Input Text    name:reg_email_confirmation__    lukeskywalker@rebels.com

    Sleep    2

    Click Element    id:day
    Select From List By Label    id:day    6

    Click Element    id:month
    Select From List By Label    id:month    May

    Click Element    id:year
    Select From List By Label    id:year    1992

   Select Radio Button    sex    2

   Set Screenshot Directory    C:\\Users\\Omistaja\\OneDrive\\Työpöytä\\HAMK\\2023\\Syksy2023\\Asiakasprojektien toteuttaminen\\Ohjelmistotestaus\\Wobotti\\

   Capture Page Screenshot    screen.png

   Close Browser

