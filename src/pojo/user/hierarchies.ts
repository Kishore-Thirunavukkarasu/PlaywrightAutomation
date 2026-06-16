import connectors from "../connector.ts";
import fields from "../fields.ts";

//create a class "JobRoles"
class Hierarchies {
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
export default Hierarchies;
