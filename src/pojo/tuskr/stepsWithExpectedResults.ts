//create a typescript pojo class for data\tuskr.json


class stepsWithExpectedResults {
    private step: Number;
    private description: string;
    private expectedResult: string;

    constructor(step: Number, description: string, expectedResult: string) {
        this.step = step;
        this.description = description;
        this.expectedResult = expectedResult;
    }

    getStep() {
        return this.step;
    }
    getDescription() {
        return this.description;
    }
    getExpectedResult() {
        return this.expectedResult;
    }

}

export default stepsWithExpectedResults;

