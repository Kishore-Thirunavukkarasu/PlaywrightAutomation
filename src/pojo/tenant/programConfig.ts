import Configs from "./configs.ts";
import fifoConfig from "./fifoConfig.ts";

class ProgramConfig{
    private fifoConfig: fifoConfig;
    private configs: Configs;

    constructor(fifoconfig:fifoConfig, config:Configs){
        this.fifoConfig = fifoconfig;
        this.configs = config;
    }

    getFifoConfig(){
        return this.fifoConfig;
    }

    getConfig(){
        return this.configs;
    }
}

export default ProgramConfig;

