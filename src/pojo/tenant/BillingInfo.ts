class BillingInfo{
    private GSTNo: string;
    private companyPAN: string;
    private businessName: string;
    private billingLabel: string;
    private CIN: string;
    private authorizedSignatoryPAN: string;

    constructor(GSTNo:string, companyPAN:string, businessName:string, billingLabel:string, CIN:string, authorizedSignatoryPAN:string){
        this.GSTNo = GSTNo;
        this.companyPAN = companyPAN;
        this.businessName = businessName;
        this.billingLabel = billingLabel;
        this.CIN = CIN;
        this.authorizedSignatoryPAN = authorizedSignatoryPAN;
    }

    getGSTNo(){
        return this.GSTNo;
    }

    getCompanyPAN(){
        return this.companyPAN;
    }

    getBusinessName(){
        return this.businessName;
    }

    getBillingLabel(){
        return this.billingLabel;
    }

    getCIN(){
        return this.CIN;
    }

    getAuthorizedSignatoryPAN(){
        return this.authorizedSignatoryPAN;
    }

}

export default BillingInfo;
