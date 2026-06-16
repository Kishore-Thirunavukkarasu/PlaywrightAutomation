class excludeAudience {
    private contextType: string;
    private contextId: string;
    private attribute: string;
    private attributeId: string;
    private audienceId: string;

    constructor(contextType: string, contextId: string, attribute: string, attributeId: string, audienceId: string) {
        this.contextType = contextType;
        this.contextId = contextId;
        this.attribute = attribute;
        this.attributeId = attributeId;
        this.audienceId = audienceId;
    }

    public getContextType(): string {
        return this.contextType;
    }

    public setContextType(contextType: string): void {
        this.contextType = contextType;
    }

    public getContextId(): string {
        return this.contextId;
    }

    public setContextId(contextId: string): void {
        this.contextId = contextId;
    }

    public getAttribute(): string {
        return this.attribute;
    }

    public setAttribute(attribute: string): void {
        this.attribute = attribute;
    }

    public getAttributeId(): string {
        return this.attributeId;
    }

    public setAttributeId(attributeId: string): void {
        this.attributeId = attributeId;
    }

    public getAudienceId(): string {
        return this.audienceId;
    }

    public setAudienceId(audienceId: string): void {
        this.audienceId = audienceId;
    }
}

export default excludeAudience;
