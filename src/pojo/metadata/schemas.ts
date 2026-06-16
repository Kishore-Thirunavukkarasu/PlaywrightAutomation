import association from "./association";
import model from "./model";

class schema{
    private name: string;
    private description: string;
    private templateName: string;
    private namespace: string;
    private version: string;
    private isActive: boolean;
    private models: model[];
    private associations: association[];

    constructor(name:string, description:string, templateName:string, namespace:string, version:string, isActive:boolean, models:model[], associations:association[]){
        this.name = name;
        this.description = description;
        this.templateName = templateName;
        this.namespace = namespace;
        this.version = version;
        this.isActive = isActive;
        this.models = models;
        this.associations = associations;
    }

    getName(){
        return this.name;
    }

    getDescription(){
        return this.description;
    }

    getTemplateName(){
        return this.templateName;
    }

    getNamespace(){
        return this.namespace;
    }

    getVersion(){
        return this.version;
    }

    getIsActive(){
        return this.isActive;
    }

    getModels(){
        return this.models;
    }

    getAssociations(){
        return this.associations;
    }
    
    setName(name:string){
        this.name = name;
    }

    setDescription(description:string){
        this.description = description;
    }

    setTemplateName(templateName:string){
        this.templateName = templateName;
    }

    setNamespace(namespace:string){
        this.namespace = namespace;
    }

    setVersion(version:string){
        this.version = version;
    }

    setIsActive(isActive:boolean){
        this.isActive = isActive;
    }

    setModels(models:model[]){
        this.models = models;
    }

    setAssociations(associations:association[]){
        this.associations = associations;
    }

}

export default schema;
