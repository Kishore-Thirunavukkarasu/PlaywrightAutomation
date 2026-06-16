Feature: Achievo Offline Test cases

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the course can be downloaded for offline access

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded course is accessible in offline mode without internet

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the error is thrown when the course is not fully downloaded and user tries to access it in offline mode
    # Don't have that provision, need to discuss the requirement with roshni

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to access the course till the partially downloaded LO in offline mode

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to access the course in <format> format in offline mode
        Examples:
            | format   |
            | xAPI     |
            | Video    |
            | Document |

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the progress is tracked for the course accessed in offline mode

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the progress is synced to server when the user goes online after accessing the course in offline mode

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded course is removed from device storage when user deletes it from offline library

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the progress is retained when user deletes the course from offline library without syncing it

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded course is updated when a new version is published and user goes online
    # Need a discussion, when he goes online what will happen to the old version

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the progress is not retained when user updates the downloaded course to new version

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user is notified when the downloaded course has an update available upon going online

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the expired downloaded course is not accessible in offline mode



    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the course can be completed in offline mode and it should not generate certificate until user goes online

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the certificate is generated when user goes online after completing the course in offline mode

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the progress is not retained for completed progress in offline when user reinstalls the application
    #It wont retain, thinks are from cache and data which will be removed on reinstalling the app

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded course is accessible in offline mode after application update

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded course is accessible in offline mode after device restart

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded course is accessible in offline mode and capture the progress then it will be synced correctly when user goes online after a restart
    # Need verification  --- On Hold

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the progress is not retained and entire data will be lost when user moves the downloaded course location in device storage

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded course is not accessible in offline mode after clearing application cache

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded course is not accessible in offline mode after clearing application data

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded course is not retained when user logout and logs back into the application without syncing the progress

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded course is accessible in offline mode after device OS update

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the application behaviour when device storage is full while downloading a course for offline access
    # Minimum storage requirement is 40% and when it goes beyond 10% it will show a warning message and will not download further

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the course cannot be downloaded when storage is more than 40% used

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the notification is shown to user when device storage is crosses 60% while downloading a course for offline access

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the storage is built up when a course is accessed in offline mode should not exceed when device storage crosses 90%

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded course is not accessible in offline mode when device storage is more than 90% used

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the notification is shown to user when device storage is crosses 90% while accessing the downloaded course in offline mode

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the progress is synced correctly while accessing the course when device storage is full

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded course is accessible and synced from offline mode after user switches network (WiFi to Mobile data or vice versa)
    # Need to discuss the requirement with roshni

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded course is not accessible in offline mode when user switches the network and the sync will be haulted and app needs to be restarted
    # Need to discuss the requirement with roshni

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded course is accessible in offline mode after user enables Battery Saver mode on device

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded course is not accessible in power saver mode

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded course is accessible in offline mode after user turns on Airplane mode on device

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded course is accessible in offline mode after user changes device language settings

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded course does not crash when accessed in airplane mode

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded course is accessible in offline mode on different device orientations (portrait and landscape)
    # Till now we have support for portrait mode only - Landscape mode need to discuss

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify that if a user makes progress on two different devices while one was offline, the system uses the latest available progress when syncing

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the multiple courses can be downloaded and accessed in offline mode simultaneously

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the multiple courses progress is synced correctly when user goes online after accessing them in offline mode

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user receives appropriate notifications related to offline access and syncing when goes to online mode

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the duplicate courses should not be allowed in device library

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify if download permission is denied by user, the course should not be downloaded for offline access

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the backup of the app data can be taken with downloaded courses and progress in offline mode

    @mobile @lxpAchievo @lxpOffline @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the progress and datas are restored correctly from backup including downloaded courses when user restores the app data


    #------------------------------------------------------#

    #Downloads

    @mobile @lxpAchievo @lxpDownload @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded courses are available under the Downloads

    @mobile @lxpAchievo @lxpDownload @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the LO are available under the course in Downloads

    # Why we are separating LO and Course in downloads, because when we download any LO it is inside the course so it should shown inside the course only right?

    @mobile @lxpAchievo @lxpDownload @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the failed downloads are not shown under Downloads section

    @mobile @lxpAchievo @lxpDownload @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to download multiple courses simultaneously from Downloads section

    @mobile @lxpAchievo @lxpDownload @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to download multiple LO simultaneously from Downloads section

    @mobile @lxpAchievo @lxpDownload @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to search the downloaded courses in Downloads section

    @mobile @lxpAchievo @lxpDownload @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to search the downloaded LO in Downloads section

    @mobile @lxpAchievo @lxpDownload @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to filter the downloaded courses in Downloads section
    # What are the options comes under filter?

    @mobile @lxpAchievo @lxpDownload @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the user can able to select and delete the downloaded course from Downloads section

    # @mobile @lxpAchievo @lxpDownload @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    # Scenario: Verify the user can able to select and delete the downloaded LO from Downloads section
    #Select and Delete needs discussion
    #Single/Multiple Selection?
    #Confirmation message for delete

    @mobile @lxpAchievo @lxpDownload @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the confirmation message for deleting a downloaded course from Downloads section

    @mobile @lxpAchievo @lxpDownload @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded course progress is shown correctly in Downloads section when it is accessed

    @mobile @lxpAchievo @lxpDownload @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the "No Courses available" message is shown when there are no downloaded courses in Downloads section

    @mobile @lxpAchievo @lxpDownload @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the "No Objects available" message is shown when there are no downloaded LO in Downloads section

    @mobile @lxpAchievo @lxpDownload @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the confirmation message when user tries to delete the downloaded course from Downloads section

    @mobile @lxpAchievo @lxpDownload @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the confirmation message when user tries to delete the downloaded LO from Downloads section

    @mobile @lxpAchievo @lxpDownload @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded courses/LO are not available in Downloads section after user logs out and logs back into the application

    @mobile @lxpAchievo @lxpDownload @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded courses/LO are not available in Downloads section after App data is cleared

    @mobile @lxpAchievo @lxpDownload @system @achievo @functional @positive @notreviewed @superadmin @notupdated @notautomated
    Scenario: Verify the downloaded courses/LO are not available in Downloads section after application is reinstalled



