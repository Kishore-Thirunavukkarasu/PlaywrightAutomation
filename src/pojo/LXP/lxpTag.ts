class lxpTag {
    tagName: string;
    tagCode: string;
    tagDescription: string;
 
    getTagName(): string {
        return this.tagName;
    }
 
    setTagName(tagName: string): void {
        this.tagName = tagName;
    }
 
    getTagDescription(): string {
        return this.tagDescription;
    }
 
    setTagDescription(tagDescription: string): void {
        this.tagDescription = tagDescription;
    }
    getTagCode(): string {
        return this.tagCode;
    }

    setTagCode(tagCode: string): void {
        this.tagCode = tagCode;
    }
}
 
export default lxpTag;
