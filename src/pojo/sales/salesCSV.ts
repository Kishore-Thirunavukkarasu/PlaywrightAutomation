class salesCSV {
    private rowid: string;
    private uniqueIdentifier: string;
    private invoiceNumber: string;
    private quantity: Number;
    private value: Number;
    private salesDate: string;
    private buyingOrganisation: string;
    private productId: string;
    private salesType: string;
    private origin: string;
    private sellingOrganisation: string;
    private userName: string;
    private recordType: string;

    // constructor() {
    //     this.rowid = "";
    //     this.uniqueIdentifier = "";
    //     this.invoiceNumber = "";
    //     this.quantity = 0;
    //     this.value = 0;
    //     this.salesDate = new Date();
    //     this.buyingOrganisation = "";
    //     this.productId = "";
    //     this.salesType = "";
    //     this.origin = "";
    //     this.sellingOrganisation = "";
    //     this.userName = "";
    // }


    getrowid(): string {
        return this.rowid;
    }
    setrowid(rowid: string): void {
        this.rowid = rowid;
    }
    getUniqueIdentifier(): string {
        return this.uniqueIdentifier;
    }
    setUniqueIdentifier(uniqueIdentifier: string): void {
        this.uniqueIdentifier = uniqueIdentifier;
    }
    getInvoiceNumber(): string {
        return this.invoiceNumber;
    }
    setInvoiceNumber(invoiceNumber: string): void {
        this.invoiceNumber = invoiceNumber;
    }
    getQuantity(): Number {
        return this.quantity;
    }
    setQuantity(quantity: Number): void {
        this.quantity = quantity;
    }
    getValue(): Number {
        return this.value;
    }
    setValue(value: Number): void {
        this.value = value;
    }
    getSalesDate(): string {
        return this.salesDate;
    }
    setSalesDate(salesDate: string): void {
        this.salesDate = salesDate;
    }
    getBuyingOrganisation(): string {
        return this.buyingOrganisation;
    }
    setBuyingOrganisation(buyingOrganisation: string): void {
        this.buyingOrganisation = buyingOrganisation;
    }
    getProductId(): string {
        return this.productId;
    }
    setProductId(productId: string): void {
        this.productId = productId;
    }
    getSalesType(): string {
        return this.salesType;
    }
    setSalesType(salesType: string): void {
        this.salesType = salesType;
    }
    getOrigin(): string {
        return this.origin;
    }
    setOrigin(origin: string): void {
        this.origin = origin;
    }
    getSellingOrganisation(): string {
        return this.sellingOrganisation;
    }
    setSellingOrganisation(sellingOrganisation: string): void {
        this.sellingOrganisation = sellingOrganisation;
    }
    getUserName(): string {
        return this.userName;
    }
    setUserName(userName: string): void {
        this.userName = userName;
    }
    getRecordType(): string {
        return this.recordType;
    }
    setRecordType(recordType: string): void {
        this.recordType = recordType;
    }
}

export default salesCSV;
