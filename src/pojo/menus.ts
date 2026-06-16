import { util } from "../helper/util";

class menus{
    private menuname: string;
    private menulink: string;
    private pagetype: string;

    
    public getMenuname(): string {
        return this.menuname;
    }
    public setMenuname(menuname: string): void {
        this.menuname = menuname;
    }

    public getMenulink(): string {
        return this.menulink;
    }
    public setMenulink(menulink: string): void {
        this.menulink = menulink;
    }

    public getPagetype(): string {
        return this.pagetype;
    }
    public setPagetype(pagetype: string): void {
        this.pagetype = pagetype;
    }
    
}
export default menus;
