Feature: Flow Engine

    @adminui @flowengine @FLE003CreateFlows @system @form @acceptance @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can create a flow node
        Given Admin login to the system
        When Admin navigate to the work flow engine page
        Then User can see the list of create new workflow pageF
        When User click on create new workflow
        Then It should open the popup to create a flow
        When User enters the <validinvalid> in flow name
        When user enters the <descriptionvalidinvalid> in flow description
        When user click on create flow
        Then User can see the flow <createornot> message
        Examples:
            | validinvalid | descriptionvalidinvalid | createornot |
            | valid        | valid                   | created     |
            | invalid      | invalid                 | not created |
            | empty        | empty                   | not created |
            | trailing     | trailing                | created     |
            | leading      | leading                 | created     |
            | existing     | existing                | not created |
            | empty        | valid                   | not created |


    @adminui @flowengine @FLE001Createnode @system @special @acceptance @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can add the node <nodetype> to the workflow
        Given Admin login to the system
        When Admin navigate to the work flow engine page
        Then User can see the list of create new workflow page
        When user click on three dot next to flow name
        When user click on view in that flow
        Then user can able to see the flow builder page
        When user click on add node
        Then User can able to see the node <nodetype> inside <nodecategory>
        When User click on the node <nodetype>
        Then User can see the node <nodetype> added to the workflow
        Examples:
            | nodetype                   | nodecategory         |
            | copy from S3 Node          | Read and write nodes |
            | Ready file from local node | Read and write nodes |
            | write to s3 node           | Read and write nodes |
            | function node              | Genric nodes         |
            | if node                    | Core nodes           |
            | look up node               | Data nodes           |
            | cursor node                | Data nodes           |
            | insert node                | Data nodes           |
            | delete node                | Data nodes           |
            | update node                | Data nodes           |
            | copy data node             | Data nodes           |
            | metadata validation node   | Data nodes           |
            | Transaction node           | Data nodes           |

    @adminui @flowengine @FLE003CreateFlows @system @special @acceptance @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can add text to flow
        Given Admin login to the system
        When Admin navigate to the work flow engine page
        Then User can see the list of create new workflow page
        When user click on three dot next to flow name
        When user click on view in that flow
        Then user can able to see the flow builder page
        When user click on add text
        Then User can see the node text added to the workflow

    @adminui @flowengine @FLE003CreateFlows @system @delete @acceptance @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can delete the node
        Given Admin login to the system
        When Admin navigate to the work flow engine page
        Then User can see the list of create new workflow page
        When user click on three dot next to flow name
        When user click on view in that flow
        Then user can able to see the flow builder page
        When user click on add node
        Then User can able to see the node added to the workflow
        When user click on the node
        Then User can see the node details
        When user click on delete node
        Then User can see the node deleted from the workflow

    @adminui @flowengine @FLE003CreateFlows @system @search @acceptance @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin can search the created flows
        Given Admin login to the system
        When Admin navigate to the work flow engine page
        Then User can see the list of create new workflow page
        When user search for the flow
        Then User can see the searched flow

    @adminui @flowengine @FLE003CreateFlows @system @search @acceptance @negative @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin can search the created flows with invalid search
        Given Admin login to the system
        When Admin navigate to the work flow engine page
        Then User can see the list of create new workflow page
        When user search for the flow with invalid search
        Then User can see the error message

    @adminui @flowengine @FLE003CreateFlows @system @list @acceptance @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin can sort the created flows based on the flow name
        Given Admin login to the system
        When Admin navigate to the work flow engine page
        Then User can see the list of create new workflow page
        When user click on the flow name
        Then user can able to see the created flows sorted based on the flow name

    @adminui @flowengine @FLE008FlowExecutionMetric @system @form @acceptance @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can view executed flow
        Given Admin login to the system
        When Admin navigate to the work flow engine page
        Then User can see the list of create new workflow page
        When user click on jobs tab
        Then user can able to see the list of executed flows

    @adminui @flowengine @FLE008FlowExecutionMetric @system @form @acceptance @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can view executed flow details
        Given Admin login to the system
        When Admin navigate to the work flow engine page
        Then User can see the list of create new workflow page
        When user click on jobs tab
        Then user can able to see the list of executed flows
        When user click on three dots next to the executed flow
        When user click on view in the selected executed flow
        Then user can able to see the executed flow details

    @adminui @flowengine @FLE008FlowExecutionMetric @system @form @acceptance @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify execution flow details with successfully executed flow
        Given Admin login to the system
        When Admin navigate to the work flow engine page
        Then User can see the list of create new workflow page
        When user click on jobs tab
        Then user can able to see the list of executed flows
        When user click on three dots next to the executed flow
        When user click on view in the selected executed flow
        Then user can able to see the executed flow details
        Then user can able to see the successfull completion of the process
        Then user can able to see the success satus in the execution flows

    @adminui @flowengine @FLE008FlowExecutionMetric @system @search @acceptance @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can search the executed flow logs
        Given Admin login to the system
        When Admin navigate to the work flow engine page
        Then User can see the list of create new workflow page
        When user click on jobs tab
        Then user can able to see the list of executed flows
        When user search for the executed flow
        Then user can able to see the executed flow logs

    @adminui @flowengine @FLE008FlowExecutionMetric @system @search @acceptance @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can search the executed flow logs with invalid search
        Given Admin login to the system
        When Admin navigate to the work flow engine page
        Then User can see the list of create new workflow page
        When user click on jobs tab
        Then user can able to see the list of executed flows
        When user search for the executed flow with invalid search
        Then user can able to see the error message

    @adminui @flowengine @FLE008FlowExecutionMetric @system @list @acceptance @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify admin can sort the executed jobs based on the executed at time
        Given Admin login to the system
        When Admin navigate to the work flow engine page
        Then User can see the list of create new workflow page
        When user click on jobs tab
        Then user can able to see the list of executed flows
        When user click on the executed at time
        Then user can able to see the executed flows sorted based on the executed at time

    @adminui @flowengine @FLE010FlowErrorException @system @special @acceptance @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can view the error in the executed flow
        Given Admin login to the system
        When Admin navigate to the work flow engine page
        Then User can see the list of create new workflow page
        When user click on jobs tab
        Then user can able to see the list of executed flows
        When user click on three dots next to the executed flow
        When user click on view in the selected executed flow
        Then user can able to see the executed flow details
        Then user can able to see the error message in the executed flow
        Then errored log will be marked in red color

    @adminui @flowengine @FLE003CreateFlows @system @form @acceptance @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can add info about the added nodes in flow
        Given Admin login to the system
        When Admin navigate to the work flow engine page
        Then User can see the list of create new workflow page
        When user click on three dot next to flow name
        When user click on view in that flow
        Then user can able to see the flow builder page
        When user click on add node
        Then User can able to see the node added to the workflow
        When user click on the node
        Then User can see the node details
        When user click on the info tab
        Then User can see the info about the node

    @adminui @flowengine @FLE003CreateFlows @system @form @acceptance @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify Admin can view the properties of the added nodes in flow
        Given Admin login to the system
        When Admin navigate to the work flow engine page
        Then User can see the list of create new workflow page
        When user click on three dot next to flow name
        When user click on view in that flow
        Then user can able to see the flow builder page
        When user click on add node <nodetype>
        Then User can able to see the node added to the workflow
        When user click on the node <nodetype>
        Then User can see the properties of the node <nodetype>
        Examples:
            | nodetype                   |
            | copy from S3 Node          |
            | Ready file from local node |
            | write to s3 node           |
            | function node              |
            | if node                    |
            | look up node               |
            | cursor node                |
            | insert node                |
            | delete node                |
            | update node                |
            | copy data node             |
            | metadata validation node   |
            | Transaction node           |