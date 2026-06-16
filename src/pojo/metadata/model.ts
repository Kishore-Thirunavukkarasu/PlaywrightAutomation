import attribute from "./attribute";
import trigger from "./trigger";

class model {
    private name: string;
    private displayName: string;
    private isEditable: boolean;
    private attributes: attribute[];
    private triggers: trigger[];
    private type: string;
    private color: string;
    private hasComments: boolean;

    constructor(name: string, displayName: string, isEditable: boolean, attributes: attribute[], triggers: trigger[], type: string, color: string, hasComments: boolean) {
        this.name = name;
        this.displayName = displayName;
        this.isEditable = isEditable;
        this.attributes = attributes;
        this.triggers = triggers;
        this.type = type;
        this.color = color;
        this.hasComments = hasComments;
    }

    getName() {
        return this.name;
    }

    getDisplayName() {
        return this.displayName;
    }

    getIsEditable() {
        return this.isEditable;
    }
    getAttributes() {
        return this.attributes;
    }

    getTriggers() {
        return this.triggers;
    }

    getType() {
        return this.type;
    }

    getColor() {
        return this.color;
    }

    getHasComments() {
        return this.hasComments;
    }

    setName(name: string) {
        this.name = name;
    }

    setDisplayName(displayName: string) {
        this.displayName = displayName;
    }

    setIsEditable(isEditable: boolean) {
        this.isEditable = isEditable;
    }
    
    setAttributes(attributes: attribute[]) {
        this.attributes = attributes;
    }

    setTriggers(triggers: trigger[]) {
        this.triggers = triggers;
    }

    setType(type: string) {
        this.type = type;
    }

    setColor(color: string) {
        this.color = color;
    }

    setHasComments(hasComments: boolean) {
        this.hasComments = hasComments;
    }
}

export default model;
