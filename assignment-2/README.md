# assignment-2
Download test.json file from google drive and send one slack message with all the labels of the organizations:

    a) that have "plan_id"== trial AND "days-remaining-trial" bigger than "0"  AND  status=="in_trial"
    b) other than these with plan_id==trial OR plan_id=employee.

# solution
* Write ansible playbook with message and slack roles.
* 1. message role downloads file, parses json content and then sets appropriate message to be used by slack role.
* 2. slack role reads message from variables and sends message.