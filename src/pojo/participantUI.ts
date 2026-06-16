import data from "../data/testData.json";
import { util } from "../helper/util";

class participantUI {

    private title: string;
    private username: string;
    private firstName: string;
    private lastName: string;
    private country: string;
    private email: string;
    private gender: string;
    private countryCode: string;
    private mobileNumber: string;
    private timeZone: string;
    private language: string;
    private organization: string;
    private jobrole: string;

    public getTitle(): string {
        return this.title;
    }

    public setTitle(value: string) {
        this.title = value;
    }

    public getUsername(): string {
        return this.username;
    }

    public setUsername(value: string) {
        this.username = value;
    }

    public getFirstName(): string {
        return this.firstName;
    }

    public setFirstName(value: string) {
        this.firstName = value;
    }

    public getLastName(): string {
        return this.lastName;
    }

    public setLastName(value: string) {
        this.lastName = value;
    }

    public getCountry(): string {
        return this.country;
    }

    public setCountry(value: string) {
        this.country = value;
    }

    public getEmail(): string {
        return this.email;
    }

    public setEmail(value: string) {
        this.email = value;
    }

    public getGender(): string {
        return this.gender;
    }

    public setGender(value: string){
        this.gender = value;
    }

    public getCountryCode(): string {
        return this.countryCode;
    }

    public setCountryCode(value: string) {
        this.countryCode = value;
    }

    public getMobileNumber(): string {
        return this.mobileNumber;
    }

    public setMobileNumber(value: string) {
        this.mobileNumber = value;
    }

    public getTimeZone(): string {
        return this.timeZone;
    }

    public setTimeZone(value: string) {
        this.timeZone = value;
    }

    public getLanguage(): string {
        return this.language;
    }

    public setLanguage(value: string) {
        this.language = value;
    }

    public getOrganization(): string {
        return this.organization;
    }

    public setOrganization(value: string) {
        this.organization = value;
    }

    public getJobrole(): string {
        return this.jobrole;
    }

    public setJobrole(value: string) {
        this.jobrole = value;
    }

}


export default participantUI;

