enum validations {
    Null = "null",
    Empty = "empty",
    Existing = "existing",    // existing value not id. used to verify for unique values
    Valid = "valid",          // valid values. id for any resource. used in get, delete, update
    ValidCombination = "valid combination", // valid combination of one with another. Refer Dynamic audience - connectors
    NotExisting = "not existing",
    Deleted = "deleted",
    SpecialChar = "special char",
    AcceptedSpecialChar = "accepted special char",            //   /-.
    AcceptedSpecialCharPhone = "accepted special char Phone", //   /-.+
    AlphaNumeric = "alphanumeric",
    Alphabets = "alphabets",
    Numeric = "numeric",
    Boolean = "boolean",
    String = "string",
    NumericWithSpace = "numeric with space",
    LessThan10 = "less than 10",
    LessThan255 = "less than 255",
    LessThan50 = "less than 50",
    GreaterThan10 = "more than 10",
    GreaterThan255 = "more than 255",
    GreaterThan50 = "more than 50",
    UUID ="uuid",
    AlphaNumericSpecialCharacters="alphanumeric special char",
    AlphabetsWithSpace = "alphabets with space",
    Displayed = "displayed",
    Enabled = "enabled",
    Disabled = "disabled",
    Selected = "selected",
    UnSelected = "unselected",
    Checked = "checked",
    UnChecked = "unchecked",
    NumericSpecialCharacters = "numeric special char",
    Object = "object",
    Date = "dateValue",
    Decimal = "decimal",
    Array = "array",
    Invalid = "invalid"
}

export default validations;
