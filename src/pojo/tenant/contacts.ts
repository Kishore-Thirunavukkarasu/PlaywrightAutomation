// create an pojo for the parameters such as "email", "firstName", "lastName":"vijay", "designation", "mobile", "isActive"

class contacts{
    private email: string;
    private firstName: string;
    private lastName: string;
    private designation: string;
    private mobile: string;
    private isActive: boolean;

    constructor(email:string, firstName:string, lastName:string, designation:string, mobile:string, isActive:boolean){
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
        this.designation = designation;
        this.mobile = mobile;
        this.isActive = isActive;
    }

    getEmail(){
        return this.email;
    }

    getFirstName(){
        return this.firstName;
    }

    getLastName(){
        return this.lastName;
    }

    getDesignation(){
        return this.designation;
    }

    getMobile(){
        return this.mobile;
    }

    getIsActive(){
        return this.isActive;
    }

}

export default contacts;
