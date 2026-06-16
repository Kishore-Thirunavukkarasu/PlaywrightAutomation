class salesClaim {
    private invoiceNumber: string;
    private quantity: number;
    private value: number;
    private date: string;
    private product: string;

    // Getters
    public getInvoiceNumber(): string {
        return this.invoiceNumber;
    }

    public getQuantity(): number {
        return this.quantity;
    }

    public getValue(): number {
        return this.value;
    }

    public getDate(): string {
        return this.date;
    }

    public getProduct(): string {
        return this.product;
    }

    // Setters
    public setInvoiceNumber(invoiceNumber: string): void {
        this.invoiceNumber = invoiceNumber;
    }

    public setQuantity(quantity: number): void {
        this.quantity = quantity;
    }

    public setValue(value: number): void {
        this.value = value;
    }

    public setDate(date: string): void {
        this.date = date;
    }

    public setProduct(product: string): void {
        this.product = product;
    }



}
export default salesClaim
