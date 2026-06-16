class loginScreenFields{
    private logo: string;
    private username: string;
    private password: string;
    private usernameinput: string;
    private passwordinput: string;
    private viewpassword: string;
    private remembermelabel: string;
    private rememberme: string;
    private forgotpassword: string;
    private signin: string;
    private biwwemployeelabel: string;
    private clickhere: string;

//    This class contains all login screen UI variables used to store the data and setup function to store all values with valid data

    public getLogo(): string {
        return this.logo;
    }
    public setLogo(logo: string): void {    
        this.logo = logo;
    }

    public getUsername(): string {
        return this.username;
    }
    public setUsername(username: string): void {
        this.username = username;
    }

    public getPassword(): string {
        return this.password;
    }
    public setPassword(password: string): void {
        this.password = password;
    }

    public getUsernameinput(): string {
        return this.usernameinput;
    }
    public setUsernameinput(usernameinput: string): void {
        this.usernameinput = usernameinput;
    }

    public getPasswordinput(): string {
        return this.passwordinput;
    }
    public setPasswordinput(passwordinput: string): void {
        this.passwordinput = passwordinput;
    }

    public getViewpassword(): string {
        return this.viewpassword;
    }
    public setViewpassword(viewpassword: string): void {
        this.viewpassword = viewpassword;
    }

    public getRemembermelabel(): string {
        return this.remembermelabel;
    }
    public setRemembermelabel(remembermelabel: string): void {
        this.remembermelabel = remembermelabel;
    }

    public getRememberme(): string {
        return this.rememberme;
    }
    public setRememberme(rememberme: string): void {
        this.rememberme = rememberme;
    }

    public getForgotpassword(): string {
        return this.forgotpassword;
    }
    public setForgotpassword(forgotpassword: string): void {
        this.forgotpassword = forgotpassword;
    }

    public getSignin(): string {
        return this.signin;
    }
    public setSignin(signin: string): void {
        this.signin = signin;
    }

    public getBiwwemployeelabel(): string {
        return this.biwwemployeelabel;
    }
    public setBiwwemployeelabel(biwwemployeelabel: string): void {
        this.biwwemployeelabel = biwwemployeelabel;
    }

    public getClickhere(): string {
        return this.clickhere;
    }
    public setClickhere(clickhere: string): void {
        this.clickhere = clickhere;
    }
    
}
export default loginScreenFields;
