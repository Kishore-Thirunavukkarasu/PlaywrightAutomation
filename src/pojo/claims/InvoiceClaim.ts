class InvoiceClaimform {
    formname: string;
    formtitle: string;
    description: string;
    numberoffiles: string;
    maxfilesize: string;
    refdateforapproval: string;
    refdateforclaiming: string;
    saletype: string;
    uniqueidentifier: string;
    sellingorganisation: string;
    invoicename: string;
    value: string;
    quantity: string;
    salesdate: string;
    sellingorganization: string;

    getformname(): string {
        return this.formname;
    }

    setformname(formname: string): void {
        this.formname = formname;
    }

    getformtitle(): string {
        return this.formtitle;
    }

    setformtitle(formtitle: string): void {
        this.formtitle = formtitle;
    }

    getdescription(): string {
        return this.description;
    }

    setdescription(description: string): void {
        this.description = description;
    }

    getnumberoffiles(): string {
        return this.numberoffiles;
    }

    setnumberoffiles(numberoffiles: string): void {
        this.numberoffiles = numberoffiles;
    }

    getmaxfilesize(): string {
        return this.maxfilesize;
    }

    setmaxfilesize(maxfilesize: string): void {
        this.maxfilesize = maxfilesize;
    }

    getrefdateforapproval(): string {
        return this.refdateforapproval;
    }

    setrefdateforapproval(refdateforapproval: string): void {
        this.refdateforapproval = refdateforapproval;
    }

    getrefdateforclaiming(): string {
        return this.refdateforclaiming;
    }
    setrefdateforclaiming(refdateforclaiming: string): void {
        this.refdateforclaiming = refdateforclaiming;
    }

    getsaletype(): string {
        return this.saletype;
    }
    setsaletype(saletype: string): void {
        this.saletype = saletype;
    }

    getuniqueidentifier(): string {
        return this.uniqueidentifier;
    }
    setuniqueidentifier(uniqueidentifier: string): void {
        this.uniqueidentifier = uniqueidentifier;
    }

    getsellingorganisation(): string {
        return this.sellingorganisation;
    }
    setsellingorganisation(sellingorganisation: string): void {
        this.sellingorganisation = sellingorganisation;
    }

    // Form fields
    getinvoicename(): string {
        return this.invoicename;
    }

    setinvoicename(invoicename: string): void {
        this.invoicename = invoicename;
    }

    getvalue(): string {
        return this.value;
    }

    setvalue(value: string): void {
        this.value = value;
    }

    getquantity(): string {
        return this.quantity;
    }

    setquantity(quantity: string): void {
        this.quantity = quantity;
    }

    getsalesdate(): string {
        return this.salesdate;
    }

    setsalesdate(salesdate: string): void {
        this.salesdate = salesdate;
    }

    getsellingorganization(): string {
        return this.sellingorganization;
    }

    setsellingorganization(sellingorganization: string): void {
        this.sellingorganization = sellingorganization;
    }

}

export default InvoiceClaimform;
