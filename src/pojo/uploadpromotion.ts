import uploadtemplate from '../enum/uploadtemplate.enum';

class uploadpromotion {
    private uploadtemplate: string;
    private templatename: uploadtemplate;
    private metadata: string;
    private uploadfile: string;
    private appendnew: Boolean;
    private updateexisting: Boolean;

    public getUploadtemplate(): string {
        return this.uploadtemplate;
    }

    public setUploadtemplate(uploadtemplate: string): void {
        this.uploadtemplate = uploadtemplate;
    }

    public getTemplatename(): uploadtemplate {
        return this.templatename;
    }

    public setTemplatename(templatename: uploadtemplate): void {
        this.templatename = templatename;
    }

    public getMetadata(): string {
        return this.metadata;
    }

    public setMetadata(metadata: string): void {
        this.metadata = metadata;
    }

    public getUploadfile(): string {
        return this.uploadfile;
    }

    public setUploadfile(uploadfile: string): void {
        this.uploadfile = uploadfile;
    }

    public getAppendnew(): Boolean {
        return this.appendnew;
    }

    public setAppendnew(appendnew: Boolean): void {
        this.appendnew = appendnew;
    }

    public getUpdateexisting(): Boolean {
        return this.updateexisting;
    }

    public setUpdateexisting(updateexisting: Boolean): void {
        this.updateexisting = updateexisting;
    }
}

export default uploadpromotion;
