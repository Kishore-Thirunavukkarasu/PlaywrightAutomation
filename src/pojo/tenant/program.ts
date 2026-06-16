class Program{
    private name: string;
    private description: string;
    private domainUrl: string;
    private appCode: string;
    
    constructor(name:string, description:string, domainUrl:string, appCode:string){
        this.name = name;
        this.description = description;
        this.domainUrl = domainUrl;
        this.appCode = appCode;
    }

    getName(){
        return this.name;
    }

    getDescription(){
        return this.description;
    }

    getTheme(){
        return this.domainUrl;
    }

    getAppCode(){
        return this.appCode;
    }
}

export default Program;
