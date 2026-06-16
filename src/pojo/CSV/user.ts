//create a class with a constructor and declare the private variables as name, fatherName, monileNumber, email, address, city, state, country along with getters

class user {
    private name: string;
    private mobileNumber: number;
    private email: string;
    private address: string;
    private city: string;
    private country: string;

    constructor(name: string, mobileNumber: number, email: string, address: string, city: string, country: string) {
        this.name = name;
        this.mobileNumber = mobileNumber;
        this.email = email;
        this.address = address;
        this.city = city;
        this.country = country;
    }
    getName(): string {
        return this.name;
    }
    getMobileNumber(): number {
        return this.mobileNumber;
    }
    getEmail(): string {
        return this.email;
    }
    getAddress(): string {
        return this.address;
    }
    getCity(): string {
        return this.city;
    }
    
    getCountry(): string {
        return this.country;
    }

    setName(name: string): void {
        this.name = name;
    }

    setMobileNumber(mobileNumber: number): void {
        this.mobileNumber = mobileNumber;
    }

    setEmail(email: string): void {
        this.email = email;
    }

    setAddress(address: string): void {
        this.address = address;
    }

    setCity(city: string): void {
        this.city = city;
    }

    setCountry(country: string): void {
        this.country = country;
    }
}
export default user;

