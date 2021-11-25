***Settings***
Resource    ../resources/imports.robot

***Keywords***
Goto Website
    [Arguments]     ${url}
    Open Browser    ${url}    chrome

Verify Element
    [Arguments]     ${element}
    Wait Until Element Is Visible       ${element}

Verify Element Is Not Visible
    [Arguments]     ${element}
    Wait Until Element Is Not Visible   ${element}
    Element Should Not Be Visible       ${element}

Verify and Click Element
    [Arguments]     ${element}
    Wait Until Element Is Visible       ${element}
    Click Element   ${element}
