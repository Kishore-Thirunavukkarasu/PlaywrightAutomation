//create a class "connector" 
class Connector {
    private connectorTableName: string;
    private connectorFkey: string;
    private pkey: string;
    private tableName: string;
    //constructor for connector class
    constructor(connectorTableName: string, connectorFkey: string, pkey: string, tableName: string) {
        this.connectorTableName = connectorTableName;
        this.connectorFkey = connectorFkey;
        this.pkey = pkey;
        this.tableName = tableName;
    }
    //get connectorTableName
    getconnectorTableName() {
        return this.connectorTableName;
    }
    //get connectorFkey
    getconnectorFkey() {
        return this.connectorFkey;
    }
    //get pkey
    getpkey() {
        return this.pkey;
    }
    //get tableName
    gettableName() {
        return this.tableName;
    }
}
//export connector class
export default Connector;
