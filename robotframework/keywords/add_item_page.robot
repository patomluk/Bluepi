***Settings***
Resource    ../resources/imports.robot

***Keywords***
Verify Header
    Verify Element  ${header_to_do_list}

Verify Tab ADD ITEM
    Verify Element  ${tab_add_item}

Verify Tab TO-DO TASKS
    Verify Element  ${tab_todo}

Verify Tab COMPLETED
    Verify Element  ${tab_complete}

Verify Field Input ITEM
    Verify Element  ${input_txt_item_name}

Verify Button +
    Verify Element  ${button_add_item}

Input Text To Field ADD ITEM
    [Arguments]     ${text}
    Clear Element Text      ${input_txt_item_name}  
    Input Text      ${input_txt_item_name}      ${text}

Click Button +
    Verify and Click Element    ${button_add_item}

Click Tab TO-DO TASKS
    Verify and Click Element    ${tab_todo}
