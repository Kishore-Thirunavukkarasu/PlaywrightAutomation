// import fs from 'fs';
// import csv from 'csv-parser';

import { fakerEN_IN } from "@faker-js/faker";
import hierarchyCSV from "../pojo/hierarchy/hierarchyCSV.ts";
import organizationCSV from "../pojo/organization/organizationCSV.ts";
import userCSV from "../pojo/user/userCSV.ts";
import hierarchy from "../pom/admin/hierarchy.ts";
import fakerutil from "./fakerutil.ts";
import { util } from "./util.ts";
import Organization from "../pojo/user/organization.ts";
import title from "../enum/title.enum.ts";
import user from "../pom/admin/user.ts";
import data from "../data/testData.json";
import productCSV from "../pojo/productActivity/productCSV.ts";
import DirecttpointdepositCSV from "../pojo/Promotions/Directpointdeposit.ts";
import salesCSV from "../pojo/sales/salesCSV.ts";
import userTargetCSV from "../pojo/Promotions/userTargetCSV.ts";
import eligibleProductCSV from "../pojo/Promotions/eligibleProductCSV.ts";
// class csvUtil {
//     constructor() {

//     }

//     async readCSVFile(filename: string): Promise<Person[]> {
//         return new Promise<Person[]>((resolve, reject) => {
//           const results: Person[] = [];
//           fs.createReadStream(filename)
//             .pipe(csv())
//             .on('data', (data: any) => {
//               const person: Person = {
//                 name: data.name,
//                 age: parseInt(data.age),
//                 email: data.email
//               };
//               results.push(person);
//             })
//             .on('end', () => {
//               resolve(results);
//             })
//             .on('error', (error: any) => {
//               reject(error);
//             });
//         });
//       }


// // async readandgetobject(filename: string, per: Person): Promise<Object[]> {
// //     return new Promise<Object[]>((resolve, reject) => {
// //       const results: Object[] = [];
// //       fs.createReadStream(filename)
// //         .pipe(csv())
// //         .on('data', (data: any) => {
// //           results.push(per);
// //         })
// //         .on('end', () => {
// //           resolve(results);
// //         })
// //         .on('error', (error: any) => {
// //           reject(error);
// //         });
// //     });
// //   }
// }
// export default new csvUtil()

/** *************************Organization CSV File helper************************* **/

async function createUserCSVFile(modelName, organization, jobrole) {
    let userFile = new userCSV();
    //username	title	country	email	gender	mobileNumber	timeZone	language	isSSO	status	organizationCode	roleName	firstName	lastName	dialCode	isoCountryCode	state	city	line1	line2	postalCode	maritalStatus	anniversaryDate	childName1	childName2	childName3	childDOB1	childDOB2	childDOB3	activationCode
    let userName = (await util.currentDateForUsers()) + modelName;
    userFile.setUserName(userName);
    userFile.setTitle(title.MR);
    userFile.setCountry("IN");
    userFile.setEmail(userName + data.platform.commonMail);
    userFile.setGender("Male");
    userFile.setMobileNumber(await data.platform.commonMobile);
    userFile.setTimeZone("IST");
    userFile.setLanguage("en-GB");
    userFile.setIsSSO(false);
    userFile.setStatus("Online");
    userFile.setOrganizationCode(organization);
    userFile.setRoleName(jobrole);
    let firstname = userName.substring(0, 4);
    userFile.setFirstName(firstname);
    let lastname = userName.substring(4);
    userFile.setLastName(lastname);
    userFile.setDialCode(data.platform.commonDialCode);
    userFile.setIsoCountryCode("IN");
    userFile.setState("TN");
    userFile.setCity("Chennai");
    userFile.setLine1(await fakerutil.generateRandomWord(5));
    userFile.setLine2(await fakerutil.generateRandomWord(5));
    userFile.setPostalCode(await util.randomNumber(5));
    userFile.setMaritalStatus(await util.getRandomMaritialStatus());
    userFile.setAnniversaryDate("");
    userFile.setChildName1("");
    userFile.setChildName2("");
    userFile.setChildName3("");
    userFile.setChildDOB1("");
    userFile.setChildDOB2("");
    userFile.setChildDOB3("");
    userFile.setActivationCode(await util.randomAlphanumeric(6));
    userFile.setIsPrimaryJobRole(true);
    userFile.setIsPrimaryOrganization(true);
    return userFile;
}

async function createOrganizationCSVFile(hierarchyName1, hierarchyNode1) {
    let organizationFile = new organizationCSV();
    let orgName = await fakerutil.generateRandomCompanyName(7)
    organizationFile.setName(orgName);
    organizationFile.setDescription(await fakerutil.generateRandomWord(9));
    organizationFile.setCode(await util.randomAlphanumeric(6));
    organizationFile.setPhone(data.platform.commonMobile);
    organizationFile.setOrgType("org");
    organizationFile.setEmail(orgName.replace(/\s+/g, '') + data.platform.commonMail);
    organizationFile.setActive(true);
    organizationFile.setLine1(await util.randomAlphanumeric(10));
    organizationFile.setLine2(await util.randomAlphanumeric(10));
    organizationFile.setCity(await fakerEN_IN.location.city());
    organizationFile.setState(await fakerEN_IN.location.state());
    organizationFile.setCountryISOCode("IND");
    organizationFile.setCountry(await util.getRandomcountry());
    organizationFile.setPostalCode(await util.randomNumber(5));
    organizationFile.setHierarchyName1(hierarchyName1);
    organizationFile.setHierarchyNode1(hierarchyNode1);
    organizationFile.setHierarchyName2("");
    organizationFile.setHierarchyNode2("");
    organizationFile.setHierarchyName3("");
    organizationFile.setHierarchyNode3("");
    organizationFile.setHierarchyLevels("");

    return organizationFile;
}

async function createHierarchyCSVFile(orgName, level, parentOrgName) {
    let hierarchycsv = new hierarchyCSV();
    hierarchycsv.setRecordType("Add");
    hierarchycsv.setname(orgName);
    hierarchycsv.setNewName("");
    hierarchycsv.setLevel(level);
    hierarchycsv.setParentName(parentOrgName);
    return hierarchycsv;
}

async function updateHierarchyCSVFile(orgName, newOrgName, level, parentOrgName) {
    let hierarchycsv = new hierarchyCSV();
    hierarchycsv.setRecordType("Update");
    hierarchycsv.setname(orgName);
    hierarchycsv.setNewName(newOrgName);
    hierarchycsv.setLevel(level);
    hierarchycsv.setParentName(parentOrgName);
    return hierarchycsv;
}

async function createProductVehiclesCSVFile(productName, type, sku) {
    let productFile = new productCSV();
    productFile.setExternalIdentifier(productName);
    productFile.setDescription("Product Name is " + productName);
    productFile.setProductStatus("1");
    productFile.setProductType(type);
    productFile.setSku(sku);
    productFile.setRecordType("Add");
    return productFile;
}

async function createDpdCSVFile(username, points) {
    let dpduploadfile = new DirecttpointdepositCSV();
    dpduploadfile.setidentifier(username);
    dpduploadfile.settransactionDate(await util.randomDateCurrent());
    dpduploadfile.setpoints(points);
    dpduploadfile.setremarks(await util.randomAlphabets(5));
    return dpduploadfile;
}

async function createsalesCSVFile(quantity, value, buyingorg, productId, sellingorg, userName) {
    let salesFile = new salesCSV();
    salesFile.setInvoiceNumber(await util.randomAlphabets(5));
    salesFile.setQuantity(quantity);
    salesFile.setValue(value);
    salesFile.setSalesDate(await util.randomDateCurrent());
    salesFile.setBuyingOrganisation(buyingorg);
    salesFile.setProductId(productId);
    salesFile.setSalesType("Org");
    salesFile.setOrigin("nonEvidenceBasedClaim");
    salesFile.setSellingOrganisation(sellingorg);
    salesFile.setUserName(userName);
    salesFile.setRecordType("Add");
    return salesFile;
}

async function userTargetCSVFile(userName, measureName, target, reward, level) {
    let userTarget = new userTargetCSV();
    userTarget.setUserName(userName);
    userTarget.setMeasureName(measureName);
    userTarget.setTarget(target);
    userTarget.setReward(reward);
    userTarget.setLevel(level)
    return userTarget;
}

async function eligibleProductRewardCSVFile(measureName, productAttributeValue, productAttributeName, reward, value, tier, productMaster) {
    let eligibleReward = new eligibleProductCSV();
    eligibleReward.setMeasureName(measureName);
    eligibleReward.setProductAttributeName(productAttributeValue);
    eligibleReward.setProductAttributeValue(productAttributeName);
    eligibleReward.setReward(reward);
    eligibleReward.setValue(value);
    eligibleReward.setTier(tier);
    eligibleReward.setProductMaster(productMaster);
    return eligibleReward;
}

export default {
    createProductVehiclesCSVFile,
    createUserCSVFile,
    createOrganizationCSVFile,
    createHierarchyCSVFile,
    updateHierarchyCSVFile,
    createDpdCSVFile,
    createsalesCSVFile,
    userTargetCSVFile,
    eligibleProductRewardCSVFile

}
