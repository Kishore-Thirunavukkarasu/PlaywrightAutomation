class LXPcategory {
    categoryName: string;
    categoryDescription: string;
    categoryCode: string;

    getCategoryCode(): string {
        return this.categoryCode;
    }
    
    setCategoryCode(categoryCode: string): void {
        this.categoryCode = categoryCode;
    }

    getCategoryName(): string {
        return this.categoryName;
    }
    setCategoryName(categoryName: string): void {
        this.categoryName = categoryName;
    }
    getCategoryDescription(): string {
        return this.categoryDescription;
    }
    setCategoryDescription(categoryDescription: string): void {
        this.categoryDescription = categoryDescription;
    }
    
}
 
export default LXPcategory;
