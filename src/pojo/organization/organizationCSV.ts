class organizationCSV {
    //name	description	code	phone	type	email	active	addressLine1	addressLine2	city	state	country	zipCode	hierarchyName1	hierarchyNode1	hierarchyName2	hierarchyNode2	hierarchyName3	hierarchyNode3	hierarchyCount
    private name: string;
    private description: string;
    private code: string;
    private phone: string;
    private orgType: string;
    private email: string;
    private active: boolean;
    private line1: string;
    private line2: string;
    private city: string;
    private state: string;
    private countryISOCode: string;
    private country: string;
    private postalCode: string;
    private hierarchyName1: string;
    private hierarchyNode1: string;
    private hierarchyName2: string;
    private hierarchyNode2: string;
    private hierarchyName3: string;
    private hierarchyNode3: string;
    private hierarchyLevels: string;

    getName(): string {
        return this.name;
    }

    setName(name: string): void {
        this.name = name;
    }

    getDescription(): string {
        return this.description;
    }

    setDescription(description: string): void {
        this.description = description;
    }

    getCode(): string {
        return this.code;
    }

    setCode(code: string): void {
        this.code = code;
    }

    getPhone(): string {
        return this.phone;
    }

    setPhone(phone: string): void {
        this.phone = phone;
    }

    getOrgType(): string {
        return this.orgType;
    }

    setOrgType(orgType: string): void {
        this.orgType = orgType;
    }

    getEmail(): string {
        return this.email;
    }

    setEmail(email: string): void {
        this.email = email;
    }

    getActive(): boolean {
        return this.active;
    }

    setActive(active: boolean): void {
        this.active = active;
    }

    getLine1(): string {
        return this.line1;
    }

    setLine1(line1: string): void {
        this.line1 = line1;
    }

    getLine2(): string {
        return this.line2;
    }

    setLine2(line2: string): void {
        this.line2 = line2;
    }

    getCity(): string {
        return this.city;
    }

    setCity(city: string): void {
        this.city = city;
    }

    getState(): string {
        return this.state;
    }

    setState(state: string): void {
        this.state = state;
    }

    getCountryISOCode(): string {
        return this.countryISOCode;
    }

    setCountryISOCode(countryISOCode: string): void {
        this.countryISOCode = countryISOCode;
    }

    getCountry(): string {
        return this.country;
    }

    setCountry(country: string): void {
        this.country = country;
    }

    getPostalCode(): string {
        return this.postalCode;
    }

    setPostalCode(postalCode: string): void {
        this.postalCode = postalCode;
    }

    getHierarchyName1(): string {
        return this.hierarchyName1;
    }

    setHierarchyName1(hierarchyName1: string): void {
        this.hierarchyName1 = hierarchyName1;
    }

    getHierarchyNode1(): string {
        return this.hierarchyNode1;
    }

    setHierarchyNode1(hierarchyNode1: string): void {
        this.hierarchyNode1 = hierarchyNode1;
    }

    getHierarchyName2(): string {
        return this.hierarchyName2;
    }

    setHierarchyName2(hierarchyName2: string): void {
        this.hierarchyName2 = hierarchyName2;
    }

    getHierarchyNode2(): string {
        return this.hierarchyNode2;
    }

    setHierarchyNode2(hierarchyNode2: string): void {
        this.hierarchyNode2 = hierarchyNode2;
    }

    getHierarchyName3(): string {
        return this.hierarchyName3;
    }

    setHierarchyName3(hierarchyName3: string): void {
        this.hierarchyName3 = hierarchyName3;
    }

    getHierarchyNode3(): string {
        return this.hierarchyNode3;
    }

    setHierarchyNode3(hierarchyNode3: string): void {
        this.hierarchyNode3 = hierarchyNode3;
    }

    getHierarchyLevels(): string {
        return this.hierarchyLevels;
    }

    setHierarchyLevels(hierarchyLevels: string): void {
        this.hierarchyLevels = hierarchyLevels;
    }


}
export default organizationCSV;
