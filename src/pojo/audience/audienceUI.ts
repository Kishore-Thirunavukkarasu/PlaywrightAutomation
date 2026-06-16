class audienceUI {
    private name: string;
    private description: string;

    getName() {
        return this.name;
    }

    getDescription() {
        return this.description;
    }

    setName(name: string) {
        this.name = name;
    }

    setDescription(description: string) {
        this.description = description;
    }

}

export default audienceUI;
