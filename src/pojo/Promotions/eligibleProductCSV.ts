class eligibleProductCSV{
    private measureName: string;
    private productAttributeName: string;
    private productAttributeValue: string;
    private reward: number;
    private value: number;
    private tier: string;
    private productMaster: string;

    getMeasureName(): string {
        return this.measureName;
    }

    setMeasureName(measureName: string): void {
        this.measureName = measureName;
    }

    getProductAttributeName(): string {
        return this.productAttributeName;
    }

    setProductAttributeName(productAttributeName: string): void {
        this.productAttributeName = productAttributeName;
    }

    getProductAttributeValue(): string {
        return this.productAttributeValue;
    }

    setProductAttributeValue(productAttributeValue: string): void {
        this.productAttributeValue = productAttributeValue;
    }

    getReward(): number {
        return this.reward;
    }

    setReward(reward: number): void {
        this.reward = reward;
    }

    getValue(): number {
        return this.value;
    }

    setValue(value: number): void {
        this.value = value;
    }

    getTier(): string {
        return this.tier;
    }

    setTier(tier: string): void {
        this.tier = tier;
    }

    getProductMaster(): string {
        return this.productMaster;
    }

    setProductMaster(productMaster: string): void {
        this.productMaster = productMaster;
    }

}
export default eligibleProductCSV;
