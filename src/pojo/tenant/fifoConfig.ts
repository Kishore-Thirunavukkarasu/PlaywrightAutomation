class fifoConfig{
    private buttonColor: string;    

    constructor(buttonColor:string){
        this.buttonColor = buttonColor;
    }

    getButtonColor(){
        return this.buttonColor;
    }

}
export default fifoConfig;

