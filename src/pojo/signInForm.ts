class signInform{
    private username: string;
    private password: string;
    private rememberme: boolean;

    constructor(username: string, password: string, rememberme: boolean){
        this.username=username;
        this.password=password;
        this.rememberme=rememberme;
    }

    getusername(){
        return this.username;
    }

    getpassword(){
        return this.password;
    }

    getrememberme(){
        return this.rememberme;
    }

    setrememberme(remember:boolean){
        this.rememberme=remember;
    }
    
    setUsername(username:string){
        this.username=username;
    }

    setPassword(password:string){
        this.password=password;
    }
}
export default signInform
