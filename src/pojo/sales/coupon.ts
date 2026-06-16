class coupon {

    private name: string;
    private code: string;
    private category: string;
    private prefix: string;
    private suffix: string;
    private length: string;
    private status: string;
    private isAlphanumeric: string;


    getName(): string {
        return this.name;
    }
    setName(name: string): void {
        this.name = name;
    }
    getCode(): string {
        return this.code;
    }
    setCode(code: string): void {
        this.code = code;
    }
    getCategory(): string {
        return this.category;
    }
    setCategory(category: string): void {
        this.category = category;
    }
    getPrefix(): string {
        return this.prefix;
    }
    setPrefix(prefix: string): void {
        this.prefix = prefix;
    }
    getSuffix(): string {
        return this.suffix;
    }
    setSuffix(suffix: string): void {
        this.suffix = suffix;
    }
    getLength(): string {
        return this.length;
    }
    setLength(length: string): void {
        this.length = length;
    }
    getStatus(): string {
        return this.status;
    }
    setStatus(status: string): void {
        this.status = status;
    }
    getIsAlphanumeric(): string {
        return this.isAlphanumeric;
    }
    setIsAlphanumeric(isAlphanumeric: string): void {
        this.isAlphanumeric = isAlphanumeric;
    }

}

export default coupon;
