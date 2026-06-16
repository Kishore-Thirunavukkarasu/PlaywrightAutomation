class AdminLogin {
    url: string;
    superuser: string;
    superpass: string;
    tenantuser: string;
    tenantpass: string;

    constructor(url: string, superuser: string, superpass: string, tenantuser: string, tenantpass: string) {
        this.url = url;
        this.superuser = superuser;
        this.superpass = superpass;
        this.tenantuser = tenantuser;
        this.tenantpass = tenantpass;
    }

    getURL() {
        return this.url;
    }

    getSuperUser() {
        return this.superuser;
    }

    getSuperPass() {
        return this.superpass;
    }

    getTenantUser() {
        return this.tenantuser;
    }

    getTenantPass() {
        return this.tenantpass;
    }
}

export default AdminLogin;
