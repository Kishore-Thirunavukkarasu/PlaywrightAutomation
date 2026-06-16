class promotionbasic{
    private promotionname: string;
    private promotionCode: string;
    private promotiondescription: string;
    private promotiontag: string;
    private promotionstartdate: string;
    private promotionenddate: string;
    private promotionprimarybillcode: string;
    private promotionsecondarybillcode: string;
    private promotionmobilemedia: string;
    private promotionwebmedia: string;

    public getPromotionname(): string {
        return this.promotionname;
    }

    public setPromotionname(promotionname: string): void {
        this.promotionname = promotionname;
    }

    public getPromotionCode(): string {
        return this.promotionCode;
    }

    public setPromotionCode(promotionCode: string): void {
        this.promotionCode = promotionCode;
    }

    public getPromotiondescription(): string {
        return this.promotiondescription;
    }

    public setPromotiondescription(promotiondescription: string): void {
        this.promotiondescription = promotiondescription;
    }

    public getPromotionstartdate(): string {
        return this.promotionstartdate;
    }

    public setPromotionstartdate(promotionstartdate: string): void {
        this.promotionstartdate = promotionstartdate;
    }

    public getPromotionenddate(): string {
        return this.promotionenddate;
    }

    public setPromotionenddate(promotionenddate: string): void {
        this.promotionenddate = promotionenddate;
    }

    public getPromotionprimarybillcode(): string {
        return this.promotionprimarybillcode;
    }

    public setPromotionprimarybillcode(promotionprimarybillcode: string): void {
        this.promotionprimarybillcode = promotionprimarybillcode;
    }

    public getPromotionsecondarybillcode(): string {
        return this.promotionsecondarybillcode;
    }

    public setPromotionsecondarybillcode(promotionsecondarybillcode: string): void {
        this.promotionsecondarybillcode = promotionsecondarybillcode;
    }

    public getPromotionmobilemedia(): string {
        return this.promotionmobilemedia;
    }

    public setPromotionmobilemedia(promotionmobilemedia: string): void {
        this.promotionmobilemedia = promotionmobilemedia;
    }

    public getPromotionwebmedia(): string {
        return this.promotionwebmedia;
    }

    public setPromotionwebmedia(promotionwebmedia: string): void {
        this.promotionwebmedia = promotionwebmedia;
    }

    public getPromotiontag(): string {
        return this.promotiontag;
    }

    public setPromotiontag(promotiontag: string): void {
        this.promotiontag = promotiontag;
    }
    
}


export default promotionbasic;
