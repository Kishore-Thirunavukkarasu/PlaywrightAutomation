import { de } from "@faker-js/faker";

class productGroup{

    private name: string;
    private type: string;
    private parentSchema: string;
    private childSchema: string;

    getName(): string {
        return this.name;
    }

    setName(name: string): void {
        this.name = name;
    }

    getType(): string {
        return this.type;
    }

    setType(type: string): void {
        this.type = type;
    }

    getParentSchema(): string {
        return this.parentSchema;
    }

    setParentSchema(parentSchema: string): void {
        this.parentSchema = parentSchema;
    }

    getChildSchema(): string {
        return this.childSchema;
    }

    setChildSchema(childSchema: string): void {
        this.childSchema = childSchema;
    }

}

export default productGroup;
