import contacts from "./contacts";

class Tenantcontacts{
    private contacts : contacts[];

    constructor(contacts:contacts[]){
        this.contacts = contacts;
    }

    getContacts(){
        return this.contacts;
    }
    
}

export default Tenantcontacts;
