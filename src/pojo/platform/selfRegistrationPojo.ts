class selfRegistrationPojo{
    private jobRole: string;
    private organization: string;
    private title: string;
    private userName: string;
    private firstName: string;
    private lastName: string;
    private gender: string;
    private emailAddress: string;
    private countryCode: string;
    private mobileNumber: string;
    private language: string;
    private country: string;
    private timeZone: string;
   

    getJobRole():string{
        return this.jobRole;
    }

    setJobRole(jobRole:string){
        this.jobRole = jobRole;
    }

    getOrganization():string{
        return this.organization;
    }

    setOrganization(organization:string){
        this.organization = organization;
    }

    getTitle():string{
        return this.title;
    }

    setTitle(title:string){
        this.title = title;
    }

    getUserName():string{
        return this.userName;
    }

    setUserName(userName:string){
        this.userName = userName;
    }

    getFirstName():string{
        return this.firstName;
    }

    setFirstName(firstName:string){
        this.firstName = firstName;
    }

    getLastName():string{
        return this.lastName;
    }

    setLastName(lastName:string){
        this.lastName = lastName;
    }

    getGender():string{
        return this.gender;
    }

    setGender(gender:string){
        this.gender = gender
    }

    getEmailAddress():string{
        return this.emailAddress;
    }

    setEmailAddress(emailAddress:string){
        this.emailAddress = emailAddress;
    }

    getCountryCode():string{
        return this.countryCode;
    }

    setCountryCode(countryCode:string){
        this.countryCode = countryCode;
    }

    getMobileNumber():string{
        return this.mobileNumber;
    }

    setMobileNumber(mobileNumber:string){
        this.mobileNumber = mobileNumber;
    }

    getLanguage():string{
        return this.language;
    }

    setLanguage(language:string){
        this.language = language;
    }

    getCountry():string{
        return this.country;
    }

    setCountry(country:string){
        this.country = country;
    }

    getTimeZone():string{
        return this.timeZone;
    }

    setTimeZone(timeZone:string){
        this.timeZone = timeZone;
    }

}

export default selfRegistrationPojo;
