class productCSV {
    private externalIdentifier: string;
    private description: string;
    private productStatus: string;
    private productType: string;
    private sku: string;
    private recordType: string;

    getExternalIdentifier(): string {
        return this.externalIdentifier;
    }
    setExternalIdentifier(externalIdentifier: string): void {
        this.externalIdentifier = externalIdentifier;
    }
    getDescription(): string {
        return this.description;
    }
    setDescription(description: string): void {
        this.description = description;
    }
    getProductStatus(): string {
        return this.productStatus;
    }
    setProductStatus(productStatus: string): void {
        this.productStatus = productStatus;
    }
    getProductType(): string {
        return this.productType;
    }
    setProductType(productType: string): void {
        this.productType = productType;
    }
    getSku(): string {
        return this.sku;
    }
    setSku(sku: string): void {
        this.sku = sku;
    }
    getRecordType(): string {
        return this.recordType;
    }
    setRecordType(recordType: string): void {
        this.recordType = recordType;
    }


}

export default productCSV;
