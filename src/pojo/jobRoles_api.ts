import connectors from "./connector.js";
import fields from "./fields.js";

//create a class "JobRoles"
class JobRoles {
    private connectors: connectors[];
    private fields: fields[];

    //constructor for JobRoles class
    constructor(connectors: connectors[], fields: fields[]) {
        this.connectors = connectors;
        this.fields = fields;
    }
    //get connectors
    getconnectors() {
        return this.connectors;
    }
    //get fields
    getfields() {
        return this.fields;
    }

}
//export JobRoles class
export default JobRoles;
