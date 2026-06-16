import Auth from "./identity/auth";

class request{
    private auth : Auth;
    private tenantid : string;
    private headerid : string;
    private headervalue : string;
    private host : string;
    private path : string;
    private body : string;

    constructor (auth: Auth, tenantid : string, headerid : string, headervalue : string, host : string, path : string, body : string){
        this.auth = auth;
        this.tenantid = tenantid;
        this.headerid = headerid;
        this.headervalue = headervalue;
        this.host = host;
        this.path = path;
        this.body = body;
    }

    getAuth(){
        return this.auth;
    }

    getTenantId(){
        return this.tenantid;
    }

    getHeaderId(){
        return this.headerid;
    }

    getHeaderValue(){
        return this.headervalue;
    }

    getHost(){
        return this.host;
    }

    getPath(){
        return this.path;
    }

    getBody(){
        return this.body;
    }
}
export default request;
