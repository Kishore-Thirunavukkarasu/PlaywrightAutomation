import Hierarchies from "./user/hierarchies.ts";
import JobRoles from "./jobRoles_api.js";

//create a class "Rules"
class Rules {
    private jobroles: JobRoles[];
    private hierarchies: Hierarchies[];
    private additionalCriteria: string;
    //constructor for Rules class
    constructor(jobroles: JobRoles[], hierarchies: Hierarchies[], additionalCriteria: string) {
        this.jobroles = jobroles;
        this.hierarchies = hierarchies;
        this.additionalCriteria = additionalCriteria;
    }
    //get jobroles
    getjobroles() {
        return this.jobroles;
    }
    //get hierarchies
    gethierarchies() {
        return this.hierarchies;
    }
    //get additionalCriteria
    getadditionalCriteria() {
        return this.additionalCriteria;
    }

}
export default Rules;
