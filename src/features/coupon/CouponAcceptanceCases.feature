Feature: Coupon Acceptance Cases

# ########################## Coupon configuration ##########################

# check case sensitivity for coupon code from delivery for both generation and claiming
# check with delivery on the length of the max coupon code
# check with delivery on the encryption and concatinating the information with the coupon code.

Scenario: Verify admin user rbac crud access for Coupon configuration

Scenario: Verify admin user can create new coupon configuration

Scenario: Verify admin user can configure suffix and prefix of the coupon configuration

Scenario: Verify admin user can configure the length of the coupon code and is it alphanumeric
# boundary value of 

Scenario: Verify admin user can search and sort for the coupon configuration.

Scenario: Verify admin user can make the coupon configuration active and inactive.

Scenario: Verify the uniqueness of coupon configuration code

Scenario: Verify admin user can search and sort the coupon configuration

# at a time only one configuration can be active.


# ################# Coupon product points #################

Scenario: Verify admin user can create coupon product points

Scenario: Verify coupon product points schema, workflow and template is seeded in the tenant

Scenario: Verify coupon product ponits can be uploaded into the system

Scenario: Verify the primary, secondary and teritary audience validation in upload

Scenario: Verify the primary, secondary and teritary points validation in upload

Scenario: Verify the coupon expiry value is updating the coupon generation end date calculating from the start date automatically in the intentory module system.

Scenario: Verify validating the external identifier with product identifier

Scenario: Verify validating the configuration name should be active

Scenario: Verify admin user can update the records if already external identifier is present in the coupon product poins table


# ################## Inventory admin configuration ##################

# inventory admin can be of our admin and also client admin. our admin who is of role inventory admin will be created via sso.
# but the client users will be created and activated in our platform and then they can navigate to inventory module
# that platform client user can user can use the same credentials to login to the inventory module.

Scenario: Verify user being assigned with inventory application role such as inventory admin, inventory generator, inventory printer

# Scenario: Verify the inventory roles are seeded by default in tenant

Scenario: Verify inventory application job roles should not be used for self registration job role as a default

Scenario: Verify inventory application user activation

Scenario: Verify inventory application user login with the user credentials

Scenario: Verify geo tagging of users upon login
# claim aslo will have the geo tag. need to check on with delivery on this.
# need to discuss on the login activity for inventory module and also for platform during login and during claiming

Scenario: Verify logout and jwt token of inventory application

Scenario: Verify inventory printer user can only download the coupons and cannot have access to do other actions

# Scenario: Verify admin user can navigate to the inventory admin configuration application via sso
# need to check with sridhar and confirm it 

# Scenario: Verify admin user rbac for inventory admin application

Scenario: Verify inventory admin, inventory generator user can create and generate a batch for generating a coupon

Scenario: Verify the user can specify the number of coupons and the eligible products for the coupon

Scenario: Verify the eligible products are from the coupon promotion products which we did earlier in the phoenix admin.

Scenario: Verify the inventory application can generate three types of coupons by default QR code, barcode and Coupon code

Scenario: Verify admin user can view and download the generated coupons

Scenario: Verify admin user can integration on the different inventory platform for different program in phoenix
# using appcode and login

Scenario: Verify coupons cannot be generated if either product is inactive or coupon configuration is inactive

# ################## Promotion coupon ##################

Scenario: Verify admin user can create a promotion coupon
# no different type, it will be a single measure

Scenario: Verify admin user can create a promotion coupon with elgible audiences

Scenario: Verify if the producteligiblecoupon user can claim the coupon but points is credited only when the user is present in the eligible audience for the promotion too

Scenario: Verify view can be created by user for the promotion coupon

Scenario: Verify admin user can create n number of measure in promotion

Scenario: Verify admin user can create n number of rules inside a promotion measure

# rules base points need to discuss
# include test cases where different city different multiplier and have this points multiplied and award as points, scores, games.

Scenario: Verify admin can upload the generated coupons in phoenix admin where the coupon can be created by external system
# need to discuss with MJ on which service need to use for this.

Scenario: Verify admin user can create hook for importing the coupons

Scenario: Verify from postman for pushing the coupon data via hooks into our system with workflow type in hooks


# ################## Scanning and awarding points #####################

Scenario: Verify coupons points are not awarded when the coupon code from a batch which is inactive is scanned

# as scanning and awarding poins are seperate, need to have test cases for even scan is successful, awarding points is different.

Scenario: Verify in mobile, user can scan the coupon bar code

Scenario: Verify in mobile, user can scan the coupon QR code

Scenario: Verify in mobile, user can enter the coupon code directly

Scenario: Verify in mobile and web, user can enter the maximum of 8 coupon code at a time.

Scenario: Verify the scanning of coupon will directly claim the coupon and show up the base points wherein backend is calling the api including the type and coupon data

Scenario: Verify the coupon claim history page in web

Scenario: Verify the coupon claim history page in mobile

Scenario: Verify search of coupon claim history in web

Scenario: Verify search of coupon claim history in mobile