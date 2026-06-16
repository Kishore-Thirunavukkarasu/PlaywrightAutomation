import createTenant from "../pom/admin/createTenant";
import newTenant from "../ui_pojo/newTenant";
import signInform from "../ui_pojo/signInForm";
import { util } from "./util";
import data from "../data/testData.json";
import tenantProgram from "../ui_pojo/tenantProgram";
import tenantList from "../pom/admin/tenantList";
import { Faker, faker } from "@faker-js/faker";
import fakerutil from "./fakerutil";
import promotionbasic from "../ui_pojo/promotionbasic";
import uploadpromotion from "../ui_pojo/uploadpromotion";
import promotion from "../pom/admin/promotion";
import uploadtemplate from "../enum/uploadtemplate.enum";
import metadata from "../enum/metadata.enum";
import tenantBillingDetails from "../ui_pojo/tenantBillingDetails";
import tenantContactPerson from "../ui_pojo/tenantContactPerson";
import participantUI from "../ui_pojo/participantUI";
import title from "../enum/title.enum"
import jobroles from "../ui_pojo/jobRoles";
import jobRoles from "../ui_pojo/jobRoles";
import organizationUI from "../ui_pojo/OrganisationUI";
import audienceUI from "../ui_pojo/audienceUI";
import selfRegistration from "../ui_pojo/platform/selfRegistrationPojo";
import user from "../pojo/CSV/user";
import menus from "../ui_pojo/menus";
import productGroup from "../pojo/productActivity/productGroup";
import coupon from "../pojo/sales/coupon";
import promotionView from "../pojo/Promotions/promotionView";
import promotionMeasureBasic from "../pojo/Promotions/promotionMeasureBasic";
import Platform_Invoice from "../pojo/claims/Platform_Invoice";
import lxpTag from "../pojo/LXP/lxpTag";
import LXPcategory from "../pojo/LXP/lxpCategory";
import lxpCourse from "../pojo/LXP/lxpCourse";
import InvoiceClaim from "../pojo/claims/InvoiceClaim";



// This contains all the form (UI) objects creation 


async function tenantobjsetup() {
    let tenant = new newTenant();
    tenant.setCompanyname(await fakerutil.generateRandomCompanyName(12));
    tenant.setCompanycode(await (util.randomAlphanumeric(6)));
    tenant.setCompanywebsite(await fakerutil.companyWebsite(tenant.getCompanyname()));
    tenant.setCountry("India");
    tenant.setAddress(await (util.randomAlphabetswithSpaceandSpecial(25)));
    tenant.setState("Tamil Nadu");
    tenant.setArea("Chennai");
    tenant.setPincode("600001");
    return tenant;
}

async function tenantobjContactPersonSetup() {
    let contactPerson = new tenantContactPerson();
    let personname = faker.person.firstName();
    contactPerson.setFirstName(personname);
    contactPerson.setLastName(await faker.person.lastName());
    contactPerson.setEmail(personname + data.platform.commonMail);
    contactPerson.setMobile(await util.randomNumeric(9));
    contactPerson.setDesignation(await faker.person.jobTitle());
    return contactPerson;
}

async function loginobjsetup() {
    let loginobj = new signInform(data.admin.superuser, data.admin.superpass, false);
    return loginobj;
}

async function programObjSetup() {
    let program = new tenantProgram();
    program.setProgramName((await faker.company.buzzNoun()).replace("-", ""));
    program.setDomainUrl(await faker.internet.url({ appendSlash: false }));
    program.setAppCode(await util.randomCode(5));
    program.setHomepageBannerMedium(data.image.image500x500);
    program.setCountryDD("India");
    program.setLanguageDD("English (United Kingdom) (en-GB)");
    program.setExpiryPeriodValue(await util.randomNumber(2));
    program.setTimeZone("Asia, Calcutta (GMT +05:30)");
    return program;
}

async function promotionbasicobjectsetup(promotionName, promotionCode, promotionTag) {
    let pbasic = new promotionbasic();
    pbasic.setPromotionname(promotionName + " Promotion");
    pbasic.setPromotiondescription("Created through automation for " + promotionName);
    pbasic.setPromotionCode(promotionCode);
    pbasic.setPromotiontag(promotionTag);
    pbasic.setPromotionprimarybillcode(await fakerutil.generateRandomWord(4));
    pbasic.setPromotionsecondarybillcode(await fakerutil.generateRandomWord(4));
    return pbasic;
}

async function promotionuploadfilesetup(promotiontype, audiencetype, targettype) {
    let file = new uploadpromotion();
    file.setUploadtemplate("pre");
    if (promotiontype.equalsIgnoreCase("AOT") && audiencetype.equalsIgnoreCase("participant") && targettype.equalsIgnoreCase("Single")) {
        file.setTemplatename(uploadtemplate.AOTParticipantSingle);
        file.setMetadata(metadata.AOTParticipantSingle);
        file.setUploadfile(data.file.AOTParticipantSingle);
    } else if (promotiontype.equalsIgnoreCase("Goal") && audiencetype == "Organization" && targettype == "Target") {
        file.setTemplatename(uploadtemplate.GoalOrganizationTarget);
        file.setMetadata(metadata.GoalOrganizationTarget);
        file.setUploadfile(data.file.GoalOrganizationTarget);
    }
    file.setAppendnew(true);
    file.setUpdateexisting(true);

    return file;
}


async function userparticipantobjsetup(organization, jobrole) {
    let participant = new participantUI();
    participant.setTitle(title.MR);
    let participantName = faker.person.firstName();
    let name = Math.floor(participantName.length / 2);
    let firstName = participantName.substring(0, name);
    let lastName = participantName.substring(name);
    participant.setUsername(participantName);
    participant.setFirstName(firstName);
    participant.setLastName(lastName);
    participant.setCountry(await util.getRandomcountry());
    participant.setEmail(participantName + data.platform.commonMail);
    participant.setGender("male");
    participant.setCountryCode("+91");
    participant.setMobileNumber(data.platform.commonMobile);
    participant.setTimeZone("IST");
    participant.setLanguage("en-GB");
    participant.setOrganization(organization);
    participant.setJobrole(jobrole);
    return participant;
}

async function jobroleobjsetup(jobroleName) {
    let jobrole = new jobRoles();
    jobrole.setName(jobroleName);
    jobrole.setDescription(await fakerutil.generateRandomWord(20));
    jobrole.setLevel(await util.getRandomArrayElement(["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]));
    return jobrole;
}

async function organizationobjsetup(orgname) {
    let organization = new organizationUI();
    //let orgname = await fakerutil.generateRandomCompanyName(7)
    organization.setName(orgname);
    organization.setCode(await util.randomAlphanumeric(6));
    organization.setEmailAddress(orgname.replace(/\s+/g, '') + data.platform.commonMail);
    organization.setPhoneNumber(data.platform.commonMobile);
    organization.setOrganizationType("Org");
    organization.setCountry(await util.getRandomcountry());
    organization.setLine1(await util.randomAlphanumeric(15));
    organization.setLine2(await util.randomAlphanumeric(10));
    organization.setState(await faker.location.state());
    organization.setCity(await faker.location.city());
    organization.setPostalCode(await util.randomNumber(5));
    return organization;
}

async function audienceObjSetup(audienceName) {
    let programName = await util.getValidProgramUIData("programName");
    let audience = new audienceUI();
    audience.setName(audienceName + " " + programName);
    audience.setDescription(await fakerutil.generateRandomWord(10));
    return audience;
}

async function selfRegistrationObjSetup(jobrole, organization) {
    let selfRegistrationObj = new selfRegistration();
    let userName = await faker.person.firstName();
    let name = Math.floor(userName.length / 2);
    let firstName = userName.substring(0, name);
    let lastName = userName.substring(name);
    selfRegistrationObj.setJobRole(jobrole);
    selfRegistrationObj.setOrganization(organization);
    selfRegistrationObj.setTitle(title.MR);
    selfRegistrationObj.setUserName(userName);
    selfRegistrationObj.setFirstName(firstName);
    selfRegistrationObj.setLastName(lastName);
    selfRegistrationObj.setGender("Male");
    selfRegistrationObj.setEmailAddress(userName + data.platform.commonMail);
    selfRegistrationObj.setCountryCode("+91");
    selfRegistrationObj.setMobileNumber(data.platform.commonMobile);
    selfRegistrationObj.setLanguage("en-GB");
    selfRegistrationObj.setCountry("IN");
    selfRegistrationObj.setTimeZone("IST");
    return selfRegistrationObj;
}

async function getMenuObject(menuName: string, slug: string, pagetype: string) {
    let menuobj = new menus();
    menuobj.setMenuname(menuName);
    menuobj.setMenulink(slug);
    menuobj.setPagetype(pagetype);
    return menuobj;
}

async function productGroupObjSetup(name, type, parentSchema, childSchema) {
    let productObj = new productGroup();
    productObj.setName(name);
    productObj.setType(type);
    productObj.setParentSchema(parentSchema);
    productObj.setChildSchema(childSchema);
    return productObj;
}

async function couponobjsetup() {
    let couponObj = new coupon();
    couponObj.setName(await fakerutil.generateRandomWord(8));
    couponObj.setCode(await fakerutil.generateRandomWord(5));
    couponObj.setCategory(await fakerutil.generateRandomWord(5));
    couponObj.setPrefix("R");
    couponObj.setSuffix("K");
    couponObj.setLength("12");
    couponObj.setStatus("Active");
    couponObj.setIsAlphanumeric("Yes");
    return couponObj;
}

async function promotionViewSetup(promotionName, promotionViewDescription) {
    let view = new promotionView();
    view.setViewName(promotionName);
    view.setViewDescription(promotionViewDescription);
    view.setViewQuery("");
    return view;
}

async function promotionMeasureBasicSetup(measureName, measureDescription, dataSourceType, dataSourceName, bankingType, bankingTrigger) {
    let promotionMeasureBasicDetails = new promotionMeasureBasic();
    promotionMeasureBasicDetails.setMeasureName(measureName);
    promotionMeasureBasicDetails.setMeasureDescription(measureDescription);
    promotionMeasureBasicDetails.setDataSourceType(dataSourceType);
    promotionMeasureBasicDetails.setDataSourceName(dataSourceName);
    promotionMeasureBasicDetails.setBankingType(bankingType);
    promotionMeasureBasicDetails.setBankingTrigger(bankingTrigger);
    return promotionMeasureBasicDetails;
}

async function ClaimForm(date) {
    let invoiceClaimSetup = new InvoiceClaim();
    invoiceClaimSetup.setformname(await fakerutil.generateRandomWord(5));
    invoiceClaimSetup.setformtitle(await fakerutil.generateRandomWord(5));
    invoiceClaimSetup.setdescription(await fakerutil.generateRandomWord(5));
    invoiceClaimSetup.setnumberoffiles("2");
    invoiceClaimSetup.setmaxfilesize("2 MB");
    invoiceClaimSetup.setrefdateforapproval(await util.randomNumber(1));
    invoiceClaimSetup.setrefdateforclaiming(await util.randomNumber(1));
    invoiceClaimSetup.setsaletype("sales");
    invoiceClaimSetup.setuniqueidentifier("uniqueIdentifier");
    invoiceClaimSetup.setsellingorganisation("sellingOrganisation");
    // Form fields
    invoiceClaimSetup.setinvoicename(await fakerutil.generateRandomName(5));
    invoiceClaimSetup.setvalue(await fakerutil.generateRandomName(5));
    invoiceClaimSetup.setquantity(await fakerutil.generateRandomAlphabet(5));
    invoiceClaimSetup.setsalesdate(date);
    invoiceClaimSetup.setsellingorganization("sellingOrganisation");
    return invoiceClaimSetup;
}

async function createNewTagLXP() {
    let lxptag = new lxpTag();
    lxptag.setTagName("NewTag" + await fakerutil.generateRandomWord(4));
    lxptag.setTagCode(await util.randomAlphanumeric(6));
    lxptag.setTagDescription("Description for new tag");
    return lxptag;
}

async function createNewSkillTagLXP() {
    let lxptag = new lxpTag();
    lxptag.setTagName("NewSkillTag" + await fakerutil.generateRandomWord(4));
    lxptag.setTagCode(await util.randomAlphanumeric(6));
    lxptag.setTagDescription("Description for new skill tag");
    return lxptag;
}

async function createNewCategoryLXP() {
    let lxpcategory = new LXPcategory();
    lxpcategory.setCategoryName("NewCategory" + await fakerutil.generateRandomWord(4));
    lxpcategory.setCategoryCode(await util.randomAlphanumeric(6));
    lxpcategory.setCategoryDescription("Description for new category");
    return lxpcategory;
}

async function createCourseLXP(courseTitle, courseSlug, category, difficulty, tagName, skillTagName) {
    let course = new lxpCourse();
    course.setCourseTitle(courseTitle);
    course.setCourseSlug(courseSlug);
    course.setCourseCode(await util.randomAlphanumeric(6));
    course.setCategory(category);
    course.setCourseDescription("Test Course for Automation - " + courseTitle);
    course.setDifficulty(difficulty);
    course.setPrerequisites("Prerequisites for " + courseTitle);
    course.setCourseSystemVariable("SystemVar" + courseTitle);
    course.settag(tagName);
    course.setSkillTag(skillTagName);
    return course;
}

async function fillClaimForm(quantity, value, product) {
    let claimFields = new Platform_Invoice();
    claimFields.setInvoiceNumber(await util.randomCode(5));
    claimFields.setQuantity(quantity);
    claimFields.setValue(value);
    claimFields.setSaleDate(await util.randomDateCurrent());
    claimFields.setProduct(product);
    return claimFields;
}

export default {
    fillClaimForm,
    createNewSkillTagLXP,
    promotionMeasureBasicSetup,
    productGroupObjSetup,
    getMenuObject,
    ClaimForm,
    audienceObjSetup,
    organizationobjsetup,
    jobroleobjsetup,
    userparticipantobjsetup,
    tenantobjsetup,
    loginobjsetup,
    programObjSetup,
    promotionbasicobjectsetup,
    promotionuploadfilesetup,
    tenantobjContactPersonSetup,
    selfRegistrationObjSetup,
    couponobjsetup,
    promotionViewSetup,
    createNewTagLXP,
    createNewCategoryLXP,
    createCourseLXP
}
