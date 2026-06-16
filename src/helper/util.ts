import fs from 'fs';
import tuskrdata from '../../data/tuskrdata.json'
import data from '../pojo/tuskr/data';
import steps from '../pojo/tuskr/stepsWithExpectedResults';
import customFields from '../pojo/tuskr/customFields';
import apihelper from './apihelper';
import packages from '../../enum/packages.enum';
import category from '../../enum/category.enum';
import subtype from '../../enum/subtype.enum';
import style from '../../enum/style.enum';
import subpackages from '../../enum/subpackages.enum';
import tcreview from '../../enum/tcreview.enum';
import apidata from "../../data/testData.json"
import * as path from 'path';
import { v4 as uuidv4 } from 'uuid';
import testtype from '../../enum/testtype.enum';
import tuskrtype from '../../enum/tuskrtype.enum';
import { validateHeaderValue } from 'http';
import type { Locator, Page } from 'playwright';
// import { faker } from '@faker-js/faker/locale/en.js';

// Objective: helper functions

async function randomString(length: number) {
  if (length <= 0) {
    throw new Error('Length must be greater than 0.');
  }

  const alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
  const spaceEvery = 8;
  let result = '';

  for (let i = 0; i < length; i++) {
    if (i % spaceEvery === 0 && i > 0) {
      result += ' ';
    }
    // (i % spaceEvery === 0 || i === 0)
    else {
      // Ensure the first character and characters at space positions are alphabets
      const randomAlphabetIndex = Math.floor(Math.random() * alphabet.length);
      result += alphabet[randomAlphabetIndex];
    }
    // else {
    //   // Generate a random character from the entire character set
    //   const randomChar = String.fromCharCode(Math.floor(Math.random() * 256));
    //   result += randomChar;
    // }
  }

  return result;
}



// random email generation
async function randomEmail(length: number) {
  var result = '';
  var characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  var charactersLength = characters.length;
  var domain = '@gmail.com'
  for (var i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return result + domain;
}

// random website generation
async function randomWebsite(length: number) {
  var result = '';
  var characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  var charactersLength = characters.length;
  var domain = '.com'
  for (var i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return result + domain;
}

// create random special character generation function with length
async function randomSpecial(length: number) {
  var result = '';
  var characters = '!@#$%^&*()_+~`|}{[]\:;?><,./-=';
  var charactersLength = characters.length;
  for (var i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return result;
}

//random alphanumeric generation
async function randomAlphanumeric(length: number) {
  var result = '';
  var characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  var charactersLength = characters.length;
  for (var i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return result;
}

// create random alphanumericspecialcharacter generation function with length
async function randomAlphanumericwithSpecialCharacter(length: number) {
  var result = '';
  var characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_+~`|}{[]\:;?><,./-=';
  var charactersLength = characters.length;
  for (var i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return result;
}

async function getRandomuserFormTitle() {
  let title = apidata.data.userTitle;
  return title[Math.floor(Math.random() * title.length)];
}

//create random alpha numeric with space for a given length
async function randomAlphanumericwithSpace(length: number) {
  var result = '';
  var characters = 'ABCDEFGHIJ KLMNOPQRSTUVWXYZabcde fghijklmnopqrstuv wxyz0123456789';
  var charactersLength = characters.length;
  for (var i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return result;
}

//create random number with special characters for a given length
async function randomNumericwithSpecialCharacter(length: number) {
  var result = '';
  var characters = '0123456789!@#$%^&*()_+~`|}{[]\:;?><,./-=';
  var charactersLength = characters.length;
  for (var i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return result;
}

//create random number with space for a given length
async function randomNumberwithSpace(length: number) {
  var result = '';
  var characters = '01 234 567 89';
  var charactersLength = characters.length;
  for (var i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return result;
}



//create random alpha numeric with space and special character for a given length
async function randomAlphanumericwithSpaceandSpecial(length: number) {
  var result = '';
  var characters = 'ABCD@#$%^&*()_+~`EFGHIJ KLMNOPQRSTU|}{[]\:VWXYZabcde fghijklmnopqrstuv wxyz0;?><,./-=123456789';
  var charactersLength = characters.length;
  for (var i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return result;
}

// create random color generation function
async function randomColor() {
  var colors = ['Red', 'Green', 'Yellow', 'Black', 'White', 'Blue', 'Violet']
  return colors[Math.floor(Math.random() * colors.length)];

}
// create random alphabets generation function with length
async function randomAlphabets(length: number) {
  var result = '';
  var characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
  var charactersLength = characters.length;
  for (var i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return result;
}

// create random alphabet specialcharacter generation function with length
async function randomAlphabetswithSpecialCharacter(length: number) {
  var result = '';
  var characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#$%^&*()_+~`|}{[]\:;?><,./-=';
  var charactersLength = characters.length;
  for (var i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return result;
}

//create random alphabet with space for a given length
async function randomAlphabetscwithSpace(length: number) {
  var result = '';
  var characters = 'ABCDEFGHIJ KLMNOPQRSTUVWXYZabcde fghijklmnopqrstuv wxyz';
  var charactersLength = characters.length;
  for (var i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return result;
}

//create random alphabet with space and special character for a given length
async function randomAlphabetswithSpaceandSpecial(length: number) {
  var result = '';
  var characters = 'ABCD@#$%^&*()_+~`EFGHIJ KLMNOPQRSTU|}{[]\:VWXYZabcde fghijklmnopqrstuv wxyz0;?><,./-=';
  var charactersLength = characters.length;
  for (var i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return result;
}


// create random phone number generation function
async function randomPhoneNumber(length: number) {
  var result = '';
  var characters = '0123456789';
  var charactersLength = characters.length;
  var phone = '9'
  for (var i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return phone + result;
}


// create random number generation function
async function randomNumber(length: number) {
  var result = '';
  var characters = '0123456789';
  var charactersLength = characters.length;
  var phone = '9'
  for (var i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return phone + result;
}

async function randomNumeric(length: number) {
  var result = '';
  var characters = '0123456789';
  var charactersLength = characters.length;
  var phone = '1'
  for (var i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return phone + result;
}

async function randomCode(length: number) {
  var result = '';
  var characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  var charactersLength = characters.length;
  for (var i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return result;
}

async function writingrequest(filename: string, value: string) {
  const folderPath = `${process.cwd()}/data/temp/${filename}`;
  const filepath = path.join(folderPath, `Req.json`);
  try {
    await fs.promises.mkdir(folderPath, { recursive: true });
    await fs.promises.writeFile(filepath, value, 'utf8');
    // console.log('Request Data has been written to the file successfully.');
  } catch (err) {
    console.error(`Error writing the request: ${err}`);
  }
}

async function writingflow(folder: string, value: string, file: string) {
  const folderPath = `${process.cwd()}/data/temp/${folder}`;
  const filepath = path.join(folderPath, `${file}.json`);
  try {
    await fs.promises.mkdir(folderPath, { recursive: true });
    await fs.promises.writeFile(filepath, value, 'utf8');
    // console.log('Request Data has been written to the file successfully.');
  } catch (err) {
    console.error(`Error writing to flow: ${err}`);
  }
}

async function writingintegration(reqorres: string, value: string, folder: string) {
  const folderPath = `${process.cwd()}/data/temp/integration/${folder}`;
  let filepath;
  if (reqorres == "req") {
    filepath = path.join(folderPath, `req.json`);
  } else if (reqorres == "res") {
    filepath = path.join(folderPath, `res.json`);
  } else {
    filepath = path.join(folderPath, `${reqorres}.json`);
  }

  try {
    await fs.promises.mkdir(folderPath, { recursive: true });
    await fs.promises.writeFile(filepath, value, 'utf8');
    // console.log('Data has been written successfully.');
  } catch (err) {
    console.error(`Error writing to integration:  ${err}`);
  }
}

async function writingresponse(filename: string, value: string) {
  const folderPath = `${process.cwd()}/data/temp/${filename}`;
  const filepath = path.join(folderPath, `Res.json`);
  try {
    await fs.promises.mkdir(folderPath, { recursive: true });
    await fs.promises.writeFile(filepath, value, 'utf8');
    // console.log('Request Data has been written to the file successfully.');
  } catch (err) {
    console.error(`Error writing the response : ${err}`);
  }
}

async function addingidtoresponse(filename: string, key: string, value: string) {
  let filepath = `${process.cwd()}/data/temp/${filename}/${filename}_Res.json`;
  fs.readFile(filepath, 'utf8', (err, data) => {
    if (err) {
      console.error('Error reading the file:', err);
      return;
    }
  });

  let length = data.toString().length;
  let newcontent = data.toString().substr(0, length - 1) + "\"" + key + ":\"" + value + "\"" + "}";

  fs.writeFile(filepath, newcontent, 'utf8', (err) => {
    if (err) {
      console.error('Error adding the id to the file:', err);
    } else {
      console.log('Response Data has been written to the file successfully.');
    }
  });
}


async function writingvaliddata(file: string, value: string) {
  let filepath = `${process.cwd()}${file}`
  try {
    await (fs.promises.mkdir(path.dirname(filepath), { recursive: true }));
    await fs.promises.writeFile(filepath, value, 'utf8');
  }
  catch (err) {
    console.log("Cannot write the valid data" + err);
  }
}


async function getvaliddata(path: string, filename: string) {
  let filepath = `${process.cwd()}/data/validdata/${path}/${filename}.json`
  let data = fs.readFileSync(filepath, 'utf8');
  return data;
}

async function getvaliddatavalue(path: string, filename: string, key: string) {
  let filepath = `${process.cwd()}/data/validdata/${path}/${filename}.json`
  let data = fs.readFileSync(filepath, 'utf8');
  let validdata = JSON.parse(data);
  let value = validdata[key];
  return value;
}

async function getvaliddatavalue1(file: string, key: string) {
  let filepath = `${process.cwd()}/${file}.json`
  let data = fs.readFileSync(filepath, 'utf8');
  let validdata = JSON.parse(data);
  let value = validdata[key];
  return value;
}

async function getflowdata(folder: string, filename: string, key: string) {
  let filepath = `${process.cwd()}/data/temp/integration/${folder}/${filename}.json`
  let data = fs.readFileSync(filepath, 'utf8');
  let flowdata = JSON.parse(data);
  let value = flowdata[key];
  return value;
}

async function getRandomcountry() {
  let countries = apidata.data.country;
  return countries[Math.floor(Math.random() * countries.length)];
}

async function getRandomcurrency() {
  let currencies = apidata.data.currency;
  return currencies[Math.floor(Math.random() * currencies.length)];
}

// create random uuid generation function
// async function randomUUID(length) {
//   var result           ='';
//   const characters       = '0123456789abcdef';
//   const groupLengths = [8,4,3,8,12];
// var currentPosition = 0;
// const groups = [];
// for (const length of groupLengths) {
//     for ( var i = 0; i < length; i++ ) {
//    result += characters.charAt(Math.floor(Math.random() * characters.length));
//    }
//   groups.push(result.substr(currentPosition, length))
//   currentPosition += length;
// }
//   return groups.join('-');
// }

function randomUUID(length: number): string {
  const uuid = uuidv4();
  return uuid.substring(0, length);
}

//generate random boolean
async function randomBoolean() {
  return Math.random() < 0.5;
}

// create a function to generate the randomdate of format "yyyy-mm-dd" where the date is of future date
async function randomDateFuture() {
  const today = new Date();
  const futureDate = new Date(
    today.getTime() + Math.random() * 30 * 24 * 60 * 60 * 1000 // Adding up to 30 days in milliseconds
  );
  return formatDate(futureDate);
}

async function randomDatePast() {
  const today = new Date();
  const pastDate = new Date(
    today.getTime() - Math.random() * 30 * 24 * 60 * 60 * 1000 // Subtracting up to 30 days in milliseconds
  );
  return formatDate(pastDate);
}

async function randomDateCurrent() {
  const today = new Date();
  return formatDate(today);
}

async function formatDate(date: Date) {
  const year = date.getFullYear();
  const month = String(date.getMonth() + 1).padStart(2, '0'); // Month is 0-based
  const day = String(date.getDate()).padStart(2, '0');
  return `${year}-${month}-${day}`;
}

async function generateRandomDate(dateString: string) {
  try {
    const originalDate = new Date(dateString); // Parse the input date string
    const randomDays = Math.floor(Math.random() * 365); // Generate a random number of days (0 to 364)

    // Calculate the random date by adding randomDays to the original date
    const randomDate = new Date(originalDate);
    randomDate.setDate(originalDate.getDate() + randomDays);

    const formattedRandomDate = formatDate(randomDate);
    return formattedRandomDate;
  }
  catch (err) {
    return randomDateFuture();
  }
}

async function tuskrpush(scenario: any) {
  let z = 0, y = 0, x = 0;
  let id = "";
  let response;
  if (process.env.tuskrrun.toUpperCase() === "Y") {
    let tempvalue = scenario.pickle.name;
    if (process.env.tuskrtestcasefirstnamecontainstestcaseid.toUpperCase() === "Y") {
      id = tempvalue.substr(0, tempvalue.indexOf(" "));
      this.scenarioName = tempvalue.substr(tempvalue.indexOf(" ") + 1);
    } else {
      // remove the space in the tempvalue and store in id
      id = tempvalue.replace(/\s/g, '');
      this.scenarioName = tempvalue;
    }
    this.stepno = 1;
    this.stepText = "dummy"
    this.stepKeyword = "dummy"
    this.steptype = "Action";

    let number = scenario.pickle.steps.length;

    this.tuskrsteps = [];

    // ################## Type ##################
    // console.log(`Running scenario: ${scenario.pickle.name}`);

    switch (scenario.pickle.tags[0].name) {
      case tuskrtype.API.toString():
        this.type = tuskrdata.tuskrparam.type.api;
        break;
      case tuskrtype.ADMIN.toString():
        this.type = tuskrdata.tuskrparam.type.adminui;
        break;
      case tuskrtype.PLATFORM.toString():
        this.type = tuskrdata.tuskrparam.type.platformui;
        break;
      case tuskrtype.MOBILE.toString():
        this.type = tuskrdata.tuskrparam.type.mobile;
        break;
      case tuskrtype.ALL.toString():
        this.type = tuskrdata.tuskrparam.type.all;
        break;
    }

    // ################## package ##################
    switch (scenario.pickle.tags[1].name) {
      case packages.TenantAPI.toString():
        this.testSuite = tuskrdata.tuskrparam.package.tenantAPI;
        break;
      case packages.HierarchyAPI.toString():
        this.testSuite = tuskrdata.tuskrparam.package.hierarchyAPI;
        break;
      case packages.MetadataAPI.toString():
        this.testSuite = tuskrdata.tuskrparam.package.metadataAPI;
        break;
      case packages.IdentityAPI.toString():
        this.testSuite = tuskrdata.tuskrparam.package.identityAPI;
        break;
      case packages.OrganizationAPI.toString():
        this.testSuite = tuskrdata.tuskrparam.package.organizationAPI;
        break;
      case packages.AudienceAPI.toString():
        this.testSuite = tuskrdata.tuskrparam.package.audienceAPI;
        break;
      case packages.TenantProgramManagement.toString():
        this.testSuite = tuskrdata.tuskrparam.package.tenantProgramManagement;
        break;
      case packages.IdentityManagement.toString():
        this.testSuite = tuskrdata.tuskrparam.package.identityManagement;
        break;
      case packages.HierarchyManagement.toString():
        this.testSuite = tuskrdata.tuskrparam.package.hierarchyManagement;
        break;
      case packages.MetadataManagement.toString():
        this.testSuite = tuskrdata.tuskrparam.package.metadataManagement;
        break;
      case packages.AudienceSegmentation.toString():
        this.testSuite = tuskrdata.tuskrparam.package.audienceSegmentation;
        break;
      case packages.CommandEngine.toString():
        this.testSuite = tuskrdata.tuskrparam.package.commandEngine;
        break;
      case packages.QueryEngine.toString():
        this.testSuite = tuskrdata.tuskrparam.package.queryEngine;
        break;
      case packages.UserManagement.toString():
        this.testSuite = tuskrdata.tuskrparam.package.userManagement;
        break;
      case packages.OrganizationManagement.toString():
        this.testSuite = tuskrdata.tuskrparam.package.organizationManagement;
        break;
      case packages.RBAC.toString():
        this.testSuite = tuskrdata.tuskrparam.package.RBAC;
        break;
      case packages.Achievo.toString():
        this.testSuite = tuskrdata.tuskrparam.package.achievo;
        break;
      case packages.PromotionRuleEngine.toString():
        this.testSuite = tuskrdata.tuskrparam.package.promotionRuleEngine;
        break;
      case packages.Promotion.toString():
        this.testSuite = tuskrdata.tuskrparam.package.promotion;
        break;
      case packages.UserApproval.toString():
        this.testSuite = tuskrdata.tuskrparam.package.userApproval;
        break;
      case packages.MenuManagement.toString():
        this.testSuite = tuskrdata.tuskrparam.package.menuManagement;
        break;
      case packages.AchievoUserManagement.toString():
        this.testSuite = tuskrdata.tuskrparam.package.achievoUserManagement;
        break;
      case packages.ProductBehaviour.toString():
        this.testSuite = tuskrdata.tuskrparam.package.productBehaviour;
        break;
      case packages.ContentManagement.toString():
        this.testSuite = tuskrdata.tuskrparam.package.contentManagement;
        break;
      case packages.TemplateCreation.toString():
        this.testSuite = tuskrdata.tuskrparam.package.templateCreation;
        break;
      case packages.FlowEngine.toString():
        this.testSuite = tuskrdata.tuskrparam.package.flowEngine;
        break;
      case packages.ClaimFormConfiguration_Product.toString():
        this.testSuite = tuskrdata.tuskrparam.package.ClaimFormConfiguration_Product;
        break;
      case packages.ClaimFormConfiguration_Behaviour.toString():
        this.testSuite = tuskrdata.tuskrparam.package.ClaimFormConfiguration_Behaviour;
        break;
      case packages.ClaimFormConfiguration_Approval.toString():
        this.testSuite = tuskrdata.tuskrparam.package.ClaimFormConfiguration_Approval;
        break;
      case packages.ClaimFormConfiguration_Common.toString():
        this.testSuite = tuskrdata.tuskrparam.package.ClaimFormConfiguration_Common;
        break;
      case packages.SellXGetY.toString():
        this.testSuite = tuskrdata.tuskrparam.package.SellXGetY;
        break
      case packages.DirectPointDeposit.toString():
        this.testSuite = tuskrdata.tuskrparam.package.DirectPointDeposit;
        break;
      case packages.Payoutcapping.toString():
        this.testSuite = tuskrdata.tuskrparam.package.Payoutcapping;
        break;
      case packages.PreloadedSales.toString():
        this.testSuite = tuskrdata.tuskrparam.package.PreloadedSales;
        break;
      case packages.PointsBanking.toString():
        this.testSuite = tuskrdata.tuskrparam.package.PointsBanking;
        break;
      case packages.MeasureRule.toString():
        this.testSuite = tuskrdata.tuskrparam.package.MeasureRule;
        break;
      case packages.MeasureTrigger.toString():
        this.testSuite = tuskrdata.tuskrparam.package.MeasureTrigger;
        break;
      case packages.QandQ.toString():
        this.testSuite = tuskrdata.tuskrparam.package.QandQ;
        break;
      case packages.GoalQuest.toString():
        this.testSuite = tuskrdata.tuskrparam.package.GoalQuest;
        break;
      case packages.TargetandReward.toString():
        this.testSuite = tuskrdata.tuskrparam.package.TargetandReward;
        break;
      case packages.PromotionLogs.toString():
        this.testSuite = tuskrdata.tuskrparam.package.promotionlogs;
        break;
      case packages.pageBuilder.toString():
        this.testSuite = tuskrdata.tuskrparam.package.PageBuilder;
        break;
      case packages.InternationalizationAndNotification.toString():
        this.testSuite = tuskrdata.tuskrparam.package.InternationalizationAndNotification;
        break;
      case packages.TranslationAndLocalization.toString():
        this.testSuite = tuskrdata.tuskrparam.package.TranslationAndLocalization;
        break;
      case packages.SIT.toString():
        this.testSuite = tuskrdata.tuskrparam.package.SIT;
        break;
      case packages.Reports.toString():
        this.testSuite = tuskrdata.tuskrparam.package.Reports;
        break;
      case packages.Hooks.toString():
        this.testSuite = tuskrdata.tuskrparam.package.Hooks;
        break;
      case packages.Migration.toString():
        this.testSuite = tuskrdata.tuskrparam.package.Migration;
        break;
      case packages.membershiptier.toString():
        this.testSuite = tuskrdata.tuskrparam.package.membershiptier;
        break;
      case packages.LXPCSAdmin.toString():
        this.testSuite = tuskrdata.tuskrparam.package.LXPCSAdmin;
        break;
      case packages.LXPCSPlatform.toString():
        this.testSuite = tuskrdata.tuskrparam.package.LXPCSPlatform;
        break;
      case packages.LXPPartnerPortal.toString():
        this.testSuite = tuskrdata.tuskrparam.package.LXPPartnerPortal;
        break;
      case packages.LXPAdmin.toString():
        this.testSuite = tuskrdata.tuskrparam.package.LXPAdmin;
        break;
      case packages.LXPAchievo.toString():
        this.testSuite = tuskrdata.tuskrparam.package.LXPAchievo;
        break;
      case packages.BudgetPromotion.toString():
        this.testSuite = tuskrdata.tuskrparam.package.BudgetPromotion;
        break;
      case packages.Fraudmanagement.toString():
        this.testSuite = tuskrdata.tuskrparam.package.FraudManagement;
        break;
      case packages.BankingSystem.toString():
        this.testSuite = tuskrdata.tuskrparam.package.BankingSystem;
        break;
      case packages.BankingLogs.toString():
        this.testSuite = tuskrdata.tuskrparam.package.BankLogs;
        break;
      case packages.mediaLibrary.toString():
        this.testSuite = tuskrdata.tuskrparam.package.MediaLibrary;
        break;
      case packages.cookiePolicies.toString():
        this.testSuite = tuskrdata.tuskrparam.package.cookiePolicies;
        break;
    }

    // ################## sub package ##################
    switch (scenario.pickle.tags[2].name) {
      case subpackages.Programapi.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.sectionProgramApi;
        break;
      case subpackages.Tenantapi.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.sectionTenantApi;
        break;
      case subpackages.TenantContactapi.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.tenantcontact;
        break;
      case subpackages.TenantConfigapi.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.tenantconfigApi;
        break;
      case subpackages.ProgramEnvironmentapi.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.sectionPEnvironmentApi;
        break;
      case subpackages.ProgramConfigapi.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.programconfigapi;
        break;
      case subpackages.FormCRUD.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.formcrud;
        break;
      case subpackages.FormComponents.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.formcomponents;
        break;
      case subpackages.FormE2E.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.forme2e;
        break;
      case subpackages.Users.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.userscrud;
        break;
      case subpackages.Metaflow.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.metaflow;
        break;
      case subpackages.Schema.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.schema;
        break;
      case subpackages.Commandengineapi.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.commandengine;
        break;
      case subpackages.Queryengineapi.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.queryengine;
        break;
      case subpackages.login.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.login;
        break;
      case subpackages.logout.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.login;
        break;
      case subpackages.changepassword.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.login;
        break;
      case subpackages.role.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.role;
        break;
      case subpackages.schemaBuilderUI.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.schemaBuilderUI;
        break;
      case subpackages.status.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.status;
        break;
      case subpackages.ProgramUI.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.programui;
        break;
      case subpackages.TenantUI.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.tenantui;
        break;
      case subpackages.Hierarchyapi.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.hierarchyapi;
        break;
      case subpackages.HierarchyUI.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.hierarchyui;
        break;
      case subpackages.Organizationapi.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.organizationapi;
        break;
      case subpackages.OrganizationUI.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.organizationui;
        break;
      case subpackages.OrganizationAddressApi.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.organizationaddress;
        break;
      case subpackages.IdentityAcceptance.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.identityacceptance;
        break;
      case subpackages.StaticAudienceAPI.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.staticaudienceapi;
        break;
      case subpackages.DynamicAudienceAPI.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.dynamicaudienceapi;
        break;
      case subpackages.ExcludeAudienceAPI.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.excludeaudienceapi;
        break;
      case subpackages.AudienceUI.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.audienceui;
        break;
      case subpackages.UserUpload.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.userupload;
        break;
      case subpackages.Viewlist.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.viewlist;
        break;
      case subpackages.Viewcreate.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.viewcreate;
        break;
      case subpackages.Viewupdate.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.viewupdate;
        break;
      case subpackages.Viewdelete.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.viewdelete;
        break;
      case subpackages.TNT001RegisterNewTenant.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.TNT001RegisterNewTenant;
        break;
      case subpackages.TNT002TenantStatus.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.TNT002TenantStatus;
        break;
      case subpackages.TNT003ListTenants.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.TNT003ListTenants;
        break;
      case subpackages.TNT004ModifyTenant.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.TNT004ModifyTenant;
        break;
      case subpackages.TNT005TenantAPIKeyManagement.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.TNT005TenantAPIKeyManagement;
        break;
      case subpackages.TNT006CreateProgramUnderTenant.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.TNT006CreateProgramUnderTenant;
        break;
      case subpackages.TNT007UpdateProgram.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.TNT007UpdateProgram;
        break;
      case subpackages.TNT008ProgramStatus.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.TNT008ProgramStatus;
        break;
      case subpackages.TNT009AddCountriesToProgram.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.TNT009AddCountriesToProgram;
        break;
      case subpackages.TNT010ListThePrograms.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.TNT010ListThePrograms;
        break;
      case subpackages.TNT012DefaultTenant.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.TNT012DefaultTenant;
        break;
      case subpackages.MDC001SchemaCRUD.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MDC001SchemaCRUD;
        break;
      case subpackages.MDC002ExtendSystemModels.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MDC002ExtendSystemModels;
        break;
      case subpackages.MDC003ManageReferenceData.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MDC003ManageReferenceData;
        break;
      case subpackages.MDC004ManageSystemReferenceData.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MDC004ManageSystemReferenceData;
        break;
      case subpackages.MDC005ManageCounters.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MDC005ManageCounters;
        break;
      case subpackages.MDC006ManageDocumnetsAndTypes.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MDC006ManageDocumnetsAndTypes;
        break;
      case subpackages.MDC007ManagePlugins.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MDC007ManagePlugins;
        break;
      case subpackages.MDC008ManageReportDefinitions.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MDC008ManageReportDefinitions;
        break;
      case subpackages.MDC009AddDropDowninMetadataCreationModelPopup.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MDC009AddDropDowninMetadataCreationModelPopup;
        break;
      case subpackages.MDC010PopulatingtheDropdown.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MDC010PopulatingtheDropdown;
        break;
      case subpackages.MDC011SavingTemplateSection.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MDC011SavingTemplateSection;
        break;
      case subpackages.MDC012ReferencetoDefaultFields.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MDC012ReferencetoDefaultFields;
        break;
      case subpackages.HIR001CreateHierarchy.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.HIR001CreateHierarchy;
        break;
      case subpackages.HIR002CreateLevels.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.HIR002CreateLevels;
        break;
      case subpackages.HIR003UploadHierarchy.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.HIR003UploadHierarchy;
        break;
      case subpackages.HIR004EditExistingHierarchy.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.HIR004EditExistingHierarchy;
        break;
      case subpackages.HIR005ViewExistingHierarchy.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.HIR005ViewExistingHierarchy;
        break;
      case subpackages.HIR006DeleteExistingHierarchy.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.HIR006DeleteExistingHierarchy;
        break;
      case subpackages.HIR007EditLevels.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.HIR007EditLevels;
        break;
      case subpackages.HIR008EditHierarchyNodes.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.HIR008EditHierarchyNodes;
        break;
      case subpackages.HIR009RBACforHierarchy.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.HIR009RBACforHierarchy;
        break;
      case subpackages.HIR010CreateMultipleHierarchiesForOneProgram.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.HIR010CreateMultipleHierarchiesForOneProgram;
        break;
      case subpackages.HIR011MappingOrganizationtoHierarchy.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.HIR011MappingOrganizationtoHierarchy;
        break;
      case subpackages.ADN001ViewAudiences.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ADN001ViewAudiences;
        break;
      case subpackages.ADN002SearchAudience.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ADN002SearchAudience;
        break;
      case subpackages.ADN003CreateDynamicAudience.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ADN003CreateDynamicAudience;
        break;
      case subpackages.ADN004JobrolebasedAudience.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ADN004JobrolebasedAudience;
        break;
      case subpackages.ADN005StatusbasedAudience.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ADN005StatusbasedAudience;
        break;
      case subpackages.ADN006HierarchybasedAudience.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ADN006HierarchybasedAudience;
        break;
      case subpackages.ADN008CustomuserAttributes.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ADN008CustomuserAttributes;
        break;
      case subpackages.ADN009CustomOrganisationAttributes.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ADN009CustomOrganisationAttributes;
        break;
      case subpackages.ADN010AudiencebasedCustomOrganisationAttributes.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ADN010AudiencebasedCustomOrganisationAttributes;
        break;
      case subpackages.ADN013CustomAttributes.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ADN013CustomAttributes;
        break;
      case subpackages.ADN015EditDynamicAudience.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ADN015EditDynamicAudience;
        break;
      case subpackages.ADN016ViewDynamicAudience.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ADN016ViewDynamicAudience;
        break;
      case subpackages.ADN017CreateStaticAudience.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ADN017CreateStaticAudience;
        break;
      case subpackages.ADN018EditStaticAudience.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ADN018EditStaticAudience;
        break;
      case subpackages.ADN019DownloadStaticAudience.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ADN019DownloadStaticAudience;
        break;
      case subpackages.ADN021AudienceMembership.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ADN021AudienceMembership;
        break;
      case subpackages.ADN022AssignAudiencetoFeatures.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ADN022AssignAudiencetoFeatures;
        break;
      case subpackages.ADN023OrgJobRoleMapping.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ADN023OrgJobRoleMapping;
        break;
      case subpackages.ADN024AudienceRefresh.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ADN024AudienceRefresh;
        break;
      case subpackages.ADN028JobRolesTranslations.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ADN028JobRolesTranslations;
        break;
      case subpackages.ADN029HierarchyNodesTranslations.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ADN029HierarchyNodesTranslations;
        break;
      case subpackages.ADN030PromotionEligibility.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ADN030PromotionEligibility;
        break;
      case subpackages.CMD001InsertDataintoaModel.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMD001InsertDataintoaModel;
        break;
      case subpackages.CMD002UpdateDataBelongingtoaModel.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMD002UpdateDataBelongingtoaModel;
        break;
      case subpackages.CMD003DeleteDataBelongingtoaModel.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMD003DeleteDataBelongingtoaModel;
        break;
      case subpackages.CMD004ValidateCommand.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMD004ValidateCommand;
        break;
      case subpackages.CMD005AuthenticateCommand.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMD005AuthenticateCommand;
        break;
      case subpackages.CMD006AuditCommandExecutions.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMD006AuditCommandExecutions;
        break;
      case subpackages.CMD007AsyncExecutionCommand.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMD007AsyncExecutionCommand;
        break;
      case subpackages.CMD009EmitEvent.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMD009EmitEvent;
        break;
      case subpackages.QRY001FetchMultipleRecords.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.QRY001FetchMultipleRecords;
        break;
      case subpackages.QRY002FetchSingleRecord.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.QRY002FetchSingleRecord;
        break;
      case subpackages.QRY003FetchRecordForEditing.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.QRY003FetchRecordForEditing;
        break;
      case subpackages.QRY004ExportRecordsIntoDifferentFileFormats.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.QRY004ExportRecordsIntoDifferentFileFormats;
        break;
      case subpackages.QRY005StreamResultSets.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.QRY005StreamResultSets;
        break;
      case subpackages.QRY006CacheResults.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.QRY006CacheResults;
        break;
      case subpackages.USR001SelfRegistration.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR001SelfRegistration;
        break;
      case subpackages.USR002ByManager.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR002ByManager;
        break;
      case subpackages.USR003ByAdmin.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR003ByAdmin;
        break;
      case subpackages.USR006Integrations.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR006Integrations;
        break;
      case subpackages.USR006BypassActivation.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR006BypassActivation;
        break;
      case subpackages.USR007TriggerActivationNotification.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR007TriggerActivationNotification;
        break;
      case subpackages.USR007Activation.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR007Activation;
        break;
      case subpackages.USR008ValidateActivationCredentials.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR008ValidateActivationCredentials;
        break;
      case subpackages.USR008ConfigureStepsinActivationFlow.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR008ConfigureStepsinActivationFlow;
        break;
      case subpackages.USR009DisplayRegistrationInformation.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR009DisplayRegistrationInformation;
        break;
      case subpackages.USR010CaptureSecurityQuestion.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR010CaptureSecurityQuestion;
        break;
      case subpackages.USR011SetPassword.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR011SetPassword;
        break;
      case subpackages.USR012SetPasswordSSO.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR012SetPasswordSSO;
        break;
      case subpackages.USR013GetConsent.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR013GetConsent;
        break;
      case subpackages.USR017ListView.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR017ListView;
        break;
      case subpackages.USR018FilterListView.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR018FilterListView;
        break;
      case subpackages.USR019ViewParticipantsUserDetails.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR019ViewParticipantsUserDetails;
        break;
      case subpackages.USR020EditParticipantsUserDetails.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR020EditParticipantsUserDetails;
        break;
      case subpackages.USR021ChangeHistoryRespecttoUserProfile.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR021ChangeHistoryRespecttoUserProfile;
        break;
      case subpackages.USR022ChangeHistoryRespecttoOrg.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR022ChangeHistoryRespecttoOrg;
        break;
      case subpackages.USR023ChangeHistoryRespecttoJobrole.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR023ChangeHistoryRespecttoJobrole;
        break;
      case subpackages.USR023ChangeHistoryRespecttoPrimaryOrgJobrole.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR023ChangeHistoryRespecttoPrimaryOrgJobrole;
        break;
      case subpackages.USR024SecondaryOrganization.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR024SecondaryOrganization;
        break;
      case subpackages.USR024SecondaryJobrole.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR024SecondaryJobrole;
        break;
      case subpackages.USR025OrgJobroleMapping.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR025OrgJobroleMapping;
        break;
      case subpackages.USR028ChooseUniqueIdentifier.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR028ChooseUniqueIdentifier;
        break;
      case subpackages.USR029PasswordConfigurationPolicy.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR029PasswordConfigurationPolicy;
        break;
      case subpackages.USR029LoginMethods.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR029LoginMethods;
        break;
      case subpackages.USR030PasswordConfiguration.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR030PasswordConfiguration;
        break;
      case subpackages.USR032ConfirmEmailMobileorBoth.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR032ConfirmEmailMobileorBoth;
        break;
      case subpackages.USR033CapturingConsent.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR033CapturingConsent;
        break;
      case subpackages.USR034Captcha.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR034Captcha;
        break;
      case subpackages.USR035ChangeUsername.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR035ChangeUsername;
        break;
      case subpackages.USR037PIIInformation.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR037PIIInformation;
        break;
      case subpackages.USR038ViewEditProfile.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR038ViewEditProfile;
        break;
      case subpackages.USR039ViewEditProfileUpload.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR039ViewEditProfileUpload;
        break;
      case subpackages.USR040HierarchyManagerDashboard.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR040HierarchyManagerDashboard;
        break;
      case subpackages.USR043NotificationUser.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR043NotificationUser;
        break;
      case subpackages.USR044AudienceSpecificRegistrationForm.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR044AudienceSpecificRegistrationForm;
        break;
      case subpackages.USR045CountrySpecificRegistrationForm.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR045CountrySpecificRegistrationForm;
        break;
      case subpackages.USR046ViewHierarchyUserList.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR046ViewHierarchyUserList;
        break;
      case subpackages.USR049RegistrationWorkflows.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR049RegistrationWorkflows;
        break;
      case subpackages.USR050RegistrationWorkflowsModify.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR050RegistrationWorkflowsModify;
        break;
      case subpackages.USR051RegistrationWorkflowsCopy.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR051RegistrationWorkflowsCopy;
        break;
      case subpackages.USR052ChangeinUserMetadataAdd.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR052ChangeinUserMetadataAdd;
        break;
      case subpackages.USR053ChangeinUserMetadataEdit.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR053ChangeinUserMetadataEdit;
        break;
      case subpackages.USR054ChangeinUserMetadata.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR054ChangeinUserMetadata;
        break;
      case subpackages.USR055RegistrationSource.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR055RegistrationSource;
        break;
      case subpackages.USR056RegistrationChannel.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR056RegistrationChannel;
        break;
      case subpackages.USR057RegistrationAdditionalInformation.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR057RegistrationAdditionalInformation;
        break;
      case subpackages.USR058LoginImpersonateUser.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR058LoginImpersonateUser;
        break;
      case subpackages.USR059LoginValidationForSpaces.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR059LoginValidationForSpaces;
        break;
      case subpackages.USR060LoginViaImpersonating.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR060LoginViaImpersonating;
        break;
      case subpackages.USR061LoginSource.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR061LoginSource;
        break;
      case subpackages.USR061LoginAdditionalInformation.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USR061LoginAdditionalInformation;
        break;
      case subpackages.userStatus.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.userStatus;
        break;
      case subpackages.ORG001SetCreationMethod.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ORG001SetCreationMethod;
        break;
      case subpackages.ORG002SetcreationmethodAPI.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ORG002SetcreationmethodAPI;
        break;
      case subpackages.ORG003ViewOrganisations.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ORG003ViewOrganisations;
        break;
      case subpackages.ORG004FilterOrganisations.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ORG004FilterOrganisations;
        break;
      case subpackages.ORG005Exporttofile.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ORG005Exporttofile;
        break;
      case subpackages.ORG006CreateOrganisation.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ORG006CreateOrganisation;
        break;
      case subpackages.ORG007Createparent_Childrelationship.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ORG007Createparent_Childrelationship;
        break;
      case subpackages.ORG008Viewchildorganisations.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ORG008Viewchildorganisations;
        break;
      case subpackages.ORG009UpdateOrganisation.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ORG009UpdateOrganisation;
        break;
      case subpackages.ORG010UploadOrganisation.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ORG010UploadOrganisation;
        break;
      case subpackages.ORG011AddHierarchy.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ORG011AddHierarchy;
        break;
      case subpackages.ORG012UpdateHierarchy.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ORG012UpdateHierarchy;
        break;
      case subpackages.ORG015RBACforOrganisation.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ORG015RBACforOrganisation;
        break;
      case subpackages.ORG016Organisationhierarchylog.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ORG016Organisationhierarchylog;
        break;
      case subpackages.MNU001MenuCreation.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MNU001MenuCreation;
        break;
      case subpackages.MNU002MenuCreationAddmenu.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MNU002MenuCreationAddmenu;
        break;
      case subpackages.MNU003MenuCreationConfigureAudienceGroup.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MNU003MenuCreationConfigureAudienceGroup;
        break;
      case subpackages.MNU004MenuCreationLanguages.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MNU004MenuCreationLanguages;
        break;
      case subpackages.MNU005GlobalAccessMenuCommonComponents.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MNU005GlobalAccessMenuCommonComponents;
        break;
      case subpackages.MNU006GlobalAccessMenu.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MNU006GlobalAccessMenu;
        break;
      case subpackages.FB001CreateFormfromUI.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB001CreateFormfromUI;
        break;
      case subpackages.FB002CreateFormfromTemplate.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB002CreateFormfromTemplate;
        break;
      case subpackages.FB003CreateFormfromExistingConfig.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB003CreateFormfromExistingConfig;
        break;
      case subpackages.FB004FormComponents.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB004FormComponents;
        break;
      case subpackages.FB005Validation.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB005Validation;
        break;
      case subpackages.FB006InlineValidation.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB006InlineValidation;
        break;
      case subpackages.FB007ValidationOTP.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB007ValidationOTP;
        break;
      case subpackages.FB008Responsiveness.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB008Responsiveness;
        break;
      case subpackages.FB009DisplayFormasWizard.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB009DisplayFormasWizard;
        break;
      case subpackages.FB010AllowGrouping.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB010AllowGrouping;
        break;
      case subpackages.FB011FormSubmissionCallAPI.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB011FormSubmissionCallAPI;
        break;
      case subpackages.FB012Localization.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB012Localization;
        break;
      case subpackages.FB013HelpText.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB013HelpText;
        break;
      case subpackages.FB014Styling.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB014Styling;
        break;
      case subpackages.FB015Security.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB015Security;
        break;
      case subpackages.FB016MobileCapability.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB016MobileCapability;
        break;
      case subpackages.FB017LayoutCustomization.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB017LayoutCustomization;
        break;
      case subpackages.FB018FormTemplates.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB018FormTemplates;
        break;
      case subpackages.FB019ConditionalLogic_Subattribute_without_autofill.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB019ConditionalLogic_Subattribute_without_autofill;
        break;
      case subpackages.FB020ConditionalLogic_Subattribute_with_autofill.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB020ConditionalLogic_Subattribute_with_autofill;
        break;
      case subpackages.FB021DisplayMessageAfterSubmission.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB021DisplayMessageAfterSubmission;
        break;
      case subpackages.FB022ExportandImportForm.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB022ExportandImportForm;
        break;
      case subpackages.FB023Versioning.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB023Versioning;
        break;
      case subpackages.FB024Language.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB024Language;
        break;
      case subpackages.FB025Culture.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB025Culture;
        break;
      case subpackages.FB026Encryption.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB026Encryption;
        break;
      case subpackages.FB027AdditionalDetails.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB027AdditionalDetails;
        break;
      case subpackages.FB028Consent.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB028Consent;
        break;
      case subpackages.FB029DownloadFormConfiguration.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB029DownloadFormConfiguration;
        break;
      case subpackages.FB030RemovingLeadingandTrailingSpaces.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB030RemovingLeadingandTrailingSpaces;
        break;
      case subpackages.FB031LookupComponent.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB031LookupComponent;
        break;
      case subpackages.FB032EditProfileForm.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB032EditProfileForm;
        break;
      case subpackages.FB033ActivationForm.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB033ActivationForm;
        break;
      case subpackages.FB034UserUpdateFormAdmin.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB034UserUpdateFormAdmin;
        break;
      case subpackages.FB035AdminFileUpload.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB035AdminFileUpload;
        break;
      case subpackages.FB036WorkflowAssociationwithFormFill.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB036WorkflowAssociationwithFormFill;
        break;
      case subpackages.FB037FileUpload.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB037FileUpload;
        break;
      case subpackages.FB038LanguageSelection.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB038LanguageSelection;
        break;
      case subpackages.FB039FormFieldTranslation.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB039FormFieldTranslation;
        break;
      case subpackages.FB040DataInput.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB040DataInput;
        break;
      case subpackages.FB041FormMigration.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB041FormMigration;
        break;
      case subpackages.FB042Jobrole.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB042Jobrole;
        break;
      case subpackages.FB043ReferenceData.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB043ReferenceData;
        break;
      case subpackages.FB044EditProfile.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB044EditProfile;
        break;
      case subpackages.FB045ProfileImage.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB045ProfileImage;
        break;
      case subpackages.FB046TranslationofDropdowns.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB046TranslationofDropdowns;
        break;
      case subpackages.FB047Consent.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB047Consent;
        break;
      case subpackages.FB048EmailandMobileVerification.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB048EmailandMobileVerification;
        break;
      case subpackages.FB049ConditionalLogic_Lookup.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FB049ConditionalLogic_Lookup;
        break;
      case subpackages.RBAC001CreateRole.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.RBAC001CreateRole;
        break;
      case subpackages.RBAC002ViewRole.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.RBAC002ViewRole;
        break;
      case subpackages.RBAC003UpdateRole.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.RBAC003UpdateRole;
        break;
      case subpackages.RBAC004DeleteaRole.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.RBAC004DeleteaRole;
        break;
      case subpackages.RBAC005CreatePermissions.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.RBAC005CreatePermissions;
        break;
      case subpackages.RBAC006ViewlistofPermissions.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.RBAC006ViewlistofPermissions;
        break;
      case subpackages.RBAC007UpdatePermission.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.RBAC007UpdatePermission;
        break;
      case subpackages.RBAC008DeletePermission.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.RBAC008DeletePermission;
        break;
      case subpackages.RBAC009AssignRole.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.RBAC009AssignRole;
        break;
      case subpackages.RBAC010ViewlistofUsersandRoles.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.RBAC010ViewlistofUsersandRoles;
        break;
      case subpackages.RBAC012ViewUserActivity.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.RBAC012ViewUserActivity;
        break;
      case subpackages.RBAC013ViewMyPermissions.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.RBAC013ViewMyPermissions;
        break;
      case subpackages.RBAC014RevokeAccess.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.RBAC014RevokeAccess;
        break;
      case subpackages.RBAC015ApproveUser.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.RBAC015ApproveUser;
        break;
      case subpackages.RBAC016NotificationsforApproval.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.RBAC016NotificationsforApproval;
        break;
      case subpackages.RBAC018TenantAssignment.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.RBAC018TenantAssignment;
        break;
      case subpackages.RBAC019ChangeLog.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.RBAC019ChangeLog;
        break;
      case subpackages.RBAC020AccessControls.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.RBAC020AccessControls;
        break;
      case subpackages.IDM001Registrationmethod.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.IDM001Registrationmethod;
        break;
      case subpackages.IDM002ConfigureRegistration.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.IDM002ConfigureRegistration;
        break;
      case subpackages.IDM003Login.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.IDM003Login;
        break;
      case subpackages.IDM004LoginOptions.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.IDM004LoginOptions;
        break;
      case subpackages.IDM006PasswordExpiry.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.IDM006PasswordExpiry;
        break;
      case subpackages.IDM007ForgetPassword.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.IDM007ForgetPassword;
        break;
      case subpackages.IDM008ChangePassword.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.IDM008ChangePassword;
        break;
      case subpackages.IDM0092FA.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.IDM0092FA;
        break;
      case subpackages.IDM011SSO.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.IDM011SSO;
        break;
      case subpackages.IDM016LoginImpersonation.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.IDM016LoginImpersonation;
        break;
      case subpackages.IDM017LoginLogs.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.IDM017LoginLogs;
        break;
      case subpackages.IDM021UsernameChange.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.IDM021UsernameChange;
        break;
      case subpackages.IDM023Platformloginui.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.IDM023Platformloginui;
        break;
      case subpackages.Multitenancy.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Multitenancy;
        break;
      case subpackages.PRM001CreateNewPromotion.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PRM001CreateNewPromotion;
        break;
      case subpackages.PRM002ListPromotions.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PRM002ListPromotions;
        break;
      case subpackages.PRM003UpdatePromotion.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PRM003UpdatePromotion;
        break;
      case subpackages.PRE001SelectModelsViews.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PRE001SelectModelsViews;
        break;
      case subpackages.PRE002ConfigureDataAssociations.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PRE002ConfigureDataAssociations;
        break;
      case subpackages.PRE003DataAggregationGrouping.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PRE003DataAggregationGrouping;
        break;
      case subpackages.PRE004ImplementFilteringOptions.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PRE004ImplementFilteringOptions;
        break;
      case subpackages.PRE005DefineCalculatedFields.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PRE005DefineCalculatedFields;
        break;
      case subpackages.PRE006FinalizetheView.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PRE006FinalizetheView;
        break;
      case subpackages.PRE007CreateNewMeasure.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PRE007CreateNewMeasure;
        break;
      case subpackages.PRE008AllowMultipleMeasures.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PRE008AllowMultipleMeasures;
        break;
      case subpackages.PRE009CreateRulesUnderPromotion.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PRE009CreateRulesUnderPromotion;
        break;
      case subpackages.PRE010AllowMultipleRules.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PRE010AllowMultipleRules;
        break;
      case subpackages.PRE011ConfigureRuleConditions.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PRE011ConfigureRuleConditions;
        break;
      case subpackages.PRE012AssignRewards.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PRE012AssignRewards;
        break;
      case subpackages.PRE013ViewListofRules.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PRE013ViewListofRules;
        break;
      case subpackages.PRE014ExecutionofRules.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PRE014ExecutionofRules;
        break;
      case subpackages.USA001ProgramAccess.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USA001ProgramAccess;
        break;
      case subpackages.USA004ApprovalType.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USA004ApprovalType;
        break;
      case subpackages.USA005ApprovalType.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USA005ApprovalType;
        break;
      case subpackages.USA006ApprovalLevel.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USA006ApprovalLevel;
        break;
      case subpackages.USA007SuperApprover.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USA007SuperApprover;
        break;
      case subpackages.USA008UserStatuses.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USA008UserStatuses;
        break;
      case subpackages.USA010ApprovalPage.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USA010ApprovalPage;
        break;
      case subpackages.USA011ApprovalNotification.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USA011ApprovalNotification;
        break;
      case subpackages.USA004ApprovalTypeHierarchyJobRoleMobile.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USA004ApprovalTypeHierarchyJobRoleMobile;
        break;
      case subpackages.USA005ApprovalTypeAudienceMobile.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USA005ApprovalTypeAudienceMobile;
        break;
      case subpackages.USA006ApprovalLevelMobile.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USA006ApprovalLevelMobile;
        break;
      case subpackages.USA007SuperApproverMobile.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USA007SuperApproverMobile;
        break;
      case subpackages.USA010ApprovalPageMobile.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.USA010ApprovalPageMobile;
        break;
      case subpackages.PDT001CreatenewProductGroup.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PDT001CreatenewProductGroup;
        break;
      case subpackages.PDT002ViewProductGroups.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PDT002ViewProductGroups;
        break;
      case subpackages.PDT003UpdateProductMetadata.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PDT003UpdateProductMetadata;
        break;
      case subpackages.PDT004AddUpdateProductsbyAdmin.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PDT004AddUpdateProductsbyAdmin;
        break;
      case subpackages.PDT005AddUpdateProductsSFTP.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PDT005AddUpdateProductsSFTP;
        break;
      case subpackages.PDT006AddupdateproductsAPIIntegration.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PDT006AddupdateproductsAPIIntegration;
        break;
      case subpackages.PDT007ViewUploadedproducts.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PDT007ViewUploadedproducts;
        break;
      case subpackages.PDT008SearchUploadedProducts.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PDT008SearchUploadedProducts;
        break;
      case subpackages.PDT009UpdateSalesMetadata.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PDT009UpdateSalesMetadata;
        break;
      case subpackages.PDT010AddUpdateSalesbyAdmin.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PDT010AddUpdateSalesbyAdmin;
        break;
      case subpackages.PDT011AddUpdateSalesSFTP.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PDT011AddUpdateSalesSFTP;
        break;
      case subpackages.PDT012AddupdateSalesAPIIntegration.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PDT012AddupdateSalesAPIIntegration;
        break;
      case subpackages.PDT013SaleuniqueIdentifier.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PDT013SaleuniqueIdentifier;
        break;
      case subpackages.PDT014SalesAndClaims.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PDT014SalesAndClaims;
        break;
      case subpackages.PDT015ViewSales.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PDT015ViewSales;
        break;
      case subpackages.PDT016SearchSales.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PDT016SearchSales;
        break;
      case subpackages.PDT017Product.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PDT017Product;
        break;
      case subpackages.PDT018SalesImportWorkflow.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PDT018SalesImportWorkflow;
        break;
      case subpackages.PDT019Rollingchildsalestoparentsales.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PDT019Rollingchildsalestoparentsales;
        break;
      case subpackages.PDT020QtyValueInSalesTable.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PDT020QtyValueInSalesTable;
        break;
      case subpackages.PDT022OfflineProducts.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PDT022OfflineProducts;
        break;
      case subpackages.BHV001CreateNewBehaviourGroup.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.BHV001CreateNewBehaviourGroup;
        break;
      case subpackages.BHV002ViewBehaviourGroups.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.BHV002ViewBehaviourGroups;
        break;
      case subpackages.BHV003CreateBehaviourMetadata.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.BHV003CreateBehaviourMetadata;
        break;
      case subpackages.BHV004AddUpdateBehavioursbyAdmin.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.BHV004AddUpdateBehavioursbyAdmin;
        break;
      case subpackages.BHV005AddUpdateBehavioursSFTP.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.BHV005AddUpdateBehavioursSFTP;
        break;
      case subpackages.BHV006AddUpdateBehavioursAPIIntegration.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.BHV006AddUpdateBehavioursAPIIntegration;
        break;
      case subpackages.BHV007ViewUploadedBehaviours.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.BHV007ViewUploadedBehaviours;
        break;
      case subpackages.BHV008SearchUploadedBehaviours.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.BHV008SearchUploadedBehaviours;
        break;
      case subpackages.BHV009CreateExecutionMetadata.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.BHV009CreateExecutionMetadata;
        break;
      case subpackages.BHV010AddUpdateExecutionFileUploadByAdmin.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.BHV010AddUpdateExecutionFileUploadByAdmin;
        break;
      case subpackages.BHV011AddUpdateExecutionSFTP.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.BHV011AddUpdateExecutionSFTP;
        break;
      case subpackages.BHV012AddUpdateExecutionAPIIntegration.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.BHV012AddUpdateExecutionAPIIntegration;
        break;
      case subpackages.BHV013ViewExecutionDetails.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.BHV013ViewExecutionDetails;
        break;
      case subpackages.BHV014SearchExecutionDetails.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.BHV014SearchExecutionDetails;
        break;
      case subpackages.CMS001AddEditContent.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS001AddEditContent;
        break;
      case subpackages.CMS002ApiIntegration.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS002ApiIntegration;
        break;
      case subpackages.CMS003TranslateContentinStrapi.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS003TranslateContentinStrapi;
        break;
      case subpackages.CMS004DynamicLabelfetching.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS004DynamicLabelfetching;
        break;
      case subpackages.CMS005TranslateLabelsinStrapi.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS005TranslateLabelsinStrapi;
        break;
      case subpackages.CMS006SetupCommunicationContent.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS006SetupCommunicationContent;
        break;
      case subpackages.CMS007TranslateCommunicationContent.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS007TranslateCommunicationContent;
        break;
      case subpackages.CMS008ManageMessagePages.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS008ManageMessagePages;
        break;
      case subpackages.CMS009ConfigureNewPages.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS009ConfigureNewPages;
        break;
      case subpackages.CMS010TranslatePages.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS010TranslatePages;
        break;
      case subpackages.CMS011ContentStorage.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS011ContentStorage;
        break;
      case subpackages.CMS012DynamicLanguageFileManagement.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS012DynamicLanguageFileManagement;
        break;
      case subpackages.CMS013RealtimeLanguageFileFetching.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS013RealtimeLanguageFileFetching;
        break;
      case subpackages.CMS014CachingforLanguage.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS014CachingforLanguage;
        break;
      case subpackages.CMS015UpdateNotification.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS015UpdateNotification;
        break;
      case subpackages.CMS016LanguageFileEndpoint.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS016LanguageFileEndpoint;
        break;
      case subpackages.CMS017DynamicFetchingonNextjs.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS017DynamicFetchingonNextjs;
        break;
      case subpackages.CMS018ImportExportTranslationsinStrapi.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS018ImportExportTranslationsinStrapi;
        break;
      case subpackages.CMS019CsvGeneration.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS019CsvGeneration;
        break;
      case subpackages.CMS020ConflictHandling.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS020ConflictHandling;
        break;
      case subpackages.CMS021PrebuiltTemplate.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS021PrebuiltTemplate;
        break;
      case subpackages.CMS022ContentMigration.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS022ContentMigration;
        break;
      case subpackages.CMS023ContentPreview.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS023ContentPreview;
        break;
      case subpackages.CMS.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMS;
        break;
      case subpackages.UploadTemplate.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.uploadTemplate;
        break;
      case subpackages.FLE001Createnode.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FLE001Createnode;
        break;
      case subpackages.FLE003CreateFlows.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FLE003CreateFlows;
        break;
      case subpackages.FLE008FlowExecutionMetric.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FLE008FlowExecutionMetric;
        break;
      case subpackages.FLE010FlowErrorException.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FLE010FlowErrorException;
        break;
      case subpackages.CMF014FormEligibility.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF014FormEligibility;
        break;
      case subpackages.CMF009CombinationofProductandBehaviour.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF009CombinationofProductandBehaviour;
        break;
      case subpackages.CMF032AddSameProductMultipleTimes.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF032AddSameProductMultipleTimes;
        break;
      case subpackages.CMF013ConfigureDeadline_preloadedSales.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF013ConfigureDeadline_preloadedSales;
        break;
      case subpackages.CMF015ClaimandChallengeWindow.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF015ClaimandChallengeWindow;
        break;
      case subpackages.CMF016ResolutionandResubmissionWindow.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF016ResolutionandResubmissionWindow;
        break;
      case subpackages.CMF010CreateForm_preloadedsales.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF010CreateForm_preloadedsales;
        break;
      case subpackages.CMF005ClaimNotification.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF005ClaimNotification;
        break;
      case subpackages.CMF022FieldFromTable_Invoice.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF022FieldFromTable_Invoice;
        break;
      case subpackages.CMF024ConfigDocument_Invoice.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF024ConfigDocument_Invoice;
        break;
      case subpackages.CMF020InvoiceBasedClaimForm.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF020InvoiceBasedClaimForm;
        break;
      case subpackages.CMF023FormConfigurationandDeadlines.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF023FormConfigurationandDeadlines;
        break;
      case subpackages.CMF033ClaimApproval.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF033ClaimApproval;
        break;
      case subpackages.CMF027ConfigClaimForm.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF027ConfigClaimForm;
        break;
      case subpackages.CMF034ClaimHistory.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF034ClaimHistory;
        break;
      case subpackages.CMF035FilterClaimHistory.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF035FilterClaimHistory;
        break;
      case subpackages.CMF041ClaimFormBehaviourEligibility.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF041ClaimFormBehaviourEligibility;
        break;
      case subpackages.CMF037ConfigBehaviourClaimForm.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF037ConfigBehaviourClaimForm;
        break;
      case subpackages.CMF008SameClaimForm.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF008SameClaimForm;
        break;
      case subpackages.CMF039ClaimDeadline_Behaviour.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF039ClaimDeadline_Behaviour;
        break;
      case subpackages.CMF039ClaimDeadline_Behaviour.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF039ClaimDeadline_Behaviour;
        break;
      case subpackages.CMF045ClaimApproval_Open_Participants.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF045ClaimApproval_Open_Participants;
        break;
      case subpackages.CMF005ClaimNotification_Behaviour.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF005ClaimNotification_Behaviour;
        break;
      case subpackages.CMF015ClaimandChallengeWindow_Behaviour.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF015ClaimandChallengeWindow_Behaviour;
        break;
      case subpackages.CMF016ResolutionandResubmissionWindow_Behaviour.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF016ResolutionandResubmissionWindow_Behaviour;
        break;
      case subpackages.CMF054ClaimFormActions.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF054ClaimFormActions;
        break;
      case subpackages.CMF053ClaimBehaviourEligibility.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF053ClaimBehaviourEligibility;
        break;
      case subpackages.CMF052ClaimFormEligibilityPermission.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF052ClaimFormEligibilityPermission;
        break;
      case subpackages.CMF048ClaimFormConfigEvidenceBased.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF048ClaimFormConfigEvidenceBased;
        break;
      case subpackages.CMF051DocumentConfig.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF051DocumentConfig;
        break;
      case subpackages.CMF046BehaviourExecutionMetadata_EvidenceBased.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF046BehaviourExecutionMetadata_EvidenceBased;
        break;
      case subpackages.CMF050ConfigClaimDeadlines.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF050ConfigClaimDeadlines;
        break;
      case subpackages.CMF055ApproverPageAction.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF055ApproverPageAction;
        break;
      case subpackages.CMF058ClaimApprove_Hierarchy.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF058ClaimApprove_Hierarchy;
        break;
      case subpackages.CMF056HistoryClaim.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF056HistoryClaim;
        break;
      case subpackages.CMF057FilterHistory.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF057FilterHistory;
        break;
      case subpackages.CMF003ClaimApprovalSettings.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF003ClaimApprovalSettings;
        break;
      case subpackages.CMF016ResolutionAndResubmissionWindow.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF016ResolutionAndResubmissionWindow;
        break;
      case subpackages.CMF019ApproverPage.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF019ApproverPage;
        break;
      case subpackages.CMF015ClaimAndChallengeWindow.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF015ClaimAndChallengeWindow;
        break;
      case subpackages.CMF023FormConfigurationAndDeadlines.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF023FormConfigurationAndDeadlines;
        break;
      case subpackages.CMF041ClaimForm_BehaviourEligibility.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF041ClaimForm_BehaviourEligibility;
        break;
      case subpackages.CMF044ClaimApproval_Hierarchy_Jobrole.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF044ClaimApproval_Hierarchy_Jobrole;
        break;
      case subpackages.CMF017ClaimApproval_Hierarchy.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF017ClaimApproval_Hierarchy;
        break;
      case subpackages.CMF018ClaimApproval_Open.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF018ClaimApproval_Open;
        break;
      case subpackages.CMF005Claim_Notification.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF005Claim_Notification;
        break;
      case subpackages.CMF001FormBuilderClaimForm.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF001FormBuilderClaimForm;
        break;
      case subpackages.CMF007ClaimStatus.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF007ClaimStatus;
        break;
      case subpackages.CMF002ClaimSettings.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF002ClaimSettings;
        break;
      case subpackages.CMF024ConfigDocumentInvoice.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF024ConfigDocumentInvoice;
        break;
      case subpackages.CMF051Document_Config.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF051Document_Config;
        break;
      case subpackages.CMF005Claim_Notifications.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF005Claim_Notifications;
        break;
      case subpackages.CMF039Claim_Deadline_Behaviour.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF039Claim_Deadline_Behaviour;
        break;
      case subpackages.CMF010CreateFormpreloadedsales.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF010CreateFormpreloadedsales;
        break;
      case subpackages.CMF008Same_ClaimForm.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF008Same_ClaimForm;
        break;
      case subpackages.CMF011ConfigureFields_preloadedSales.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF011ConfigureFields_preloadedSales;
        break;
      case subpackages.CMF013Configure_Deadline_preloadedSales.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF013Configure_Deadline_preloadedSales;
        break;
      case subpackages.CMF004HelpContent.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF004HelpContent;
        break;
      case subpackages.CMF020InvoiceBased_ClaimForm.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF020InvoiceBased_ClaimForm;
        break;
      case subpackages.CMF031ProductSearch.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF031ProductSearch;
        break;
      case subpackages.CMF025ClaimFormEligibility.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF025ClaimFormEligibility;
        break;
      case subpackages.CMF021InvoiceBasedClaimFormOnlyOne.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF021InvoiceBasedClaimFormOnlyOne;
        break;
      case subpackages.CMF022FieldFromTableInvoice.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF022FieldFromTableInvoice;
        break;
      case subpackages.CMF023FormConfiguration_Deadlines.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF023FormConfiguration_Deadlines;
        break;
      case subpackages.CMF033Claim_Approval.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF033Claim_Approval;
        break;
      case subpackages.CMF028SaleTypeConfig.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF028SaleTypeConfig;
        break;
      case subpackages.CMF036BehaviourExecutionMetadata.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF036BehaviourExecutionMetadata;
        break;
      case subpackages.CMF040ClaimFormEligibilityAccess.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF040ClaimFormEligibilityAccess;
        break;
      case subpackages.CMF037Config_BehaviourClaimForm.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF037Config_BehaviourClaimForm;
        break;
      case subpackages.CMF043ClaimForm_ActionsDeadline.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF043ClaimForm_ActionsDeadline;
        break;
      case subpackages.CMF046Behaviour_ExecutionMetadata_EvidenceBased.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF046Behaviour_ExecutionMetadata_EvidenceBased;
        break;
      case subpackages.CMF054ClaimForm_Actions.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF054ClaimForm_Actions;
        break;
      case subpackages.CMF006ClaimAuditLogs.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CMF006ClaimAuditLogs;
        break;
      case subpackages.PRM001CreateNewPromotion_SellXGetY.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PRM001CreateNewPromotion_SellXGetY;
        break;
      case subpackages.DPDCreate.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.DPDCreate;
        break;
      case subpackages.DPDAudience.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.DPDAudience;

      case subpackages.DPDViews.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.DPDViews;
        break;
      case subpackages.DPDUpload.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.DPDUpload;
        break;
      case subpackages.DPDMeasure.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.DPDMeasure;
        break;
      case subpackages.DPDBanking.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.DPDBanking;
        break;
      case subpackages.DPDMeasureRules.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.DPDMeasureRules;
        break;
      case subpackages.RewardRuleDPD.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.RewardRuleDPD;
        break;
      case subpackages.DPDRulePayout.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.DPDRulePayout;
        break;
      case subpackages.DPDcommunication.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.DPDcommunication;
        break;
      case subpackages.DPDDashboard.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.DPDDashboard;
        break;
      case subpackages.PointsDeposit.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PointsDeposit;
        break;
      case subpackages.payoutConfig.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.payoutConfig;
        break;
      case subpackages.PreloadedSales_withUsers.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PreloadedSales_withUsers;
        break;
      case subpackages.PreloadedSales_withoutUsers.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PreloadedSales_withoutUsers;
        break;
      case subpackages.invoiceClaim.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.invoiceClaim;
        break;
      case subpackages.userperspective.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.userperspective;
        break;
      case subpackages.productperspective.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.productperspective;
        break;
      case subpackages.saleperspective.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.saleperspective;
        break;
      case subpackages.BankingConfig.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.BankingConfig;
        break;
      case subpackages.BankingTrigger.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.BankingTrigger;
        break;
      case subpackages.addRule.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.AddRule;
        break;
      case subpackages.ruleVariable.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.AddVariable;
        break;
      case subpackages.rewardConfiguration.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.RewardConfiguration;
        break;
      case subpackages.awardReward.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.AwardReward;
        break;
      case subpackages.uniqueKey.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.UniqueKey;
        break;
      case subpackages.triggerConfig.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.TriggerConfig;
        break;
      case subpackages.Adminconfiguration.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Adminconfiguration;
        break;
      case subpackages.Platformsite.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Platformsite;
        break;
      case subpackages.Adminconfiguration_GQ.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Adminconfiguration_GQ;
        break;
      case subpackages.PreloadedSales_GQ.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PreloadedSales_GQ;
        break;
      case subpackages.SalesClaim_GQ.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.SalesClaim_GQ;
        break;
      case subpackages.CommunicationNotification.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Communicationnotification;
        break;
      case subpackages.usertarget.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.UserTarget;
        break;
      case subpackages.usermultipletarget.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.UserMultipleTarget;
        break;
      case subpackages.organizationtarget.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.OrganizationTarget;
        break;
      case subpackages.organizationmultipletarget.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.OrganizationMultipleTarget;
        break;
      case subpackages.producttarget.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ProductTarget;
        break;
      case subpackages.productbundling.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ProductBundling;
        break;
      case subpackages.promotionlogs.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.promotionlogs;
        break;
      case subpackages.measurelogs.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.measurelogs;
        break;
      case subpackages.communicationlogs.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.communicationlogs;
        break;
      case subpackages.MultipleMeasure.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.multipleMeasure;
        break;
      case subpackages.pages.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.pages;
        break;
      case subpackages.content.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.content;
        break;
      case subpackages.widgets.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.widgets;
        break;
      case subpackages.ManualNotification.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.manualNotification;
        break;
      case subpackages.EventbasedNotification.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.eventbasednotification;
        break;
      case subpackages.Translation.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Translation;
        break;
      case subpackages.ExportTranslation.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ExportTranslation;
        break;
      case subpackages.ImportTranslation.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ImportTranslation;
        break;
      case subpackages.TranslationHistory.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.TranslationHistory;
        break;
      case subpackages.useridentitybased.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.useridentitybased;
        break;
      case subpackages.OrgHierarchyBased.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.OrgHierarchyBased;
        break;
      case subpackages.schemaFlow.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.schemaFlow;
        break;
      case subpackages.formbased.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.formbased;
        break;
      case subpackages.viewmeasure.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.viewmeasure;
        break;
      case subpackages.preloadedSales.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.preloadedSales;
        break;
      case subpackages.salesClaim.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.salesClaim;
        break;
      case subpackages.invoiceClaim.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.invoiceClaim;
        break;
      case subpackages.promotion.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.promotion;
        break;
      case subpackages.cms.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.cms;
        break;
      case subpackages.audience.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.audience;
        break;
      case subpackages.menuBased.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MenuBased;
        break;
      case subpackages.pointBanking.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PointBanking;
        break;
      case subpackages.others.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Others;
        break;
      case subpackages.AchievoMenu.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.AchievoMenu;
        break;
      case subpackages.AchievoInvoiceClaim.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.AchievoInvoiceClaim;
        break;
      case subpackages.AchievoMessagecenter.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.AchievoMessagecenter;
        break;
      case subpackages.MobileOtp.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MobileOtp;
        break;
      case subpackages.notificationpreference.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.notificationpreference;
        break;
      case subpackages.PointStatement.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PointStatement;
        break;
      case subpackages.ProductSearch.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ProductSearch;
        break;
      case subpackages.AchievoSelfRegistration.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.AchievoSelfRegistration;
        break;
      case subpackages.AchievoUserApproval.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.AchievoUserApproval;
        break;
      case subpackages.Achievopassword.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Achievopassword;
        break;
      case subpackages.accountActivation.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.accountActivation;
        break;
      case subpackages.achievoCMS.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.achievoCMS;
        break;
      case subpackages.claims.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.claims;
        break;
      case subpackages.Access.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Access;
        break;
      case subpackages.Genee.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Genee;
        break;
      case subpackages.Hierarchyreport.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Hierarchyreport;
        break;
      case subpackages.Mobile.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Mobile;
        break;
      case subpackages.Configuration.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Configuration;
        break;
      case subpackages.StandardRegistrationActivation.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.StandardRegistrationActivation;
        break;
      case subpackages.StandardLogin.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.StandardLogin;
        break;
      case subpackages.StandardPointsEarned.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.StandardPointsEarned;
        break;
      case subpackages.StandardSales.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.StandardSales;
        break;
      case subpackages.StandardClaimsPreloaded.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.StandardClaimsPreloaded;
        break;
      case subpackages.StandardClaimsInvoice.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.StandardClaimsInvoice;
        break;
      case subpackages.StandardGoalQuest.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.StandardGoalQuest;
        break;
      case subpackages.StandardGame.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.StandardGame;
        break;
      case subpackages.StandardQuizActivity.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.StandardQuizActivity;
        break;
      case subpackages.hookscrudaccess.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.hookscrudaccess;
        break;
      case subpackages.SecureHooks.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.SecureHooks;
        break;
      case subpackages.pushhooks.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.pushhooks;
        break;
      case subpackages.gethooks.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.gethooks;
        break;
      case subpackages.common.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.common;
        break;
      case subpackages.erroredrecords.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.erroredrecords;
        break;
      case subpackages.hooksservice.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.hooksservice;
        break;
      case subpackages.defaultdata.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.defaultdata;
        break;
      case subpackages.newdata.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.newdata;
        break;
      case subpackages.rbacaccess.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.rbacaccess;
        break;
      case subpackages.rulebasedtier.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.rulebasedtier;
        break;
      case subpackages.tiersegments.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.tiersegments;
        break;
      case subpackages.tierupload.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.tierupload;
        break;
      case subpackages.tierbranding.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.tierbranding;
        break;
      case subpackages.tierrules.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.tierrules;
        break;
      case subpackages.tierreports.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.tierreports;
        break;
      case subpackages.rbac.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.rbac;
        break;
      case subpackages.createcoupon.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.createcoupon;
        break;
      case subpackages.setcouponstatus.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.setcouponstatus;
        break;
      case subpackages.editcoupon.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.editcoupon;
        break;
      case subpackages.viewcoupon.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.viewcoupon;
        break;
      case subpackages.uploadcouponproductpoints.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.uploadcouponproductpoints;
        break;
      case subpackages.defineaudienceandpoints.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.defineaudienceandpoints;
        break;
      case subpackages.couponexpiry.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.couponexpiry;
        break;
      case subpackages.updateproductpoints.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.updateproductpoints;
        break;
      case subpackages.generateresultsfile.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.generateresultsfile;
        break;
      case subpackages.setProductStatus.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.setProductStatus;
        break;
      case subpackages.activateInventorycouponaccount.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.activateInventorycouponaccount;
        break;
      case subpackages.accessInventorycouponportal.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.accessInventorycouponportal;
        break;
      case subpackages.validateUserRole.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.validateUserRole;
        break;
      case subpackages.geotagging.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.geotagging;
        break;
      case subpackages.createcouponbatch.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.createcouponbatch;
        break;
      case subpackages.mapProductToCoupon.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.mapProductToCoupon;
        break;
      case subpackages.disableCoupon.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.disableCoupon;
        break;
      case subpackages.couponCode.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.couponCode;
        break;
      case subpackages.barcode.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.barcode;
        break;
      case subpackages.qrcode.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.qrcode;
        break;
      case subpackages.downloadCouponBatch.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.downloadCouponBatch;
        break;
      case subpackages.filterCouponBatch.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.filterCouponBatch;
        break;
      case subpackages.parentChildBatchMapping.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.parentChildBatchMapping;
        break;
      case subpackages.downloadBatchMapping.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.downloadBatchMapping;
        break;
      case subpackages.optionalProductMapping.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.optionalProductMapping;
        break;
      case subpackages.initiateCouponClaim.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.initiateCouponClaim;
        break;
      case subpackages.validatecouponexistence.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.validatecouponexistence;
        break;
      case subpackages.validateactivebatch.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.validateactivebatch;
        break;
      case subpackages.couponValidityPeriod.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.couponValidityPeriod;
        break;
      case subpackages.UserAudienceMembership.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.UserAudienceMembership;
        break;
      case subpackages.preventDuplicateClaim.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.preventDuplicateClaim;
        break;
      case subpackages.singleAudienceMembership.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.singleAudienceMembership;
        break;
      case subpackages.displayValidationError.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.displayValidationError;
        break;
      case subpackages.updateClaimedInventoriesTable.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.updateClaimedInventoriesTable;
        break;
      case subpackages.createCouponPromotion.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.createCouponPromotion;
        break;
      case subpackages.bankBasePoints.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.bankBasePoints;
        break;
      case subpackages.splitBasePoints.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.splitBasePoints;
        break;
      case subpackages.allocateBasePoints.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.allocateBasePoints;
        break;
      case subpackages.triggerRules.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.triggerRules;
        break;
      case subpackages.promotionPointBanking.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.promotionPointBanking;
        break;
      case subpackages.couponClaimNotification.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.couponClaimNotification;
        break;
      case subpackages.couponPromotionNotification.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.couponPromotionNotification;
        break;
      case subpackages.couponFailureReport.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.couponFailureReport;
        break;
      case subpackages.uploadCoupon.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.uploadCoupon;
        break;
      case subpackages.fetchProductPointsDetails.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.fetchProductPointsDetails;
        break;
      case subpackages.validityDates.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.validityDates;
        break;
      case subpackages.largeCouponFiles.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.largeCouponFiles;
        break;
      case subpackages.couponStatus.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.couponStatus;
        break;
      case subpackages.couponViaHooks.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.couponViaHooks;
        break;
      case subpackages.shareResultsViaAPI.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.shareResultsViaAPI;
        break;
      case subpackages.manualCouponCode.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.manualCouponCode;
        break;
      case subpackages.displayClaimStatus.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.displayClaimStatus;
        break;
      case subpackages.provideErrorReasons.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.provideErrorReasons;
        break;
      case subpackages.splitScreen.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.splitScreen;
        break;
      case subpackages.claimHistoryonWeb.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.claimHistoryonWeb;
        break;
      case subpackages.claiminventorycoupons.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.claiminventorycoupons;
        break;
      case subpackages.excludeTierPoints.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.excludeTierPoints;
        break;
      case subpackages.PlatformTier.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.PlatformTier;
        break;
      case subpackages.TierAudience.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.TierAudience;
        break;
      case subpackages.TierReport.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.TierReport;
        break;
      case subpackages.TierApi.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.TierApi;
        break;
      case subpackages.TierHooks.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.TierHooks;
        break;
      case subpackages.OptoutinTier.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.OptoutinTier;
        break;
      case subpackages.ImportinTiers.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ImportinTiers;
        break;
      case subpackages.TierRules.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.TierRules;
        break;
      case subpackages.Movementreport.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Movementreport;
        break;
      case subpackages.TierNotification.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.TierNotification;
        break;
      case subpackages.TierSetupClosure.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.TierSetupClosure;
        break;
      case subpackages.TierAfterPublish.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.TierAfterPublish;
        break;
      case subpackages.organisationTier.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.organisationTier;
        break;
      case subpackages.editParticipantTier.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.editParticipantTier;
        break;
      case subpackages.orgTierHistory.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.orgTierHistory;
        break;
      case subpackages.defaulttier.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.defaulttier;
        break;
      case subpackages.tierSegment.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.tierSegment;
        break;
      case subpackages.organisationPerformance.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.organisationPerformance;
        break;
      case subpackages.refreshFrequency.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.refreshFrequency;
        break;
      case subpackages.evaluationPeriod.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.evaluationPeriod;
        break;
      case subpackages.rollingWindow.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.rollingWindow;
        break;
      case subpackages.individualactivation.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.individualactivation;
        break;
      case subpackages.commoncycle.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.commoncycle;
        break;
      case subpackages.hybridrolling.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.hybridrolling;
        break;
      case subpackages.aggregatePerformance.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.aggregatePerformance;
        break;
      case subpackages.entityType.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.entityType;
        break;
      case subpackages.exclusion.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.exclusion;
        break;
      case subpackages.tierSegmentOverlap.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.tierSegmentOverlap;
        break;
      case subpackages.tierActivity.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.tierActivity;
        break;
      case subpackages.dataView.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.dataView;
        break;
      case subpackages.timeZone.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.timeZone;
        break;
      case subpackages.promotionscore.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.promotionscore;
        break;
      case subpackages.tierEvaluation.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.tierEvaluation;
        break;
      case subpackages.tiersegmentChange.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.tiersegmentChange
        break;
      case subpackages.nullifyTier.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.nullifyTier;
        break;
      case subpackages.tierBonus.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.tierBonus;
        break;
      case subpackages.LXPCSAdmin_01.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSAdmin_01;
        break;
      case subpackages.LXPCSAdmin_02.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSAdmin_02;
        break;
      case subpackages.LXPCSAdmin_03.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSAdmin_03;
        break;
      case subpackages.LXPCSAdmin_04.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSAdmin_04;
        break;
      case subpackages.LXPCSAdmin_05.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSAdmin_05;
        break;
      case subpackages.LXPCSAdmin_06.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSAdmin_06;
        break;
      case subpackages.LXPCSAdmin_07.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSAdmin_07;
        break;
      case subpackages.LXPCSAdmin_08.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSAdmin_08;
        break;
      case subpackages.LXPCSAdmin_09.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSAdmin_09;
        break;
      case subpackages.LXPCSAdmin_10.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSAdmin_10;
        break;
      case subpackages.LXPCSAdmin_11.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSAdmin_11;
        break;
      case subpackages.LXPCSAdmin_12.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSAdmin_12;
        break;
      case subpackages.LXPCSAdmin_13.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSAdmin_13;
        break;
      case subpackages.LXPCSAdmin_14.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSAdmin_14;
        break;
      case subpackages.LXPCSAdmin_15.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSAdmin_15;
        break;
      case subpackages.LXPCSAdmin_16.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSAdmin_16;
        break;
      case subpackages.LXPCSPartnerPortal_01.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSPartnerPortal_01;
        break;
      case subpackages.LXPCSPartnerPortal_02.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSPartnerPortal_02;
        break;
      case subpackages.LXPCSPartnerPortal_03.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSPartnerPortal_03;
        break;
      case subpackages.LXPCSPartnerPortal_04.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSPartnerPortal_04;
        break;
      case subpackages.LXPCSPartnerPortal_05.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSPartnerPortal_05;
        break;
      case subpackages.LXPCSPartnerPortal_06.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSPartnerPortal_06;
        break;
      case subpackages.LXPCSPartnerPortal_07.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSPartnerPortal_07;
        break;
      case subpackages.LXPCSPartnerPortal_08.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSPartnerPortal_08;
        break;
      case subpackages.LXPCSPartnerPortal_09.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSPartnerPortal_09;
        break;
      case subpackages.LXPCSPartnerPortal_10.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPCSPartnerPortal_10;
        break;
      case subpackages.MyCourses_001.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MyCourses_001;
        break;
      case subpackages.ListofCourses_002.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ListofCourses_002;
        break;
      case subpackages.FilterCourses_003.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FilterCourses_003;
        break;
      case subpackages.ViewCourseDetails_004.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ViewCourseDetails_004;
        break;
      case subpackages.QuizCompletion_006.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.QuizCompletion_006;
        break;
      case subpackages.History_001.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.History_001;
        break;
      case subpackages.LearningpathDetails_002.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LearningpathDetails_002;
        break;
      case subpackages.AvoidDuplicateDisplay_003.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.AvoidDuplicateDisplay_003;
        break;
      case subpackages.SkillList_004.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.SkillList_004;
        break;
      case subpackages.Internationalization_005.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Internationalization_005;
        break;
      case subpackages.DataIsolation_002.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.DataIsolation_002;
        break;
      case subpackages.Learningcategory_003.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Learningcategory_003;
        break;
      case subpackages.MultilingualName_004.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MultilingualName_004;
        break;
      case subpackages.updatecategory_005.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.updatecategory_005;
        break;
      case subpackages.LearningTags_006.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LearningTags_006;
        break;
      case subpackages.TagsinMultilingual_007.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.TagsinMultilingual_007;
        break;
      case subpackages.UpdateTag_008.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.UpdateTag_008;
        break;
      case subpackages.LearningObject_009.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LearningObject_009;
        break;
      case subpackages.ViewLearningObject_010.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ViewLearningObject_010;
        break;
      case subpackages.ActionsonLearningObject_011.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ActionsonLearningObject_011;
        break;
      case subpackages.FilterLearningObject_012.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FilterLearningObject_012;
        break;
      case subpackages.CreateLearningObject_013.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CreateLearningObject_013;
        break;
      case subpackages.MultipleContentType_014.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MultipleContentType_014;
        break;
      case subpackages.Managecourse_015.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Managecourse_015;
        break;
      case subpackages.Filtercourse_016.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Filtercourse_016;
        break;
      case subpackages.Actionsoncourse_017.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Actionsoncourse_017;
        break;
      case subpackages.Createnewcourse_018.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Createnewcourse_018;
        break;
      case subpackages.Assigncourse_019.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Assigncourse_019;
        break;
      case subpackages.ParticipantCourseEligibility_020.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ParticipantCourseEligibility_020;
        break;
      case subpackages.LanguageSpecificLO_021.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LanguageSpecificLO_021;
        break;
      case subpackages.CourseCompletion_022.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CourseCompletion_022;
        break;
      case subpackages.QuizCompletion_023.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.QuizCompletion_023;
        break;
      case subpackages.CourseVersion_024.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CourseVersion_024;
        break;
      case subpackages.VersionSpecificMetrics_025.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.VersionSpecificMetrics_025;
        break;
      case subpackages.CreateCertificate_041.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CreateCertificate_041;
        break;
      case subpackages.CertificateTemplate_043.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.CertificateTemplate_043;
        break;
      case subpackages.MappingCertificateVariables_044.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MappingCertificateVariables_044;
        break;
      case subpackages.Notification_045.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Notification_045;
        break;
      case subpackages.NotificationMessages_050.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.NotificationMessages_050;
        break;
      case subpackages.ExportContent_051.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ExportContent_051;
        break;
      case subpackages.ImportContent_052.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ImportContent_052;
        break;
      case subpackages.LXPOffline.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPOffline;
        break;
      case subpackages.LXPDownloads.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.LXPDownload;
        break;
      case subpackages.BudgetPromotion.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.BudgetPromotion;
        break;
      case subpackages.ProfileLogincontrol.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ProfileLogincontrol;
        break;
      case subpackages.Earningcontrol.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Earningcontrol;
        break;
      case subpackages.Velocitythreshold.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Velocitythreshold;
        break;
      case subpackages.Redemptioncontrol.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Redemptioncontrol;
        break;
      case subpackages.Frauddashboard.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Frauddashboard;
        break;
      case subpackages.Fraudscore.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Fraudscore;
        break;
      case subpackages.FraudRisk.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FraudRisk;
        break;
      case subpackages.Fraudprofile.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Fraudprofile;
        break;
      case subpackages.UpdateFraudThreshold.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.UpdateFraudThreshold;
        break;
      case subpackages.Fraudprofilepage.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Fraudprofilepage;
        break;
      case subpackages.Notification.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.Notification;
        break;
      case subpackages.E2EFraud.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.E2EFraud;
        break;
      case subpackages.mobileFraud.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.mobileFraud;
        break;
      case subpackages.invoiceUpdated.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.invoiceUpdated;
        break;
      case subpackages.FraudnewCR.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.FraudnewCR;
        break;
      case subpackages.RewardsHub.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.RewardsHub;
        break;
      case subpackages.AppConfiguration.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.AppConfiguration;
        break;
      case subpackages.banklogs.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.banklogs;
        break;
      case subpackages.DataFlux.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.dataflux;
        break;
      case subpackages.USBank.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.usbank;
        break;
      case subpackages.UKBank.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.ukbank;
        break;
      case subpackages.PointExpiry.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.pointExpiry;
        break;
      case subpackages.mediaLibrary.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.MediaLibrary;
        break;
      case subpackages.cookiePolicies.toString():
        this.testSuiteSection = tuskrdata.tuskrparam.subpackage.cookiePolicies;
        break;
    }

    // ################## category ##################
    switch (scenario.pickle.tags[3].name) {
      case category.System.toString():
        this.category = tuskrdata.tuskrparam.category.system;
        break;
      case category.Scenario.toString():
        this.category = tuskrdata.tuskrparam.category.scenario;
        break;
      case category.Integration.toString():
        this.category = tuskrdata.tuskrparam.category.integration;
        break;
      case category.Navigation.toString():
        this.category = tuskrdata.tuskrparam.category.navigation;
        break;
      case category.EndtoEnd.toString():
        this.category = tuskrdata.tuskrparam.category.end2end;
        break;
    }

    // ################## subtype ##################
    switch (scenario.pickle.tags[4].name) {
      case subtype.Post.toString():
        this.subtype = tuskrdata.tuskrparam.subtype.post;
        break;
      case subtype.Get.toString():
        this.subtype = tuskrdata.tuskrparam.subtype.get;
        break;
      case subtype.Put.toString():
        this.subtype = tuskrdata.tuskrparam.subtype.put;
        break;
      case subtype.Delete.toString():
        this.subtype = tuskrdata.tuskrparam.subtype.delete;
        break;
      case subtype.GetSingle.toString():
        this.subtype = tuskrdata.tuskrparam.subtype.getsingle;
        break;
      case subtype.Form.toString():
        this.subtype = tuskrdata.tuskrparam.subtype.form;
        break;
      case subtype.List.toString():
        this.subtype = tuskrdata.tuskrparam.subtype.list;
        break;
      case subtype.Search.toString():
        this.subtype = tuskrdata.tuskrparam.subtype.search;
        break;
      case subtype.Filter.toString():
        this.subtype = tuskrdata.tuskrparam.subtype.filter;
        break;
      case subtype.Special.toString():
        this.subtype = tuskrdata.tuskrparam.subtype.special;
        break;
      case subtype.Detail.toString():
        this.subtype = tuskrdata.tuskrparam.subtype.detail;
        break;
      case subtype.Configure.toString():
        this.subtype = tuskrdata.tuskrparam.subtype.configure;
        break;
    }

    // ################## style ##################
    switch (scenario.pickle.tags[5].name) {
      case style.Functional.toString():
        this.style = tuskrdata.tuskrparam.style.functional;
        break;
      case style.Performance.toString():
        this.style = tuskrdata.tuskrparam.style.performance;
        break;
      case style.Security.toString():
        this.style = tuskrdata.tuskrparam.style.security;
        break;
      case style.UIUX.toString():
        this.style = tuskrdata.tuskrparam.style.uiux;
        break;
      case style.Acceptance.toString():
        this.style = tuskrdata.tuskrparam.style.acceptance;
        break;
    }


    // ################## Test type ##################
    switch (scenario.pickle.tags[6].name) {
      case testtype.Smoke.toString():
        this.tctag = tuskrdata.tuskrparam.tctag.smoke;
        break;
      case testtype.Positive.toString():
        this.tctag = tuskrdata.tuskrparam.tctag.positive;
        break;
      case testtype.Negative.toString():
        this.tctag = tuskrdata.tuskrparam.tctag.negative;
        break;
    }

    // ################## TC review status ##################
    switch (scenario.pickle.tags[7].name) {
      case tcreview.Reviewed.toString():
        this.tcreview = tuskrdata.tuskrparam.tcreview.reviewed;
        break;
      case tcreview.NotReviewed.toString():
        this.tcreview = tuskrdata.tuskrparam.tcreview.notreviewed;
        break;
      case tcreview.Closed.toString():
        this.tcreview = tuskrdata.tuskrparam.tcreview.closed;
        break;
      case tcreview.Deffered.toString():
        this.tcreview = tuskrdata.tuskrparam.tcreview.deffered;
        break;
      case tcreview.Inprogress.toString():
        this.tcreview = tuskrdata.tuskrparam.tcreview.inprogress;
        break;
    }

    // ################## TC viewer type ##################
    switch (scenario.pickle.tags[8].name) {
      case "@tenantadmin":
        this.tcview = tuskrdata.tuskrparam.tcview.tenantadmin;
        break;
      case "@superadmin":
        this.tcview = tuskrdata.tuskrparam.tcview.superadmin;
        break;
      case "@platformuser":
        this.tcview = tuskrdata.tuskrparam.tcview.platformuser;
        break;
      case "@multipleuser":
        this.tcview = tuskrdata.tuskrparam.tcview.multipleuser;
        break;
    }

    switch (scenario.pickle.tags[9].name) {
      case "@notupdated":
        this.totuskrupdate = true;
        break;
      case "@updated":
        this.totuskrupdate = false;
        break;
    }

    switch (scenario.pickle.tags[10].name) {
      case "@notautomated":
        this.automated = true;
        break;
      case "@automated":
        this.automated = false;
        break;
    }

    // console.log(scenario.pickle.steps);
    let previoussteptype = "";
    let previousstep = "";
    let currentsteptype = "";
    let currentstep = "";
    let nextsteptype = "";
    let nextstep = "";

    let description = [];
    let descriptioncomplete = "";
    let pre_conditions = [];
    let pre_conditionscomplete = "";
    let expectedresult = [];
    let expectedresultcomplete = "";

    for (let i = 0; i < scenario.pickle.steps.length; i++) {
      currentsteptype = scenario.pickle.steps[i].type;
      try { nextsteptype = scenario.pickle.steps[i + 1].type; }
      catch (err) { x++; }

      switch (scenario.pickle.steps[i].type) {
        case "Context":
          pre_conditions.push(scenario.pickle.steps[i].text);
          break;
        case "Action":
          description.push(scenario.pickle.steps[i].text);
          break;
        case "Outcome":
          expectedresult.push(scenario.pickle.steps[i].text);
          if (nextsteptype == "Action" || x > 0) {
            y++;
            for (let j = 0; j < expectedresult.length; j++) {
              expectedresult[j] = expectedresult[j] == undefined ? "" : expectedresult[j];
              expectedresultcomplete = expectedresultcomplete + ". " + expectedresult[j];
            }
            for (let k = 0; k < description.length; k++) {
              description[k] = description[k] == undefined ? "" : description[k];
              descriptioncomplete = descriptioncomplete + ". " + description[k];
            }
            for (let l = 0; l < pre_conditions.length; l++) {
              pre_conditions[l] = pre_conditions[l] == undefined ? "" : pre_conditions[l];
              pre_conditionscomplete = pre_conditionscomplete + ". " + pre_conditions[l];
            }

            if (descriptioncomplete.startsWith(".")) {
              descriptioncomplete = descriptioncomplete.substr(descriptioncomplete.indexOf(".") + 1);
            }
            if (expectedresultcomplete.startsWith(".")) {
              expectedresultcomplete = expectedresultcomplete.substr(expectedresultcomplete.indexOf(".") + 1);
            }
            if (pre_conditionscomplete.startsWith(".")) {
              pre_conditionscomplete = pre_conditionscomplete.substr(pre_conditionscomplete.indexOf(".") + 1);
            }

            this.tuskrsteps.push({
              "step": y,
              "description": descriptioncomplete,
              "expectedResult": expectedresultcomplete
            });
            description = [];
            descriptioncomplete = "";
            expectedresult = [];
            expectedresultcomplete = "";
          }
          break;
      }
    }
    // ".substr(pre_conditionscomplete.indexOf(" ")+1);
    pre_conditionscomplete = pre_conditionscomplete === "" ? "Authentication Setup" : pre_conditionscomplete;
    let tuskrcustomFields = new customFields(this.type, this.subtype, this.testSuite, this.tuskrsteps, this.category, pre_conditionscomplete, this.tcreview, this.tctag, this.tcview, this.automated);
    let tuskrsendingdata = new data(this.scenarioName, this.style, this.testSuite, this.testSuiteSection, tuskrcustomFields);
    let datatosend = "{\"data\": " + JSON.stringify(tuskrsendingdata) + "}";
    // console.log("payload is " + datatosend);
    // if (false) {
    await util.writingrequest(id, datatosend);

    if (this.totuskrupdate) {
      response = await apihelper.postwithauthtoken(
        tuskrdata.host,
        tuskrdata.testcaseEndpoint,
        datatosend,
        tuskrdata.permanentauth
      );
    }

    await new Promise((resolve) => setTimeout(resolve, 4500));
    this.response = response;
    let bodydata = JSON.stringify(response.body);
    await util.writingresponse(id, bodydata);
    // }
    // else { }
    // apidata.testcase.payload.data.name = "";
  } else {
    //console.log("Tuskr is not running");
  }
}


async function getprogramurl(tenantid) {
  // return apidata.tenant.tenanturl+"/"+tenantid+apidata.tenant.programurl;
  return apidata.tenant.programurl + tenantid + "/programs";
}

async function getaudienceurl(audienceid) {
  return apidata.audience.audienceurl + "/" + audienceid;
}

async function getorganizationurl(organizationId) {
  return apidata.user.organizationurl + "/" + organizationId;
}

async function getprogramconfigurl(tenantid) {
  return apidata.tenant.programurl + "/" + tenantid + "/configs";
}

async function gethierarchyurl(hierarchyId) {
  return apidata.user.hierarchyurl + "/" + hierarchyId;
}

async function getValidTenantId() {
  let tenantFile = await util.getvaliddata("tenant", "tenant");
  const tenantObject = JSON.parse(tenantFile);
  let tenantid = tenantObject.id;
  return tenantid;
}

async function getValidProgramId() {
  let programFile = await util.getvaliddata("tenant", "program");
  const programObject = JSON.parse(programFile);
  let programid = programObject.id;
  return programid;
}

async function getValidUITenantData(data) {
  let tenantFile = await util.getvaliddata("tenant", "tenantUI");
  const tenantObject = JSON.parse(tenantFile);
  let field = tenantObject[data];
  return field;
}

async function getValidProgramUIData(data) {
  let tenantFile = await util.getvaliddata("tenant", "programUI");
  const tenantObject = JSON.parse(tenantFile);
  let field = tenantObject[data];
  return field;
}



//create a function to pick a random string from array of string
async function randomStringfromArray(array) {
  return array[Math.floor(Math.random() * array.length)];
}

async function waitForPageLoad(page: Page, timeout = Number(process.env.slowwait) || 60000) {
  await page.waitForLoadState('domcontentloaded', { timeout });
  await page.waitForLoadState('networkidle', { timeout });
}

async function waitForElementClickable(element: Locator, timeout = Number(process.env.slowwait) || 60000) {
  await element.waitFor({ state: 'visible', timeout });
}

async function addgetmethodrequest(url: string, authobject: object, authorization: string, qparam: string, value: string) {
  let req = { "req": "get" };
  req["url"] = url;
  req["auth"] = JSON.stringify(authobject);
  req["authorization"] = authorization;
  req["qparam"] = qparam;
  req["qvalue"] = value;
  return req;
}

async function addgetmethodpathrequest(url: string, authobject: object, authorization: string, value: string) {
  let req = { "req": "get" };
  req["url"] = url;
  req["auth"] = JSON.stringify(authobject);
  req["authorization"] = authorization;
  req["path"] = value;
  return req;
}

async function adddeletemethodrequest(url: string, authobject: object, authorization: string, value: string) {
  let req = { "req": "delete" };
  req["deleting with"] = value + " value";
  req["url"] = url;
  req["auth"] = JSON.stringify(authobject);
  req["authorization"] = authorization;
  return req;
}

async function waitForFile(filePath, timeoutInSeconds, intervalInMillis) {
  const startTime = Date.now();
  const endTime = startTime + timeoutInSeconds * 1000;

  function checkFile() {
    if (fs.existsSync(filePath)) {
      console.log(`File "${filePath}" exists.`);
    } else {
      const currentTime = Date.now();
      if (currentTime < endTime) {
        setTimeout(checkFile, intervalInMillis);
      } else {
        console.log(`Timeout: File "${filePath}" did not exist within the timeout period.`);
      }
    }
  }

  checkFile();
}

async function randomLevel(length) {
  var result = '';
  var characters = '12345678';
  var charactersLength = characters.length;
  for (var i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return parseInt(result);
}

async function addingidlasttojson(data: string, id: string) {
  let datalength = data.length;
  let addingdata = data.substring(0, datalength - 1) + ",\"id\":\"" + id + "\"}";
  return addingdata;
}

async function getcommandenginepayload(payload: any) {
  let payloadstring = JSON.stringify(payload);
  return await getreplacequotes(payloadstring);
}

async function getreplacequotes(value: string) {
  return value.replace(/"/g, '\"');
}

//Create a randomVersion function
async function getRandomVersion() {
  const major = 1; // Major version always starts from 1
  const minor = Math.floor(Math.random() * 10); // Random minor version between 0 and 9
  const patch = Math.floor(Math.random() * 10); // Random patch version between 0 and 9

  return `${major}.${minor}.${patch}`;
}

// async function getname(){
//   faker.person.firstName();
// }

async function getDatefromUTCtoddmmyyyy(dateString: string) {
  const date = new Date(dateString);
  const day = ("0" + date.getUTCDate()).slice(-2);
  const month = ("0" + (date.getUTCMonth() + 1)).slice(-2);
  const year = date.getUTCFullYear();
  return `${day}/${month}/${year}`;
}

async function getapiuserdata(data) {
  let validUserdata = await util.getvaliddata("user", "user");
  let { payload: userdata } = JSON.parse(validUserdata);
  let payloadData = JSON.parse(userdata);
  let value = payloadData[data];
  return value;
}

async function getapiaddressdata(data) {
  let validAddressdata = await util.getvaliddata("user", "address");
  let { payload: addressdata } = JSON.parse(validAddressdata);
  let payloadData = JSON.parse(addressdata);
  let value = payloadData[data];
  return value;
}

async function getapiorganizationdata(data) {
  let validOrganizationdata = await util.getvaliddata("organization", "organization");
  let { payload: organizationdata } = JSON.parse(validOrganizationdata);
  let payloadData = JSON.parse(organizationdata);
  let value = payloadData[data];
  return value;
}

async function getRandomArrayElement(array) {
  return array[Math.floor(Math.random() * array.length)];
}

async function writeData(path, filename, activationCode) {
  let filepath = `${process.cwd()}/data/validdata/${path}/${filename}.json`;
  let data = await fs.readFileSync(filepath, 'utf8');
  let userData = JSON.parse(data);
  userData.activationCode = activationCode;
  await fs.promises.writeFile(filepath, JSON.stringify(userData, null, 2));
}

async function tenantProgramUUIDfromURL(url) {
  const regex = /\/([0-9a-fA-F-]+)\/program\/([0-9a-fA-F-]+)\/hierarchy\/org\//;
  const matches = url.match(regex)
  if (matches && matches.length === 3) {
    const TenantUUID = matches[1];
    const ProgramUUID = matches[2];
    return { TenantUUID, ProgramUUID };
  } else {
    throw new Error('URL format does not match expected pattern');
  }
}

async function getRandomMaritialStatus() {
  let status = ["Single", "Married", "Divorced", "Widowed"];
  const randomStatus = Math.floor(Math.random() * status.length);
  return status[randomStatus];
}

async function currentDateForUsers() {
  const currentDate = new Date();
  const monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
  const month = monthNames[currentDate.getMonth()];
  const day = currentDate.getDate().toString().padStart(2, '0');
  let date = `${month}${day}`;
  return date;
}

async function fakerremoveQuotes(value) {
  return value.replace("'", "");
}

// async function setDateForPromotion(daysOffset) {
//   function formatDate(date: Date): string {
//     const options: Intl.DateTimeFormatOptions = {
//       year: 'numeric',
//       month: '2-digit',
//       day: '2-digit',
//       hour: '2-digit',
//       minute: '2-digit',
//       hour12: true
//     };
//     return new Intl.DateTimeFormat('en-US', options).format(date);
//   }


//   const date = new Date();
//   date.setDate(date.getDate() + daysOffset);
//   const formattedDate = formatDate(date);
//   return formattedDate;
// }

async function setDateForPromotion(daysOffset) {
  function formatDate(date) {
    const month = String(date.getMonth() + 1).padStart(2, '0');
    const day = String(date.getDate()).padStart(2, '0');
    const year = date.getFullYear();

    let hours = date.getHours();
    const minutes = String(date.getMinutes()).padStart(2, '0');
    const ampm = hours >= 12 ? 'PM' : 'AM';
    hours = hours % 12;
    hours = hours ? String(hours).padStart(2, '0') : '12';

    return `${month}/${day}/${year} ${hours}:${minutes} ${ampm}`;
  }

  const date = new Date();
  date.setDate(date.getDate() + daysOffset);
  const formattedDate = formatDate(date);

  return formattedDate;
}

async function writePromotionData(path, filename, promotionId) {
  let filepath = `${process.cwd()}/data/PromotionCSV/${path}/${filename}.json`;
  let data = fs.readFileSync(filepath, 'utf8');
  let promotionData = JSON.parse(data);
  promotionData.promotionId = promotionId;
  await fs.promises.writeFile(filepath, JSON.stringify(promotionData, null, 2));
}

async function getPromotionViewData(path: string, filename: string, key: string) {
  let filepath = `${process.cwd()}/data/PromotionCSV/${path}/${filename}.json`
  let data = fs.readFileSync(filepath, 'utf8');
  let validdata = JSON.parse(data);
  let value = validdata[key];
  return value;
}

async function getPromotionData(path: string, filename: string) {
  let filepath = `${process.cwd()}/data/PromotionCSV/${path}/${filename}.json`
  let data = fs.readFileSync(filepath, 'utf8');
  let validdata = JSON.parse(data);
  return validdata;
}

async function update_BCTenantData(sectionPath, key, value): Promise<void> {
  const filepath = path.join(process.cwd(), "/data/tenantData.json");
  try {
    // Read existing JSON
    const fileData = await fs.promises.readFile(filepath, 'utf8');
    const jsonData = JSON.parse(fileData);

    // Resolve section path dynamically
    const pathKeys = sectionPath.split('.');
    let current = jsonData;

    for (const pathKey of pathKeys) {
      if (!current[pathKey]) {
        current[pathKey] = {};
      }
      current = current[pathKey];
    }

    // Update dynamic key
    current[key] = value;

    // Write back updated JSON
    await fs.promises.writeFile(
      filepath,
      JSON.stringify(jsonData, null, 4),
      'utf8'
    );
  } catch (err) {
    console.error('Failed to update tenant data:', err);
  }
}

async function waitTillElementDisappears(element: Locator, timeout = Number(process.env.fastwait) || 5000) {
  await element.waitFor({
    state: 'hidden',
    timeout
  });
}




// export all the functions
export const util = {
  waitTillElementDisappears,
  update_BCTenantData,
  getPromotionViewData,
  getPromotionData,
  writePromotionData,
  setDateForPromotion,
  fakerremoveQuotes,
  currentDateForUsers,
  getRandomMaritialStatus,
  getValidProgramUIData,
  getapiorganizationdata,
  getapiaddressdata,
  getapiuserdata,
  randomString,
  randomEmail,
  randomWebsite,
  randomAlphanumericwithSpecialCharacter,
  randomAlphanumericwithSpace,
  randomAlphanumericwithSpaceandSpecial,
  randomAlphabetswithSpecialCharacter,
  randomAlphabetscwithSpace,
  randomAlphabetswithSpaceandSpecial,
  randomAlphabets,
  randomPhoneNumber,
  randomNumber,
  randomAlphanumeric,
  writingrequest,
  writingresponse,
  writingvaliddata,
  getvaliddata,
  randomSpecial,
  randomUUID,
  randomBoolean,
  tuskrpush,
  generateRandomDate,
  randomDateFuture,
  randomNumeric,
  addingidtoresponse,
  getprogramurl,
  getprogramconfigurl,
  getaudienceurl,
  waitForPageLoad,
  waitForElementClickable,
  randomStringfromArray,
  addgetmethodrequest,
  addgetmethodpathrequest,
  adddeletemethodrequest,
  waitForFile,
  getorganizationurl,
  randomColor,
  randomNumberwithSpace,
  randomNumericwithSpecialCharacter,
  randomLevel,
  gethierarchyurl,
  writingflow,
  writingintegration,
  addingidlasttojson,
  getreplacequotes,
  getcommandenginepayload,
  getflowdata,
  getRandomVersion,
  getRandomcountry,
  getRandomcurrency,
  getDatefromUTCtoddmmyyyy,
  randomDatePast,
  randomDateCurrent,
  getValidTenantId,
  getValidProgramId,
  getValidUITenantData,
  getRandomuserFormTitle,
  randomCode,
  getRandomArrayElement,
  getvaliddatavalue,
  writeData,
  tenantProgramUUIDfromURL,
  getvaliddatavalue1
}

