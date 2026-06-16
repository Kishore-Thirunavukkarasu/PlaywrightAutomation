Feature: Behaviour and Execution Group

    # created by  = Kishore Thirunavukkarasu
    # reviewed by =
    # updated by  =
    # project url = https://qa.phoenix-np-in.channelsmart.net/adminqa/{tenantid}/program/{programid}/filemanager/productandactivity/


@adminui @productBehaviour @BHV001CreateNewBehaviourGroup @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the new behaviour group can be added when click on Add Button in behaviour page

@adminui @productBehaviour @BHV001CreateNewBehaviourGroup @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the new behaviour group can be created with mandatory fields

@adminui @productBehaviour @BHV001CreateNewBehaviourGroup @system @form @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify the new behaviour group cannot be created without mandatory fields

@adminui @productBehaviour @BHV001CreateNewBehaviourGroup @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the new behaviour group can be created by selecting the schema name from the drop down

@adminui @productBehaviour @BHV001CreateNewBehaviourGroup @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the behaviour schema and execution schema can be selected from the drop down

@adminui @productBehaviour @BHV001CreateNewBehaviourGroup @system @form @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify the behaviour schema and execution schema cannot be same

@adminui @productBehaviour @BHV001CreateNewBehaviourGroup @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the new behaviour group can be created with default status as active

@adminui @productBehaviour @BHV001CreateNewBehaviourGroup @system @form @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify the cancel button will navigate to the behaviour page without creating the behaviour group

@adminui @productBehaviour @BHV002ViewBehaviourGroups @system @list @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the behaviour page has list of existing behaviour groups

@adminui @productBehaviour @BHV002ViewBehaviourGroups @system @search @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the behaviour group can be searched by entering the name in search box

@adminui @productBehaviour @BHV002ViewBehaviourGroups @system @search @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify entering the invalid behaviour group name in search box will display no results

@adminui @productBehaviour @BHV002ViewBehaviourGroups @system @list @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the behaviour details like groupName, tableName, behaviours, last updated by, last updated on are displayed in the behaviour group list

@adminui @productBehaviour @BHV002ViewBehaviourGroups @system @list @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify sorting of behaviour group list by groupName

@adminui @productBehaviour @BHV002ViewBehaviourGroups @system @list @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify sorting of behaviour group list by tableName

@adminui @productBehaviour @BHV002ViewBehaviourGroups @system @list @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify sorting of behaviour group list by no. of behaviours

@adminui @productBehaviour @BHV002ViewBehaviourGroups @system @list @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify sorting of behaviour group list by last updated by

@adminui @productBehaviour @BHV002ViewBehaviourGroups @system @list @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify sorting of behaviour group list by last updated date

@adminui @productBehaviour @BHV002ViewBehaviourGroups @system @list @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the pagination is displayed when the behaviour group list exceeds 10 records

@adminui @productBehaviour @BHV002ViewBehaviourGroups @system @list @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the elipsis from the behaviour group

@adminui @productBehaviour @BHV002ViewBehaviourGroups @system @list @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the behaviour group elipsis has options like behaviourGroup, behaviours, behaviourAction, claimForms

@adminui @productBehaviour @BHV002ViewBehaviourGroups @system @list @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the existing behaviour group details can be viewed by selecting the behaviourGroup option from the elipsis

@adminui @productBehaviour @BHV002ViewBehaviourGroups @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the existing behaviour group details cannot be edited in view mode

@adminui @productBehaviour @BHV002ViewBehaviourGroups @system @form @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify the existing behaviour group details can be edited by selecting the edit option in the view mode

@adminui @productBehaviour @BHV002ViewBehaviourGroups @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the behaviour group name

@adminui @productBehaviour @BHV002ViewBehaviourGroups @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the behaviour group schema name

@adminui @productBehaviour @BHV002ViewBehaviourGroups @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the status of the behaviour group can be updated

@adminui @productBehaviour @BHV002ViewBehaviourGroups @system @form @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify the behaviour group status can be updated as inactive

@adminui @productBehaviour @BHV002ViewBehaviourGroups @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the cancel button will navigate to the behaviour group list page without updating the behaviour group details

@adminui @productBehaviour @BHV003CreateBehaviourMetadata @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify creating a new behaviour schema by adding the new fields

@adminui @productBehaviour @BHV003CreateBehaviourMetadata @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify the schema name cannot be updated when the behaviour group has behaviours associated with it

@adminui @productBehaviour @BHV003CreateBehaviourMetadata @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the behaviour schema can be updated by adding the new fields before the behaviour group has been created

@adminui @productBehaviour @BHV003CreateBehaviourMetadata @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the behaviour schema can be updated by editing the existing fields before the behaviour group has been created

@adminui @productBehaviour @BHV003CreateBehaviourMetadata @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the behaviour schema can be updated by adding the new fields and upload the updated file with existing behaviour

@adminui @productBehaviour @BHV003CreateBehaviourMetadata @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the behaviour schema by adding a new unique field

@adminui @productBehaviour @BHV003CreateBehaviourMetadata @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify the behaviour schema cannot be updated by adding a new unique field when there is a existing behaviour group

@adminui @productBehaviour @BHV004AddUpdateBehavioursbyAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the new behaviours can be added to the behaviour group by uploading the behaviour file

@adminui @productBehaviour @BHV004AddUpdateBehavioursbyAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify creating a new template for behaviour upload

@adminui @productBehaviour @BHV004AddUpdateBehavioursbyAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the schema and workflow can be selected to create a new template for behaviour upload

@adminui @productBehaviour @BHV004AddUpdateBehavioursbyAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the behaviour file headers can be mapped against the behaviour schema fields

@adminui @productBehaviour @BHV004AddUpdateBehavioursbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Upload the behaviour file with invalid format

@adminui @productBehaviour @BHV004AddUpdateBehavioursbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify uploading the behaviour csv file with different column headers

@adminui @productBehaviour @BHV004AddUpdateBehavioursbyAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify uploading the behaviour csv file with different column data type

@adminui @productBehaviour @BHV004AddUpdateBehavioursbyAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify uploading the behaviour csv file with mandatory fields

@adminui @productBehaviour @BHV004AddUpdateBehavioursbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify uploading the behaviour csv file with missing mandatory fields

@adminui @productBehaviour @BHV004AddUpdateBehavioursbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify uploading the behaviour csv file additional column fields that are not in the behaviour schema

@adminui @productBehaviour @BHV004AddUpdateBehavioursbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify uploading the behaviour csv file with duplicate datas

@adminui @productBehaviour @BHV004AddUpdateBehavioursbyAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing behaviours by uploading the updated behaviour file

@adminui @productBehaviour @BHV004AddUpdateBehavioursbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing behaviours by uploading the updated behaviour file with different column headers

@adminui @productBehaviour @BHV004AddUpdateBehavioursbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing behaviours by uploading the updated behaviour file with different column data type

@adminui @productBehaviour @BHV004AddUpdateBehavioursbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing behaviours by uploading the updated behaviour file with missing mandatory fields

@adminui @productBehaviour @BHV004AddUpdateBehavioursbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing behaviours by uploading the updated behaviour file with additional column fields that are not in the behaviour schema

@adminui @productBehaviour @BHV004AddUpdateBehavioursbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing behaviours by uploading the updated behaviour file with duplicate datas

@adminui @productBehaviour @BHV004AddUpdateBehavioursbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing behaviours by uploading the updated behaviour file with invalid format

@adminui @productBehaviour @BHV004AddUpdateBehavioursbyAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify the behaviours cannot be deleted by uploading the updated behaviour file

@adminui @productBehaviour @BHV004AddUpdateBehavioursbyAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the cancel button will cancel the behaviour upload process

@adminui @productBehaviour @BHV005AddUpdateBehavioursSFTP @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the SFTP location can be configured for behaviour upload

@adminui @productBehaviour @BHV005AddUpdateBehavioursSFTP @system @form @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can upload the valid behaviour file to the SFTP location

@adminui @productBehaviour @BHV005AddUpdateBehavioursSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can upload the behaviour file to the SFTP location with invalid format

@adminui @productBehaviour @BHV005AddUpdateBehavioursSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can upload the behaviour file to the SFTP location with different column headers

@adminui @productBehaviour @BHV005AddUpdateBehavioursSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can upload the behaviour file to the SFTP location with missing mandatory fields

@adminui @productBehaviour @BHV005AddUpdateBehavioursSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can upload the behaviour file to the SFTP location with additional column fields that are not in the behaviour schema

@adminui @productBehaviour @BHV005AddUpdateBehavioursSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can upload the behaviour file to the SFTP location with duplicate datas

@adminui @productBehaviour @BHV005AddUpdateBehavioursSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify uploading the same behaviour file multiple times to the SFTP location

@adminui @productBehaviour @BHV005AddUpdateBehavioursSFTP @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the behaviour file is processed automatically once it is uploaded to the SFTP location

@adminui @productBehaviour @BHV005AddUpdateBehavioursSFTP @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing behaviours by uploading the updated behaviour file to the SFTP location

@adminui @productBehaviour @BHV005AddUpdateBehavioursSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing behaviours by uploading the updated behaviour file to the SFTP location with different column headers

@adminui @productBehaviour @BHV005AddUpdateBehavioursSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing behaviours by uploading the updated behaviour file to the SFTP location with missing mandatory fields

@adminui @productBehaviour @BHV005AddUpdateBehavioursSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing behaviours by uploading the updated behaviour file to the SFTP location with additional column fields that are not in the behaviour schema

@adminui @productBehaviour @BHV005AddUpdateBehavioursSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing behaviours by uploading the updated behaviour file to the SFTP location with duplicate datas

@adminui @productBehaviour @BHV005AddUpdateBehavioursSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing behaviours by uploading the updated behaviour file to the SFTP location with invalid format

@adminui @productBehaviour @BHV005AddUpdateBehavioursSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify the behaviour cannot be deleted by uploading the updated behaviour file to the SFTP location

@adminui @productBehaviour @BHV006AddUpdateBehavioursAPIIntegration @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify integrating the API's with client's system to upload the behaviour file

@adminui @productBehaviour @BHV006AddUpdateBehavioursAPIIntegration @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify client can able to add the behaviours to the behaviour group by integrating the API's for file upload

@adminui @productBehaviour @BHV006AddUpdateBehavioursAPIIntegration @system @form @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify client can able to upload the behaviour file with invalid format through API integration

@adminui @productBehaviour @BHV006AddUpdateBehavioursAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify client can able to upload the behaviour file with different column headers through API integration

@adminui @productBehaviour @BHV006AddUpdateBehavioursAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify client can able to upload the behaviour file with missing mandatory fields through API integration

@adminui @productBehaviour @BHV006AddUpdateBehavioursAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify client can able to upload the behaviour file with additional column fields that are not in the behaviour schema through API integration

@adminui @productBehaviour @BHV006AddUpdateBehavioursAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify client can able to upload the behaviour file with duplicate datas through API integration

@adminui @productBehaviour @BHV006AddUpdateBehavioursAPIIntegration @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify client can able to update the existing behaviours by uploading the updated behaviour file through API integration

@adminui @productBehaviour @BHV006AddUpdateBehavioursAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify client can able to update the existing behaviours by uploading the updated behaviour file with different column headers through API integration

@adminui @productBehaviour @BHV006AddUpdateBehavioursAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify client can able to update the existing behaviours by uploading the updated behaviour file with missing mandatory fields through API integration

@adminui @productBehaviour @BHV006AddUpdateBehavioursAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify client can able to update the existing behaviours by uploading the updated behaviour file with additional column fields that are not in the behaviour schema through API integration

@adminui @productBehaviour @BHV006AddUpdateBehavioursAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify client can able to update the existing behaviours by uploading the updated behaviour file with duplicate datas through API integration

@adminui @productBehaviour @BHV007ViewUploadedBehaviours @system @list @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify all the uploaded behaviours are displayed in the behaviour group

@adminui @productBehaviour @BHV007ViewUploadedBehaviours @system @list @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the uploaded behaviours can be viewed in the behaviour page

@adminui @productBehaviour @BHV007ViewUploadedBehaviours @system @list @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the pagination is displayed when the uploaded behaviours list exceeds 10 records

@adminui @productBehaviour @BHV007ViewUploadedBehaviours @system @list @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the uploaded behaviours has the behaviour details like id, description, courseLaunchDate, courseLastDate, courseType, courseChannel

@adminui @productBehaviour @BHV008SearchUploadedBehaviours @system @search @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the uploaded behaviours can be searched by entering the behaviour name in search box

@adminui @productBehaviour @BHV008SearchUploadedBehaviours @system @search @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify entering the invalid behaviour name in search box will display no results






@adminui @productBehaviour @BHV009CreateExecutionMetadata @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the execution metadata can be created by adding the new fields

@adminui @productBehaviour @BHV009CreateExecutionMetadata @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the execution metadata can be updated by adding the new fields before the execution group has been created

@adminui @productBehaviour @BHV009CreateExecutionMetadata @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the execution metadata can be updated by editing the existing fields before the execution group has been created

@adminui @productBehaviour @BHV009CreateExecutionMetadata @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the execution schema can be updated by adding the new fields and upload the updated file with existing execution

@adminui @productBehaviour @BHV009CreateExecutionMetadata @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the execution metadata by adding a new unique field

@adminui @productBehaviour @BHV010AddUpdateExecutionFileUploadByAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the new execution can be added to the execution group by uploading the execution file

@adminui @productBehaviour @BHV010AddUpdateExecutionFileUploadByAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify creating a new template for execution upload

@adminui @productBehaviour @BHV010AddUpdateExecutionFileUploadByAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the schema and workflow can be selected to create a new template for execution upload

@adminui @productBehaviour @BHV010AddUpdateExecutionFileUploadByAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the execution file headers can be mapped against the execution schema fields

@adminui @productBehaviour @BHV010AddUpdateExecutionFileUploadByAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Upload the execution file with invalid format

@adminui @productBehaviour @BHV010AddUpdateExecutionFileUploadByAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify uploading the execution csv file with different column headers

@adminui @productBehaviour @BHV010AddUpdateExecutionFileUploadByAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify uploading the execution csv file with different column data type

@adminui @productBehaviour @BHV010AddUpdateExecutionFileUploadByAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify uploading the execution csv file with mandatory fields

@adminui @productBehaviour @BHV010AddUpdateExecutionFileUploadByAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify uploading the execution csv file with missing mandatory fields

@adminui @productBehaviour @BHV010AddUpdateExecutionFileUploadByAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify uploading the execution csv file additional column fields that are not in the execution schema

@adminui @productBehaviour @BHV010AddUpdateExecutionFileUploadByAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify uploading the execution csv file with duplicate datas

@adminui @productBehaviour @BHV010AddUpdateExecutionFileUploadByAdmin @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing execution by uploading the updated execution file

@adminui @productBehaviour @BHV010AddUpdateExecutionFileUploadByAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing execution by uploading the updated execution file with different column headers

@adminui @productBehaviour @BHV010AddUpdateExecutionFileUploadByAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing execution by uploading the updated execution file with different column data type

@adminui @productBehaviour @BHV010AddUpdateExecutionFileUploadByAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing execution by uploading the updated execution file with missing mandatory fields

@adminui @productBehaviour @BHV010AddUpdateExecutionFileUploadByAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing execution by uploading the updated execution file with additional column fields that are not in the execution schema

@adminui @productBehaviour @BHV010AddUpdateExecutionFileUploadByAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing execution by uploading the updated execution file with duplicate datas

@adminui @productBehaviour @BHV010AddUpdateExecutionFileUploadByAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing execution by uploading the updated execution file with invalid format

@adminui @productBehaviour @BHV010AddUpdateExecutionFileUploadByAdmin @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify the execution cannot be deleted by uploading the updated execution file

@adminui @productBehaviour @BHV011AddUpdateExecutionSFTP @integration @configure @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the SFTP location can be configured for execution upload

@adminui @productBehaviour @BHV011AddUpdateExecutionSFTP @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can upload the valid execution file to the SFTP location

@adminui @productBehaviour @BHV011AddUpdateExecutionSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can upload the execution file to the SFTP location with invalid format

@adminui @productBehaviour @BHV011AddUpdateExecutionSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can upload the execution file to the SFTP location with different column headers

@adminui @productBehaviour @BHV011AddUpdateExecutionSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can upload the execution file to the SFTP location with missing mandatory fields

@adminui @productBehaviour @BHV011AddUpdateExecutionSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can upload the execution file to the SFTP location with additional column fields that are not in the execution schema

@adminui @productBehaviour @BHV011AddUpdateExecutionSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify the user can upload the execution file to the SFTP location with duplicate datas

@adminui @productBehaviour @BHV011AddUpdateExecutionSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify uploading the same execution file multiple times to the SFTP location

@adminui @productBehaviour @BHV011AddUpdateExecutionSFTP @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the execution file is processed automatically once it is uploaded to the SFTP location

@adminui @productBehaviour @BHV011AddUpdateExecutionSFTP @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing execution by uploading the updated execution file

@adminui @productBehaviour @BHV011AddUpdateExecutionSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing execution by uploading the updated execution file with different column headers

@adminui @productBehaviour @BHV011AddUpdateExecutionSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing execution by uploading the updated execution file with missing mandatory fields

@adminui @productBehaviour @BHV011AddUpdateExecutionSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing execution by uploading the updated execution file with additional column fields that are not in the execution schema

@adminui @productBehaviour @BHV011AddUpdateExecutionSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing execution by uploading the updated execution file with duplicate datas

@adminui @productBehaviour @BHV011AddUpdateExecutionSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify updating the existing execution by uploading the updated execution file with invalid format

@adminui @productBehaviour @BHV011AddUpdateExecutionSFTP @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify the execution cannot be deleted by uploading the updated execution file to the SFTP location

@adminui @productBehaviour @BHV012AddUpdateExecutionAPIIntegration @system @integration @configure @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify integrating the API's with client's system to upload the execution file

@adminui @productBehaviour @BHV012AddUpdateExecutionAPIIntegration @system @integration @configure @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify client can able to add the execution to the execution group by integrating the API's for file upload

@adminui @productBehaviour @BHV012AddUpdateExecutionAPIIntegration @system @form @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify client can able to upload the execution file with invalid format through API integration

@adminui @productBehaviour @BHV012AddUpdateExecutionAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify client can able to upload the execution file with different column headers through API integration

@adminui @productBehaviour @BHV012AddUpdateExecutionAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify client can able to upload the execution file with missing mandatory fields through API integration

@adminui @productBehaviour @BHV012AddUpdateExecutionAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify client can able to upload the execution file with additional column fields that are not in the execution schema through API integration

@adminui @productBehaviour @BHV012AddUpdateExecutionAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify client can able to upload the execution file with duplicate datas through API integration

@adminui @productBehaviour @BHV012AddUpdateExecutionAPIIntegration @system @special @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify client can able to update the existing execution by uploading the updated execution file through API integration

@adminui @productBehaviour @BHV012AddUpdateExecutionAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify client can able to update the existing execution by uploading the updated execution file with different column headers through API integration

@adminui @productBehaviour @BHV012AddUpdateExecutionAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify client can able to update the existing execution by uploading the updated execution file with missing mandatory fields through API integration

@adminui @productBehaviour @BHV012AddUpdateExecutionAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify client can able to update the existing execution by uploading the updated execution file with additional column fields that are not in the execution schema through API integration

@adminui @productBehaviour @BHV012AddUpdateExecutionAPIIntegration @system @special @functional @negative @reviewed @superadmin @updated @notautomated
Scenario: Verify client can able to update the existing execution by uploading the updated execution file with duplicate datas through API integration

@adminui @productBehaviour @BHV013ViewExecutionDetails @system @list @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify all the uploaded execution details are displayed in the execution group

@adminui @productBehaviour @BHV013ViewExecutionDetails @system @list @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the uploaded execution can be viewed in the execution page

@adminui @productBehaviour @BHV013ViewExecutionDetails @system @list @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the pagination is displayed when the uploaded execution list exceeds 10 records

@adminui @productBehaviour @BHV013ViewExecutionDetails @system @list @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the uploaded execution has the details like id, courseId, username, courseStartDate, courseCompleteDate, score

@adminui @productBehaviour @BHV014SearchExecutionDetails @system @search @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the uploaded execution can be searched by entering the execution name in search box

@adminui @productBehaviour @BHV014SearchExecutionDetails @system @search @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify entering the invalid execution name in search box will display no results

@adminui @productBehaviour @BHV014SearchExecutionDetails @system @search @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the execution data can be filtered by selecting the filter options

@adminui @productBehaviour @BHV014SearchExecutionDetails @system @search @functional @positive @reviewed @superadmin @updated @notautomated
Scenario: Verify the execution data can be filtered and the results are displayed based on the filter options






























