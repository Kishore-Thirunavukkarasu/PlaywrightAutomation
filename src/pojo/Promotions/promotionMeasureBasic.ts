class promotionMeasureBasic{
    private measureName: string;
    private measureDescription: string;
    private dataSourceType: string;
    private dataSourceName: string;
    private bankingType: string;
    private bankingTrigger: string;
    private maxForParticipant: number;
    private maxForMeasure: number;

    public getMeasureName(): string {
        return this.measureName;
    }

    public setMeasureName(measureName: string): void {
        this.measureName = measureName;
    }

    public getMeasureDescription(): string {
        return this.measureDescription;
    }

    public setMeasureDescription(measureDescription: string): void {
        this.measureDescription = measureDescription;
    }

    public getDataSourceType(): string {
        return this.dataSourceType;
    }

    public setDataSourceType(dataSourceType: string): void {
        this.dataSourceType = dataSourceType;
    }

    public getDataSourceName(): string {
        return this.dataSourceName;
    }

    public setDataSourceName(dataSourceName: string): void {
        this.dataSourceName = dataSourceName;
    }

    public getBankingType(): string {
        return this.bankingType;
    }

    public setBankingType(bankingType: string): void {
        this.bankingType = bankingType;
    }

    public getBankingTrigger(): string {
        return this.bankingTrigger;
    }

    public setBankingTrigger(bankingTrigger: string): void {
        this.bankingTrigger = bankingTrigger;
    }

    public getMaxForParticipant(): number {
        return this.maxForParticipant;
    }

    public setMaxForParticipant(maxForParticipant: number): void {
        this.maxForParticipant = maxForParticipant;
    }

    public getMaxForMeasure(): number {
        return this.maxForMeasure;
    }

    public setMaxForMeasure(maxForMeasure: number): void {
        this.maxForMeasure = maxForMeasure;
    }

}
export default promotionMeasureBasic;
