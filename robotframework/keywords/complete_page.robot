***Settings***
Resource    ../resources/imports.robot

***Keywords***
Verify Tasks Complete by name
    [Arguments]     ${text}
    ${element}      Replace String      ${task_complete_name}      {name}        ${text}      
    Verify Element  ${element}

Verify Tasks Complete not visible by name
    [Arguments]     ${text}
    ${element}      Replace String      ${task_complete_name}      {name}        ${text}      
    Verify Element Is Not Visible   ${element}

Verify Button Delete on Tasks Complete
    [Arguments]     ${text}
    ${element}      Replace String      ${button_delete_task_complete_name}      {name}        ${text}      
    Verify Element  ${element}

Click Button Delete Task Complete by name
    [Arguments]     ${text}
    ${element}      Replace String      ${button_delete_task_complete_name}      {name}        ${text}      
    Verify and Click Element  ${element}
