

import excludeAudienceObject from "./excludeAudienceObject";

class excludeAudience {
    private records: excludeAudienceObject[];

    constructor(records: excludeAudienceObject[]) {
        this.records = records;
    }

    getRecords() {
        return this.records;
    }

}
export default excludeAudience;
