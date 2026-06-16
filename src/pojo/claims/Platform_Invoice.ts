// POJO class for Invoice claim form page
class Platform_Invoice {
    private invoiceNumber: string;
    private quantity: number;
    private value: number;
    private saleDate: string;
    private product: string;
    private uploadFile: string;

    // Getters
    getInvoiceNumber(): string {
        return this.invoiceNumber;
    }

    getQuantity(): number {
        return this.quantity;
    }

    getValue(): number {
        return this.value;
    }

    getSaleDate(): string {
        return this.saleDate;
    }

    getProduct(): string {
        return this.product;
    }

    getUploadFile(): string {
        return this.uploadFile;
    }

    setInvoiceNumber(invoiceNumber: string): void {
        this.invoiceNumber = invoiceNumber;
    }

    setQuantity(quantity: number): void {
        this.quantity = quantity;
    }

    setValue(value: number): void {
        this.value = value;
    }

    setSaleDate(saleDate: string): void {
        this.saleDate = saleDate;
    }

    setProduct(product: string): void {
        this.product = product;
    }

    setUploadFile(uploadFile: string): void {
        this.uploadFile = uploadFile;
    }


}

// Export the class
export default Platform_Invoice;
