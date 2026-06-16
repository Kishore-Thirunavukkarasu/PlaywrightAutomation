class platformAuth {

    private username: string;
    private email: string;
    private mobile: string;
    private password: string;
    private type: string;

    constructor(credential: string, password: string, type: string) {
        if (credential.includes('@')) {
            this.email = credential;
        } else if (!isNaN(Number(credential)) && credential.length === 10) {
            this.mobile = credential;
        } else {
            this.username = credential;
        }
        this.password = password;
        this.type = type;
    }

    getCredentials(): string {
        if (this.username !== null) {
            return this.username;
        } else if (this.email !== null) {
            return this.email;
        } else if (this.mobile !== null) {
            return this.mobile;
        } else {
            throw new Error('No credential available');
        }
    }

    getPassword(): string {
        return this.password;
    }

    getType(): string {
        return this.type;
    }
}
export default platformAuth;
