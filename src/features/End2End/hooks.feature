Feature: Test cases for Hooks

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify creating a hook

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify updating a hook

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify deleting a hook

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify viewing a hook

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify viewing all hooks

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the RBAC permission for hooks

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the access for hooks after the permission is configured in RBAC

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the pre configured access for hooks for the user role - super admin

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the pre configured access for hooks for the user role - tenant admin

@adminui @Hooks @SecureHooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify IP whitelisting by pushing a data from the whitelisted IP

@adminui @Hooks @SecureHooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify IP whitelisting by pushing a data from the non-whitelisted IP

@adminui @Hooks @SecureHooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify IP whitelisting by pushing a data from the whitelisted IP and then removing the IP from the whitelist and verify (immediate change)

@adminui @Hooks @SecureHooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify IP whitelisting by pushing a data from the non-whitelisted IP and then adding the IP to the whitelist and verify (immediate change)

@adminui @Hooks @SecureHooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify IP whitelisting by pushing a data from the whitelisted IP where it contains * in the IP address (need lakshmi help to test this.)

@adminui @Hooks @SecureHooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the hooks can be accessed by the program api settings tokens

@adminui @Hooks @SecureHooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the hooks can be accessed by not valid token

@adminui @Hooks @SecureHooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the hooks can be accessed by the inactive API Settings tokens

@adminui @Hooks @SecureHooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the hooks can be accessed by the expired API Settings tokens

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify making the hooks inactive

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify making the hooks active

@adminui @Hooks @pushhooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify triggering push data to inactive hooks

@adminui @Hooks @gethooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify triggering get data from inactive hooks

@adminui @Hooks @pushhooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify triggering push to active hooks

@adminui @Hooks @gethooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify triggering get from active hooks

@adminui @Hooks @pushhooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify pushing data to the active hook where the hook was inactive earlier (immediate change)

@adminui @Hooks @pushhooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify pushing data to the inactive hook where the hook was active earlier

@adminui @Hooks @gethooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify getting data from the active hook where the hook was inactive earlier

@adminui @Hooks @gethooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify getting data from the inactive hook where the hook was active earlier

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify user can enable the validate payload in the hook

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify user can disable the validate payload in the hook

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the hooks updated time and updated by is updated in the system

@adminui @Hooks @pushhooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the payload is validated in execute query when the validate payload is enabled, it will validate from the model selected

@adminui @Hooks @pushhooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the payload is validated in execute flow when the validate payload is enabled, it will validate from the file specification in flow

# need to check this after discussion with mj and hari
# @adminui @Hooks @pushhooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
# Scenario: Verify the payload is not validated when the validate payload is disabled

@adminui @Hooks @pushhooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the payload is validated when the validate payload is enabled and the payload is invalid in query

@adminui @Hooks @pushhooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the payload is validated when the validate payload is enabled and the payload is invalid on verifying with the file specification from flow

@adminui @Hooks @pushhooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the payload is validated when the validate payload is enabled and the payload is valid

@adminui @Hooks @pushhooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the payload is validated when the validate payload is enabled and the payload is empty

@adminui @Hooks @pushhooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the payload is validated when the validate payload is enabled and the payload is null

@adminui @Hooks @pushhooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the payload is validated when the validate payload is enabled and the payload is not a JSON

@adminui @Hooks @pushhooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the payload is validated when the validate payload is enabled and the payload is a JSON array

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the payload size can be set to 0 and it is not allowed

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the payload size can be set to 1 and it is allowed (limit is 1 to 10)

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the payload size can be set to 11 and it is not allowed

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the payload size can be set to 9 and it is allowed

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the payload size default value is set as 5mb

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify creating hooks without flow and it is not allowed

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify creating hooks without model and it not is allowed

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify creating hooks with one model for execute query and it is allowed

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify creating hooks with critieria and it is allowed

@adminui @Hooks @pushhooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify pushing data to the hook with criteria and the data with that criteria will only be pushed

@adminui @Hooks @pushhooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify pushing data to the hook with criteria and the data without that criteria will not be pushed

# @adminui @Hooks @pushhooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
# Scenario: Verify pushing data to the hook with more than one model and the data with those models will be pushed

@adminui @Hooks @pushhooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify pushing data to the hook with more than one model in execute flow

@adminui @Hooks @gethooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify getting the data from the hook with criteria and the data with that criteria will only be fetched

@adminui @Hooks @gethooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify getting the data from the hook with criteria and the data without that criteria will not be fetched

# need to add case sensitive

@adminui @Hooks @gethooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify getting the data from the hook with number of records and the data with that number of records will be fetched

@adminui @Hooks @gethooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify getting the data from the hook with pagination and the data with that pagination will be fetched

@adminui @Hooks @gethooks @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: verify getting the single data from the hook

@adminui @Hooks @hookscrudaccess @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify creating hooks with the same name and it is not allowed

@adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify using the instance id and get the status of the hook instance

@adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify using the instance id and get the status of the hook instance and instance is in progress

@adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify using the instance id and get the status of the hook instance and instance is completed

@adminui @Hooks @erroredrecords @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the errored push records can be viewed

@adminui @Hooks @erroredrecords @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the errored push records can be downloaded

# query will not be queued up.

@adminui @Hooks @erroredrecords @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify push data with invalid records in dependentant table and verify the main table record is not pushed or rolled back

# @adminui @Hooks @erroredrecords @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
# Scenario: Verify the errored push records can be sent in to the requestor via **

# @adminui @Hooks @erroredrecords @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
# Scenario: Verify the errored get records can be sent in to the requestor via **

# need to verify wherever we have context. example: usertarget, product eligibility, etc.

@adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify sending the csv file and triggering the existing flow

###### executionContext in hooks table - roles an permission will be nullable

@adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the hooks status if all the data is rejected. (hooks inactive will gets rejected)

@adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the hooks status if all the data is rejected. (workflow inactive will gets rejected)

@adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the hooks status if all the data is accepted.

@adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the hooks status if one of the data is having error. (error because the payload is not valid)

@adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the hooks status if the data progress is inprogress. 

# add test case when the hook is in progress and the system gets unavailable in middle

@adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify by pushing more than one hooks and verify the queue status.

@adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify by pushing more than one hooks and verify the queue status and the order of the hooks.

@adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify by pushing the same hook with more than one time and verify the query status.

@adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the hook url and the api key is accessed after creating the  (using copyurl)

@adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Veirfy the hooks status with the UUID provided

# @adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
# Scenario: Verify the hooks with different ratelimit 

# need to know what is the ratelimit we are configuring

# @adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
# Scenario: Verify the hooks with different ratelimit and verify the data is pushed as per the ratelimit

# @adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
# Scenario: Verify the hooks creator and hooks instance requestor user details been stored

@adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the hooks creator and hooks instance requestor user details been stored and the user details can be viewed (from db)

# @adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
# Scenario: Verify the hooks requestor with duplicate payload only first time is requested and the second time is skipped and mention as duplicate request

@adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify calling different hooks at a time in the same tenant and verify parallel processing is working fine.

@adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify calling different hooks at a time in different tenant and verify parallel processing is working fine

# @adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
# Scenario: Verify the parallel hooks are happening and verify it is promising the ratelimit

@adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify calling the same hooks and verify requests are executed parallely

#### how to verify the retry mechanism in hooks by manually creating the error and how system differentiate the 5XX error and 4XX error
#  need to verify the status code in the response body instead direct response code of the status API

# @adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
# Scenario: Verify the hooks can be scaled horizontally and verify the data is pushed as per the scaling

@adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the alerts are configured for different error rates

@adminui @Hooks @common @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the alerts are received when the error rates hits

### where are we configuring the timeouts for the hooks

@adminui @Hooks @hooksservice @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the user can be created with hooks service using existing workflow

@adminui @Hooks @hooksservice @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the organization can be created with hooks service using existing workflow

@adminui @Hooks @hooksservice @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the hierarchy can be created with hooks service using existing workflow

@adminui @Hooks @hooksservice @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the product can be created with hooks service using existing workflow

@adminui @Hooks @hooksservice @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the sales can be created with hooks service using existing workflow

@adminui @Hooks @hooksservice @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the user target can be created with hooks service using existint workflow

@adminui @Hooks @hooksservice @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the product eligibility can be created with hooks service using existing workflow

@adminui @Hooks @hooksservice @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the product query can be created without criteria with hooks service using existing query model

@adminui @Hooks @hooksservice @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the user query can be created with criteria with hooks service using existing query model

@adminui @Hooks @hooksservice @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the promotionpoints query can be created with criteria in promotionpoints table on promotionid with hooks service using existing query model

@adminui @Hooks @hooksservice @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the user query-graph can be created with criteria in users table on date value with hooks service using existing query-graph model

@adminui @Hooks @hooksservice @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the query-graph can be used with hooks service where the criteria can be of value type numeric

@adminui @Hooks @hooksservice @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the query-graph can be used with hooks service where the criteria can be of value type string

@adminui @Hooks @hooksservice @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the query-graph can be used with hooks service where the criteria can be of value type numeric and the value is having decimal points

@adminui @Hooks @hooksservice @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the query service with operator greater than and the value is numeric

@adminui @Hooks @hooksservice @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the query service with operator not equal to and the value is string

@adminui @Hooks @hooksservice @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the query service with operator less than equal to and the value is numeric

@adminui @Hooks @hooksservice @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the query service with operator greater than equal to and the value is string

@adminui @Hooks @hooksservice @System @form @functional @positive @notreviewed @superadmin @notupdated @notautomated
Scenario: Verify the query service with operator like and the value is string