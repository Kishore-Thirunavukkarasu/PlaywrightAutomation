import { util } from "../helper/util";

class newTenant{
    private companyname: string;
    private companycode: string;
    private companywebsite: string;
    private country: string;
    private address: string;
    private state: string;
    private area: string;
    private pincode: string;

//    This class contains all tenant create UI variables used to store the data and setup function to store all values with valid data

    public getCompanyname(): string {
        return this.companyname;
    }
    public setCompanyname(companyname: string): void {    
        this.companyname = companyname;
    }

    public getCompanycode(): string {
        return this.companycode;
    }
    public setCompanycode(companycode: string): void {
        this.companycode = companycode;
    }

    public getCompanywebsite(): string {
        return this.companywebsite;
    }
    public setCompanywebsite(companywebsite: string): void {
        this.companywebsite = companywebsite;
    }

    public getCountry(): string {
        return this.country;
    }
    public setCountry(country: string): void {
        this.country = country;
    }

    public getAddress(): string {
        return this.address;
    }
    public setAddress(address: string): void {
        this.address = address;
    }

    public getState(): string {
        return this.state;
    }
    public setState(state: string): void {
        this.state = state;
    }

    public getArea(): string {
        return this.area;
    }
    public setArea(area: string): void {
        this.area = area;
    }

    public getPincode(): string {
        return this.pincode;
    }
    public setPincode(pincode: string): void {
        this.pincode = pincode;
    }

    // public paramsetup(parameter:string, value:string){
    //     switch(parameter) {
    //         case "companyname":
    //             this.setCompanyname(value);
    //             break;
    //         case "companycode":
    //             this.setCompanycode(value);
    //             break;
    //         case "companywebsite":
    //             this.setCompanywebsite(value);
    //             break;
    //         case "country":
    //             this.setCountry(value);
    //             break;
    //         case "address":
    //             this.setAddress(value);
    //             break;
    //         case "state":
    //             this.setState(value);
    //             break;
    //         case "area":
    //             this.setArea(value);
    //             break;
    //         case "pincode":
    //             this.setPincode(value);
    //             break;
    //     }
    // }

    // public async setup(){
    //     this.setCompanyname("Auto "+await (util.randomAlphabets(10)));
    //     this.setCompanycode(await (util.randomAlphabets(10)));
    //     this.setCompanywebsite(await (util.randomWebsite(10)))
    //     this.setCountry(await (util.getRandomcountry()));
    //     this.setAddress(await (util.randomAlphabetswithSpaceandSpecial(25)));
    //     this.setState(await (util.randomAlphabets(6)));
    //     this.setArea(await (util.randomAlphabets(10)));
    //     this.setPincode(await (util.randomNumber(6)));
    // }

}

export default newTenant;
