class DirecttpointdepositCSV {
  private identifier: string;
  private transactionDate: string;
  private remarks: string;
  private points: string;

  // constructor(
  //   identifier: string,
  //   transactionDate: string,
  //   remarks: string,
  //   points: string,
  // ) {
  //   this.identifier = identifier;
  //   this.transactionDate = transactionDate;
  //   this.remarks = remarks;
  //   this.points = points;
  // }

  getidentifier(): string {
    return this.identifier;
  }
  setidentifier(identifier: string): void {
    this.identifier = identifier;
  }

  gettransactionDate(): string {
    return this.transactionDate;
  }
  settransactionDate(transactionDate: string): void {
    this.transactionDate = transactionDate;
  }

  getremarks(): string {
    return this.remarks;
  }
  setremarks(remarks: string): void {
    this.remarks = remarks;
  }
  getpoints(): string {
    return this.points;
  }
  setpoints(points: string): void {
    this.points = points;
  }
}

export default DirecttpointdepositCSV;

