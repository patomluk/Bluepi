***Settings***
Resource    ../resources/imports.robot

***Keywords***
Verify Tasks TO DO by name
    [Arguments]     ${text}
    ${element}      Replace String      ${task_name}      {name}        ${text}      
    Verify Element  ${element}

Verify Button Delete in Task by name
    [Arguments]     ${text}
    ${element}      Replace String      ${button_delete_to_do_by_name}      {name}        ${text}      
    Verify Element  ${element}

Checkbox Tasks
    [Arguments]     ${text}
    ${element}      Replace String      ${task_name}      {name}        ${text}      
    Verify and Click Element  ${element}

Click Button Delete Task to do by name
    [Arguments]     ${text}
    ${element}      Replace String      ${button_delete_to_do_by_name}      {name}        ${text}      
    Verify and Click Element  ${element}

Click Tab COMPLETED
    Verify and Click Element    ${tab_complete}

Verify Tasks TO DO not visible by name
    [Arguments]     ${text}
    ${element}      Replace String      ${task_name}      {name}        ${text}      
    Verify Element Is Not Visible   ${element}