// create a pojo class like pojo/program.ts for the json  as {"name": "kadal",    "description": "kadal test role",    "isSystemRole": true,    "isActive": true  }

class Role{
    private name:string;
    private description:string;
    private isSystemRole:boolean;
    private isActive:boolean;

    constructor(name:string,description:string,isSystemRole:boolean,isActive:boolean){
        this.name = name;
        this.description = description;
        this.isSystemRole = isSystemRole;
        this.isActive = isActive;
    }

    getName(){
        return this.name;
    }

    getDescription(){
        return this.description;
    }

    getIsSystemRole(){
        return this.isSystemRole;
    }

    getIsActive(){
        return this.isActive;
    }

}

export default Role;
