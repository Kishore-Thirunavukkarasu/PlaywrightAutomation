import { fakerEN_IN } from "@faker-js/faker";
import { faker } from "@faker-js/faker/locale/en_IN";

async function generateRandomCompanyName(length: number): Promise<string> {
    let companyName = '';
    while (companyName.length < length) {
        companyName += faker.company.buzzVerb();
    }
    let companySuffixes = faker.company.suffixes();
    companyName = companyName.slice(0, 1).toUpperCase() + companyName.slice(1);
    return companyName.slice(0, length) + ` ${companySuffixes[0]}`;
}

async function generateRandomName(length: number): Promise<string> {
    let name = '';
    while (name.length < length) {
        name += faker.person.firstName();
    }
    name = name.slice(0, 1).toUpperCase() + name.slice(1);
    return name.slice(0, length)
}

async function generateRandomEmail(length: number): Promise<string> {
    let email = '';
    while (email.length < length) {
        email += faker.internet.email();
    }
    // email.replace("-","");
    // email.replace(".","");
    // return email;
    return email.slice(0, length);
}

async function generateRandomAlphabet(length: number): Promise<string> {
    let alphabet = '';
    while (alphabet.length < length) {
        alphabet += faker.string.alpha()
    }
    return alphabet.slice(0, length)
}

async function generateRandomAlphanumeric(length: number): Promise<string> {
    let alphanumeric = '';
    while (alphanumeric.length < length) {
        alphanumeric += faker.string.alphanumeric();
    }
    alphanumeric = alphanumeric.slice(0, 1).toUpperCase() + alphanumeric.slice(1);
    return alphanumeric.slice(0, length)
}

async function generateRandomWebsite(length: number): Promise<string> {
    let website = "";
    while (website.length < length) {
        let companyname = await (await (await this.generateRandomCompanyName(length)).toLowerCase()).replace(/\s/g, "");
        website += "https://www." + companyname + ".com"
    }
    return website;
}

async function companyWebsite(companyname: string): Promise<string> {
    let website = "";
    let name = companyname.toLowerCase().replace(/\s/g, "");
    website += "https://www." + name + ".com"
    return website;
}

async function generateRandomAddress(length: number): Promise<string> {
    let address = '';
    while (address.length < length) {
        address += faker.location.city();
    }
    return address.slice(0, length)
}

async function generateRandomPhoneNumber(length: number): Promise<string> {
    let phoneNumber = '';
    while (phoneNumber.length < length) {
        phoneNumber += faker.phone.number();
    }
    return phoneNumber.slice(0, length)
}

async function generateRandomWord(length: number): Promise<string> {
    let word = '';
    while (word.length < length) {
        word += faker.word.words();
    }
    word = word.slice(0, 1).toUpperCase() + word.slice(1);
    return word.slice(0, length)
}

async function generateRandomPincode(): Promise<string> {
    let pincode = '';
    pincode += (fakerEN_IN.location.zipCode()).replace(/\s/g, "");
    return pincode;
}

async function generateRandomJobTitle(): Promise<string> {
    let jobTitle = '';
    jobTitle += faker.person.jobTitle();
    return jobTitle;
}

export default { generateRandomJobTitle, companyWebsite, generateRandomPincode, generateRandomPhoneNumber, generateRandomAddress, generateRandomWord, generateRandomWebsite, generateRandomAlphanumeric, generateRandomCompanyName, generateRandomName, generateRandomEmail, generateRandomAlphabet }
