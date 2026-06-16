class successresponse{
    private status: string;
    private success: string;
    private message: string;
    private error: string;

    constructor(status:string,success:string,message:string,error:string){
        this.status=status;
        this.success=success;
        this.message=message;
        this.error=error;
    }

    public getstatus():string{
        return this.status;
    }
    public getsuccess():string{
        return this.success;
    }
    public getmessage():string{
        return this.message;
    }
    public geterror():string{
        return this.error;
    }
}
export default successresponse;
