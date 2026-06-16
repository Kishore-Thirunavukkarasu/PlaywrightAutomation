class filter{
    private attribute: string;
    private op: string;
    private value: string;

    constructor(attribute:string, op:string, value:string){
        this.attribute = attribute;
        this.op = op;
        this.value = value;
    }

    getAttribute(){
        return this.attribute;
    }

    getOp(){
        return this.op;
    }

    getValue(){
        return this.value;
    }

    setAttribute(attribute:string){
        this.attribute = attribute;
    }

    setOp(op:string){
        this.op = op;
    }

    setValue(value:string){
        this.value = value;
    }
}

export default filter;
