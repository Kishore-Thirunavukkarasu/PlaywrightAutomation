class Promotions {
  private promotionname: string;
  private description: string;
  private startdate: string;
  private enddate: string;
  private primarybillcode: string;
  private secondarybillcode: string;
  private tag: string;

  //constructor for promotion class
  constructor(
    promotionname: string,
    description: string,
    startdate: string,
    enddate: string,
    primarybillcode: string,
    secondarybillcode: string,
    tag: string
  ) {
    this.promotionname = promotionname;
    this.description = description;
    this.startdate = startdate;
    this.enddate = enddate;
    this.primarybillcode = primarybillcode;
    this.secondarybillcode = secondarybillcode;
    this.tag = tag;
  }

  getpromotionname() {
    return this.promotionname;
  }

  getdescription() {
    return this.description;
  }

  getstartdate() {
    return this.startdate;
  }

  getenddate() {
    return this.enddate;
  }
  getsecondarybillcode() {
    return this.secondarybillcode;
  }

  getprimarybillcode() {
    return this.primarybillcode;
  }

  gettag() {
    return this.tag;
  }

  setpromotionname(promotionname: string): void {
    this.promotionname = promotionname;
  }

  setdescription(description: string): void {
    this.description = description;
  }

  setstartdate(startdate: string): void {
    this.startdate = startdate;
  }

  setenddate(enddate: string): void {
    this.enddate = enddate;
  }

  setsecondarybillcode(secondarybillcode: string): void {
    this.secondarybillcode = secondarybillcode;
  }

  setprimarybillcode(primarybillcode: string): void {
    this.primarybillcode = primarybillcode;
  }

  settag(tag: string): void {
    this.tag = tag;
  }
}

export default Promotions;

