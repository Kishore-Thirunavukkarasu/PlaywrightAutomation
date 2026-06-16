class Organization{

    private name : string;
    private description : string;
    private code : string;
    private phone : string;
    private email : string;
    private addressId : string;
    private hierarchyId : string;
    private active : boolean;

    constructor(name:string, description:string, code:string, phone:string, email:string, addressId:string, hierarchyId:string, active:boolean){
        this.name = name;
        this.description = description;
        this.code = code;
        this.phone = phone;
        this.email = email;
        this.addressId = addressId;
        this.hierarchyId = hierarchyId;
        this.active = active;
    }

    getName(){
        return this.name;
    }

    getDescription(){
        return this.description;
    }

    getCode(){
        return this.code;
    }

    getPhone(){
        return this.phone;
    }

    getEmail(){
        return this.email;
    }

    getAddressId(){
        return this.addressId;
    }

    getHierarchyId(){
        return this.hierarchyId;
    }

    getActive(){
        return this.active;
    }

    setName(name:string){
        this.name = name;
    }
}

export default Organization;
