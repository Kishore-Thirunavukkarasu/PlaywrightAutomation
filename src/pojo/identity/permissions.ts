import action from './permissionActions';
import Roles from './permissionRoles';
import Context from './permissionContext';

class Permissions{
    private name : string;
    private resourceType : string;
    private resource : string;
    private roleId : string;
    private actions : action[];
    private roles: Roles;
    private attributes : [string];
    private context : Context;
    private isShownInMenu : boolean;

    constructor(name:string,resourceType:string,resource:string,roleId:string,actions:action[],roles:Roles,attributes:[string],context:Context,isShownInMenu:boolean){
        this.name = name;
        this.resourceType = resourceType;
        this.resource = resource;
        this.roleId = roleId;
        this.actions = actions;
        this.roles = roles;
        this.attributes = attributes;
        this.context = context;
        this.isShownInMenu = isShownInMenu;
    }

    getName(){
        return this.name;
    }

    getResourceType(){
        return this.resourceType;
    }

    getResource(){
        return this.resource;
    }

    getRoleId(){
        return this.roleId;
    }

    getActions(){
        return this.actions;
    }

    getRoles(){
        return this.roles;
    }

    getAttributes(){
        return this.attributes;
    }

    getContext(){
        return this.context;
    }

    getIsShownInMenu(){
        return this.isShownInMenu;
    }

    setName(name:string){
        this.name = name;
    }

    setResourceType(resourceType:string){
        this.resourceType = resourceType;
    }

    setResource(resource:string){
        this.resource = resource;
    }
    
    setRoleId(roleId:string){
        this.roleId = roleId;
    }

    setActions(actions:action[]){
        this.actions = actions;
    }

    setRoles(roles:Roles){
        this.roles = roles;
    }

    setAttributes(attributes:[string]){
        this.attributes = attributes;
    }

    setContext(context:Context){
        this.context = context;
    }

    setIsShownInMenu(isShownInMenu:boolean){
        this.isShownInMenu = isShownInMenu;
    }

}
export default Permissions;
