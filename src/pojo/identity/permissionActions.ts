import attribute from "./permissionAttribute";

class PermissionActions{
    private action :string;
    private scope :string;
    private rule :string;
    private attributes :attribute[];

    constructor(action:string,scope:string,attributes:attribute[]){
        this.action = action;
        this.scope = scope;
        //this.rule = rule;
        this.attributes = attributes;
    }

    getAction(){
        return this.action;
    }

    getScope(){
        return this.scope;
    }

    getRule(){
        return this.rule;
    }

    getAttributes(){
        return this.attributes;
    }

    setAction(action:string){
        this.action = action;
    }

    setScope(scope:string){
        this.scope = scope;
    }

    setRule(rule:string){
        this.rule = rule;
    }

    setAttributes(attributes:attribute[]){
        this.attributes = attributes;
    }


}
export default PermissionActions;
