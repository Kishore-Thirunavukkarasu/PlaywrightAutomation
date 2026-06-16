class PermissionRoles{
    private admin : boolean;
    private user : boolean;

    constructor(admin:boolean, user:boolean){
        this.admin = admin;
        this.user = user;
    }

    getAdmin(){
        return this.admin;
    }

    getUser(){
        return this.user;
    }
}
export default PermissionRoles;
