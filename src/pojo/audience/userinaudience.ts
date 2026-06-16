class users{
    private id: string;
    private audienceId: string;
    private userId: string;
    private startDate: string;
    private endDate: string;

    constructor(id: string, audienceid: string, userid: string, startdate: string, enddate: string) {
        this.id = id;
        this.audienceId = audienceid;
        this.userId = userid;
        this.startDate = startdate;
        this.endDate = enddate;
    }

    getid() {
        return this.id;
    }
    getaudienceid() {
        return this.audienceId;
    }
    getuserid() {
        return this.userId;
    }
    getstartdate() {
        return this.startDate;
    }
    getenddate() {
        return this.endDate;
    }

    setid(id: string) {
        this.id = id;
    }
    setaudienceid(audienceid: string) {
        this.audienceId = audienceid;
    }
    setuserid(userid: string) {
        this.userId = userid;
    }
    setstartdate(startdate: string) {
        this.startDate = startdate;
    }
    setenddate(enddate: string) {
        this.endDate = enddate;
    }
}
export default users;
