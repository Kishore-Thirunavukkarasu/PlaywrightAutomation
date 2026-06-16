// create a pojo class like pojo/program.ts for the json  as {"id":"00513f4d-3f10-4d60-8170-207656733512","sub":"1234567890","name":"JohnDoe","iat":1516239022,"tenantId":"887379bf-1078-44ca-9407-991c1a20c159"}
import data from "../../data/testData.json"
import { util } from "../../helper/util";

class Auth{
    private id:string;
    private sub:string;
    private name:string;
    private iat:number;
    private exp:number;
    private tenantId:string;

    constructor(sub:string,tenantId:string){
        this.id = util.randomUUID(36);
        this.sub = sub;
        this.name = data.api.authname;
        this.iat = Math.floor(Date.now() / 1000) - 10;
        this.tenantId = tenantId;
        this.exp= Math.floor(Date.now() / 1000) + 2630000 ;
    }

    getId(){
        return this.id;
    }

    getSub(){
        return this.sub;
    }

    getName(){
        return this.name;
    }

    getIat(){
        return this.iat;
    }

    getTenantId(){
        return this.tenantId;
    }
}

export default Auth;
