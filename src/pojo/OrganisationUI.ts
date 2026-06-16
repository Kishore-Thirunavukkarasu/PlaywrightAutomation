class organizationUI {
    private name: string;
    private code: string;
    private emailAddress: string;
    private phoneNumber: string;
    private orgType: string;
    private parentOrganization: any;
    private active: any
    private country: string;
    private line1: string;
    private line2: string;
    private state: string;
    private city: string;
    private postalCode: string;

    //generate getts and setters for this class

    public getName(): string {
        return this.name;
    }

    public setName(name: string): void {
        this.name = name;
    }

    public getCode(): string {
        return this.code;
    }

    public setCode(code: string): void {
        this.code = code;
    }

    public getEmailAddress(): string {
        return this.emailAddress;
    }

    public setEmailAddress(emailAddress: string): void {
        this.emailAddress = emailAddress;
    }

    public getPhoneNumber(): string {
        return this.phoneNumber;
    }

    public setPhoneNumber(phoneNumber: string): void {
        this.phoneNumber = phoneNumber;
    }

    public getCountry(): string {
        return this.country;
    }

    public setCountry(country: string): void {
        this.country = country;
    }

    public getLine1(): string {
        return this.line1;
    }

    public setLine1(line1: string): void {
        this.line1 = line1;
    }

    public getLine2(): string {
        return this.line2;
    }

    public setLine2(line2: string): void {
        this.line2 = line2;
    }

    public getState(): string {
        return this.state;
    }

    public setState(state: string): void {
        this.state = state;
    }

    public getCity(): string {
        return this.city;
    }

    public setCity(city: string): void {
        this.city = city;
    }

    public getPostalCode(): string {
        return this.postalCode;
    }

    public setPostalCode(postalcode: string): void {
        this.postalCode = postalcode;
    }

    public getParentOrganization(): any {
        return this.parentOrganization;
    }

    public setParentOrganization(parentOrganization: any): void {
        this.parentOrganization = parentOrganization;
    }

    public getActive(): any {
        return this.active;
    }

    public setActive(active: any): void {
        this.active = active;
    }

    public getOrganizationType(): string {
        return this.orgType;
    }

    public setOrganizationType(orgType: string): void {
        this.orgType = orgType;
    }

}

export default organizationUI;
