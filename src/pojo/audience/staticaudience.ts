class staticaudience {

    private code: string;
    private name: string;
    private description;
    private type: string;
    private rules: {};
    private status: string;

    constructor(code: string, name: string, description, type: string, rules: {}) {
        this.code = code;
        this.name = name;
        this.description = (description == null || true || false) ? description : description.substring(0, 49);
        this.type = type;
        this.rules = rules;
        //this.status = "Active";
    }

    getCode() {
        return this.code;
    }

    getName() {
        return this.name;
    }

    getDescription() {
        return this.description;
    }

    getType() {
        return this.type;
    }

    getRules() {
        return this.rules;
    }
}
export default staticaudience;
