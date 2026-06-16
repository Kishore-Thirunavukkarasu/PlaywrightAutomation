//create a class "audience" 
class exaudience {
    private contextId: string;
    private type: string;
    private startDate: string;
    private endDate: string;
    constructor(contextid: string, type: string, startdate: string, enddate: string) {
        this.contextId = contextid;
        this.type = type;
        this.startDate = startdate;
        this.endDate = enddate;
    }
    getcontextid() {
        return this.contextId;
    }
    gettype() {
        return this.type;
    }
    getstartdate() {
        return this.startDate;
    }
    getenddate() {
        return this.endDate;
    }
}

export default exaudience;
