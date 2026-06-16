class CouponConfiguration{
    private couponName:string;
    private couponField:string;
    private method:string;
    private pattern:string;
    private couponType:string;
    private length:number;
    private startingNumber:string;
    private prefixCode:string;
    private suffixCode:string;

    // Setters

    setcouponName(couponName:string): void {
        this.couponName = couponName;
    }
    setcouponField(couponField:string): void {
        this.couponField = couponField;
    }
    setmethod(method:string): void {
        this.method = method;
    }
    setpattern(pattern:string): void {
        this.pattern = pattern;
    }
    setcouponType(couponType:string): void {
        this.couponType = couponType;
    }
    setlength(length:number): void {
        this.length = length;
    }
    setstartingNumber(startingNumber:string): void {
        this.startingNumber = startingNumber;
    }
    setprefixCode(prefixCode:string): void {
        this.prefixCode = prefixCode;
    }
    setsuffixCode(suffixCode:string): void {
        this.suffixCode = suffixCode;
    }

    
    //getters
    getcouponName(){
        return this.couponName
    }
    getcouponField(){
        return this.couponField
    }
    getmethod(){
        return this.method
    }
    getpattern(){
        return this.pattern
    }
    getcouponType(){
        return this.couponType
    }
    getlength(){
        return this.length
    }
    getstartingNumber(){
        return this.startingNumber
    }
    getprefixCode(){
        return this.prefixCode
    }
    getsuffixCode(){
        return this.suffixCode
    }
}

export default CouponConfiguration;


