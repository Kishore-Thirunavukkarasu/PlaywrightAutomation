class Hierarchy{

    private id : string;
    private code : string;
    private name : string;
    private description : string;
    private parentId : string;
    private hierarchyId : string;
    private type : string;
    private programId : string;
    private level : string;

    constructor(id:string, code:string, name:string, description:string, parentId:string, hierarchyId:string, type:string, programId:string, level:string){
        this.id = id;
        this.code = code;
        this.name = name;
        this.description = description;
        this.parentId = parentId;
        this.hierarchyId = hierarchyId;
        this.type = type;
        this.programId = programId;
        this.level = level;
    }

    getId(){
        return this.id;
    }

    getCode(){
        return this.code;
    }

    getName(){
        return this.name;
    }

    getDescription(){
        return this.description;
    }

    getHierarchyId(){
        return this.hierarchyId;
    }

    getType(){
        return this.type;
    }

    getProgramId(){
        return this.programId;
    }

    getLevel(){
        return this.level;
    }

    getParentId(){
        return this.parentId;
    }

    setId(id:string){
        this.id = id;
    }

    setCode(code:string){
        this.code = code;
    }

    setName(name:string){
        this.name = name;
    }

    setDescription(description:string){
        this.description = description;
    }

    setParentId(parentId:string){
        this.parentId = parentId;
    }

    setHierarchyId(hierarchyId:string){
        this.hierarchyId = hierarchyId;
    }

    setType(type:string){
        this.type = type;
    }

    setProgramId(programId:string){
        this.programId = programId;
    }

    setLevel(level:string){
        this.level = level;
    }
}

export default Hierarchy;
