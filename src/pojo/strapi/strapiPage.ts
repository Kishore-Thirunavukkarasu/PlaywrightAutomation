import { de } from "@faker-js/faker";

class strapiPage{
    private shortName: string;
    private slug: string;
    private heading: string;
    private description: string;
    private audience: string;
    private program: string;

    public setShortName(shortName: string){
        this.shortName = shortName;
    }

    public getShortName(){
        return this.shortName;
    }

    public setSlug(slug: string){
        this.slug = slug;
    }

    public getSlug(){
        return this.slug;
    }

    public setHeading(heading: string){
        this.heading = heading;
    }

    public getHeading(){
        return this.heading;
    }

    public setDescription(description: string){
        this.description = description;
    }

    public getDescription(){
        return this.description;
    }

    public setAudience(audience: string){
        this.audience = audience;
    }

    public getAudience(){
        return this.audience;
    }

    public setProgram(program: string){
        this.program = program;
    }

    public getProgram(){
        return this.program;
    }
}
export default strapiPage;
