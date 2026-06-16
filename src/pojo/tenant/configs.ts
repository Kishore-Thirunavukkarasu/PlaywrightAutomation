class Configs{
    private key: string;
    private value: string;
    private type: string;

    constructor(key:string, value:string, type:string){
        this.key = key;
        this.value = value;
        this.type = type;
    }

    getKey(){
        return this.key;
    }

    getValue(){
        return this.value;
    }

    getType(){
        return this.type;
    }
}

export default Configs;

