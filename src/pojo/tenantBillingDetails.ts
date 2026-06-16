//create a new class for tenantBillingDetails which has constructor along with the getter and setter methods for gstNumber, companyPAN, businessName, authorizedSignatoryPAN, billingLabel, cinNumber

// Path: ui_pojo/tenantBillingDetails.ts
class tenantBillingDetails{
    private gstNumber: string;
    private companyPAN: string;
    private businessName: string;
    private authorizedSignatoryPAN: string;
    private billingLabel: string;
    private cinNumber: string;

    public getGstNumber(): string {
        return this.gstNumber;
    }

    public setGstNumber(gstNumber: string): void {
        this.gstNumber = gstNumber;
    }

    public getCompanyPAN(): string {
        return this.companyPAN;
    }

    public setCompanyPAN(companyPAN: string): void {
        this.companyPAN = companyPAN;
    }

    public getBusinessName(): string {
        return this.businessName;
    }

    public setBusinessName(businessName: string): void {
        this.businessName = businessName;
    }

    public getAuthorizedSignatoryPAN(): string {
        return this.authorizedSignatoryPAN;
    }

    public setAuthorizedSignatoryPAN(authorizedSignatoryPAN: string): void {
        this.authorizedSignatoryPAN = authorizedSignatoryPAN;
    }

    public getBillingLabel(): string {
        return this.billingLabel;
    }

    public setBillingLabel(billingLabel: string): void {
        this.billingLabel = billingLabel;
    }

    public getCinNumber(): string {
        return this.cinNumber;
    }

    public setCinNumber(cinNumber: string): void {
        this.cinNumber = cinNumber;
    }

}
export default tenantBillingDetails;
