class association{
    private fromModel: string;
    private toModel: string;
    private type: string;
    private fromAttribute:string;
    private toAttribute:string;

    constructor(fromModel:string, toModel:string, fromAttribute:string, toAttribute:string, type:string){
        this.fromModel = fromModel;
        this.toModel = toModel;
        this.type = type;
        this.fromAttribute = fromAttribute;
        this.toAttribute = toAttribute;
    }

    getFromModel(){
        return this.fromModel;
    }

    getToModel(){
        return this.toModel;
    }

    getType(){
        return this.type;
    }

    getFromAttribute(){
        return this.fromAttribute;
    }

    getToAttribute(){
        return this.toAttribute;
    }
}
export default association;
