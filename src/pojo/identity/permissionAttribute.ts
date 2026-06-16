class PermissionAttribute{
    private name : string;
    private accessType : string;

    constructor(name:string,accessType:string){
        this.name = name;
        this.accessType = accessType;
    }

    getName(){
        return this.name;
    }

    getAccessType(){
        return this.accessType;
    }

    setName(name:string){
        this.name = name;
    }

    setAccessType(accessType:string){
        this.accessType = accessType;
    }
}
export default PermissionAttribute;
