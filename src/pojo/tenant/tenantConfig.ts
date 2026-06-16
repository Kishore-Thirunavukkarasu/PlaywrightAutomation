import Configs from "./configs";

class tenantConfig{
    private configs: Configs;

    constructor(config:Configs){
        this.configs = config;
    }

    getConfig(){
        return this.configs;
    }
}
export default tenantConfig;
