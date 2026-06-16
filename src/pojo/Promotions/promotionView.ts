class promotionView{
    private viewName: string;
    private viewDescription: string;
    private viewQuery: string;

    getViewName(): string {
        return this.viewName;
    }
    setViewName(viewName: string): void {
        this.viewName = viewName;
    }
    getViewDescription(): string {
        return this.viewDescription;
    }
    setViewDescription(viewDescription: string): void {
        this.viewDescription = viewDescription;
    }
    getViewQuery(): string {
        return this.viewQuery;
    }
    setViewQuery(viewQuery: string): void {
        this.viewQuery = viewQuery;
    }
}
export default promotionView;
