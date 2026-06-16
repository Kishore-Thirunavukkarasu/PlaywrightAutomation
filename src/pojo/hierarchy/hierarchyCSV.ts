class hierarchyCSV {
    
    private recordType: string;
    private name: string;
    private newName: string;
    private level : number;
    private parentName: string;

    getRecordType(): string {
        return this.recordType;
    }

    setRecordType(recordType: string): void {
        this.recordType = recordType;
    }

    getname(): string {
        return this.name;
    }

    setname(name: string): void {
        this.name = name;
    }

    getNewName(): string {
        return this.newName;
    }

    setNewName(newName: string): void {
        this.newName = newName;
    }

    getLevel(): number {
        return this.level;
    }

    setLevel(level: number): void {
        this.level = level;
    }

    getParentName(): string {
        return this.parentName;
    }

    setParentName(parentName: string): void {
        this.parentName = parentName;
    }

}
export default hierarchyCSV;
