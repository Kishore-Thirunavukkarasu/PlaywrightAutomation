class Tenant {
    private name: string;
    private code: string;
    private website: string;
    private address: string;
    private tenantURL: string;
    private state: string;
    private city: string;
    private zipCode: string;
    private currency: string;
    private country: string;

    constructor(name: string, code: string, website: string, address: string, tenantURL: string, state: string, city: string, zipCode: string, currency: string, country: string) {
        this.name = name;
        this.code = code;
        this.website = website;
        this.address = address;
        this.tenantURL = tenantURL;
        this.state = state;
        this.city = city;
        this.zipCode = zipCode;
        this.currency = currency;
        this.country = country;
    }

    getName() {
        return this.name;
    }

    getCode() {
        return this.code;
    }

    getWebsite() {
        return this.website;
    }

    getAddress() {
        return this.address;
    }

    getTenantURL() {
        return this.tenantURL
    }

    getState() {
        return this.state;
    }

    getCity() {
        return this.city;
    }

    getZipCode() {
        return this.zipCode;
    }

    getCurrency() {
        return this.currency;
    }

    getCountry() {
        return this.country;
    }
}

export default Tenant;
