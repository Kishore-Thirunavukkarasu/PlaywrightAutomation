// create attribute pojo object by using the following parameter "id": "162108e2-1f13-48fa-87e9-b10558e7e494",          "name": "name",          "description": "Name of the project",          "allowMultiple": false,          "conditionalFormattingExp": null,          "decimalPlaces": null,          "defaultValue": null,          "displayMask": null,          "displayName": "Name",          "expression": null,          "format": null,          "group": "hidden-field",          "inputMask": "",          "inputRegExp": "",          "isEncrypted": false,          "isReadOnly": true,          "isRequired": true,          "isSortable": true,          "isUnique": true,          "max": 50,          "min": 10,          "outputType": null,          "placeholder": "Id","prefix": null,"remarks": "",          "suffix": "",          "type": "string", "values": null

class attribute {
    private name: string;
    private description: string;
    private displayName: string;
    private placeholder: string;
    private isUnique: boolean;
    private type: string;
    private allowMultiple: boolean;
    private conditionalFormattingExp: string;
    private decimalPlaces: number;
    private defaultValue: string;
    private displayMask: string;
    private expression: string;
    private format: string;
    private group: string;
    private inputMask: string;
    private inputRegExp: string;
    private isEncrypted: boolean;
    private isReadOnly: boolean;
    private isRequired: boolean;
    private isSortable: boolean;
    private max: number;
    private min: number;
    private outputType: string;
    private prefix: string;
    private remarks: string;
    private suffix: string;
    private values: string;

    constructor(name: string, description: string, displayName: string, placeholder: string, isUnique: boolean, type: string, allowMultiple: boolean, conditionalFormattingExp: string, decimalPlaces: number, defaultValue: string, displayMask: string, expression: string, format: string, group: string, inputMask: string, inputRegExp: string, isEncrypted: boolean, isReadOnly: boolean, isRequired: boolean, isSortable: boolean, max: number, min: number, outputType: string, prefix: string, remarks: string, suffix: string, values: string) {
        this.name = name;
        this.description = description;
        this.displayName = displayName;
        this.placeholder = placeholder;
        this.isUnique = isUnique;
        this.type = type;
        this.allowMultiple = allowMultiple;
        this.conditionalFormattingExp = conditionalFormattingExp;
        this.decimalPlaces = decimalPlaces;
        this.defaultValue = defaultValue;
        this.displayMask = displayMask;
        this.expression = expression;
        this.format = format;
        this.group = group;
        this.inputMask = inputMask;
        this.inputRegExp = inputRegExp;
        this.isEncrypted = isEncrypted;
        this.isReadOnly = isReadOnly;
        this.isRequired = isRequired;
        this.isSortable = isSortable;
        this.max = max;
        this.min = min;
        this.outputType = outputType;
        this.prefix = prefix;
        this.remarks = remarks;
        this.suffix = suffix;
        this.values = values;
    }
    //generate getters and setters for the above attributes
    public getName(): string {
        return this.name;
    }
    public setName(name: string): void {
        this.name = name;
    }
    public getDescription(): string {
        return this.description;
    }
    public setDescription(description: string): void {
        this.description = description;
    }
    public getDisplayName(): string {
        return this.displayName;
    }
    public setDisplayName(displayName: string): void {
        this.displayName = displayName;
    }
    public getPlaceholder(): string {
        return this.placeholder;
    }
    public setPlaceholder(placeholder: string): void {
        this.placeholder = placeholder;
    }
    public getIsUnique(): boolean {
        return this.isUnique;
    }
    public setIsUnique(isUnique: boolean): void {
        this.isUnique = isUnique;
    }
    public getType(): string {
        return this.type;
    }
    public setType(type: string): void {
        this.type = type;
    }
    public getAllowMultiple(): boolean {
        return this.allowMultiple;
    }
    public setAllowMultiple(allowMultiple: boolean): void {
        this.allowMultiple = allowMultiple;
    }
    public getConditionalFormattingExp(): string {
        return this.conditionalFormattingExp;
    }
    public setConditionalFormattingExp(conditionalFormattingExp: string): void {
        this.conditionalFormattingExp = conditionalFormattingExp;
    }
    public getDecimalPlaces(): number {
        return this.decimalPlaces;
    }
    public setDecimalPlaces(decimalPlaces: number): void {
        this.decimalPlaces = decimalPlaces;
    }
    public getDefaultValue(): string {
        return this.defaultValue;
    }
    public setDefaultValue(defaultValue: string): void {
        this.defaultValue = defaultValue;
    }
    public getDisplayMask(): string {
        return this.displayMask;
    }
    public setDisplayMask(displayMask: string): void {
        this.displayMask = displayMask;
    }
    public getExpression(): string {
        return this.expression;
    }
    public setExpression(expression: string): void {
        this.expression = expression;
    }
    public getFormat(): string {
        return this.format;
    }
    public setFormat(format: string): void {
        this.format = format;
    }
    public getGroup(): string {
        return this.group;
    }
    public setGroup(group: string): void {
        this.group = group;
    }
    public getInputMask(): string {
        return this.inputMask;
    }
    public setInputMask(inputMask: string): void {
        this.inputMask = inputMask;
    }
    public getInputRegExp(): string {
        return this.inputRegExp;
    }
    public setInputRegExp(inputRegExp: string): void {
        this.inputRegExp = inputRegExp;
    }
    public getIsEncrypted(): boolean {
        return this.isEncrypted;
    }
    public setIsEncrypted(isEncrypted: boolean): void {
        this.isEncrypted = isEncrypted;
    }
    public getIsReadOnly(): boolean {
        return this.isReadOnly;
    }
    public setIsReadOnly(isReadOnly: boolean): void {
        this.isReadOnly = isReadOnly;
    }
    public getIsRequired(): boolean {
        return this.isRequired;
    }
    public setIsRequired(isRequired: boolean): void {
        this.isRequired = isRequired;
    }
    public getIsSortable(): boolean {
        return this.isSortable;
    }
    public setIsSortable(isSortable: boolean): void {
        this.isSortable = isSortable;
    }
    public getMax(): number {
        return this.max;
    }
    public setMax(max: number): void {
        this.max = max;
    }
    public getMin(): number {
        return this.min;
    }
    public setMin(min: number): void {
        this.min = min;
    }
    public getOutputType(): string {
        return this.outputType;
    }
    public setOutputType(outputType: string): void {
        this.outputType = outputType;
    }
    public getPrefix(): string {
        return this.prefix;
    }
    public setPrefix(prefix: string): void {
        this.prefix = prefix;
    }
    public getRemarks(): string {
        return this.remarks;
    }
    public setRemarks(remarks: string): void {
        this.remarks = remarks;
    }
    public getSuffix(): string {
        return this.suffix;
    }
    public setSuffix(suffix: string): void {
        this.suffix = suffix;
    }
    public getValues(): string {
        return this.values;
    }
    public setValues(values: string): void {
        this.values = values;
    }
}

export default attribute;
