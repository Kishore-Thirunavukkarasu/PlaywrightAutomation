import association from "../pojo/metadata/association";
import attribute from "../pojo/metadata/attribute";
import model from "../pojo/metadata/model";
import schema from "../pojo/metadata/schemas";
import trigger from "../pojo/metadata/trigger";
import { util } from "./util";
import Tenant from "../pojo/tenant/tenant";
import settings from "../pojo/tenant/settings";
import tenantkey from "../pojo/tenant/tenantkey";
import Configs from "../pojo/tenant/configs";
import tenantConfig from "../pojo/tenant/tenantConfig";
import BillingInfo from "../pojo/tenant/BillingInfo";
import billing from "../pojo/tenant/billing";
import contacts from "../pojo/tenant/contacts";
import Tenantcontacts from "../pojo/tenant/Tenantcontacts";
import role from "../pojo/identity/role";
import PermissionAttribute from "../pojo/identity/permissionAttribute";
import PermissionActions from "../pojo/identity/permissionActions";
import PermissionContext from "../pojo/identity/permissionContext";
import Permissions from "../pojo/identity/permissions";
import PermissionRoles from "../pojo/identity/permissionRoles";
import sort from "../pojo/metadata/sort";
import fakerutil from "./fakerutil";
import { faker, fakerEN_IN } from "@faker-js/faker";
import data from "../pojo/tuskr/data";
import filter from "../pojo/metadata/filters";
import apidata from "../data/testData.json";
import article from "../ui_pojo/strapi/article";
import category from "../ui_pojo/strapi/category";
import strapiPage from "../ui_pojo/strapi/strapiPage";
import menus from "../ui_pojo/menus";

async function randommetaattribute(typeValue) {
    let name = await fakerutil.generateRandomName(5);
    let description = await fakerutil.generateRandomWord(10);
    let displayName = await name.toUpperCase();
    let placeholder = await name.toUpperCase();
    let isUnique = false;
    let type = typeValue;
    let allowMultiple = false;
    let conditionalFormattingExp = null;
    let decimalPlaces = null;
    let defaultValue = null;
    let displayMask = null;
    let expression = null;
    let format = null;
    let group = "hidden-field";
    let inputMask = "";
    let inputRegExp = "";
    let isEncrypted = false;
    let isReadOnly = true;
    let isRequired = true;
    let isSortable = true;
    let max = 50;
    let min = 10;
    let outputType = null;
    let prefix = null;
    let remarks = "";
    let suffix = "";
    let values = null;

    let attribute1 = new attribute(name, description, displayName, placeholder, isUnique, type, allowMultiple, conditionalFormattingExp, decimalPlaces, defaultValue, displayMask, expression, format, group, inputMask, inputRegExp, isEncrypted, isReadOnly, isRequired, isSortable, max, min, outputType, prefix, remarks, suffix, values);

    return attribute1;
}

async function randommetaattributeId() {
    let name = "id";
    let description = "Id of the project";
    let displayName = "Id";
    let placeholder = "Id";
    let isUnique = true;
    let type = "uuid";
    let allowMultiple = false;
    let conditionalFormattingExp = null;
    let decimalPlaces = null;
    let defaultValue = null;
    let displayMask = null;
    let expression = null;
    let format = null;
    let group = "hidden-field";
    let inputMask = "";
    let inputRegExp = "";
    let isEncrypted = false;
    let isReadOnly = true;
    let isRequired = true;
    let isSortable = true;
    let max = 50;
    let min = 10;
    let outputType = null;
    let prefix = null;
    let remarks = "";
    let suffix = null;
    let values = null;

    let attributeId = new attribute(name, description, displayName, placeholder, isUnique, type, allowMultiple, conditionalFormattingExp, decimalPlaces, defaultValue, displayMask, expression, format, group, inputMask, inputRegExp, isEncrypted, isReadOnly, isRequired, isSortable, max, min, outputType, prefix, remarks, suffix, values);

    return attributeId;
}

async function randommetatrigger() {
    let triggerid = await util.randomUUID(36);
    let trigger1 = new trigger((await triggerid).toString(), "after-create", await util.randomUUID(36), "", true);
    return trigger1;
}

async function randommetaassociation(fromModel: string, toModel: string, fromAttribute: string, toAttribute: string) {
    let association1 = new association(fromModel, toModel, fromAttribute, toAttribute, "has-many");
    return association1;
}

async function randommetamodel(attribute1: attribute[], trigger1: trigger[]) {
    let name = await fakerutil.generateRandomWord(10);
    let model1 = new model(name, name.toUpperCase(), false, attribute1, trigger1, "system", "#1249e0", false);
    return model1;
}

async function randommetaschema(model1: model[], association1: association[]) {
    let name = await fakerutil.generateRandomWord(10);
    let schema1 = new schema(name, await fakerutil.generateRandomWord(40), await fakerutil.generateRandomWord(25), await fakerutil.generateRandomWord(15), "1.0.1", true, model1, association1);
    return schema1;
}

async function randommetaschemawithoutparam() {
    let attr1 = await randommetaattributeId();
    let attr2 = await randommetaattribute("string");
    let attr3 = await randommetaattributeId();
    let attr4 = await randommetaattribute("number");
    let tri = await randommetatrigger();
    let mod1 = await randommetamodel([attr1, attr2, attr4], [tri]);
    let mod2 = await randommetamodel([attr3, attr4], [tri]);
    //let asso = await randommetaassociation(mod1.getId(), mod2.getId(), attr1.getName(), attr2.getName());
    let sch = await randommetaschema([mod1], []);

    return sch;
}

async function randomtenantcreation() {
    let tenantName = await fakerutil.generateRandomCompanyName(10);
    let tenantCode = await util.randomAlphanumeric(3);
    let tenantWebsite = await util.randomWebsite(10);
    let tenantAddress = await fakerutil.generateRandomAddress(100);
    let tenantURL = await fakerutil.generateRandomEmail(10);
    let tenantState = await faker.location.state();
    let tenantCity = await faker.location.city();
    let tenantzipCode = await faker.location.zipCode();
    let tenantCurrency = await faker.location.country();
    let tenantCountry = await util.getRandomcurrency();

    let newtenant = new Tenant(tenantName, tenantCode, tenantWebsite, tenantAddress, tenantURL, tenantState, tenantCity, tenantzipCode, tenantCurrency, tenantCountry);

    return newtenant;
}


async function randomtenantkeycreation() {
    let label = await util.randomAlphanumeric(10);
    let primaryKey = await util.randomAlphanumeric(30);
    let secondaryKey = await util.randomAlphanumeric(30);
    let expiryAt = await util.randomDateFuture();
    let createdBy = await apidata.admin.superuser;

    let newSettings = new settings(label, primaryKey, secondaryKey, expiryAt, "active", createdBy);
    let newTenantKey = new tenantkey([newSettings]);
    return newTenantKey;
}

async function randomtenantconfigcreation() {
    let key = await fakerutil.generateRandomWord(6);
    let value = await util.randomAlphanumeric(6);
    let type = await fakerutil.generateRandomWord(6);

    let newConfigs = new Configs(key, value, type);
    let newTenantConfig = new tenantConfig(newConfigs);
    return newTenantConfig;
}

async function randomtenatbilling() {
    let GSTNo = await util.randomNumber(20);
    let companyPAN = await util.randomAlphanumeric(10);
    let businessName = await fakerutil.generateRandomWord(10);
    let billingLabel = await fakerutil.generateRandomWord(10);
    let CIN = await util.randomNumber(4);
    let authorizedSignatoryPAN = await util.randomAlphanumeric(10);

    let newBillingInfo = new BillingInfo(GSTNo, companyPAN, businessName, billingLabel, CIN, authorizedSignatoryPAN);
    let newBilling = new billing(newBillingInfo);

    return newBilling;
}

async function randomtenantcontact() {
    let email = await fakerutil.generateRandomEmail(10);
    let firstName = await fakerutil.generateRandomName(6)
    let lastName = await fakerutil.generateRandomName(10);
    let designation = await fakerutil.generateRandomWord(10);
    let mobile = await fakerutil.generateRandomPhoneNumber(10);
    let isActive = await util.randomBoolean();

    let newContact = new contacts(email, firstName, lastName, designation, mobile, isActive);
    let newTenantContact = new Tenantcontacts([newContact]);
    return newTenantContact;
}

async function randomrole() {
    let name = await fakerutil.generateRandomName(10);
    let description = await fakerutil.generateRandomWord(10);
    let isSystemRole = await util.randomBoolean();
    let isActive = await util.randomBoolean();

    let newRole = new role(name, description, isSystemRole, isActive);
    return newRole;
}

async function randomPermissionsActionAttributes(Name: string, AccessType: string) {
    let name = Name;
    let accessType = AccessType;
    let permissionAttribute = new PermissionAttribute(name, accessType);
    return permissionAttribute;
}

async function randomPermissionsAction(Action: string, Scope: string) {
    let action = Action;
    let scope = Scope;
    let attributes = await randomPermissionsActionAttributes("*", "*");
    let permissionAction = new PermissionActions(action, scope, [attributes]);
    return permissionAction;
}

async function randomPermissionRoles(Admin: boolean, User: boolean) {
    let admin = Admin;
    let user = User;
    let rolePermission = new PermissionRoles(admin, user);
    return rolePermission;
}

async function randomPermissionContext(Location: string, Device: string) {
    let location = Location;
    let device = Device;
    let permissionContext = new PermissionContext(location, device);
    return permissionContext;
}


async function randomPermission(ResourceType: string, Resource: string, RoleId: string, actions: any, Attributes: string) {
    let name = await fakerutil.generateRandomName(10);
    let resourceType = ResourceType;
    let resource = Resource;
    let roleId = RoleId;
    //let actions = await randomPermissionsAction(Action, Scope);
    let roles = await randomPermissionRoles(await util.randomBoolean(), await util.randomBoolean());
    let attributes = Attributes;
    let context = await randomPermissionContext(await fakerutil.generateRandomWord(5), await fakerutil.generateRandomWord(5));
    let isShownInMenu = await util.randomBoolean();
    let permissions = new Permissions(name, resourceType, resource, roleId, actions, roles, [attributes], context, isShownInMenu)
    return permissions;
}

async function getcommandpayloadfromattribute(attributes: attribute[]) {
    let attributelength = attributes.length;
    let payload = "{";
    let key, attributeType, value, i;
    for (i = 1; i < attributelength; i++) {
        key = attributes[i];
        for (let j = 1; j < attributelength; j++) {
            attributeType = attributes[i];
            switch (attributeType.type) {
                case "string":
                    value = await fakerutil.generateRandomWord(10);
                    break;
                case "number":
                    value = await util.randomNumber(1);
                    break;
                case "boolean":
                    value = await util.randomBoolean();
                    break;
                case "date":
                    value = (await util.randomDateFuture()).toString();
                    break;
            }
        }
        payload = payload + `"${key.name}":"${value}"`;
        if (i < attributelength - 1) {
            payload = payload + ","
        }
    }
    //payload = payload + `"${key1}":"${value}","${key2}":"${value}"`;  
    payload = payload + "}"
    return await util.getreplacequotes(payload);
}

async function sortByFields(fields: string) {
    let newsort = new sort(fields);
    return newsort;
}

async function filterFields(attribute, op, value) {
    let newfilter = new filter(attribute, op, value);
    return newfilter;
}

async function getarticleobject() {
    let artic = new article();
    artic.setTitle(faker.animal.bird());
    artic.setDescription(faker.word.words({ count: 30 }));
    artic.setSlug(faker.word.noun());
    artic.setCategory("");
    let program = util.getvaliddatavalue1(apidata.validobject.programUI, "programName").toString()
    artic.setProgram(program);
    let audience = util.getvaliddatavalue1(apidata.validobject.UIstaticaudience, "name").toString()
    artic.setAudience(audience);
    return artic;
}

async function getCategoryObject() {
    let cat = new category();
    cat.setName(faker.company.buzzVerb());
    cat.setSlug(faker.word.noun());
    cat.setDescription(faker.word.words({ count: 30 }));
    return cat;
}

async function getPageObject() {
    let page = new strapiPage();
    page.setShortName(faker.company.buzzVerb());
    page.setSlug(faker.word.noun());
    page.setHeading(faker.company.catchPhrase());
    page.setDescription(faker.word.words({ count: 30 }));
    return page;
}

export let objecthelper = {
    getPageObject,
    getCategoryObject,
    filterFields,
    sortByFields,
    randommetaattributeId,
    randommetaattribute,
    randommetatrigger,
    randommetaassociation,
    randommetamodel,
    randommetaschema,
    randommetaschemawithoutparam,
    randomtenantcreation,
    randomtenantkeycreation,
    randomtenantconfigcreation,
    randomtenatbilling,
    randomtenantcontact,
    randomrole,
    getcommandpayloadfromattribute,
    randomParam,
    randomPermissionsActionAttributes,
    randomPermissionsAction,
    randomPermissionRoles,
    randomPermissionContext,
    randomPermission,
    generateschemavalues,
    getarticleobject
}

async function randomParam() {
    let name = await fakerutil.generateRandomName(10);
    let fatherName = await fakerutil.generateRandomWord(10);
    let mobileNumber = await fakerutil.generateRandomPhoneNumber(10);
    let email = await fakerutil.generateRandomEmail(10);
    let address = await fakerutil.generateRandomAddress(10);
    let city = await faker.location.city();
    let country = await faker.location.country();
    // let newabcd = new abcd(name, fatherName, mobileNumber, email, address, city, country);
    // return newabcd;
}

async function generateschemavalues(schema, modelIndex) {
    let value;
    let attributeName;
    let payload = "{";
    for (let i = 0; i < schema.models.length; i++) {
        let modelAttributes = schema.models[modelIndex].attributes;
        for (let j = 1; j < modelAttributes.length; j++) {
            attributeName = modelAttributes[j].name;
            let attributeType = modelAttributes[j].type;

            switch (attributeType) {
                case "string":
                    value = await fakerutil.generateRandomWord(10);
                    break;
                case "number":
                    value = await util.randomNumber(10);
                    break;
                case "boolean":
                    value = await util.randomBoolean();
                    break;
                case "date":
                    value = (await util.randomDateFuture()).toString();
                    break;
                case "uuid":
                    value = await util.randomUUID(36);
                    break;
            }
            payload = payload + `"${attributeName}":"${value}"`;
            if (j < modelAttributes.length - 1) {
                payload += ",";

            }
        }
        break;


    }
    payload = payload + "}";
    return await util.getreplacequotes(payload)
}
