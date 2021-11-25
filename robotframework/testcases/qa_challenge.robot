***Settings***
Resource    ../resources/imports.robot
Test Setup     Goto Website    ${weburl}
Test Teardown  Close All Browsers

***Test Cases***
Check screen in page "Add Item"
    Verify Header
    Verify Tab ADD ITEM
    Verify Tab TO-DO TASKS
    Verify Tab COMPLETED
    Verify Field Input ITEM
    Verify Button +

Check when input some text in the textbox
    ${sometext}     Generate Random String      5
    Input Text To Field ADD ITEM     ${sometext}

ADD ITEM Success
    ${sometext}     Generate Random String      5
    Input Text To Field ADD ITEM    ${sometext}
    Click Button +
    Click Tab TO-DO TASKS
    Verify Tasks TO DO by name        ${sometext}

ADD multi ITEM Success
    ${sometext}     Generate Random String      5
    Input Text To Field ADD ITEM    ${sometext}
    Click Button +
    ${sometext2}     Generate Random String      5
    Input Text To Field ADD ITEM    ${sometext2}
    Click Button +
    Click Tab TO-DO TASKS
    Verify Tasks TO DO by name        ${sometext}
    Verify Tasks TO DO by name        ${sometext2}

Check Tasks in "TO-DO Tasks" after Add should be correct 
    ${sometext}     Generate Random String      5
    Input Text To Field ADD ITEM    ${sometext}
    Click Button +
    Click Tab TO-DO TASKS
    Verify Tasks TO DO by name        ${sometext}
    Verify Button Delete in Task by name    ${sometext}

Check when click button "Delete" in "TO-DO Tasks" page
    ${sometext}     Generate Random String      5
    Input Text To Field ADD ITEM    ${sometext}
    Click Button +
    Click Tab TO-DO TASKS
    Verify Tasks TO DO by name        ${sometext}
    Click Button Delete Task To do by name      ${sometext}
    Verify Tasks TO DO not visible by name  ${sometext}
    Click Tab COMPLETED
    Verify Tasks Complete not visible by name   ${sometext}

Checkbox Task Success
    ${sometext}     Generate Random String      5
    Input Text To Field ADD ITEM    ${sometext}
    Click Button +
    Click Tab TO-DO TASKS
    Verify Tasks TO DO by name        ${sometext}
    Verify Button Delete in Task by name    ${sometext}
    Checkbox Tasks      ${sometext}
    Verify Tasks TO DO not visible by name  ${sometext}
    Click Tab COMPLETED
    Verify Tasks Complete by name   ${sometext}

Checkbox multi Task Success
    ${sometext}     Generate Random String      5
    Input Text To Field ADD ITEM    ${sometext}
    Click Button +
    ${sometext2}     Generate Random String      5
    Input Text To Field ADD ITEM    ${sometext2}
    Click Button +
    Click Tab TO-DO TASKS
    Checkbox Tasks        ${sometext}
    Checkbox Tasks        ${sometext2}
    Verify Tasks TO DO not visible by name  ${sometext}
    Verify Tasks TO DO not visible by name  ${sometext2}
    Click Tab COMPLETED
    Verify Tasks Complete by name   ${sometext}
    Verify Tasks Complete by name   ${sometext2}

Check screen in page "Completed" after Check Task Success
    ${sometext}     Generate Random String      5
    Input Text To Field ADD ITEM    ${sometext}
    Click Button +
    Click Tab TO-DO TASKS
    Verify Tasks TO DO by name        ${sometext}
    Verify Button Delete in Task by name    ${sometext}
    Checkbox Tasks      ${sometext}
    Verify Tasks TO DO not visible by name  ${sometext}
    Click Tab COMPLETED
    Verify Tasks Complete by name   ${sometext}
    Verify Button Delete on Tasks Complete  ${sometext}

Check when click button "Delete" in "Completed" page
    ${sometext}     Generate Random String      5
    Input Text To Field ADD ITEM    ${sometext}
    Click Button +
    Click Tab TO-DO TASKS
    Verify Tasks TO DO by name        ${sometext}
    Verify Button Delete in Task by name    ${sometext}
    Checkbox Tasks      ${sometext}
    Verify Tasks TO DO not visible by name  ${sometext}
    Click Tab COMPLETED
    Verify Tasks Complete by name   ${sometext}
    Click Button Delete Task Complete by name  ${sometext}
    Verify Tasks Complete not visible by name   ${sometext}