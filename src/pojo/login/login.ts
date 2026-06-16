import AdminLogin from "./adminlogin";
import PlatformLogin from "./platformlogin";

class Login{
    admin:AdminLogin;
    platform: PlatformLogin;

    constructor(admin:AdminLogin,platform:PlatformLogin){
        this.admin = admin;
        this.platform = platform;
    }
}

export default Login;
