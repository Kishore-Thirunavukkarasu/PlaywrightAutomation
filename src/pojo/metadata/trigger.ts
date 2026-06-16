class trigger{
    private event: string;
    private flowId: string;
    private executeWhen: string;
    private isActive: boolean;

    constructor(id:string, event:string, flowId:string, executeWhen:string, isActive:boolean){
        this.event = event;
        this.flowId = flowId;
        this.executeWhen = executeWhen;
        this.isActive = isActive;
    }

    getEvent(){
        return this.event;
    }

    getFlowId(){
        return this.flowId;
    }

    getExecuteWhen(){
        return this.executeWhen;
    }

    getIsActive(){
        return this.isActive;
    }
}

export default trigger;
