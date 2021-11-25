***Variables***
${header_to_do_list}    //h1[text()='To Do List']
${tab_add_item}    //a[contains(@class,"mdl-tabs__tab") and text()='Add Item']
${tab_todo}    //a[contains(@class,"mdl-tabs__tab") and text()='To-Do Tasks']
${tab_complete}    //a[contains(@class,"mdl-tabs__tab") and text()='Completed']
${input_txt_item_name}    //input[@class='mdl-textfield__input']
${button_add_item}    //button[@class='mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored']
${task_name}          //span[@class="mdl-checkbox__label" and text()='{name}']
${button_delete_to_do_by_name}    //span[@class="mdl-checkbox__label" and text()='{name}']//..//following-sibling::button
${task_complete_name}    //ul[@id='completed-tasks']//span[contains(text(),'{name}')]
${button_delete_task_complete_name}    //ul[@id='completed-tasks']//span[contains(text(),'{name}')]//..//following-sibling::button