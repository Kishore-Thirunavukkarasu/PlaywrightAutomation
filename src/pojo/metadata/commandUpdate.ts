import criteria from './filters';
class commandUpdate {
    private model: string;
    private operation: string;
    private criteria: criteria[];
    private payload: string;

    constructor(model: string, operation: string, criteria: criteria[], payload: string) {
        this.model = model;
        this.operation = operation;
        this.criteria = criteria;
        this.payload = payload;
    }

    getModel() {
        return this.model;
    }

    getOperation() {
        return this.operation;
    }

    getCriteria() {
        return this.criteria;
    }

    getPayload() {
        return this.payload;
    }
}
export default commandUpdate;
