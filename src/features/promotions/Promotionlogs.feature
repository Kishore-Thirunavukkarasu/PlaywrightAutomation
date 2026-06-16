Feature: Promotion logs

@adminui @Promotionlogs @promotionlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify promotion logs are created once the manual trigger happens

@adminui @Promotionlogs @promotionlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify promotion logs are created once the scheduled trigger happens

@adminui @Promotionlogs @promotionlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify promotion logs are created once the trigger event is completed

@adminui @Promotionlogs @promotionlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify promotion logs batch is created automatically when banking is scheduled or automatic

@adminui @Promotionlogs @promotionlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify promotion logs batch is created manually when banking is manual

@adminui @Promotionlogs @promotionlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify promotion logs are transactional if the banking type is selected as transaction

@adminui @Promotionlogs @promotionlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify promotion logs are batch if the banking type is selected as batch

@adminui @Promotionlogs @promotionlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify promotion batch logs are having the valid measure name, status and date

@adminui @Promotionlogs @promotionlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify promotion logs contains the total points computed and total points banked

@adminui @Promotionlogs @promotionlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify promotion logs contains the points computed which is the cumulative sum of all batch transactions

@adminui @Promotionlogs @promotionlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify promotion logs contains the points computed which is the cumulative sum of all batch transaction and single transactions

@adminui @Promotionlogs @promotionlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify promotion logs contains the total points banked after points banked to the US or UK bank

@adminui @Promotionlogs @promotionlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the promotion batch logs contains multiple transaction

@adminui @Promotionlogs @promotionlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the promotion transaction logs contains the username to whom points are deposited and the points which is deposited

@adminui @Promotionlogs @promotionlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the promotion batch log status as not started, inprogress and completed

@adminui @Promotionlogs @promotionlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the promotion batch can be deleted before it is click on bank points

@adminui @Promotionlogs @promotionlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the promotion batch cannot be deleted once the batch is started to bank (i.e, both inprogress and completed)

@adminui @Promotionlogs @promotionlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the promotion batch can be retriggered

@adminui @Promotionlogs @promotionlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the promotion batch can be exported

@adminui @Promotionlogs @promotionlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the promotion batch all transactions can be viewed


# communication logs
@adminui @promotionlogs @communicationlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify all the promotion related communication happened are logged inside the communication logs 

@adminui @promotionlogs @communicationlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify all the promotion related communication logs can be downloaded into the csv file

@adminui @promotionlogs @communicationlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify all the promotion related communication logs will have the measure id, notification template name, username and the channel

@adminui @promotionlogs @communicationlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify all the promotion related communication logs will have the triggered timestamp
# What can be the status of the communication log

@adminui @promotionlogs @communicationlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify user can able to search the communication logs 

@adminui @promotionlogs @communicationlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can sort the communication logs via the headers

@adminui @promotionlogs @communicationlogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can view the communication log status as sent, failed, in process and opened


# measure logs
@adminui @promotionlogs @measurelogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can view the measure logs

@adminui @promotionlogs @measurelogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can search the measure logs

@adminui @promotionlogs @measurelogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can sort the measure logs via headers

@adminui @promotionlogs @measurelogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the measure logs contains the valid executed at time and trigger type

@adminui @promotionlogs @measurelogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the measure logs shows the ip address of the user who is executing it

@adminui @promotionlogs @measurelogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the measure logs shows the status of the measure logs as success, failed, in progress

@adminui @promotionlogs @measurelogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the measure logs are logged when the upload is done inside the promotion uploads tab in data section

@adminui @promotionlogs @measurelogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the measure logs can viewed in the measure logs tab

@adminui @promotionlogs @measurelogs @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the measure logs shows the same file upload multiple times seperately