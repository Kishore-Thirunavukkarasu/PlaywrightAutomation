
class article{
    private title: string;
    private description: string;
    private slug: string;
    private category: string;
    private program: string;
    private audience: string;

    public getTitle(): string {
        return this.title;
    }
    public setTitle(title: string): void {
        this.title = title;
    }
    public getDescription(): string {
        return this.description;
    }
    public setDescription(description: string): void {
        this.description = description;
    }
    public getSlug(): string {
        return this.slug;
    }
    public setSlug(slug: string): void {
        this.slug = slug;
    }
    public getCategory(): string {
        return this.category;
    }
    public setCategory(category: string): void {
        this.category = category;
    }
    public getProgram(): string {
        return this.program;
    }
    public setProgram(program: string): void {
        this.program = program;
    }
    public getAudience(): string {
        return this.audience;
    }
    public setAudience(audience: string): void {
        this.audience = audience;
    }

}
export default article;
