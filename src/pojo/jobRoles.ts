

class jobRoles{
    private name: string;
    private description: string;
    private level: string;

    getName(){
        return this.name;
    }

    getDescription(){
        return this.description;
    }

    getLevel(){
        return this.level;
    }

    setName(name: string){
        this.name = name;
    }

    setDescription(description: string){
        this.description = description;
    }

    setLevel(level: string){
        this.level = level;
    }

}

export default jobRoles;
