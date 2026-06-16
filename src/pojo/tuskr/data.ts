//create a typescript pojo class for data\tuskr.json

import customFields from "./customFields.ts";


class data {
    private references = [];
    private externalId = null;
    private fieldSet ="2a98968a-17d3-478e-b185-e8bf65bc424e";
    private estimatedTimeInMinutes = 5;
    private name: string;
    private testCaseType :string;
    private testSuiteSection: string;
    private testSuite :string;
    private customFields : customFields;
    private project = "e40939f8-5c28-4833-b5bb-332e069f17be";

    constructor(name: string, testCaseType:string, testSuite:string, testSuiteSection: string, fields:customFields) {
        this.name = name;
        this.testSuiteSection = testSuiteSection;
        this.customFields = fields;
        this.testCaseType = testCaseType;
        this.testSuite = testSuite;
    }

    getReferences() {
        return this.references;
    }
    getExternalId() {
        return this.externalId;
    }
    getFieldSet() {
        return this.fieldSet;
    }
    getEstimatedTimeInMinutes() {
        return this.estimatedTimeInMinutes;
    }
    getName() {
        return this.name;
    }
    getTestCaseType() {
        return this.testCaseType;
    }
    getTestSuiteSection() {
        return this.testSuiteSection;
    }
    getTestSuite() {
        return this.testSuite;
    }
    getProject() {
        return this.project;
    }
    gettestcasetype() {
        return this.testCaseType;
    }
    gettestSuite() {
        return this.testSuite;
    }
    getcFields() {
        return this.customFields;
    }
}

export default data;
