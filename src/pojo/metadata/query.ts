import filters from "./filters";
import sort from "./sort";

class query{
    private model: string;
    private operation: string;
    private mode: string;
    private schemaName: string;
    private attribute: string[];
    private filters: filters[];
    private sort: sort[];
    private page: number;
    private limit: number;

    /*If we need filters we can add them in constructor and use them in our object, current i am using attribute to get the data and sort them accordingly*/
   
    constructor(model:string, operation:string, mode:string, schemaName: string, attribute: string[], sort:sort[], filters:filters[], page: number, limit:number){
        this.model = model;
        this.operation = operation;
        this.mode = mode;
        this.schemaName = schemaName;
        this.attribute = attribute;
        this.filters = filters;
        this.sort = sort;
        this.page = page;
        this.limit = limit;
    }

    getModel(){
        return this.model;
    }

    getOperation(){
        return this.operation;
    }

    getMode(){
        return this.mode;
    }

    getSchemaName(){
        return this.schemaName;
    }

    getAttribute(){
        return this.attribute;
    }

    getFilter(){
        return this.filters;
    }

    getSort(){
        return this.sort;
    }

    getPage(){
        return this.page;
    }

    getLimit(){
        return this.limit;
    }

    setModel(model:string){
        this.model = model;
    }

    setOperation(operation:string){
        this.operation = operation;
    }

    setMode(mode:string){
        this.mode = mode;
    }

    setSchemaName(schemaName:string){
        this.schemaName = schemaName;
    }

    setAttribute(attribute:string[]){
        this.attribute = attribute;
    }

    setFilter(filters:filters[]){
        this.filters = filters;
    }

    setSort(sort:sort[]){
        this.sort = sort;
    }

    setPage(page:number){
        this.page = page;
    }

    setLimit(limit:number){
        this.limit = limit;
    }
}
export default query;
