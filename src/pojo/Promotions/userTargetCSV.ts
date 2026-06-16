class userTarget{

    private username: string;
    private measureName: string;
    private target: number;
    private reward: number;
    private level: string;
    
    getUserName(): string{
        return this.username;
    }

    getMeasureName(): string{
        return this.measureName;
    }

    getTarget(): number{
        return this.target;
    }

    getReward(): number{
        return this.reward;
    }

    getLevel(): string{
        return this.level;
    }

    setUserName(username: string): void {
        this.username = username;
    }

   setMeasureName(measureName: string): void{
    this.measureName = measureName;
   }

   setTarget(target: number): void{
    this.target = target;
   }

   setReward(reward: number): void{
    this.reward = reward;
   }

   setLevel(level: string): void{
    this.level = level;
   }
}
export default userTarget;
