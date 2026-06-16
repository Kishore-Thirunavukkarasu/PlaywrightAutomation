//create a typescript pojo class for data\tuskr.json

import steps from "./stepsWithExpectedResults.ts";


class customFields {
    private TCReviewStat:string;
    private type: string;
    private apiType: string;
    private packages: string;    
    private stepsWithExpectedResults: steps[];
    private pre_conditions: string;
    private category: string;
    private testcasetype:string;
    private tcview:string;
    private isautomated: boolean;

    // constructor(steps: steps[], pre_conditions: string) {
    //     this.steps = steps;
    //     this.pre_conditions = pre_conditions;
    // }

    constructor(type:string, subtype:string, packages:string, steps: steps[], category:string, pre_conditions: string, TCReviewStat:string, tctag:string, tcview:string, isautomated:boolean) {
        this.type = type;
        this.apiType = subtype;
        this.packages = packages;
        this.stepsWithExpectedResults = steps;
        this.pre_conditions = pre_conditions;
        this.category = category;
        this.TCReviewStat = TCReviewStat;
        this.testcasetype = tctag;
        this.tcview = tcview;
        this.isautomated = isautomated;
    }

    getTCReviewStat() {
        return this.TCReviewStat;
    }
    getPre_conditions() {
        return this.pre_conditions;
    }
    getCategory() {
        return this.category;
    }
    getSteps() {
        return this.stepsWithExpectedResults;
    }
    gettctag() {
        return this.testcasetype;
    }
    gettcview() {
        return this.tcview;
    }
    gettype(): string {
        return this.type;
    }
    getisautomated(): boolean {
        return this.isautomated;
    }

    settype(value: string) {
        this.type = value;
    }
    getapiType(): string {
        return this.apiType;
    }
    setapiType(value: string) {
        this.apiType = value;
    }
    getpackages(): string {
        return this.packages;
    }
    setpackages(value: string) {
        this.packages = value;
    }
    settctag(value: string) {
        this.testcasetype = value;
    }
    settcview(value: string) {
        this.tcview = value;
    }
    setisautomated(value: boolean) {
        this.isautomated = value;
    }
}

export default customFields;
