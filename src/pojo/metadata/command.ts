class command {
    private model: string;
    private operation: string;
    private schemaName: string;
    private payload: string;

    constructor(model: string, operation: string, schemaName:string, payload: string) {
        this.model = model;
        this.operation = operation;
        this.schemaName = schemaName;
        this.payload = payload;
    }

    getModel() {
        return this.model;
    }

    getOperation() {
        return this.operation;
    }

    getSchemaName(){
        return this.schemaName;
    }

    getPayload() {
        return this.payload;
    }
}
export default command;
