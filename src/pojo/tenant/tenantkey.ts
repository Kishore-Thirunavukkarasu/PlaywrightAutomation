import settings from "./settings";

class tenantkey{
    private settings : settings[];

    constructor(settings:settings[]){
        this.settings = settings;
    }

    getSettings(){
        return this.settings;
    }
}

export default tenantkey;
