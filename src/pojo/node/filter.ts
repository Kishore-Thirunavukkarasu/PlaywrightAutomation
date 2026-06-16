class Filter {
    key: string;
    value: string;
    symbol: string;
    operator: string | null;

    constructor(key: string, value: string, symbol: string, operator: string | null) {
        this.key = key;
        this.value = value;
        this.symbol = symbol;
        this.operator = operator;
    }
}

export default Filter;
