//create a new class for tenantContactPerson which has constructor along with the getter and setter methods for firstName, lastName, email, mobile, designation

// Path: ui_pojo/tenantContactPerson.ts

class tenantContactPerson{
    private firstName: string;
    private lastName: string;
    private email: string;
    private mobile: string;
    private designation: string;

    public getFirstName(): string {
        return this.firstName;
    }

    public setFirstName(firstName: string): void {
        this.firstName = firstName;
    }

    public getLastName(): string {
        return this.lastName;
    }

    public setLastName(lastName: string): void {
        this.lastName = lastName;
    }

    public getEmail(): string {
        return this.email;
    }

    public setEmail(email: string): void {
        this.email = email;
    }

    public getMobile(): string {
        return this.mobile;
    }

    public setMobile(mobile: string): void {
        this.mobile = mobile;
    }

    public getDesignation(): string {
        return this.designation;
    }

    public setDesignation(designation: string): void {
        this.designation = designation;
    }

}

export default tenantContactPerson;
