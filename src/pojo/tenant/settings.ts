class settings{
    private label : string;
    private primaryKey : string;
    private secondaryKey : string;
    private expiryAt : string;
    private status : string;
    private createdBy : string;

    constructor(label:string, primaryKey:string, secondaryKey:string, expiryAt:string, status:string, createdBy:string){
        this.label = label;
        this.primaryKey = primaryKey;
        this.secondaryKey = secondaryKey;
        this.expiryAt = expiryAt;
        this.status = status;
        this.createdBy = createdBy;
    }

    getStatus(){
        return this.status;
    }

    getCreatedBy(){
        return this.createdBy;
    }

    getLabel(){
        return this.label;
    }

    getPrimaryKey(){
        return this.primaryKey;
    }

    getSecondaryKey(){
        return this.secondaryKey;
    }

    getExpiryAt(){
        return this.expiryAt;
    }
}

export default settings;
