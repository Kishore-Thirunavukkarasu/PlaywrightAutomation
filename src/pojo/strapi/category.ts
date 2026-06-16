class category{
    private name: string;
    private slug: string;
    private description: string;
    private article: string;

    public getName(): string {
        return this.name;
    }

    public setName(name: string): void {
        this.name = name;
    }

    public getSlug(): string {
        return this.slug;
    }

    public setSlug(slug: string): void {
        this.slug = slug;
    }

    public getDescription(): string {
        return this.description;
    }

    public setDescription(description: string): void {
        this.description = description;
    }

    public getArticle(): string {
        return this.article;
    }

    public setArticle(article: string): void {
        this.article = article;
    }

}
export default category;
