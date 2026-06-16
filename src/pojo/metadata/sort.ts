class sort{
    private attribute: string;

    constructor(attribute:string){
        this.attribute = attribute;
    }

    getAttribute(){
        return this.attribute;
    }

    setAttribute(attribute:string){
        this.attribute = attribute;
    }   
}
export default sort;
