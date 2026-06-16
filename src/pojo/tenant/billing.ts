import BillingInfo from "./BillingInfo";

class TenantBilling{
    private billingInfo: BillingInfo;

    constructor(billingInfo:BillingInfo){
        this.billingInfo = billingInfo;
    }

    getbillingInfo(){
        return this.billingInfo
    }

}

export default TenantBilling;
