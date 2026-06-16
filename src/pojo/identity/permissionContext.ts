class PermissionContext{
    private location : string;
    private device : string;

    constructor(location:string,device:string){
        this.location = location;
        this.device = device;
    }

    getLocation(){
        return this.location;
    }

    getDevice(){
        return this.device;
    }

    setLocation(location:string){
        this.location = location;
    }

    setDevice(device:string){
        this.device = device;
    }
}
export default PermissionContext;
