Feature: Test scenarios for the upload a file and push it to database for all the inbuilt existing options which includes the following

    # User upload (username, email, name, organization, jobrole, address, phone, status, language, tier)
    # Static Audience upload

    # Organization upload
    # User Organization jobrole upload

    # Product upload
    # Product Sales upload (Sale Unique Id,Quantity,Value,Product,Date of Sale,Organisation,Selling User,Type,Comments)

    # AOT single Target for user (user, target, reward)
    # AOT single Target for organization (org, target, reward)
    # AOT mutliple target for user (user, level, target, reward)
    # AOT mutliple target for organization (org, level, target, reward)
    # AOT import Sales for user (user, sales, Date)
    # AOT import Sales for Organization (org, sales, Date)

    # Game (user, no of token, isCreate)

    # Direct Point Deposit (user, transaction date, points, remarks)

    # Goal target manager (Organization code, level, target, reward, managerId)
    # Goal Target user (user, target)
    # Goal Target organization (Organization code, target)
    # Goal sales user (user, sales number, date)
    # Goal sales organization (organization, sales number, date)

    # Threshold Excluded product (product code)
    # Threshold (Product, level, fromthreshold, tothreshold, reward, value, tier)

    # Sellx gety (product, reward, value, tier)

    # coupon claim upload

    # invoice approval/reject (LineItemId,SellingUser,InvoiceNumber,SellingDate,SKU,Quantity,Value,ClaimDate,Status,Reject Reason)

    ############################# User upload ###################################
    # decision making params - account status, job role, organization, address; pivot value - username

    Scenario: Verify by having a new user detail

    Scenario: Upload a user file with existing user detail

    Scenario: Upload a user file with invalid user detail

    Scenario: Upload a user file with empty user detail

    Scenario: Upload a user file with invalid file format. excel instead of csv

    Scenario: Upload a user file with user who is inactive

    Scenario: Upload a user file with user who is active and tries to update as inactive

    Scenario: Upload a user file with existing user having a different role

    Scenario: Upload a user file with existing user having a different organization

    Scenario: Upload a user file without mandatory fields

    Scenario: Upload a user file with invalid values

    Scenario: Upload a user file without organization

    Scenario: Upload a user without job role

    Scenario: Upload a user existing user email

    Scenario: Upload a user file with all mapped fields

    Scenario: Upload a user file with few mapped fields missing and the missed ones are mandatory

    Scenario: Upload a user file with few mapped fields missing and the missed ones are not mandatory

    Scenario: Verify upload user file with new fields other than mapped fields

    Scenario: Upload user file with list of columns in wrong order (i.e, username, email, name instead of name, email, username)

    Scenario: Upload user file with empty row in middle and having valid data after that

    Scenario: Upload user file with empty row at first and having valid data after that

    Scenario: Upload user file with empty row at last and having valid data after that.
    # empty last row means deleting any values in the column, then generally apache POI will considers that deleted row as having empty values

    Scenario: upload user file with empty column in middle and having valid data after that

    Scenario: upload user file with empty column at first and havnig valid data after that

    Scenario: Upload user file with empty column at last and having valid data after that.
    # empty last row means deleting any values in the column, then generally apache POI will considers that deleted row as having empty values

    Scenario: upload user file with invalid value in between valid data

    ############################# Organization file upload ###################################
    # decision making params - account status, Hierarchy, address; pivot value - organization code

    Scenario: Verify upload organization file having new organization detail

    Scenario: Verify upload organization file with existing organization detail

    Scenario: Verify upload organization file with invalid organization detail

    Scenario: Verify upload organization file with empty organization detail

    Scenario: Verify upload organization file with invalid file format. excel instead of csv

    Scenario: Verify upload organization file with organization which is inactive

    Scenario: Verify upload organization file with organization which is active and tries to update as inactive

    Scenario: Verify upload organization file with existing organization having a different Hierarchy

    Scenario: Verify upload organization file without mandatory fields

    Scenario: Verify upload organization file with invalid values

    Scenario: Verify upload organization file without Hierarchy

    Scenario: Verify upload organization without address

    Scenario: Verify upload organization existing organization name with different new organization code

    Scenario: Verify upload organization file with all mapped fields

    Scenario: Verify upload organization file with few mapped fields missing and the missed ones are mandatory

    Scenario: Verify upload organization file with few mapped fields missing and the missed ones are not mandatory

    Scenario: Verify upload organization file with new fields other than mapped fields

    Scenario: Upload organization file with list of columns in wrong order (i.e, organizationname, email, name instead of name, email, organizationname)


############################# Role file upload ###################################