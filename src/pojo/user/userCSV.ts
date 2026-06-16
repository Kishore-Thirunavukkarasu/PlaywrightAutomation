class userCSV {
    // title	country	email	gender	mobileNumber	timeZone	language	isSSO	status	organizationCode	roleName	firstName	lastName	dialCode	isoCountryCode	state	city	line1	line2	postalCode	maritalStatus	anniversaryDate	childName1	childName2	childName3	childDOB1	childDOB2	childDOB3	activationCode

    private username: string;
    private title: string;
    private country: string;
    private email: string;
    private gender: string;
    private mobileNumber: string;
    private timeZone: string;
    private language: string;
    private isSSO: boolean;
    private status: string;
    private organizationCode: string;
    private roleName: string;
    private firstName: string;
    private lastName: string;
    private dialCode: string;
    private isoCountryCode: string;
    private state: string;
    private city: string;
    private line1: string;
    private line2: string;
    private postalCode: string;
    private maritalStatus: string;
    private anniversaryDate: string;
    private childName1: string;
    private childName2: string;
    private childName3: string;
    private childDOB1: string;
    private childDOB2: string;
    private childDOB3: string;
    private activationCode: string;
    private isPrimaryJobRole: boolean;
    private isPrimaryOrganization: boolean;

    public getUserName(): string {
        return this.username;
    }
    public setUserName(value: string) {
        this.username = value;
    }
    public getTitle(): string {
        return this.title;
    }
    public setTitle(value: string) {
        this.title = value;
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
    public setGender(value: string) {
        this.gender = value;
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
    public getIsSSO(): boolean {
        return this.isSSO;
    }
    public setIsSSO(value: boolean) {
        this.isSSO = value;
    }
    public getStatus(): string {
        return this.status;
    }
    public setStatus(value: string) {
        this.status = value;
    }
    public getOrganizationCode(): string {
        return this.organizationCode;
    }
    public setOrganizationCode(value: string) {
        this.organizationCode = value;
    }
    public getRoleName(): string {
        return this.roleName;
    }
    public setRoleName(value: string) {
        this.roleName = value;
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
    public getDialCode(): string {
        return this.dialCode;
    }
    public setDialCode(value: string) {
        this.dialCode = value;
    }
    public getIsoCountryCode(): string {
        return this.isoCountryCode;
    }
    public setIsoCountryCode(value: string) {
        this.isoCountryCode = value;
    }
    public getState(): string {
        return this.state;
    }
    public setState(value: string) {
        this.state = value;
    }
    public getCity(): string {
        return this.city;
    }
    public setCity(value: string) {
        this.city = value;
    }
    public getLine1(): string {
        return this.line1;
    }

    public setLine1(value: string) {
        this.line1 = value;
    }
    public getLine2(): string {
        return this.line2;
    }
    public setLine2(value: string) {
        this.line2 = value;
    }
    public getPostalCode(): string {
        return this.postalCode;
    }
    public setPostalCode(value: string) {
        this.postalCode = value;
    }
    public getMaritalStatus(): string {
        return this.maritalStatus;
    }
    public setMaritalStatus(value: string) {
        this.maritalStatus = value;
    }
    public getAnniversaryDate(): string {
        return this.anniversaryDate;
    }
    public setAnniversaryDate(value: string) {
        this.anniversaryDate = value;
    }
    public getChildName1(): string {
        return this.childName1;
    }
    public setChildName1(value: string) {
        this.childName1 = value;
    }
    public getChildName2(): string {
        return this.childName2;
    }
    public setChildName2(value: string) {
        this.childName2 = value;
    }
    public getChildName3(): string {
        return this.childName3;
    }
    public setChildName3(value: string) {
        this.childName3 = value;
    }
    public getChildDOB1(): string {
        return this.childDOB1;
    }
    public setChildDOB1(value: string) {
        this.childDOB1 = value;
    }
    public getChildDOB2(): string {
        return this.childDOB2;
    }
    public setChildDOB2(value: string) {
        this.childDOB2 = value;
    }
    public getChildDOB3(): string {
        return this.childDOB3;
    }
    public setChildDOB3(value: string) {
        this.childDOB3 = value;
    }
    public getActivationCode(): string {
        return this.activationCode;
    }
    public setActivationCode(value: string) {
        this.activationCode = value;
    }
    public getIsPrimaryJobRole(): boolean {
        return this.isPrimaryJobRole;
    }
    public setIsPrimaryJobRole(value: boolean) {
        this.isPrimaryJobRole = value;
    }
    public getIsPrimaryOrganization(): boolean {
        return this.isPrimaryOrganization;
    }
    public setIsPrimaryOrganization(value: boolean) {
        this.isPrimaryOrganization = value;
    }


}
export default userCSV;
